package com.powervision.natives

object JniCameraNative {
    const val JNI_NATIVES_RETURN_VALUE_SUCCESS = 0
    const val JNI_NATIVES_RETURN_VALUE_FAILED = -1

    @JvmStatic fun CameraNotifyConnectionListener(p0: Int): Int = JNI_NATIVES_RETURN_VALUE_SUCCESS
    @JvmStatic fun CameraNotifyEnableHDRListener(p0: String) {}
    @JvmStatic fun CameraNotifyEnableHistogram(p0: String) {}
    @JvmStatic fun CameraNotifyEnableResistBlink(p0: String) {}
    @JvmStatic fun CameraNotifyFormatStorageDevice(p0: String) {}
    @JvmStatic fun CameraNotifyGetAllParameters(p0: String) {}
    @JvmStatic fun CameraNotifyGetCameraVersionListener(p0: String) {}
    @JvmStatic fun CameraNotifyGetCameraWorkStateListener(p0: String) {}
    @JvmStatic fun CameraNotifyGetCurrentExposureStatus(p0: String) {}
    @JvmStatic fun CameraNotifyGetCurrentResolution(p0: String) {}
    @JvmStatic fun CameraNotifyGetEmmcStorageSize(p0: String) {}
    @JvmStatic fun CameraNotifyGetPhotoFileFormat(p0: String) {}
    @JvmStatic fun CameraNotifyGetPhotoStyle(p0: String) {}
    @JvmStatic fun CameraNotifyGetRecordTime(p0: String) {}
    @JvmStatic fun CameraNotifyGetRestPhotoNumber(p0: String) {}
    @JvmStatic fun CameraNotifyGetRestRecordTime(p0: String) {}
    @JvmStatic fun CameraNotifyGetSDStateListener(p0: String) {}
    @JvmStatic fun CameraNotifyGetSDStorageSize(p0: String) {}
    @JvmStatic fun CameraNotifyGetStorageDeviceType(p0: String) {}
    @JvmStatic fun CameraNotifyGetVisionVersion(p0: String) {}
    @JvmStatic fun CameraNotifyGetWhiteBalanceListener(p0: String) {}
    @JvmStatic fun CameraNotifyHistogramData(p0: IntArray, p1: Int) {}
    @JvmStatic fun CameraNotifyOnCameraSDCardSpeedDetected(p0: String) {}
    @JvmStatic fun CameraNotifyOnCameraSensorHighTemperature(p0: Int) {}
    @JvmStatic fun CameraNotifyOnCameraSingleEngineArmException(p0: String) {}
    @JvmStatic fun CameraNotifyOnCameraStopRecordState(p0: String) {}
    @JvmStatic fun CameraNotifyOnConnectAudio(p0: Int) {}
    @JvmStatic fun CameraNotifyOnCreateLapseFiile(p0: String) {}
    @JvmStatic fun CameraNotifyOnDelayPhoto(p0: String) {}
    @JvmStatic fun CameraNotifyOnEnableAudio(p0: String) {}
    @JvmStatic fun CameraNotifyOnEnableGesture(p0: String) {}
    @JvmStatic fun CameraNotifyOnEnableHeadLight(p0: String) {}
    @JvmStatic fun CameraNotifyOnEnableLogo(p0: String) {}
    @JvmStatic fun CameraNotifyOnForwardLamp() {}
    @JvmStatic fun CameraNotifyOnGestureInternalStorageFull() {}
    @JvmStatic fun CameraNotifyOnGestureSDFull() {}
    @JvmStatic fun CameraNotifyOnGestureSnap() {}
    @JvmStatic fun CameraNotifyOnGestureSnapGroup() {}
    @JvmStatic fun CameraNotifyOnGestureStartRecord() {}
    @JvmStatic fun CameraNotifyOnGestureStartTrack() {}
    @JvmStatic fun CameraNotifyOnGestureStopRecord() {}
    @JvmStatic fun CameraNotifyOnGestureStopTrack() {}
    @JvmStatic fun CameraNotifyOnGetAudioRate(p0: String) {}
    @JvmStatic fun CameraNotifyOnGetContrast(p0: String) {}
    @JvmStatic fun CameraNotifyOnGetGestureFirstTimeTeachingState(p0: String) {}
    @JvmStatic fun CameraNotifyOnGetGestureStat(p0: String) {}
    @JvmStatic fun CameraNotifyOnGetHeadLightState(p0: String) {}
    @JvmStatic fun CameraNotifyOnGetLapseFileDuration(p0: String) {}
    @JvmStatic fun CameraNotifyOnGetLapseSnap(p0: String) {}
    @JvmStatic fun CameraNotifyOnGetLuminance(p0: String) {}
    @JvmStatic fun CameraNotifyOnGetMuxerFormat(p0: String) {}
    @JvmStatic fun CameraNotifyOnGetRtspBitrate(p0: String) {}
    @JvmStatic fun CameraNotifyOnGetSaturation(p0: String) {}
    @JvmStatic fun CameraNotifyOnGetTypeCMode(p0: String) {}
    @JvmStatic fun CameraNotifyOnInternalStorageFull() {}
    @JvmStatic fun CameraNotifyOnIsSaveLapsePhoto(p0: String) {}
    @JvmStatic fun CameraNotifyOnLapseFileDuration(p0: Int, p1: Int) {}
    @JvmStatic fun CameraNotifyOnLapsePhotoNumber(p0: Int) {}
    @JvmStatic fun CameraNotifyOnMultiplePhoto(p0: Int) {}
    @JvmStatic fun CameraNotifyOnOnAEBMultiplePhotoState(p0: Int) {}
    @JvmStatic fun CameraNotifyOnOnHDRMultiplePhotoState(p0: String) {}
    @JvmStatic fun CameraNotifyOnPhotoState(p0: Int) {}
    @JvmStatic fun CameraNotifyOnRecordDuration(p0: Int) {}
    @JvmStatic fun CameraNotifyOnSDFull() {}
    @JvmStatic fun CameraNotifyOnSDStorageSlow() {}
    @JvmStatic fun CameraNotifyOnSetAudioRate(p0: String) {}
    @JvmStatic fun CameraNotifyOnSetGestureFirstTimeTeachingState(p0: String) {}
    @JvmStatic fun CameraNotifyOnSetGestureOnlyDiscerningType(p0: String) {}
    @JvmStatic fun CameraNotifyOnSetMuxerFormat(p0: String) {}
    @JvmStatic fun CameraNotifyOnSetRtspBitrate(p0: String) {}
    @JvmStatic fun CameraNotifyOnSetTypeCMode(p0: String) {}
    @JvmStatic fun CameraNotifyOnStopLapsePhoto(p0: String) {}
    @JvmStatic fun CameraNotifyResetCameraParam(p0: String) {}
    @JvmStatic fun CameraNotifySetCaptureMode(p0: String) {}
    @JvmStatic fun CameraNotifySetContrast(p0: String) {}
    @JvmStatic fun CameraNotifySetCurrentStorageDevice(p0: String) {}
    @JvmStatic fun CameraNotifySetEV(p0: String) {}
    @JvmStatic fun CameraNotifySetExposureMode(p0: String) {}
    @JvmStatic fun CameraNotifySetExposureTime(p0: String) {}
    @JvmStatic fun CameraNotifySetISOListener(p0: String) {}
    @JvmStatic fun CameraNotifySetLongTimeExposureListener(p0: String) {}
    @JvmStatic fun CameraNotifySetLuminance(p0: String) {}
    @JvmStatic fun CameraNotifySetMeteringMode(p0: String) {}
    @JvmStatic fun CameraNotifySetPhotoFileFormat(p0: String) {}
    @JvmStatic fun CameraNotifySetPhotoResolutionListener(p0: String) {}
    @JvmStatic fun CameraNotifySetPhotoStyle(p0: String) {}
    @JvmStatic fun CameraNotifySetSaturation(p0: String) {}
    @JvmStatic fun CameraNotifySetShutterSpeedListener(p0: String) {}
    @JvmStatic fun CameraNotifySetSysTime(p0: String) {}
    @JvmStatic fun CameraNotifySetVideoResolutionListener(p0: String) {}
    @JvmStatic fun CameraNotifySetWhiteBalance(p0: String) {}
    @JvmStatic fun CameraNotifyStartPhotoListener(p0: String) {}
    @JvmStatic fun CameraNotifyStartRecordListener(p0: String) {}
    @JvmStatic fun CameraNotifyStatusConnection(p0: Int) {}
    @JvmStatic fun CameraNotifyStopDelayTimePhoto(p0: String) {}
    @JvmStatic fun CameraNotifyStopRecordListener(p0: String) {}
    @JvmStatic fun CameraNotifySwitchToRecordModeListener(p0: String) {}
    @JvmStatic fun CameraNotifySwitchToSnapModeListener(p0: String) {}

    @JvmStatic external fun commandConnect(): Int
    @JvmStatic external fun commandDisConnect(): Int
    @JvmStatic external fun connectAudio(): Int
    @JvmStatic external fun createLapseFiile(): Int
    @JvmStatic external fun disConnectAudio(): Int
    @JvmStatic external fun enableGesture(p0: Int): Int
    @JvmStatic external fun enableHeadLight(p0: Int): Int
    @JvmStatic external fun enableHistogram(p0: Int): Int
    @JvmStatic external fun enableLogo(p0: Int): Int
    @JvmStatic external fun enableResistBlink(p0: Int): Int
    @JvmStatic external fun enbaleAudio(p0: Int): Int
    @JvmStatic external fun formatStorageDevice(p0: Int): Int
    @JvmStatic external fun getAllParameters(): Int
    @JvmStatic external fun getAudioRate(): Int
    @JvmStatic external fun getCameraVersion(): Int
    @JvmStatic external fun getCameraWorkState(): Int
    @JvmStatic external fun getContrast(): Int
    @JvmStatic external fun getCurrentExposureStatus(): Int
    @JvmStatic external fun getCurrentResolution(): Int
    @JvmStatic external fun getEmmcStorageSize(): Int
    @JvmStatic external fun getGestureFirstTimeTeachingState(): Int
    @JvmStatic external fun getGestureStat(): Int
    @JvmStatic external fun getHeadLightState(): Int
    @JvmStatic external fun getLapseFileDuration(): Int
    @JvmStatic external fun getLapseSnap(): Int
    @JvmStatic external fun getLuminance(): Int
    @JvmStatic external fun getMuxerFormat(): Int
    @JvmStatic external fun getPhotoFileFormat(): Int
    @JvmStatic external fun getPhotoStyle(): Int
    @JvmStatic external fun getRecordTime(): Int
    @JvmStatic external fun getRestPhotoNumber(): Int
    @JvmStatic external fun getRestRecordTime(): Int
    @JvmStatic external fun getRtspBitrate(): Int
    @JvmStatic external fun getSDStorageSize(): Int
    @JvmStatic external fun getSaturation(): Int
    @JvmStatic external fun getStorageDeviceType(): Int
    @JvmStatic external fun getTypeCMode(): Int
    @JvmStatic external fun getVisionVersion(): Int
    @JvmStatic external fun getWhiteBalance(): Int
    @JvmStatic external fun isSaveLapsePhoto(p0: Int): Int
    @JvmStatic external fun registerCallbacks(): Int
    @JvmStatic external fun resetCameraParam(): Int
    @JvmStatic external fun sendAudio(p0: ByteArray, p1: Int, p2: Int, p3: Int): Int
    @JvmStatic external fun setAudioRate(p0: Int): Int
    @JvmStatic external fun setCaptureMode(p0: Int, p1: Int, p2: Int): Int
    @JvmStatic external fun setContrast(p0: Int): Int
    @JvmStatic external fun setCurrentStorageDevice(p0: Int): Int
    @JvmStatic external fun setEV(p0: Int): Int
    @JvmStatic external fun setExposureMode(p0: Int): Int
    @JvmStatic external fun setExposureTime(p0: Int): Int
    @JvmStatic external fun setGestureFirstTimeTeachingState(): Int
    @JvmStatic external fun setGestureOnlyDiscerningType(p0: Int): Int
    @JvmStatic external fun setISO(p0: Int): Int
    @JvmStatic external fun setLuminance(p0: Int): Int
    @JvmStatic external fun setMeteringMode(p0: Int): Int
    @JvmStatic external fun setMuxerFormat(p0: Int): Int
    @JvmStatic external fun setPhotoFileFormat(p0: Int): Int
    @JvmStatic external fun setPhotoResolution(p0: Int): Int
    @JvmStatic external fun setPhotoStyle(p0: Int): Int
    @JvmStatic external fun setRtspBitrate(p0: Float): Int
    @JvmStatic external fun setSaturation(p0: Int): Int
    @JvmStatic external fun setSysTime(p0: String): Int
    @JvmStatic external fun setTypeCMode(p0: Int): Int
    @JvmStatic external fun setVideoResolution(p0: Int): Int
    @JvmStatic external fun setWhiteBalance(p0: Int): Int
    @JvmStatic external fun startPhoto(): Int
    @JvmStatic external fun startRecord(): Int
    @JvmStatic external fun statusConnect(): Int
    @JvmStatic external fun statusDisConnect(): Int
    @JvmStatic external fun stopDelayTimePhoto(): Int
    @JvmStatic external fun stopLapsePhoto(): Int
    @JvmStatic external fun stopRecord(): Int
    @JvmStatic external fun switchToRecordMode(): Int
    @JvmStatic external fun switchToSnapMode(): Int
}
