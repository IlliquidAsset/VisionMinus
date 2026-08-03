package com.visionminus.vision_minus.connection

/**
 * Defines the canonical runtime snapshot for Connection Core orchestration.
 */
interface ConnectionRuntime {
    val currentTransport: TransportMode
    val currentPhase: ConnectionPhase
    val sessionGeneration: Int
    val isTransitionInProgress: Boolean
}
