package com.powervision.natives

object JniW4RemoteNative {
    @JvmField @Volatile var bootLoaderstatus: Int = 0

    @JvmStatic fun LinkStatusCallBackFromJni(p0: Int) {}
    @JvmStatic external fun alert9342Ip(p0: String, p1: Int): Unit
    @JvmStatic external fun alterRemoteIp(p0: String, p1: Int): Unit
    @JvmStatic external fun connect9342Link(): Unit
    @JvmStatic external fun connectLink(): Int
    @JvmStatic external fun connectRemote(): Int
    @JvmStatic fun connectRemoteCallBackFromJni(p0: Int) {}
    @JvmStatic external fun disConnectLink(): Int
    @JvmStatic external fun disconnect9342Link(): Unit
    @JvmStatic external fun disconnectRemote(): Unit
    @JvmStatic external fun downLoadParameter(p0: String): Int
    @JvmStatic external fun get9342Version(): Int
    @JvmStatic fun get9342VersionCallBackFromJni(p0: String) {}
    @JvmStatic external fun getBooterLoader(): Unit
    @JvmStatic fun onGetBootLoaderFromJni(p0: Int) {}
    @JvmStatic fun onKeyResultCallBackFromJni(p0: Int) {}
    @JvmStatic fun onKey_B_ResultCallBackFromJni(p0: Int) {}
    @JvmStatic fun onPvw4RemoteElectricResultCallBackFromJni(p0: Int) {}
    @JvmStatic fun onPvw4RemoteManualControlResultCallBackFromJni(p0: Int, p1: Int, p2: Int, p3: Int) {}
    @JvmStatic fun onPvw4RemoteParameterResultCallBackFromJni(p0: Int, p1: String, p2: Float) {}
    @JvmStatic fun onPvw4RemoteParameterResultCallBackFromJni(p0: Int, p1: String, p2: Int) {}
    @JvmStatic fun onPvw4RemoteParameterResultCallBackFromJni(p0: Int, p1: String, p2: Long) {}
    @JvmStatic fun onPvw4RemoteThumbwheelResultCallBackFromJni(p0: Int, p1: Int, p2: Int) {}
    @JvmStatic fun onW4RemoteMcuBUpgradeCallBckFromJni(p0: Int, p1: Int) {}
    @JvmStatic fun onW4RemoteMcuUpdateCallBackFromJni(p0: Int, p1: Int) {}
    @JvmStatic external fun regisiter9342CallBack(): Unit
    @JvmStatic external fun registerCallbacks(): Int
    @JvmStatic external fun updateMcu(p0: Int, p1: String, p2: String): Int
    @JvmStatic external fun upgrade9342(p0: String, p1: String, p2: String, p3: String): Int
    @JvmStatic external fun uploadParameter(p0: String, p1: Float): Int
    @JvmStatic external fun uploadParameter(p0: String, p1: Int): Int
    @JvmStatic external fun uploadParameter(p0: String, p1: Long): Int
    @JvmStatic fun w49342LinkCallBack(p0: Int) {}
    @JvmStatic fun w49342UpgrageCallBack(p0: Int, p1: Int) {}
}
