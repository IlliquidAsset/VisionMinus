package com.visionminus.vision_minus.connection

import android.content.Context
import android.net.ConnectivityManager
import android.net.LinkAddress
import android.net.LinkProperties
import android.net.Network
import android.net.NetworkCapabilities
import android.net.NetworkRequest
import android.net.wifi.WifiManager
import java.net.Inet4Address

class WifiTransportController(
    context: Context,
    private val reachabilityProbe: ReachabilityProbe = ReachabilityProbeImpl(),
    private val runtimeEmitter: (ConnectionRuntime) -> Unit = {},
) : WifiDetector {
    private val appContext = context.applicationContext
    private val connectivityManager =
        appContext.getSystemService(Context.CONNECTIVITY_SERVICE) as ConnectivityManager
    private val wifiManager = appContext.getSystemService(Context.WIFI_SERVICE) as? WifiManager

    @Volatile
    private var isMonitoring = false

    @Volatile
    private var lastConfidence = WifiConfidence.NONE

    @Volatile
    private var generation = 0

    private val networkRequest =
        NetworkRequest.Builder()
            .addTransportType(NetworkCapabilities.TRANSPORT_WIFI)
            .build()

    private val networkCallback =
        object : ConnectivityManager.NetworkCallback() {
            override fun onAvailable(network: Network) {
                refreshAndEmit()
            }

            override fun onCapabilitiesChanged(network: Network, networkCapabilities: NetworkCapabilities) {
                refreshAndEmit()
            }

            override fun onLinkPropertiesChanged(network: Network, linkProperties: LinkProperties) {
                refreshAndEmit()
            }

            override fun onLost(network: Network) {
                refreshAndEmit()
            }

            override fun onUnavailable() {
                refreshAndEmit()
            }
        }

    fun startMonitoring() {
        if (isMonitoring) return
        connectivityManager.registerNetworkCallback(networkRequest, networkCallback)
        isMonitoring = true
        refreshAndEmit()
    }

    fun stopMonitoring() {
        if (!isMonitoring) return
        runCatching { connectivityManager.unregisterNetworkCallback(networkCallback) }
        isMonitoring = false
    }

    override fun getConfidence(): WifiConfidence {
        if (!isActiveWifiNetwork()) {
            return WifiConfidence.NONE
        }

        val isReachable = isReachable(DRONE_IP, RTSP_PORT, PROBE_TIMEOUT_MS)
        val isRightSubnet = isOnDroneSubnet()

        return when {
            isReachable -> WifiConfidence.HIGH
            isRightSubnet -> WifiConfidence.MEDIUM
            else -> WifiConfidence.LOW
        }
    }

    override fun isReachable(ip: String, port: Int, timeoutMs: Long): Boolean {
        return reachabilityProbe.probe(ip, port, timeoutMs)
    }

    fun getSsidMatchesDronePattern(): Boolean? {
        val info = try {
            wifiManager?.connectionInfo
        } catch (_: SecurityException) {
            null
        }

        val rawSsid = info?.ssid ?: return null
        val ssid = rawSsid.trim('"')

        if (ssid.isBlank() || ssid.equals("<unknown ssid>", ignoreCase = true)) {
            return null
        }

        return ssid.startsWith(DRONE_SSID_PREFIX)
    }

    private fun refreshAndEmit() {
        val confidence = getConfidence()
        getSsidMatchesDronePattern()

        if (confidence == lastConfidence) {
            return
        }

        lastConfidence = confidence
        generation += 1
        runtimeEmitter(
            RuntimeSnapshot(
                currentTransport =
                    if (confidence == WifiConfidence.NONE) {
                        TransportMode.NONE
                    } else {
                        TransportMode.WIFI
                    },
                currentPhase =
                    if (confidence == WifiConfidence.NONE) {
                        ConnectionPhase.DISCOVERING
                    } else {
                        ConnectionPhase.TRANSPORT_AVAILABLE
                    },
                sessionGeneration = generation,
                isTransitionInProgress = false,
            ),
        )
    }

    private fun isActiveWifiNetwork(): Boolean {
        val activeNetwork = connectivityManager.activeNetwork
        if (activeNetwork == null) {
            return findWifiNetwork() != null
        }
        val capabilities = connectivityManager.getNetworkCapabilities(activeNetwork)
        if (capabilities?.hasTransport(NetworkCapabilities.TRANSPORT_WIFI) == true) {
            return true
        }
        return findWifiNetwork() != null
    }

    private fun findWifiNetwork(): Network? {
        return connectivityManager.allNetworks.firstOrNull { network ->
            val caps = connectivityManager.getNetworkCapabilities(network)
            caps?.hasTransport(NetworkCapabilities.TRANSPORT_WIFI) == true
        }
    }

    private fun isOnDroneSubnet(): Boolean {
        val wifiNetwork = findWifiNetwork() ?: connectivityManager.activeNetwork ?: return false
        val linkProperties = connectivityManager.getLinkProperties(wifiNetwork)
        val hasSubnetFromLinkProperties =
            linkProperties
                ?.linkAddresses
                ?.any { isDroneSubnetAddress(it) }
                ?: false

        if (hasSubnetFromLinkProperties) {
            return true
        }

        val ipAddress = try {
            wifiManager?.connectionInfo?.ipAddress
        } catch (_: SecurityException) {
            null
        } ?: return false
        if (ipAddress == 0) return false

        val octet1 = ipAddress and 0xFF
        val octet2 = ipAddress shr 8 and 0xFF
        val octet3 = ipAddress shr 16 and 0xFF

        return octet1 == 192 && octet2 == 168 && octet3 == 1
    }

    private fun isDroneSubnetAddress(linkAddress: LinkAddress): Boolean {
        val address = linkAddress.address
        if (address !is Inet4Address) return false
        val bytes = address.address
        return bytes.size == 4 &&
            bytes[0].toInt() and 0xFF == 192 &&
            bytes[1].toInt() and 0xFF == 168 &&
            bytes[2].toInt() and 0xFF == 1
    }

    private data class RuntimeSnapshot(
        override val currentTransport: TransportMode,
        override val currentPhase: ConnectionPhase,
        override val sessionGeneration: Int,
        override val isTransitionInProgress: Boolean,
    ) : ConnectionRuntime

    private companion object {
        private const val DRONE_IP = "192.168.1.10"
        private const val RTSP_PORT = 554
        private const val PROBE_TIMEOUT_MS = 2_000L
        private const val DRONE_SSID_PREFIX = "PDO_VEH_"
    }
}
