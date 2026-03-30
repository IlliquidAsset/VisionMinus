package com.visionminus.vision_minus.connection

import android.util.Log

class CallbackGate(private val runtime: ConnectionRuntime) {
    data class GenerationToken(val value: Int)

    fun tokenForCurrentGeneration(): GenerationToken = GenerationToken(runtime.sessionGeneration)

    fun tokenFor(generation: Int): GenerationToken = GenerationToken(generation)

    fun isCurrent(token: GenerationToken): Boolean = runtime.sessionGeneration == token.value

    fun logDropped(source: String, token: GenerationToken) {
        Log.d(
            TAG,
            "Dropped stale callback from $source for generation ${token.value} (current: ${runtime.sessionGeneration})"
        )
    }

    inline fun runIfCurrent(token: GenerationToken, source: String, callback: () -> Unit) {
        if (isCurrent(token)) {
            callback()
        } else {
            logDropped(source, token)
        }
    }

    fun <T> gate(token: GenerationToken, source: String, callback: (T) -> Unit): (T) -> Unit {
        return { value ->
            if (isCurrent(token)) {
                callback(value)
            } else {
                logDropped(source, token)
            }
        }
    }

    companion object {
        private const val TAG = "CallbackGate"
    }
}
