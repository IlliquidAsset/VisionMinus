package com.powervision.natives

import com.powervision.natives.callback.DophinCallback

object PVSDK_W4_API {
    @Volatile
    var rayArmStatusListener: DophinCallback.RayArmStatusListener? = null
        private set

    @JvmStatic
    fun get(): PVSDK_W4_API = this

    fun getArmStatusListener(): DophinCallback.RayArmStatusListener? = rayArmStatusListener

    fun setArmStatusListener(listener: DophinCallback.RayArmStatusListener?) {
        rayArmStatusListener = listener
    }
}
