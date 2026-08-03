package com.powervision.natives

object JniGimbalNative {
    @JvmStatic fun Ap03NotifyOnGimbalAttitudeListener(p0: Int, p1: Int, p2: Int) {}
    @JvmStatic fun Ap03NotifyOnGimbalCalibrationResultListener(p0: String, p1: Int) {}
    @JvmStatic fun Ap03NotifyOnGimbalParameterResultFloatListener(p0: String, p1: String, p2: Float) {}
    @JvmStatic fun Ap03NotifyOnGimbalParameterResultIntListener(p0: String, p1: String, p2: Int) {}
    @JvmStatic fun Ap03NotifyOnGimbalParameterResultLongListener(p0: String, p1: String, p2: Long) {}
    @JvmStatic fun Ap03NotifyOnGimbalStatusListener(p0: IntArray) {}
    @JvmStatic fun Ap03OnResetAllParamResultListener(p0: Int) {}

    @JvmStatic external fun downloadGimbalParameter(p0: String): Int
    @JvmStatic external fun registerGimbalCallbacks(): Int
    @JvmStatic external fun resetAllParam(): Int
    @JvmStatic external fun setGimbalAngle(p0: Int, p1: Int, p2: Int): Int
    @JvmStatic external fun setGimbalPalstance(p0: Int, p1: Int, p2: Int): Int
    @JvmStatic external fun startUpGimbalCalibration(): Int
    @JvmStatic external fun uploadGimbalFloatParameter(p0: String, p1: Float): Int
    @JvmStatic external fun uploadGimbalIntParameter(p0: String, p1: Int): Int
    @JvmStatic external fun uploadGimbalLongParameter(p0: String, p1: Float): Int
}
