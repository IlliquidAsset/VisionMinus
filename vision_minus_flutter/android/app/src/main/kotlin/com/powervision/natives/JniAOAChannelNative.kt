package com.powervision.natives

import com.visionminus.vision_minus.UsbConnectionManager

object JniAOAChannelNative {
    @JvmStatic @Synchronized external fun onConnect(channelId: Int, fd: Int): Int
    @JvmStatic @Synchronized external fun onRead(channelId: Int, data: ByteArray): Int

    // Callbacks from native .so — the library calls these static methods
    @JvmStatic
    fun connectAOAChannel(channelId: Int) {
        UsbConnectionManager.onAOAChannelConnected(channelId)
    }

    @JvmStatic
    fun disconnectAOAChannel(channelId: Int) {
        UsbConnectionManager.onAOAChannelDisconnected(channelId)
    }

    @JvmStatic @Synchronized
    fun sendBuf(channelId: Int, buffer: ByteArray, length: Int): Int {
        return UsbConnectionManager.sendData(channelId, buffer, length)
    }
}
