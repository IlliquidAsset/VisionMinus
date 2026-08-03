package com.visionminus.vision_minus.connection

/**
 * Declares the canonical lifecycle phases of the Connection Core state machine.
 */
enum class ConnectionPhase {
    IDLE,
    DISCOVERING,
    TRANSPORT_AVAILABLE,
    CONNECTING,
    SDK_ACTIVE,
    DRONE_CONNECTING,
    CONNECTED,
    DEGRADED,
    DISCONNECTED,
    ERROR,
}
