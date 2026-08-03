package com.powervision.natives

object JniRemoteNative {
    @JvmField @Volatile var ele: Int = -1

    @JvmStatic fun Ap03NotifyOnGetBootLoaderStatusListener(p0: Int) {}
    @JvmStatic fun Ap03NotifyOnRemoteCalibraResultListener(p0: Int) {}
    @JvmStatic fun Ap03NotifyOnRemoteElectricResultListener(p0: Int) {}
    @JvmStatic fun Ap03NotifyOnRemoteKeyResultListener(p0: Int, p1: Int) {}
    @JvmStatic fun Ap03NotifyOnRemoteManualControlResultListener(p0: Int, p1: Int, p2: Int, p3: Int) {}
    @JvmStatic fun Ap03NotifyOnRemoteMcuUpgradeStatusListener(p0: Int, p1: Int) {}
    @JvmStatic fun Ap03NotifyOnRemoteThumbwheelResultListener(p0: Int, p1: Int, p2: Int) {}
    @JvmStatic fun Ap03NotifyRemoteConnectLinkListener(p0: Int) {}
    @JvmStatic fun Ap03NotifyRemoteConnectListener(p0: Int) {}
    @JvmStatic fun Ap03NotifyonRemoteParameterResultIntListener(p0: Int, p1: String, p2: Int) {}

    @JvmStatic external fun completeCalibar(): Int
    @JvmStatic external fun connectRemote(): Int
    @JvmStatic external fun disConnectRemote(): Int
    @JvmStatic external fun downloadRemoteParameter(p0: String): Int
    @JvmStatic external fun getBootLoaderStatus(): Int
    @JvmStatic external fun mcuUpgrade(p0: String): Int
    @JvmStatic external fun registerRemoteCallbacks(): Int
    @JvmStatic external fun remoteConnectLink(): Int
    @JvmStatic external fun remoteDisConnectLink(): Int
    @JvmStatic external fun startCalibar(): Int
    @JvmStatic external fun uploadRemoteFloatParameter(p0: String, p1: Float): Int
    @JvmStatic external fun uploadRemoteIntParameter(p0: String, p1: Int): Int
    @JvmStatic external fun uploadRemoteLongParameter(p0: String, p1: Long): Int
}
