package com.visionminus.vision_minus.connection

import android.util.Log
import com.powervision.natives.JniAOAChannelNative
import com.powervision.natives.JniAp03Native
import com.powervision.natives.JniCommonNative
import com.powervision.natives.JniSdkEngine
import com.powervision.natives.JniW4Native
import com.visionminus.vision_minus.PowerSdkEventHandler
import java.util.concurrent.Executors

object SdkLifecycleController : SdkInitializer {
    private const val TAG = "SdkLifecycleController"
    private const val CHANNEL_BODY = 0

    private val executor = Executors.newSingleThreadExecutor { runnable ->
        Thread(runnable, "SdkLifecycleController").apply { isDaemon = true }
    }
    private val callbackGate = CallbackGate(ConnectionRuntimeImpl)

    private var sdkActive = false

    override fun initWifi(): Int {
        return runSerialized("initWifi") {
            val generation = ConnectionRuntimeImpl.incrementSessionGeneration()
            ConnectionRuntimeImpl.setTransitionInProgress(true)
            ConnectionRuntimeImpl.setCurrentPhase(ConnectionPhase.CONNECTING)
            ConnectionRuntimeImpl.setCurrentTransport(TransportMode.WIFI)

            try {
                if (sdkActive) {
                    JniCommonNative.unInitSDK()
                    sdkActive = false
                }

                val result = JniSdkEngine.initSdkWithWIFI(1)
                if (result == 0) {
                    installCallbackGate(generation)
                    JniW4Native.registerW4Callbacks()
                    JniAp03Native.registerAp03Callbacks()
                    sdkActive = true
                    ConnectionRuntimeImpl.setCurrentPhase(ConnectionPhase.SDK_ACTIVE)

                    // Connect device and link to start telemetry
                    val deviceResult = JniW4Native.connectDevice()
                    Log.i(TAG, "connectDevice returned $deviceResult")
                    val linkResult = JniW4Native.connectLink()
                    Log.i(TAG, "connectLink returned $linkResult")

                    ConnectionRuntimeImpl.setCurrentPhase(ConnectionPhase.CONNECTED)
                } else {
                    ConnectionRuntimeImpl.setCurrentPhase(ConnectionPhase.ERROR)
                }
                result
            } catch (t: Throwable) {
                Log.e(TAG, "initWifi failed", t)
                ConnectionRuntimeImpl.setCurrentPhase(ConnectionPhase.ERROR)
                -1
            } finally {
                ConnectionRuntimeImpl.setTransitionInProgress(false)
            }
        }
    }

    override fun initAoa(fd: Int): Int {
        return runSerialized("initAoa") {
            val generation = ConnectionRuntimeImpl.incrementSessionGeneration()
            ConnectionRuntimeImpl.setTransitionInProgress(true)
            ConnectionRuntimeImpl.setCurrentPhase(ConnectionPhase.CONNECTING)
            ConnectionRuntimeImpl.setCurrentTransport(TransportMode.USB)

            try {
                if (sdkActive) {
                    JniCommonNative.unInitSDK()
                    sdkActive = false
                }

                val result = JniCommonNative.initSDKAOA()
                if (result == 0) {
                    if (fd >= 0) {
                        JniAOAChannelNative.onConnect(CHANNEL_BODY, fd)
                    }
                    installCallbackGate(generation)
                    JniW4Native.registerW4Callbacks()
                    JniAp03Native.registerAp03Callbacks()
                    sdkActive = true
                    ConnectionRuntimeImpl.setCurrentPhase(ConnectionPhase.CONNECTED)
                } else {
                    ConnectionRuntimeImpl.setCurrentPhase(ConnectionPhase.ERROR)
                }
                result
            } catch (t: Throwable) {
                Log.e(TAG, "initAoa failed", t)
                ConnectionRuntimeImpl.setCurrentPhase(ConnectionPhase.ERROR)
                -1
            } finally {
                ConnectionRuntimeImpl.setTransitionInProgress(false)
            }
        }
    }

    override fun uninit(): Int {
        return runSerialized("uninit") {
            ConnectionRuntimeImpl.incrementSessionGeneration()
            ConnectionRuntimeImpl.setTransitionInProgress(true)
            ConnectionRuntimeImpl.setCurrentPhase(ConnectionPhase.DISCONNECTED)

            try {
                val result = JniCommonNative.unInitSDK()
                sdkActive = false
                ConnectionRuntimeImpl.setCurrentTransport(TransportMode.NONE)
                ConnectionRuntimeImpl.setCurrentPhase(ConnectionPhase.IDLE)
                result
            } catch (t: Throwable) {
                Log.e(TAG, "uninit failed", t)
                ConnectionRuntimeImpl.setCurrentPhase(ConnectionPhase.ERROR)
                -1
            } finally {
                ConnectionRuntimeImpl.setTransitionInProgress(false)
            }
        }
    }

    override fun getCurrentType(): Int {
        return runSerialized("getCurrentType") {
            try {
                JniSdkEngine.getCurrentSDKType()
            } catch (t: Throwable) {
                Log.e(TAG, "getCurrentType failed", t)
                -1
            }
        }
    }

    private fun installCallbackGate(generation: Int) {
        val token = callbackGate.tokenFor(generation)
        PowerSdkEventHandler.installCallbackGate(callbackGate, token)
    }

    private fun runSerialized(name: String, block: () -> Int): Int {
        return try {
            executor.submit<Int> { block() }.get()
        } catch (t: Throwable) {
            Log.e(TAG, "$name execution failed", t)
            ConnectionRuntimeImpl.setCurrentPhase(ConnectionPhase.ERROR)
            ConnectionRuntimeImpl.setTransitionInProgress(false)
            -1
        }
    }
}
