package com.powervision.natives

object JniDl01Native {
    @JvmStatic fun NotifyOnAirConnectLinkResultListener(p0: String) {}
    @JvmStatic fun NotifyOnAirSetGetDl01OperationResultListener(p0: String, p1: String, p2: String) {}
    @JvmStatic fun NotifyOnConnectLinkResultListener(p0: String) {}
    @JvmStatic fun NotifyOnSetGetDl01OperationResultListener(p0: Int, p1: Int, p2: String) {}
    @JvmStatic external fun UpdateDl01(p0: String, p1: String, p2: String, p3: Int, p4: String): Unit
    @JvmStatic external fun airConnectLink(): Int
    @JvmStatic external fun airSetGetOperation(p0: Int, p1: String, p2: Int): Int
    @JvmStatic external fun alterAirDl01Ip(p0: String, p1: Int): Unit
    @JvmStatic external fun alterGroundDl01Ip(p0: String, p1: Int): Unit
    @JvmStatic external fun connectDl01Link(): Int
    @JvmStatic external fun disconnectAir(): Unit
    @JvmStatic external fun disconnectGround(): Unit
    @JvmStatic fun onDl01UpdateResult(p0: Int, p1: Int) {}
    @JvmStatic external fun registerDl01Callbacks(): Int
    @JvmStatic external fun setGetOperation(p0: Int, p1: String, p2: Int): Int
}
