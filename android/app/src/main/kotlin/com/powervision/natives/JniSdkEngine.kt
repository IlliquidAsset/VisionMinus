package com.powervision.natives

object JniSdkEngine {
    init {
        System.loadLibrary("PowerSDK")
    }

    @JvmStatic external fun initSdkWithWIFI(connectType: Int): Int
    @JvmStatic external fun getCurrentSDKType(): Int
}
