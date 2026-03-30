package com.visionminus.vision_minus.connection

/**
 * Defines WiFi transport discovery and endpoint reachability checks.
 */
interface WifiDetector {
    fun getConfidence(): WifiConfidence
    fun isReachable(ip: String, port: Int, timeoutMs: Long): Boolean
}
