.class public interface abstract Lcom/powervision/camera/camera/CameraListener;
.super Ljava/lang/Object;
.source "CameraListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnGetMuxerFormatListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnSetMuxerFormatListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraOnEnableGestureListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraOnGestureStopTrackListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraOnGestureStartTrackListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraOnSetGestureOnlyDiscerningTypeListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraOnGetGestureFirstTimeTeachingStateListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraOnSetGestureFirstTimeTeachingStateListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnSDStorageSlowListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnGetPhotoStyleListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnGetTypeCModeListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnSetTypeCModeListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraOnCameraSDCardSpeedDetectedListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraOnCameraSensorHighTemperatureListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraOnCameraStopRecordStateListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraOnPhotoStateListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraOnGestureInternalStorageFullListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraOnGestureSDFullListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraOnGetHeadLightStateListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraOnEnableHeadLightListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraOnGetAudioRateListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraOnSetAudioRateListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraOnRecordDurationListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraIsSaveLapsePhotoListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraHDRMultiplePhotoStateListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraAEBMultiplePhotoStateListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnInternalStorageFullListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnSDFullListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnGetRtspBitrateListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnSetRtspBitrateListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnEnableLogoListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnSetSysTimeListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraNotifyEnableAudioListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetCameraAllParametersListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraNotifyStopDelayTimePhotoListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraNotifySetPhotoFileFormatListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetPhotoFileFormatListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetRestRecordTimeListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetEmmcStorageSizeListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetSDStorageSizeListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetRecordTimeListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetRestPhotoNumberListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraNotifyFormatStorageDeviceListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraSetCurrentStorageDeviceListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraGetStorageDeviceTypeListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraSetCaptureModeListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraResetCameraParamListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraEnableResistBlinkListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraSetSaturationListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraSetContrastListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraSetLuminanceListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraSetPhotoStyleListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraSetWhiteBalanceListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraGetWhiteBalanceListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraSetMeteringModeListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraSetEVListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraSetExposureTimeListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraSetIsoListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraSetExposureModeListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraGetCurrentExposureStatusListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraNotifyHistogramDataListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraNotifyEnableHistogramListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraGetResolutionListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraResolutionChangeListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraControllListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraAudioConnectStateListener;,
        Lcom/powervision/camera/camera/CameraListener$CameraConnectStateListener;
    }
.end annotation


# virtual methods
.method public abstract onCameraConnect()V
.end method

.method public abstract onCameraConnectFaile()V
.end method

.method public abstract onCameraConnectHeartBeatTimeOut()V
.end method

.method public abstract onCameraConnectTimeOut()V
.end method

.method public abstract onCameraDisconnect()V
.end method
