package com.visionminus.vision_minus.connection

import android.os.Handler
import android.os.Looper
import io.flutter.plugin.common.EventChannel

object ConnectionRuntimeImpl : ConnectionRuntime, EventChannel.StreamHandler {
    const val CHANNEL_NAME = "com.visionminus/connection_state"

    private val lock = Any()
    private val mainHandler = Handler(Looper.getMainLooper())

    private var transport = TransportMode.NONE
    private var phase = ConnectionPhase.IDLE
    private var generation = 0
    private var transitionInProgress = false

    @Volatile
    private var sink: EventChannel.EventSink? = null

    override val currentTransport: TransportMode
        get() = synchronized(lock) { transport }

    override val currentPhase: ConnectionPhase
        get() = synchronized(lock) { phase }

    override val sessionGeneration: Int
        get() = synchronized(lock) { generation }

    override val isTransitionInProgress: Boolean
        get() = synchronized(lock) { transitionInProgress }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        sink = events
        emitState("listen")
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }

    fun incrementSessionGeneration(): Int {
        val snapshot: Map<String, Any>
        val updated: Int
        synchronized(lock) {
            generation += 1
            updated = generation
            snapshot = snapshotLocked("generation_increment")
        }
        emit(snapshot)
        return updated
    }

    fun setCurrentTransport(value: TransportMode) {
        val snapshot: Map<String, Any>
        synchronized(lock) {
            transport = value
            snapshot = snapshotLocked("transport_change")
        }
        emit(snapshot)
    }

    fun setCurrentPhase(value: ConnectionPhase) {
        val snapshot: Map<String, Any>
        synchronized(lock) {
            phase = value
            snapshot = snapshotLocked("phase_change")
        }
        emit(snapshot)
    }

    fun setTransitionInProgress(value: Boolean) {
        val snapshot: Map<String, Any>
        synchronized(lock) {
            transitionInProgress = value
            snapshot = snapshotLocked("transition_change")
        }
        emit(snapshot)
    }

    fun emitState(reason: String) {
        val snapshot: Map<String, Any>
        synchronized(lock) {
            snapshot = snapshotLocked(reason)
        }
        emit(snapshot)
    }

    private fun snapshotLocked(reason: String): Map<String, Any> {
        return mapOf(
            "type" to "connection_state",
            "reason" to reason,
            "transport" to transport.name,
            "phase" to phase.name,
            "sessionGeneration" to generation,
            "isTransitionInProgress" to transitionInProgress,
        )
    }

    private fun emit(event: Map<String, Any>) {
        val eventSink = sink ?: return
        mainHandler.post { eventSink.success(event) }
    }
}
