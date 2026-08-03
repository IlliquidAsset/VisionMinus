package com.powervision.natives.model

/**
 * Parameters for a single waypoint in a mission.
 * speed: thrust percentage (1-100)
 * stayTime: dwell time at waypoint (seconds)
 * recvRadius: acceptance radius to count as "reached" (meters)
 * direction: heading at waypoint (degrees)
 * x: latitude (float)
 * y: longitude (float)
 * z: altitude (0 for water drone)
 * seq: sequence number in mission
 */
class WayPointParameter {
    @JvmField var stayTime: Float = 0f
    @JvmField var recvRadius: Float = 5f
    @JvmField var speed: Float = 0f
    @JvmField var direction: Float = 0f
    @JvmField var x: Float = 0f
    @JvmField var y: Float = 0f
    @JvmField var z: Float = 0f
    @JvmField var seq: Int = 0
}
