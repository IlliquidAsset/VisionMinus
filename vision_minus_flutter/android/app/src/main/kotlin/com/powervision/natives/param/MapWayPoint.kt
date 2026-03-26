package com.powervision.natives.param

import com.powervision.natives.model.WayPoint

class MapWayPoint {
    @JvmField var pointList: Array<WayPoint>? = null
    @JvmField var wayPointGPS: WayPoint? = null
    @JvmField var gridSpacing: Double = 0.0
    @JvmField var gridAngle: Double = 0.0
    @JvmField var gridMode: Byte = 0
    @JvmField var gridRefly: Boolean = false
    @JvmField var hoverAndCaptureEnabled: Boolean = false
    @JvmField var hoverAndCaptureDelaySeconds: Double = 0.0
    @JvmField var gridTriggerCamera: Boolean = false
    @JvmField var gridTriggerCameraDist: Double = 0.0
    @JvmField var _turnaroundDist: Double = 0.0
}
