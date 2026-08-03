package com.powervision.natives.model

/**
 * Joystick input sent to the water drone.
 * x: left/right, y: forward/back, r: rotation, z: unused (altitude for flying drones)
 */
class Rocker {
    @JvmField var x: Int = 0
    @JvmField var y: Int = 0
    @JvmField var r: Int = 0
    @JvmField var z: Int = 0
}
