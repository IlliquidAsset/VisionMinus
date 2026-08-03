package com.visionminus.vision_minus.connection

/**
 * Defines SDK lifecycle operations for transport-specific initialization.
 */
interface SdkInitializer {
    fun initWifi(): Int
    fun initAoa(fd: Int): Int
    fun uninit(): Int
    fun getCurrentType(): Int
}
