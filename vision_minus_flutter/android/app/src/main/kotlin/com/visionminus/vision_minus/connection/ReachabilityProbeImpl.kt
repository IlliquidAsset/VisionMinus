package com.visionminus.vision_minus.connection

import android.util.Log
import java.net.InetSocketAddress
import java.net.Socket

class ReachabilityProbeImpl : ReachabilityProbe {
    override fun probe(host: String, port: Int, timeoutMs: Long): Boolean {
        return try {
            Socket().use { socket ->
                socket.connect(InetSocketAddress(host, port), timeoutMs.toInt())
                true
            }
        } catch (e: Exception) {
            Log.d(TAG, "Probe failed for $host:$port - ${e.message}")
            false
        }
    }

    private companion object {
        private const val TAG = "ReachabilityProbe"
    }
}
