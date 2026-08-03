package com.visionminus.vision_minus.connection

/**
 * Defines a transport-agnostic network reachability probe contract.
 */
interface ReachabilityProbe {
    fun probe(host: String, port: Int, timeoutMs: Long): Boolean
}
