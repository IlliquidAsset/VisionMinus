package com.powervision.natives

object JniCommonNative {
    init {
        System.loadLibrary("PowerSDK")
    }

    @JvmStatic external fun initSDKAOA(): Int
    @JvmStatic external fun initSDKWIFI(): Int
    @JvmStatic external fun unInitSDK(): Int
}
