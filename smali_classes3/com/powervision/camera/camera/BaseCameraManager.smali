.class public Lcom/powervision/camera/camera/BaseCameraManager;
.super Ljava/lang/Object;
.source "BaseCameraManager.java"


# instance fields
.field private CameraNotifyStartPhotoListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyStartPhotoListener;

.field private Tag:Ljava/lang/String;

.field aebValue:I

.field audioSampleRate:I

.field cameraAudioState:I

.field private cameraNotifyEnableHistogramListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyEnableHistogramListener;

.field private cameraNotifyEnableResistBlinkListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyEnableResistBlinkListener;

.field private cameraNotifyFormatStorageDeviceListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyFormatStorageDeviceListener;

.field cameraNotifyFormatStorageDeviceListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraNotifyFormatStorageDeviceListener;",
            ">;"
        }
    .end annotation
.end field

.field private cameraNotifyGetCameraAllParametersListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetCameraAllParametersListener;

.field private cameraNotifyGetCurrentExposureStatusListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetCurrentExposureStatusListener;

.field private cameraNotifyGetEmmcStorageSizeListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetEmmcStorageSizeListener;

.field cameraNotifyGetEmmcStorageSizeListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetEmmcStorageSizeListener;",
            ">;"
        }
    .end annotation
.end field

.field private cameraNotifyGetPhotoFileFormatListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetPhotoFileFormatListener;

.field cameraNotifyGetPhotoFileFormatListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetPhotoFileFormatListener;",
            ">;"
        }
    .end annotation
.end field

.field private cameraNotifyGetRecordTimeListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetRecordTimeListener;

.field cameraNotifyGetRecordTimeListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetRecordTimeListener;",
            ">;"
        }
    .end annotation
.end field

.field private cameraNotifyGetRestPhotoNumberListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetRestPhotoNumberListener;

.field cameraNotifyGetRestPhotoNumberListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetRestPhotoNumberListener;",
            ">;"
        }
    .end annotation
.end field

.field private cameraNotifyGetRestRecordTimeListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetRestRecordTimeListener;

.field cameraNotifyGetRestRecordTimeListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetRestRecordTimeListener;",
            ">;"
        }
    .end annotation
.end field

.field private cameraNotifyGetSDStorageSizeListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetSDStorageSizeListener;

.field cameraNotifyGetSDStorageSizeListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetSDStorageSizeListener;",
            ">;"
        }
    .end annotation
.end field

.field private cameraNotifyGetStorageDeviceTypeListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetStorageDeviceTypeListener;

.field private cameraNotifyGetWhiteBalanceListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetWhiteBalanceListener;

.field private cameraNotifyHistogramDataListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyHistogramDataListener;

.field private cameraNotifyOnCreateLapseFiile:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnCreateLapseFiile;

.field cameraNotifyOnCreateLapseFiileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnCreateLapseFiile;",
            ">;"
        }
    .end annotation
.end field

.field private cameraNotifyOnDelayPhoto:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnDelayPhoto;

.field cameraNotifyOnDelayPhotoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnDelayPhoto;",
            ">;"
        }
    .end annotation
.end field

.field private cameraNotifyOnEnableAudioListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnEnableAudioListener;

.field private cameraNotifyOnEnableLogoListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnEnableLogoListener;

.field cameraNotifyOnEnableLogoListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnEnableLogoListener;",
            ">;"
        }
    .end annotation
.end field

.field private cameraNotifyOnGetGestureFirstTimeTeachingStateListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetGestureFirstTimeTeachingStateListener;

.field private cameraNotifyOnGetLapseFileDuration:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetLapseFileDuration;

.field cameraNotifyOnGetLapseFileDurationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetLapseFileDuration;",
            ">;"
        }
    .end annotation
.end field

.field private cameraNotifyOnGetLapseSnap:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetLapseSnap;

.field cameraNotifyOnGetLapseSnapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetLapseSnap;",
            ">;"
        }
    .end annotation
.end field

.field private cameraNotifyOnGetMuxerFormatListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetMuxerFormatListener;

.field private cameraNotifyOnGetPhotoStyleListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetPhotoStyleListener;

.field private cameraNotifyOnGetTypeCModeListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetTypeCModeListener;

.field private cameraNotifyOnInternalStorageFullListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnInternalStorageFullListener;

.field cameraNotifyOnInternalStorageFullListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnInternalStorageFullListener;",
            ">;"
        }
    .end annotation
.end field

.field private cameraNotifyOnLapseFileDuration:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnLapseFileDuration;

.field cameraNotifyOnLapseFileDurationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnLapseFileDuration;",
            ">;"
        }
    .end annotation
.end field

.field private cameraNotifyOnLapsePhotoNumber:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnLapsePhotoNumber;

.field cameraNotifyOnLapsePhotoNumberList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnLapsePhotoNumber;",
            ">;"
        }
    .end annotation
.end field

.field private cameraNotifyOnMultiplePhotoListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnMultiplePhotoListener;

.field cameraNotifyOnMultiplePhotoListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnMultiplePhotoListener;",
            ">;"
        }
    .end annotation
.end field

.field private cameraNotifyOnSDFullListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSDFullListener;

.field cameraNotifyOnSDFullListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnSDFullListener;",
            ">;"
        }
    .end annotation
.end field

.field private cameraNotifyOnSDStorageSlowListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSDStorageSlowListener;

.field private cameraNotifyOnSetGestureFirstTimeTeachingStateListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSetGestureFirstTimeTeachingStateListener;

.field private cameraNotifyOnSetGestureOnlyDiscerningTypeListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSetGestureOnlyDiscerningTypeListener;

.field private cameraNotifyOnSetMuxerFormatListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSetMuxerFormatListener;

.field private cameraNotifyOnSetSysTimeListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSetSysTimeListener;

.field private cameraNotifyOnSetTypeCModeListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSetTypeCModeListener;

.field private cameraNotifyOnStopLapsePhoto:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnStopLapsePhoto;

.field cameraNotifyOnStopLapsePhotoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnStopLapsePhoto;",
            ">;"
        }
    .end annotation
.end field

.field private cameraNotifyResetCameraParamListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyResetCameraParamListener;

.field private cameraNotifySetCaptureModeListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetCaptureModeListener;

.field private cameraNotifySetContrastListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetContrastListener;

.field private cameraNotifySetCurrentStorageDeviceListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetCurrentStorageDeviceListener;

.field private cameraNotifySetEVListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetEVListener;

.field private cameraNotifySetExposureModeListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetExposureModeListener;

.field private cameraNotifySetExposureTimeListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetExposureTimeListener;

.field private cameraNotifySetISOListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetISOListener;

.field private cameraNotifySetLuminanceListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetLuminanceListener;

.field private cameraNotifySetMeteringModeListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetMeteringModeListener;

.field private cameraNotifySetPhotoFileFormatListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetPhotoFileFormatListener;

.field cameraNotifySetPhotoFileFormatListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraNotifySetPhotoFileFormatListener;",
            ">;"
        }
    .end annotation
.end field

.field private cameraNotifySetPhotoStyleListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetPhotoStyleListener;

.field private cameraNotifySetSaturationListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetSaturationListener;

.field private cameraNotifySetWhiteBalanceListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetWhiteBalanceListener;

.field private cameraNotifyStopDelayTimePhotoListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyStopDelayTimePhotoListener;

.field contrast:I

.field delayTime:F

.field emmcAllCapacity:I

.field emmcRemainCapacity:I

.field evIntValue:I

.field exposureMode:I

.field exptimeValue:I

.field gestureState:I

.field headlightState:I

.field isCameraAudioState:Z

.field isCameraConnect:Z

.field isCameraStateConnect:Z

.field isEmmcFull:Z

.field isGestureRecordToPhoto:Z

.field isSDFull:Z

.field isSavePhoto:I

.field isSlowSpeedCard:Z

.field isTakingPhoto:Z

.field isoType:I

.field lapseFileDuration:I

.field private lastDisconnectTime:J

.field linesMode:I

.field localAntiFlickerMode:I

.field localAudioState:I

.field localContrast:I

.field localEnableHistogramStatus:I

.field localEvIntValue:I

.field localExposureMode:I

.field localGestureDiscerningType:I

.field localGestureState:I

.field localHeadLightState:I

.field localIsSavePhoto:I

.field localIsoValue:I

.field localLuminance:I

.field localMuxerFormatType:I

.field localPhotoFileFormat:I

.field localPhotoResolution:I

.field localPhotoType:I

.field localPhotoValue:I

.field localResetParamType:I

.field localSaturation:I

.field localShutterValue:I

.field localStorageType:Z

.field localStyleMode:I

.field localVideResolution:I

.field localWaterMarkType:I

.field localWhiteBalance:I

.field luminance:I

.field mAntiFlickerMode:I

.field mCameraAEBMultiplePhotoStateListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraAEBMultiplePhotoStateListener;",
            ">;"
        }
    .end annotation
.end field

.field mCameraAudioListenerConnectStateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraAudioConnectStateListener;",
            ">;"
        }
    .end annotation
.end field

.field mCameraConnectListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener;",
            ">;"
        }
    .end annotation
.end field

.field mCameraControllListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraControllListener;",
            ">;"
        }
    .end annotation
.end field

.field mCameraCurrentResolution:I

.field mCameraCurrentStatus:I

.field mCameraEnableHistogram:Z

.field mCameraEnableResistBlinkListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraEnableResistBlinkListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraGetCameraWorkStateListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetCameraWorkStateListener;

.field mCameraGetCurrentExposureStatusListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraGetCurrentExposureStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field mCameraGetResolutionListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraGetResolutionListener;",
            ">;"
        }
    .end annotation
.end field

.field mCameraGetStorageDeviceTypeListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraGetStorageDeviceTypeListener;",
            ">;"
        }
    .end annotation
.end field

.field mCameraGetWhiteBalanceListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraGetWhiteBalanceListener;",
            ">;"
        }
    .end annotation
.end field

.field mCameraHDRMultiplePhotoStateListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraHDRMultiplePhotoStateListener;",
            ">;"
        }
    .end annotation
.end field

.field mCameraIsSaveLapsePhotoListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraIsSaveLapsePhotoListener;",
            ">;"
        }
    .end annotation
.end field

.field mCameraListenerConnectStateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraConnectStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraNotifyConnectionListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyConnectionListener;

.field mCameraNotifyEnableAudioListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraNotifyEnableAudioListener;",
            ">;"
        }
    .end annotation
.end field

.field mCameraNotifyEnableHistogramListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraNotifyEnableHistogramListener;",
            ">;"
        }
    .end annotation
.end field

.field mCameraNotifyGetCameraAllParametersListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetCameraAllParametersListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraNotifyGetCurrentResolution:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetCurrentResolutionListener;

.field mCameraNotifyHistogramDataListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraNotifyHistogramDataListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraNotifyOnCameraSDCardSpeedDetectedListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnCameraSDCardSpeedDetectedListener;

.field private mCameraNotifyOnCameraSensorHighTemperatureListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnCameraSensorHighTemperatureListener;

.field private mCameraNotifyOnConnectAudioListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnConnectAudioListener;

.field private mCameraNotifyOnEnableGesture:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnEnableGesture;

.field private mCameraNotifyOnEnableHeadLightListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnEnableHeadLightListener;

.field private mCameraNotifyOnForwardLamp:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnForwardLamp;

.field mCameraNotifyOnForwardLampList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnForwardLamp;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraNotifyOnGestureInternalStorageFullListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureInternalStorageFullListener;

.field private mCameraNotifyOnGestureSDFullListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureSDFullListener;

.field private mCameraNotifyOnGestureSnap:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureSnap;

.field private mCameraNotifyOnGestureSnapGroup:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureSnapGroup;

.field mCameraNotifyOnGestureSnapGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureSnapGroup;",
            ">;"
        }
    .end annotation
.end field

.field mCameraNotifyOnGestureSnapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureSnap;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraNotifyOnGestureStartRecord:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureStartRecord;

.field mCameraNotifyOnGestureStartRecordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureStartRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraNotifyOnGestureStartTrack:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureStartTrack;

.field private mCameraNotifyOnGestureStopRecord:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureStopRecord;

.field mCameraNotifyOnGestureStopRecordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureStopRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraNotifyOnGestureStopTrack:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureStopTrack;

.field private mCameraNotifyOnGetAudioRateListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetAudioRateListener;

.field private mCameraNotifyOnGetGestureStat:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetGestureStat;

.field mCameraNotifyOnGetGestureStatList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetGestureStat;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraNotifyOnGetHeadLightStateListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetHeadLightStateListener;

.field mCameraNotifyOnGetMuxerFormatList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnGetMuxerFormatListener;",
            ">;"
        }
    .end annotation
.end field

.field mCameraNotifyOnGetPhotoStyleListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnGetPhotoStyleListener;",
            ">;"
        }
    .end annotation
.end field

.field mCameraNotifyOnGetTypeCModeListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnGetTypeCModeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraNotifyOnIsSaveLapsePhotoListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnIsSaveLapsePhotoListener;

.field private mCameraNotifyOnOnAEBMultiplePhotoStateListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnOnAEBMultiplePhotoStateListener;

.field private mCameraNotifyOnOnHDRMultiplePhotoStateListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnOnHDRMultiplePhotoStateListener;

.field private mCameraNotifyOnPhotoStateListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnPhotoStateListener;

.field private mCameraNotifyOnRecordDurationListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnRecordDurationListener;

.field mCameraNotifyOnRecordDurationListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraOnRecordDurationListener;",
            ">;"
        }
    .end annotation
.end field

.field mCameraNotifyOnSDStorageSlowListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnSDStorageSlowListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraNotifyOnSetAudioRateListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSetAudioRateListener;

.field mCameraNotifyOnSetMuxerFormatList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnSetMuxerFormatListener;",
            ">;"
        }
    .end annotation
.end field

.field mCameraNotifyOnSetSysTimeListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnSetSysTimeListener;",
            ">;"
        }
    .end annotation
.end field

.field mCameraNotifyOnSetTypeCModeListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnSetTypeCModeListener;",
            ">;"
        }
    .end annotation
.end field

.field mCameraNotifySetExposureTimeListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraSetExposureTimeListener;",
            ">;"
        }
    .end annotation
.end field

.field mCameraNotifySetMeteringModeListenermList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraSetMeteringModeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraNotifySetPhotoResolutionListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetPhotoResolutionListener;

.field private mCameraNotifySetVideoResolutionListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetVideoResolutionListener;

.field private mCameraNotifyStartRecordListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyStartRecordListener;

.field private mCameraNotifyStatusConnectionListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyStatusConnectionListener;

.field mCameraNotifyStopDelayTimePhotoListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraNotifyStopDelayTimePhotoListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraNotifyStopRecordListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyStopRecordListener;

.field private mCameraNotifySwitchToRecordModeListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifySwitchToRecordModeListener;

.field private mCameraNotifySwitchToSnapModeListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifySwitchToSnapModeListener;

.field mCameraOnCameraSDCardSpeedDetectedListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraOnCameraSDCardSpeedDetectedListener;",
            ">;"
        }
    .end annotation
.end field

.field mCameraOnCameraSensorHighTemperatureListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraOnCameraSensorHighTemperatureListener;",
            ">;"
        }
    .end annotation
.end field

.field mCameraOnCameraStopRecordStateListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraOnCameraStopRecordStateListener;",
            ">;"
        }
    .end annotation
.end field

.field mCameraOnEnableGestureListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraOnEnableGestureListener;",
            ">;"
        }
    .end annotation
.end field

.field mCameraOnEnableHeadLightListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraOnEnableHeadLightListener;",
            ">;"
        }
    .end annotation
.end field

.field mCameraOnGestureInternalStorageFullListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraOnGestureInternalStorageFullListener;",
            ">;"
        }
    .end annotation
.end field

.field mCameraOnGestureSDFullListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraOnGestureSDFullListener;",
            ">;"
        }
    .end annotation
.end field

.field mCameraOnGestureStartTrackListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraOnGestureStartTrackListener;",
            ">;"
        }
    .end annotation
.end field

.field mCameraOnGestureStopTrackListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraOnGestureStopTrackListener;",
            ">;"
        }
    .end annotation
.end field

.field mCameraOnGetAudioRateListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraOnGetAudioRateListener;",
            ">;"
        }
    .end annotation
.end field

.field mCameraOnGetGestureFirstTimeTeachingStateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraOnGetGestureFirstTimeTeachingStateListener;",
            ">;"
        }
    .end annotation
.end field

.field mCameraOnGetHeadLightStateListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraOnGetHeadLightStateListener;",
            ">;"
        }
    .end annotation
.end field

.field mCameraOnPhotoStateListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraOnPhotoStateListener;",
            ">;"
        }
    .end annotation
.end field

.field mCameraOnSetAudioRateListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraOnSetAudioRateListener;",
            ">;"
        }
    .end annotation
.end field

.field mCameraOnSetGestureFirstTimeTeachingStateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraOnSetGestureFirstTimeTeachingStateListener;",
            ">;"
        }
    .end annotation
.end field

.field mCameraOnSetGestureOnlyDiscerningTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraOnSetGestureOnlyDiscerningTypeListener;",
            ">;"
        }
    .end annotation
.end field

.field mCameraPhotoSize:I

.field mCameraResetCameraParamListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraResetCameraParamListener;",
            ">;"
        }
    .end annotation
.end field

.field mCameraResolutionChangeListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraResolutionChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field mCameraSetCaptureModeListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraSetCaptureModeListener;",
            ">;"
        }
    .end annotation
.end field

.field mCameraSetContrastListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraSetContrastListener;",
            ">;"
        }
    .end annotation
.end field

.field mCameraSetCurrentStorageDeviceListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraSetCurrentStorageDeviceListener;",
            ">;"
        }
    .end annotation
.end field

.field mCameraSetEVListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraSetEVListener;",
            ">;"
        }
    .end annotation
.end field

.field mCameraSetIsoListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraSetIsoListener;",
            ">;"
        }
    .end annotation
.end field

.field mCameraSetLuminanceListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraSetLuminanceListener;",
            ">;"
        }
    .end annotation
.end field

.field mCameraSetPhotoStyleListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraSetPhotoStyleListener;",
            ">;"
        }
    .end annotation
.end field

.field mCameraSetSaturationListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraSetSaturationListener;",
            ">;"
        }
    .end annotation
.end field

.field mCameraSetWhiteBalanceListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraSetWhiteBalanceListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraStopRecordStateListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnCameraStopRecordStateListener;

.field mGestureDiscerningType:I

.field mMuxerFormatType:I

.field mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

.field meteringMode:I

.field multipleShotsNum:I

.field nCameraSetExposureModeListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/camera/camera/CameraListener$CameraSetExposureModeListener;",
            ">;"
        }
    .end annotation
.end field

.field photoFormatType:I

.field photoGraphType:I

.field saturation:I

.field sdAllCapacity:I

.field sdRemainingCapacity:I

.field private setSysTimeSuccess:Z

.field storageTypeSDCard:Z

.field styleMode:I

.field timingTime:I

.field waterMarkType:I

.field wbType:I


# direct methods
.method constructor <init>()V
    .locals 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Base_Camera_Manager"

    .line 21
    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->Tag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->isCameraConnect:Z

    .line 45
    iput-boolean v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->isCameraAudioState:Z

    const/4 v1, 0x3

    .line 121
    iput v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->multipleShotsNum:I

    .line 136
    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->photoFormatType:I

    .line 140
    iput-boolean v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraEnableHistogram:Z

    const/4 v2, 0x1

    .line 150
    iput-boolean v2, p0, Lcom/powervision/camera/camera/BaseCameraManager;->storageTypeSDCard:Z

    .line 209
    iput-boolean v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->isSDFull:Z

    .line 214
    iput-boolean v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->isEmmcFull:Z

    .line 219
    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->isSavePhoto:I

    .line 227
    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->localExposureMode:I

    .line 232
    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->localPhotoType:I

    .line 237
    iput v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->localPhotoValue:I

    .line 242
    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->localPhotoResolution:I

    .line 247
    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->localVideResolution:I

    .line 252
    iput v2, p0, Lcom/powervision/camera/camera/BaseCameraManager;->localPhotoFileFormat:I

    .line 254
    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->localWhiteBalance:I

    .line 256
    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->localStyleMode:I

    .line 278
    iput-boolean v2, p0, Lcom/powervision/camera/camera/BaseCameraManager;->localStorageType:Z

    const/4 v1, -0x1

    .line 303
    iput v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->localEnableHistogramStatus:I

    const/4 v1, 0x0

    .line 308
    iput v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->delayTime:F

    .line 312
    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->lapseFileDuration:I

    .line 317
    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->localIsSavePhoto:I

    .line 322
    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->localResetParamType:I

    .line 337
    iput-boolean v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->isSlowSpeedCard:Z

    .line 343
    iput-boolean v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->setSysTimeSuccess:Z

    .line 345
    iput-boolean v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->isGestureRecordToPhoto:Z

    .line 347
    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->localGestureDiscerningType:I

    .line 358
    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->localMuxerFormatType:I

    .line 363
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraConnectListenerList:Ljava/util/List;

    .line 367
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraListenerConnectStateList:Ljava/util/List;

    .line 372
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraAudioListenerConnectStateList:Ljava/util/List;

    .line 378
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraControllListenerList:Ljava/util/List;

    .line 383
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraResolutionChangeListenerList:Ljava/util/List;

    .line 388
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraGetResolutionListenerList:Ljava/util/List;

    .line 392
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyEnableHistogramListenerList:Ljava/util/List;

    .line 397
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyHistogramDataListenerList:Ljava/util/List;

    .line 403
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraGetCurrentExposureStatusListenerList:Ljava/util/List;

    .line 408
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->nCameraSetExposureModeListenerList:Ljava/util/List;

    .line 413
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraSetIsoListenerList:Ljava/util/List;

    .line 418
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifySetExposureTimeListenerList:Ljava/util/List;

    .line 424
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraSetEVListenerList:Ljava/util/List;

    .line 428
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifySetMeteringModeListenermList:Ljava/util/List;

    .line 433
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraGetWhiteBalanceListenerList:Ljava/util/List;

    .line 438
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraSetWhiteBalanceListenerList:Ljava/util/List;

    .line 443
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraSetPhotoStyleListenerList:Ljava/util/List;

    .line 447
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraSetLuminanceListenerList:Ljava/util/List;

    .line 451
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraSetContrastListenerList:Ljava/util/List;

    .line 455
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraSetSaturationListenerList:Ljava/util/List;

    .line 459
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraEnableResistBlinkListenerList:Ljava/util/List;

    .line 464
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraResetCameraParamListenerList:Ljava/util/List;

    .line 469
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraSetCaptureModeListenerList:Ljava/util/List;

    .line 473
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraGetStorageDeviceTypeListenerList:Ljava/util/List;

    .line 478
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraSetCurrentStorageDeviceListenerList:Ljava/util/List;

    .line 483
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyFormatStorageDeviceListenerList:Ljava/util/List;

    .line 488
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyGetRestPhotoNumberListenerList:Ljava/util/List;

    .line 493
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyGetRecordTimeListenerList:Ljava/util/List;

    .line 498
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyGetSDStorageSizeListenerList:Ljava/util/List;

    .line 503
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyGetEmmcStorageSizeListenerList:Ljava/util/List;

    .line 508
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyGetRestRecordTimeListenerList:Ljava/util/List;

    .line 513
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyGetPhotoFileFormatListenerList:Ljava/util/List;

    .line 518
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifySetPhotoFileFormatListenerList:Ljava/util/List;

    .line 523
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyStopDelayTimePhotoListenerList:Ljava/util/List;

    .line 528
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyGetCameraAllParametersListenerList:Ljava/util/List;

    .line 534
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyEnableAudioListener:Ljava/util/List;

    .line 540
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnSetSysTimeListenerList:Ljava/util/List;

    .line 546
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnEnableLogoListenerList:Ljava/util/List;

    .line 549
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnSDFullListenerList:Ljava/util/List;

    .line 550
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnInternalStorageFullListenerList:Ljava/util/List;

    .line 556
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnForwardLampList:Ljava/util/List;

    .line 560
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnGestureSnapList:Ljava/util/List;

    .line 564
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnGestureSnapGroupList:Ljava/util/List;

    .line 569
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnGestureStartRecordList:Ljava/util/List;

    .line 574
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnGestureStopRecordList:Ljava/util/List;

    .line 579
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraOnGestureStartTrackListenerList:Ljava/util/List;

    .line 584
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraOnGestureStopTrackListenerList:Ljava/util/List;

    .line 589
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnGetGestureStatList:Ljava/util/List;

    .line 594
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraOnEnableGestureListenerList:Ljava/util/List;

    .line 600
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnStopLapsePhotoList:Ljava/util/List;

    .line 604
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnCreateLapseFiileList:Ljava/util/List;

    .line 609
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnGetLapseSnapList:Ljava/util/List;

    .line 613
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnGetLapseFileDurationList:Ljava/util/List;

    .line 618
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnLapsePhotoNumberList:Ljava/util/List;

    .line 623
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnLapseFileDurationList:Ljava/util/List;

    .line 626
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnDelayPhotoList:Ljava/util/List;

    .line 628
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnMultiplePhotoListenerList:Ljava/util/List;

    .line 634
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraAEBMultiplePhotoStateListenerList:Ljava/util/List;

    .line 639
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraHDRMultiplePhotoStateListenerList:Ljava/util/List;

    .line 645
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraIsSaveLapsePhotoListenerList:Ljava/util/List;

    .line 651
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnRecordDurationListenerList:Ljava/util/List;

    .line 657
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraOnEnableHeadLightListenerList:Ljava/util/List;

    .line 663
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraOnGetHeadLightStateListenerList:Ljava/util/List;

    .line 669
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraOnGestureSDFullListenerList:Ljava/util/List;

    .line 674
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraOnGestureInternalStorageFullListenerList:Ljava/util/List;

    .line 677
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraOnSetAudioRateListenerList:Ljava/util/List;

    .line 679
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraOnGetAudioRateListenerList:Ljava/util/List;

    .line 681
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraOnPhotoStateListenerList:Ljava/util/List;

    .line 683
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraOnCameraStopRecordStateListenerList:Ljava/util/List;

    .line 685
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraOnCameraSensorHighTemperatureListenerList:Ljava/util/List;

    .line 687
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraOnCameraSDCardSpeedDetectedListenerList:Ljava/util/List;

    .line 690
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnSetTypeCModeListenerList:Ljava/util/List;

    .line 692
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnGetTypeCModeListenerList:Ljava/util/List;

    .line 696
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnGetPhotoStyleListenerList:Ljava/util/List;

    .line 699
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnSDStorageSlowListenerList:Ljava/util/List;

    .line 703
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraOnSetGestureFirstTimeTeachingStateList:Ljava/util/List;

    .line 706
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraOnGetGestureFirstTimeTeachingStateList:Ljava/util/List;

    .line 709
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraOnSetGestureOnlyDiscerningTypeList:Ljava/util/List;

    .line 712
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnSetMuxerFormatList:Ljava/util/List;

    .line 715
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnGetMuxerFormatList:Ljava/util/List;

    .line 732
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$z0ZjnGghsm9CJ3CqbzQH6_AA7R8;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$z0ZjnGghsm9CJ3CqbzQH6_AA7R8;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyConnectionListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyConnectionListener;

    .line 778
    new-instance v0, Lcom/powervision/camera/camera/BaseCameraManager$1;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/BaseCameraManager$1;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyStatusConnectionListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyStatusConnectionListener;

    .line 804
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$HsZ-XsyHncsSG091MmCwiIsJM9A;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$HsZ-XsyHncsSG091MmCwiIsJM9A;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnConnectAudioListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnConnectAudioListener;

    .line 818
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$_IUDzpeIAW9B27Az2rEovJ7tcno;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$_IUDzpeIAW9B27Az2rEovJ7tcno;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraGetCameraWorkStateListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetCameraWorkStateListener;

    .line 827
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$q_2JF1RVBL15WUIIzrzt7vE4wNI;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$q_2JF1RVBL15WUIIzrzt7vE4wNI;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->CameraNotifyStartPhotoListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyStartPhotoListener;

    .line 879
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$NGw9eUI4MjufNmpREe0te7FAt8Y;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$NGw9eUI4MjufNmpREe0te7FAt8Y;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyStartRecordListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyStartRecordListener;

    .line 893
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$DEcytXGcj21z9mYxwrNDNnsBiao;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$DEcytXGcj21z9mYxwrNDNnsBiao;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyStopRecordListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyStopRecordListener;

    .line 906
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$g4OrwPvlm-VirsgdUnYRLWLe7tA;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$g4OrwPvlm-VirsgdUnYRLWLe7tA;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifySwitchToSnapModeListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifySwitchToSnapModeListener;

    .line 919
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$IGkCnCvPYYy2Im0NprApXNrAx8s;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$IGkCnCvPYYy2Im0NprApXNrAx8s;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifySwitchToRecordModeListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifySwitchToRecordModeListener;

    .line 936
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$BynN7eRkc7neO48ETMPvjw1xRDQ;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$BynN7eRkc7neO48ETMPvjw1xRDQ;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifySetVideoResolutionListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetVideoResolutionListener;

    .line 957
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$qT7Pyo_nZo141NM6ZC2MEHq9lB8;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$qT7Pyo_nZo141NM6ZC2MEHq9lB8;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifySetPhotoResolutionListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetPhotoResolutionListener;

    .line 977
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$03fRc7ERZLQtBE4B9lGU8LrnwG0;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$03fRc7ERZLQtBE4B9lGU8LrnwG0;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyGetCurrentResolution:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetCurrentResolutionListener;

    .line 987
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$uPAEkw2JxMUSZXUdHpym9P5tfPw;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$uPAEkw2JxMUSZXUdHpym9P5tfPw;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyEnableHistogramListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyEnableHistogramListener;

    .line 1018
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$VXutQ2hPsKz3mdHF985otRWMEXM;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$VXutQ2hPsKz3mdHF985otRWMEXM;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyHistogramDataListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyHistogramDataListener;

    .line 1033
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$3lwES1XuvSS7L8lhEPgdFXP2IYk;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$3lwES1XuvSS7L8lhEPgdFXP2IYk;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyGetCurrentExposureStatusListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetCurrentExposureStatusListener;

    .line 1047
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$80lRpqYI-mrxz07A5b8zB7nTE84;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$80lRpqYI-mrxz07A5b8zB7nTE84;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifySetExposureModeListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetExposureModeListener;

    .line 1064
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$VfhNJhZThmXnisdiEyqqthXUvf0;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$VfhNJhZThmXnisdiEyqqthXUvf0;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifySetISOListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetISOListener;

    .line 1080
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$PXefsLilwzPEQWPLJfkKvsgYNDg;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$PXefsLilwzPEQWPLJfkKvsgYNDg;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifySetExposureTimeListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetExposureTimeListener;

    .line 1098
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$xAs9ygsRyaz2FsBmeEunslngv3I;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$xAs9ygsRyaz2FsBmeEunslngv3I;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifySetEVListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetEVListener;

    .line 1115
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$pYbO4KyCI0_VicqmK-BzKhek3oo;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$pYbO4KyCI0_VicqmK-BzKhek3oo;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifySetMeteringModeListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetMeteringModeListener;

    .line 1129
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$eYwBIE4x6tSrqQLvx__wCQph2kI;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$eYwBIE4x6tSrqQLvx__wCQph2kI;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyGetWhiteBalanceListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetWhiteBalanceListener;

    .line 1144
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$aUYmrJvmiQCJxb5848GAPkzMsS8;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$aUYmrJvmiQCJxb5848GAPkzMsS8;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifySetWhiteBalanceListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetWhiteBalanceListener;

    .line 1162
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$uXmOgtRw2Azr-jzXyaProCkedRI;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$uXmOgtRw2Azr-jzXyaProCkedRI;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifySetPhotoStyleListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetPhotoStyleListener;

    .line 1182
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$r6Rl-0HVVQOa88PdDRKOzUqsx2M;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$r6Rl-0HVVQOa88PdDRKOzUqsx2M;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifySetLuminanceListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetLuminanceListener;

    .line 1201
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$vdjwkfoq2fF1kSmcwoTpWaCqNic;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$vdjwkfoq2fF1kSmcwoTpWaCqNic;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifySetContrastListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetContrastListener;

    .line 1218
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$qOwHA-bLuW9CPqS1zoN22RJoSBE;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$qOwHA-bLuW9CPqS1zoN22RJoSBE;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifySetSaturationListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetSaturationListener;

    .line 1236
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$xuQwDbp7P9P10skyVSLy3BoOszc;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$xuQwDbp7P9P10skyVSLy3BoOszc;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyEnableResistBlinkListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyEnableResistBlinkListener;

    .line 1257
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$0PiikxfNWDU1I5MovllYrrsWuEg;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$0PiikxfNWDU1I5MovllYrrsWuEg;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyResetCameraParamListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyResetCameraParamListener;

    .line 1274
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$W7VsmQgWePBiw6W8sgvu3G54Sk8;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$W7VsmQgWePBiw6W8sgvu3G54Sk8;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifySetCaptureModeListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetCaptureModeListener;

    .line 1284
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$W97hX5g4VmepDZa_b1JnDWq4YDc;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$W97hX5g4VmepDZa_b1JnDWq4YDc;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyGetStorageDeviceTypeListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetStorageDeviceTypeListener;

    .line 1304
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$Geq0nIqfesnyXpVJd3CXuTiAj78;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$Geq0nIqfesnyXpVJd3CXuTiAj78;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifySetCurrentStorageDeviceListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetCurrentStorageDeviceListener;

    .line 1322
    new-instance v0, Lcom/powervision/camera/camera/BaseCameraManager$2;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/BaseCameraManager$2;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyFormatStorageDeviceListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyFormatStorageDeviceListener;

    .line 1342
    new-instance v0, Lcom/powervision/camera/camera/BaseCameraManager$3;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/BaseCameraManager$3;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyGetRestPhotoNumberListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetRestPhotoNumberListener;

    .line 1361
    new-instance v0, Lcom/powervision/camera/camera/BaseCameraManager$4;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/BaseCameraManager$4;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyGetRecordTimeListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetRecordTimeListener;

    .line 1379
    new-instance v0, Lcom/powervision/camera/camera/BaseCameraManager$5;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/BaseCameraManager$5;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyGetSDStorageSizeListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetSDStorageSizeListener;

    .line 1399
    new-instance v0, Lcom/powervision/camera/camera/BaseCameraManager$6;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/BaseCameraManager$6;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyGetEmmcStorageSizeListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetEmmcStorageSizeListener;

    .line 1419
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$NcRIyJJIGlm2zug-qVTKW3aTs_c;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$NcRIyJJIGlm2zug-qVTKW3aTs_c;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyGetRestRecordTimeListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetRestRecordTimeListener;

    .line 1436
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$orb-fPYevYJg8wH8SwklrmMlxa4;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$orb-fPYevYJg8wH8SwklrmMlxa4;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifySetPhotoFileFormatListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetPhotoFileFormatListener;

    .line 1454
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$Wqwt7Rda5wpZypxg7EHph1-Y3LI;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$Wqwt7Rda5wpZypxg7EHph1-Y3LI;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyGetPhotoFileFormatListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetPhotoFileFormatListener;

    .line 1469
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$kgVrbV4pFp_-RQHfZK4oogeCkpA;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$kgVrbV4pFp_-RQHfZK4oogeCkpA;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyStopDelayTimePhotoListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyStopDelayTimePhotoListener;

    .line 1483
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$zSBmItYx8vUWKgWC4j7McNxujEE;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$zSBmItYx8vUWKgWC4j7McNxujEE;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyGetCameraAllParametersListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetCameraAllParametersListener;

    .line 1504
    new-instance v0, Lcom/powervision/camera/camera/BaseCameraManager$7;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/BaseCameraManager$7;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnEnableAudioListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnEnableAudioListener;

    .line 1529
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$vRTIb9iBQxpv8E_BjvXg-Cp34fc;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$vRTIb9iBQxpv8E_BjvXg-Cp34fc;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnSetSysTimeListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSetSysTimeListener;

    .line 1555
    new-instance v0, Lcom/powervision/camera/camera/BaseCameraManager$8;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/BaseCameraManager$8;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnEnableLogoListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnEnableLogoListener;

    .line 1578
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$pHq8JCUh713Dwp_YAiZEWlFX_OU;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$pHq8JCUh713Dwp_YAiZEWlFX_OU;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnSDFullListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSDFullListener;

    .line 1591
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$GFWxxi_R3_G6oGcv6kYp0lRVz5w;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$GFWxxi_R3_G6oGcv6kYp0lRVz5w;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnInternalStorageFullListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnInternalStorageFullListener;

    .line 2368
    new-instance v0, Lcom/powervision/camera/camera/BaseCameraManager$9;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/BaseCameraManager$9;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnForwardLamp:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnForwardLamp;

    .line 2381
    new-instance v0, Lcom/powervision/camera/camera/BaseCameraManager$10;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/BaseCameraManager$10;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnGestureSnap:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureSnap;

    .line 2403
    new-instance v0, Lcom/powervision/camera/camera/BaseCameraManager$11;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/BaseCameraManager$11;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnGestureSnapGroup:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureSnapGroup;

    .line 2425
    new-instance v0, Lcom/powervision/camera/camera/BaseCameraManager$12;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/BaseCameraManager$12;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnGestureStartRecord:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureStartRecord;

    .line 2439
    new-instance v0, Lcom/powervision/camera/camera/BaseCameraManager$13;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/BaseCameraManager$13;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnGestureStopRecord:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureStopRecord;

    .line 2453
    new-instance v0, Lcom/powervision/camera/camera/BaseCameraManager$14;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/BaseCameraManager$14;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnGestureStartTrack:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureStartTrack;

    .line 2471
    new-instance v0, Lcom/powervision/camera/camera/BaseCameraManager$15;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/BaseCameraManager$15;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnGestureStopTrack:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureStopTrack;

    .line 2489
    new-instance v0, Lcom/powervision/camera/camera/BaseCameraManager$16;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/BaseCameraManager$16;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnGetGestureStat:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetGestureStat;

    .line 2502
    new-instance v0, Lcom/powervision/camera/camera/BaseCameraManager$17;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/BaseCameraManager$17;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnEnableGesture:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnEnableGesture;

    .line 2525
    new-instance v0, Lcom/powervision/camera/camera/BaseCameraManager$18;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/BaseCameraManager$18;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnDelayPhoto:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnDelayPhoto;

    .line 2536
    new-instance v0, Lcom/powervision/camera/camera/BaseCameraManager$19;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/BaseCameraManager$19;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnStopLapsePhoto:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnStopLapsePhoto;

    .line 2546
    new-instance v0, Lcom/powervision/camera/camera/BaseCameraManager$20;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/BaseCameraManager$20;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnCreateLapseFiile:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnCreateLapseFiile;

    .line 2556
    new-instance v0, Lcom/powervision/camera/camera/BaseCameraManager$21;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/BaseCameraManager$21;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnGetLapseSnap:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetLapseSnap;

    .line 2566
    new-instance v0, Lcom/powervision/camera/camera/BaseCameraManager$22;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/BaseCameraManager$22;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnGetLapseFileDuration:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetLapseFileDuration;

    .line 2576
    new-instance v0, Lcom/powervision/camera/camera/BaseCameraManager$23;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/BaseCameraManager$23;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnLapsePhotoNumber:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnLapsePhotoNumber;

    .line 2587
    new-instance v0, Lcom/powervision/camera/camera/BaseCameraManager$24;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/BaseCameraManager$24;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnLapseFileDuration:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnLapseFileDuration;

    .line 2596
    new-instance v0, Lcom/powervision/camera/camera/BaseCameraManager$25;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/BaseCameraManager$25;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnMultiplePhotoListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnMultiplePhotoListener;

    .line 2611
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$FmLJpTbpX8Ssc7Hk9co0bmHp9Pg;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$FmLJpTbpX8Ssc7Hk9co0bmHp9Pg;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnOnAEBMultiplePhotoStateListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnOnAEBMultiplePhotoStateListener;

    .line 2623
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$hA0SGuA1saf6K5F1NgGZG_w7VNU;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$hA0SGuA1saf6K5F1NgGZG_w7VNU;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnOnHDRMultiplePhotoStateListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnOnHDRMultiplePhotoStateListener;

    .line 2636
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$oJo0IC2jVbhjrEHJ3VViCPYm-lk;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$oJo0IC2jVbhjrEHJ3VViCPYm-lk;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnIsSaveLapsePhotoListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnIsSaveLapsePhotoListener;

    .line 2653
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$jy_8W7N1m7RhpmeeKwwmtdXSPY0;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$jy_8W7N1m7RhpmeeKwwmtdXSPY0;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnRecordDurationListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnRecordDurationListener;

    .line 2669
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$IQac-UhzfG7_3Rm0nblHhkt6z10;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$IQac-UhzfG7_3Rm0nblHhkt6z10;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnEnableHeadLightListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnEnableHeadLightListener;

    .line 2692
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$2AVHaS1hp3r9D3YfiJCHDLzofE0;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$2AVHaS1hp3r9D3YfiJCHDLzofE0;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnGetHeadLightStateListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetHeadLightStateListener;

    .line 2705
    new-instance v0, Lcom/powervision/camera/camera/BaseCameraManager$26;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/BaseCameraManager$26;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnGestureSDFullListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureSDFullListener;

    .line 2720
    new-instance v0, Lcom/powervision/camera/camera/BaseCameraManager$27;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/BaseCameraManager$27;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnGestureInternalStorageFullListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureInternalStorageFullListener;

    .line 2736
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$ZXj-hIvNe3B89JtbEJEzcCODb0A;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$ZXj-hIvNe3B89JtbEJEzcCODb0A;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnSetAudioRateListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSetAudioRateListener;

    .line 2750
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$SLk5hv6StrIEmWCoCtXJOyrXW2c;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$SLk5hv6StrIEmWCoCtXJOyrXW2c;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnGetAudioRateListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetAudioRateListener;

    .line 2769
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$mQZlBZ3V2dud7iuonxH9ftnLixo;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$mQZlBZ3V2dud7iuonxH9ftnLixo;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnPhotoStateListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnPhotoStateListener;

    .line 2785
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$vjmRbXeENbLi6ZcHYwSTPpmB3lg;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$vjmRbXeENbLi6ZcHYwSTPpmB3lg;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraStopRecordStateListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnCameraStopRecordStateListener;

    .line 2804
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$Q_15WuLO2EBX5AY4K92RyE56J3M;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$Q_15WuLO2EBX5AY4K92RyE56J3M;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnCameraSensorHighTemperatureListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnCameraSensorHighTemperatureListener;

    .line 2819
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$syNDDYLT84vhOsg6kuvxRwwc0xI;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$syNDDYLT84vhOsg6kuvxRwwc0xI;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnCameraSDCardSpeedDetectedListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnCameraSDCardSpeedDetectedListener;

    .line 2847
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$O7UrwF4pgyVBMV7Mrmn15aolUPU;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$O7UrwF4pgyVBMV7Mrmn15aolUPU;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnSetTypeCModeListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSetTypeCModeListener;

    .line 2860
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$GvlB49nh0_CI6o4GM1bxxBnIOlw;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$GvlB49nh0_CI6o4GM1bxxBnIOlw;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnGetTypeCModeListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetTypeCModeListener;

    .line 2871
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$8jE_PTc965AQHkmXKPy-uJDZCfM;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$8jE_PTc965AQHkmXKPy-uJDZCfM;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnGetPhotoStyleListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetPhotoStyleListener;

    .line 2891
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$bgpEYHYNL2CYFElA4i1guqkcP2k;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$bgpEYHYNL2CYFElA4i1guqkcP2k;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnSDStorageSlowListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSDStorageSlowListener;

    .line 2904
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$qjrVLlsI6DxMntWuD5bIQF85pbk;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$qjrVLlsI6DxMntWuD5bIQF85pbk;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnSetGestureFirstTimeTeachingStateListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSetGestureFirstTimeTeachingStateListener;

    .line 2922
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$aIr-9K6DeM4Tf4oD61pj-k8LZ50;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$aIr-9K6DeM4Tf4oD61pj-k8LZ50;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnGetGestureFirstTimeTeachingStateListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetGestureFirstTimeTeachingStateListener;

    .line 2940
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$up7oocvS-nHwF0p1kvqqnO3kLCw;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$up7oocvS-nHwF0p1kvqqnO3kLCw;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnSetGestureOnlyDiscerningTypeListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSetGestureOnlyDiscerningTypeListener;

    .line 2961
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$ukT-k7afVht9N_8d1JC885RiCkw;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$ukT-k7afVht9N_8d1JC885RiCkw;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnSetMuxerFormatListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSetMuxerFormatListener;

    .line 2977
    new-instance v0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$bTaETmmblwNHEXgOwcHLP2VBiNE;

    invoke-direct {v0, p0}, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$bTaETmmblwNHEXgOwcHLP2VBiNE;-><init>(Lcom/powervision/camera/camera/BaseCameraManager;)V

    iput-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnGetMuxerFormatListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetMuxerFormatListener;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/camera/camera/BaseCameraManager;)Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->Tag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/camera/camera/BaseCameraManager;Ljava/util/List;Ljava/lang/String;)Z
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/powervision/camera/camera/BaseCameraManager;->targetListIsEmpty(Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/powervision/camera/camera/BaseCameraManager;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/powervision/camera/camera/BaseCameraManager;->checkSDRemind()V

    return-void
.end method

.method static synthetic access$300(Lcom/powervision/camera/camera/BaseCameraManager;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/powervision/camera/camera/BaseCameraManager;->checkEmmcRemind()V

    return-void
.end method

.method private checkEmmcRemind()V
    .locals 2

    .line 2077
    iget v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->emmcRemainCapacity:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    .line 2078
    iput-boolean v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->isEmmcFull:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2080
    iput-boolean v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->isEmmcFull:Z

    :goto_0
    return-void
.end method

.method private checkSDRemind()V
    .locals 2

    .line 2085
    iget v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->sdRemainingCapacity:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    .line 2086
    iput-boolean v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->isSDFull:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2088
    iput-boolean v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->isSDFull:Z

    :goto_0
    return-void
.end method

.method private enableHistogramData(Ljava/lang/String;Lcom/powervision/camera/camera/CameraListener$CameraNotifyEnableHistogramListener;)V
    .locals 2

    .line 1001
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "0x312"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1002
    iget-boolean p1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraEnableHistogram:Z

    iput p1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->localEnableHistogramStatus:I

    .line 1003
    iget-object p1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->Tag:Ljava/lang/String;

    const-string v0, " CameraManger ...enableHistogram   0x312..."

    invoke-static {p1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1004
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1005
    iget p1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->localEnableHistogramStatus:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1006
    iput-boolean v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraEnableHistogram:Z

    goto :goto_1

    :cond_1
    if-nez p1, :cond_3

    .line 1008
    iput-boolean v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraEnableHistogram:Z

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, -0x1

    .line 1012
    :cond_3
    :goto_1
    invoke-interface {p2, v1}, Lcom/powervision/camera/camera/CameraListener$CameraNotifyEnableHistogramListener;->onEnableHistogram(I)V

    return-void
.end method

.method private nofityCameraResolution(Ljava/lang/String;)V
    .locals 5

    .line 2269
    invoke-static {p1}, Lcom/powervision/camera/utils/CameraUtil;->getCameraResolutionInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1b

    const-string v0, "7_ratio_size_1280x720_240fps"

    .line 2271
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    .line 2272
    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraCurrentResolution:I

    goto/16 :goto_0

    :cond_0
    const-string v0, "8_ratio_size_1280x720_120fps"

    .line 2273
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    .line 2274
    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraCurrentResolution:I

    goto/16 :goto_0

    :cond_1
    const-string v0, "9_ratio_size_1280x720_60fps"

    .line 2275
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    .line 2276
    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraCurrentResolution:I

    goto/16 :goto_0

    :cond_2
    const-string v0, "10_ratio_size_1280x720_30fps"

    .line 2277
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    .line 2278
    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraCurrentResolution:I

    goto/16 :goto_0

    :cond_3
    const-string v0, "6_ratio_size_1920x1080_30fps"

    .line 2279
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    .line 2280
    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraCurrentResolution:I

    goto/16 :goto_0

    :cond_4
    const-string v0, "5_ratio_size_1920x1080_60fps"

    .line 2281
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    .line 2282
    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraCurrentResolution:I

    goto/16 :goto_0

    :cond_5
    const-string v0, "4_ratio_size_1920x1080_120fps"

    .line 2283
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x4

    .line 2284
    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraCurrentResolution:I

    goto/16 :goto_0

    :cond_6
    const-string v0, "3_ratio_size_3840x2160_30fps"

    .line 2285
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2286
    iput v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraCurrentResolution:I

    goto/16 :goto_0

    :cond_7
    const-string v0, "2_ratio_size_3840x2160_60fps"

    .line 2287
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2288
    iput v2, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraCurrentResolution:I

    goto/16 :goto_0

    :cond_8
    const-string v0, "15_ratio_size_3840x2160_24fps"

    .line 2297
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xc

    .line 2298
    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraCurrentResolution:I

    goto/16 :goto_0

    :cond_9
    const-string v0, "16_ratio_size_3840x2160_25fps"

    .line 2299
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0xb

    .line 2300
    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraCurrentResolution:I

    goto/16 :goto_0

    :cond_a
    const-string v0, "17_ratio_size_3840x2160_48fps"

    .line 2301
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0xa

    .line 2302
    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraCurrentResolution:I

    goto/16 :goto_0

    :cond_b
    const-string v0, "18_ratio_size_3840x2160_50fps"

    .line 2303
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x9

    .line 2304
    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraCurrentResolution:I

    goto/16 :goto_0

    :cond_c
    const-string v0, "19_ratio_size_1920x1080_24fps"

    .line 2310
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x10

    .line 2311
    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraCurrentResolution:I

    goto/16 :goto_0

    :cond_d
    const-string v0, "20_ratio_size_1920x1080_25fps"

    .line 2312
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, 0xf

    .line 2313
    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraCurrentResolution:I

    goto/16 :goto_0

    :cond_e
    const-string v0, "21_ratio_size_1920x1080_48fps"

    .line 2314
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0xe

    .line 2315
    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraCurrentResolution:I

    goto/16 :goto_0

    :cond_f
    const-string v0, "22_ratio_size_1920x1080_50fps"

    .line 2316
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 v0, 0xd

    .line 2317
    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraCurrentResolution:I

    goto/16 :goto_0

    :cond_10
    const-string v0, "11_ratio_size_1280x720_24fps"

    .line 2323
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, 0x13

    .line 2324
    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraCurrentResolution:I

    goto/16 :goto_0

    :cond_11
    const-string v0, "12_ratio_size_1280x720_25fps"

    .line 2325
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x14

    .line 2326
    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraCurrentResolution:I

    goto/16 :goto_0

    :cond_12
    const-string v0, "13_ratio_size_1280x720_48fps"

    .line 2327
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 v0, 0x12

    .line 2328
    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraCurrentResolution:I

    goto :goto_0

    :cond_13
    const-string v0, "14_ratio_size_1280x720_50fps"

    .line 2329
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 v0, 0x11

    .line 2330
    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraCurrentResolution:I

    goto :goto_0

    :cond_14
    const-string v0, "23_ratio_size_2704x1520_60fps"

    .line 2333
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0x15

    .line 2334
    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraCurrentResolution:I

    goto :goto_0

    :cond_15
    const-string v0, "24_ratio_size_2704x1520_30fps"

    .line 2335
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 v0, 0x16

    .line 2336
    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraCurrentResolution:I

    goto :goto_0

    :cond_16
    const-string v0, "25_ratio_size_2704x1520_24fps"

    .line 2337
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 v0, 0x17

    .line 2338
    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraCurrentResolution:I

    goto :goto_0

    :cond_17
    const-string v0, "26_ratio_size_2704x1520_25fps"

    .line 2339
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/16 v0, 0x18

    .line 2340
    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraCurrentResolution:I

    goto :goto_0

    :cond_18
    const-string v0, "27_ratio_size_2704x1520_48fps"

    .line 2341
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 v0, 0x19

    .line 2342
    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraCurrentResolution:I

    goto :goto_0

    :cond_19
    const-string v0, "28_ratio_size_2704x1520_50fps"

    .line 2343
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/16 v0, 0x1a

    .line 2344
    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraCurrentResolution:I

    :cond_1a
    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    .line 2349
    :cond_1b
    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraPhotoSize:I

    .line 2352
    :goto_1
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraGetResolutionListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/camera/camera/CameraListener$CameraGetResolutionListener;

    if-ne v1, v2, :cond_1c

    .line 2354
    iget v4, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraCurrentResolution:I

    invoke-interface {v3, v1, v4}, Lcom/powervision/camera/camera/CameraListener$CameraGetResolutionListener;->getCameraCurrentResolution(II)V

    goto :goto_2

    .line 2357
    :cond_1c
    iget v4, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraPhotoSize:I

    invoke-interface {v3, v1, v4}, Lcom/powervision/camera/camera/CameraListener$CameraGetResolutionListener;->getCameraCurrentResolution(II)V

    goto :goto_2

    .line 2360
    :cond_1d
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->Tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nofityCameraResolution\uff08\uff09...\u5206\u8fa8\u7387\u901a\u77e5..\u53c2\u6570 s="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "   cameraResolutionType="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  mCameraCurrentResolution="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraCurrentResolution:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  mCameraPhotoSize="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraPhotoSize:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private notifyAllParmas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p14

    move-object/from16 v3, p15

    move-object/from16 v4, p20

    move-object/from16 v5, p21

    .line 1890
    invoke-direct/range {p0 .. p1}, Lcom/powervision/camera/camera/BaseCameraManager;->notifyCurrentWorkStatus(Ljava/lang/String;)V

    .line 1891
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    move-object/from16 v6, p2

    .line 1892
    invoke-static {v6, v7}, Lcom/powervision/camera/utils/CameraUtil;->formatStringNumber(Ljava/lang/String;I)I

    move-result v6

    iput v6, v0, Lcom/powervision/camera/camera/BaseCameraManager;->photoGraphType:I

    .line 1894
    :cond_0
    iget v6, v0, Lcom/powervision/camera/camera/BaseCameraManager;->photoGraphType:I

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x2

    const/4 v12, 0x3

    if-ne v6, v11, :cond_2

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    move-object/from16 v6, p3

    .line 1895
    invoke-static {v6, v12}, Lcom/powervision/camera/utils/CameraUtil;->formatStringNumber(Ljava/lang/String;I)I

    move-result v6

    iput v6, v0, Lcom/powervision/camera/camera/BaseCameraManager;->multipleShotsNum:I

    :cond_1
    :goto_0
    move-object/from16 v6, p6

    goto :goto_1

    .line 1896
    :cond_2
    iget v6, v0, Lcom/powervision/camera/camera/BaseCameraManager;->photoGraphType:I

    if-ne v6, v12, :cond_3

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    move-object/from16 v6, p4

    .line 1897
    invoke-static {v6, v12}, Lcom/powervision/camera/utils/CameraUtil;->formatStringNumber(Ljava/lang/String;I)I

    move-result v6

    iput v6, v0, Lcom/powervision/camera/camera/BaseCameraManager;->aebValue:I

    goto :goto_0

    .line 1898
    :cond_3
    iget v6, v0, Lcom/powervision/camera/camera/BaseCameraManager;->photoGraphType:I

    if-ne v6, v10, :cond_4

    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    move-object/from16 v6, p5

    .line 1899
    invoke-static {v6, v12}, Lcom/powervision/camera/utils/CameraUtil;->formatStringNumber(Ljava/lang/String;I)I

    move-result v6

    iput v6, v0, Lcom/powervision/camera/camera/BaseCameraManager;->timingTime:I

    goto :goto_0

    .line 1900
    :cond_4
    iget v6, v0, Lcom/powervision/camera/camera/BaseCameraManager;->photoGraphType:I

    if-eq v6, v9, :cond_5

    if-eq v6, v8, :cond_5

    const/4 v13, 0x7

    if-ne v6, v13, :cond_1

    .line 1901
    :cond_5
    invoke-static/range {p28 .. p28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    const/4 v6, 0x0

    move-object/from16 v13, p28

    .line 1902
    invoke-static {v13, v6}, Lcom/powervision/camera/utils/CameraUtil;->formatStringFloat(Ljava/lang/String;F)F

    move-result v6

    iput v6, v0, Lcom/powervision/camera/camera/BaseCameraManager;->delayTime:F

    .line 1904
    :cond_6
    invoke-static/range {p29 .. p29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    move-object/from16 v6, p29

    .line 1905
    invoke-static {v6, v7}, Lcom/powervision/camera/utils/CameraUtil;->formatStringNumber(Ljava/lang/String;I)I

    move-result v6

    iput v6, v0, Lcom/powervision/camera/camera/BaseCameraManager;->lapseFileDuration:I

    goto :goto_0

    .line 1908
    :goto_1
    invoke-direct {p0, v6}, Lcom/powervision/camera/camera/BaseCameraManager;->nofityCameraResolution(Ljava/lang/String;)V

    const/4 v6, 0x1

    move-object/from16 v13, p7

    .line 1910
    invoke-static {v13, v6}, Lcom/powervision/camera/utils/CameraUtil;->formatStringNumber(Ljava/lang/String;I)I

    move-result v13

    iput v13, v0, Lcom/powervision/camera/camera/BaseCameraManager;->photoFormatType:I

    .line 1912
    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_8

    const-string v13, "0x260"

    .line 1913
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1914
    iput v7, v0, Lcom/powervision/camera/camera/BaseCameraManager;->exposureMode:I

    goto :goto_2

    :cond_7
    const-string v13, "0x261"

    .line 1915
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1916
    iput v6, v0, Lcom/powervision/camera/camera/BaseCameraManager;->exposureMode:I

    .line 1921
    :cond_8
    :goto_2
    invoke-static/range {p10 .. p10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    iget v1, v0, Lcom/powervision/camera/camera/BaseCameraManager;->exposureMode:I

    if-ne v1, v6, :cond_a

    move-object/from16 v1, p10

    .line 1923
    invoke-static {v1, v7}, Lcom/powervision/camera/utils/CameraUtil;->formatStringNumber(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/powervision/camera/camera/BaseCameraManager;->exptimeValue:I

    const/16 v13, 0x10

    if-le v1, v13, :cond_9

    .line 1925
    iput v7, v0, Lcom/powervision/camera/camera/BaseCameraManager;->exptimeValue:I

    goto :goto_3

    :cond_9
    if-gez v1, :cond_a

    .line 1927
    iput v7, v0, Lcom/powervision/camera/camera/BaseCameraManager;->exptimeValue:I

    .line 1931
    :cond_a
    :goto_3
    invoke-static/range {p9 .. p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    iget v1, v0, Lcom/powervision/camera/camera/BaseCameraManager;->exposureMode:I

    if-ne v1, v6, :cond_c

    move-object/from16 v1, p9

    .line 1932
    invoke-static {v1, v7}, Lcom/powervision/camera/utils/CameraUtil;->formatStringNumber(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/powervision/camera/camera/BaseCameraManager;->isoType:I

    if-le v1, v8, :cond_b

    .line 1934
    iput v7, v0, Lcom/powervision/camera/camera/BaseCameraManager;->isoType:I

    goto :goto_4

    :cond_b
    if-gez v1, :cond_c

    .line 1936
    iput v7, v0, Lcom/powervision/camera/camera/BaseCameraManager;->isoType:I

    .line 1940
    :cond_c
    :goto_4
    invoke-static/range {p11 .. p11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    move-object/from16 v1, p11

    .line 1941
    invoke-static {v1, v7}, Lcom/powervision/camera/utils/CameraUtil;->formatStringNumber(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/powervision/camera/camera/BaseCameraManager;->meteringMode:I

    .line 1944
    :cond_d
    invoke-static/range {p12 .. p12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    move-object/from16 v1, p12

    .line 1945
    invoke-static {v1, v7}, Lcom/powervision/camera/utils/CameraUtil;->formatStringNumber(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/powervision/camera/camera/BaseCameraManager;->evIntValue:I

    .line 1948
    :cond_e
    invoke-static/range {p13 .. p13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v8, "1"

    if-nez v1, :cond_10

    move-object/from16 v1, p13

    .line 1949
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1950
    iput-boolean v6, v0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraEnableHistogram:Z

    goto :goto_5

    .line 1952
    :cond_f
    iput-boolean v7, v0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraEnableHistogram:Z

    .line 1957
    :cond_10
    :goto_5
    invoke-static/range {p14 .. p14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v13, "2"

    const-string v14, "0"

    if-nez v1, :cond_14

    .line 1958
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1959
    iput v7, v0, Lcom/powervision/camera/camera/BaseCameraManager;->mAntiFlickerMode:I

    goto :goto_6

    .line 1960
    :cond_11
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1961
    iput v11, v0, Lcom/powervision/camera/camera/BaseCameraManager;->mAntiFlickerMode:I

    goto :goto_6

    .line 1962
    :cond_12
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1963
    iput v12, v0, Lcom/powervision/camera/camera/BaseCameraManager;->mAntiFlickerMode:I

    goto :goto_6

    .line 1965
    :cond_13
    iput v7, v0, Lcom/powervision/camera/camera/BaseCameraManager;->mAntiFlickerMode:I

    .line 1968
    :cond_14
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " \u89e3\u6790\u540e......mAntiFlickerMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/powervision/camera/camera/BaseCameraManager;->mAntiFlickerMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "s_g_af"

    invoke-static {v2, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1969
    invoke-static/range {p15 .. p15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "0x1000"

    .line 1970
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1971
    iput-boolean v6, v0, Lcom/powervision/camera/camera/BaseCameraManager;->storageTypeSDCard:Z

    goto :goto_7

    :cond_15
    const-string v1, "0x1001"

    .line 1972
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1973
    iput-boolean v7, v0, Lcom/powervision/camera/camera/BaseCameraManager;->storageTypeSDCard:Z

    .line 1977
    :cond_16
    :goto_7
    invoke-static/range {p16 .. p16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    move-object/from16 v1, p16

    .line 1978
    invoke-static {v1, v7}, Lcom/powervision/camera/utils/CameraUtil;->formatStringNumber(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/powervision/camera/camera/BaseCameraManager;->sdAllCapacity:I

    .line 1980
    :cond_17
    invoke-static/range {p17 .. p17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    move-object/from16 v1, p17

    .line 1981
    invoke-static {v1, v7}, Lcom/powervision/camera/utils/CameraUtil;->formatStringNumber(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/powervision/camera/camera/BaseCameraManager;->sdRemainingCapacity:I

    .line 1982
    invoke-direct {p0}, Lcom/powervision/camera/camera/BaseCameraManager;->checkSDRemind()V

    .line 1984
    :cond_18
    invoke-static/range {p18 .. p18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    move-object/from16 v1, p18

    .line 1985
    invoke-static {v1, v7}, Lcom/powervision/camera/utils/CameraUtil;->formatStringNumber(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/powervision/camera/camera/BaseCameraManager;->emmcAllCapacity:I

    .line 1987
    :cond_19
    invoke-static/range {p19 .. p19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    move-object/from16 v1, p19

    .line 1988
    invoke-static {v1, v7}, Lcom/powervision/camera/utils/CameraUtil;->formatStringNumber(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/powervision/camera/camera/BaseCameraManager;->emmcRemainCapacity:I

    .line 1989
    invoke-direct {p0}, Lcom/powervision/camera/camera/BaseCameraManager;->checkEmmcRemind()V

    .line 1993
    :cond_1a
    invoke-static/range {p20 .. p20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "3"

    if-nez v1, :cond_23

    .line 1994
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1995
    iput v7, v0, Lcom/powervision/camera/camera/BaseCameraManager;->wbType:I

    goto :goto_8

    .line 1996
    :cond_1b
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1997
    iput v6, v0, Lcom/powervision/camera/camera/BaseCameraManager;->wbType:I

    goto :goto_8

    .line 1998
    :cond_1c
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1999
    iput v11, v0, Lcom/powervision/camera/camera/BaseCameraManager;->wbType:I

    goto :goto_8

    .line 2000
    :cond_1d
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 2001
    iput v12, v0, Lcom/powervision/camera/camera/BaseCameraManager;->wbType:I

    goto :goto_8

    :cond_1e
    const-string v1, "4"

    .line 2002
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 2003
    iput v10, v0, Lcom/powervision/camera/camera/BaseCameraManager;->wbType:I

    goto :goto_8

    :cond_1f
    const-string v1, "5"

    .line 2004
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 2005
    iput v9, v0, Lcom/powervision/camera/camera/BaseCameraManager;->wbType:I

    goto :goto_8

    :cond_20
    const-string v1, "0x310"

    .line 2006
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 2007
    iput v7, v0, Lcom/powervision/camera/camera/BaseCameraManager;->wbType:I

    goto :goto_8

    :cond_21
    const-string v1, "00"

    .line 2008
    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/16 v1, 0x7d0

    .line 2009
    invoke-static {v4, v1}, Lcom/powervision/camera/utils/CameraUtil;->formatStringNumber(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/powervision/camera/camera/BaseCameraManager;->wbType:I

    .line 2011
    :cond_22
    :goto_8
    iget-object v1, v0, Lcom/powervision/camera/camera/BaseCameraManager;->Tag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "   .....wbType="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/powervision/camera/camera/BaseCameraManager;->wbType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "   wbWork="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2014
    :cond_23
    invoke-static/range {p21 .. p21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 2015
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 2016
    iput v7, v0, Lcom/powervision/camera/camera/BaseCameraManager;->styleMode:I

    goto :goto_9

    .line 2017
    :cond_24
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 2018
    iput v6, v0, Lcom/powervision/camera/camera/BaseCameraManager;->styleMode:I

    goto :goto_9

    .line 2019
    :cond_25
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 2020
    iput v11, v0, Lcom/powervision/camera/camera/BaseCameraManager;->styleMode:I

    goto :goto_9

    .line 2021
    :cond_26
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 2022
    iput v12, v0, Lcom/powervision/camera/camera/BaseCameraManager;->styleMode:I

    :cond_27
    :goto_9
    move-object/from16 v1, p22

    .line 2027
    invoke-static {v1, v7}, Lcom/powervision/camera/utils/CameraUtil;->formatStringNumber(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/powervision/camera/camera/BaseCameraManager;->luminance:I

    move-object/from16 v1, p23

    .line 2028
    invoke-static {v1, v7}, Lcom/powervision/camera/utils/CameraUtil;->formatStringNumber(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/powervision/camera/camera/BaseCameraManager;->contrast:I

    move-object/from16 v1, p24

    .line 2029
    invoke-static {v1, v7}, Lcom/powervision/camera/utils/CameraUtil;->formatStringNumber(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/powervision/camera/camera/BaseCameraManager;->saturation:I

    .line 2031
    invoke-static/range {p25 .. p25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_28

    move-object/from16 v1, p25

    .line 2032
    invoke-static {v1, v7}, Lcom/powervision/camera/utils/CameraUtil;->formatStringNumber(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraAudioState:I

    .line 2035
    :cond_28
    invoke-static/range {p26 .. p26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_29

    move-object/from16 v1, p26

    .line 2036
    invoke-static {v1, v7}, Lcom/powervision/camera/utils/CameraUtil;->formatStringNumber(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/powervision/camera/camera/BaseCameraManager;->waterMarkType:I

    .line 2039
    :cond_29
    invoke-static/range {p27 .. p27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2a

    move-object/from16 v1, p27

    .line 2040
    invoke-static {v1, v7}, Lcom/powervision/camera/utils/CameraUtil;->formatStringNumber(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/powervision/camera/camera/BaseCameraManager;->gestureState:I

    .line 2042
    :cond_2a
    invoke-static/range {p30 .. p30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2b

    move-object/from16 v1, p30

    .line 2043
    invoke-static {v1, v7}, Lcom/powervision/camera/utils/CameraUtil;->formatStringNumber(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/powervision/camera/camera/BaseCameraManager;->isSavePhoto:I

    .line 2045
    :cond_2b
    invoke-static/range {p31 .. p31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2c

    move-object/from16 v1, p31

    .line 2046
    invoke-static {v1, v7}, Lcom/powervision/camera/utils/CameraUtil;->formatStringNumber(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/powervision/camera/camera/BaseCameraManager;->headlightState:I

    .line 2048
    :cond_2c
    invoke-static/range {p32 .. p32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2d

    move-object/from16 v1, p32

    .line 2049
    invoke-static {v1, v7}, Lcom/powervision/camera/utils/CameraUtil;->formatStringNumber(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/powervision/camera/camera/BaseCameraManager;->audioSampleRate:I

    .line 2052
    :cond_2d
    iget-object v1, v0, Lcom/powervision/camera/camera/BaseCameraManager;->Tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "local  parmas ....mCameraCurrentStatus="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraCurrentStatus:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " photoGraphType="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/powervision/camera/camera/BaseCameraManager;->photoGraphType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  multipleShotsNum="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/powervision/camera/camera/BaseCameraManager;->multipleShotsNum:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " timingTime="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/powervision/camera/camera/BaseCameraManager;->timingTime:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " \u7167\u7247\u683c\u5f0fphotoFormatType= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/powervision/camera/camera/BaseCameraManager;->photoFormatType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " aebValue="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/powervision/camera/camera/BaseCameraManager;->aebValue:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " exposureMode="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/powervision/camera/camera/BaseCameraManager;->exposureMode:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " isoType="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/powervision/camera/camera/BaseCameraManager;->isoType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " exptimeValue="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/powervision/camera/camera/BaseCameraManager;->exptimeValue:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " meteringMode="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/powervision/camera/camera/BaseCameraManager;->meteringMode:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  evIntValue="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/powervision/camera/camera/BaseCameraManager;->evIntValue:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mCameraEnableHistogram="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraEnableHistogram:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " afWorkStatus="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/powervision/camera/camera/BaseCameraManager;->mAntiFlickerMode:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " storageTypeSDCard="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Sd  sdAllCapacity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/powervision/camera/camera/BaseCameraManager;->sdAllCapacity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " SD  sdRemainingCapacity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/powervision/camera/camera/BaseCameraManager;->sdRemainingCapacity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " emmcAllCapacity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/powervision/camera/camera/BaseCameraManager;->emmcAllCapacity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  emmcRemainCapacity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/powervision/camera/camera/BaseCameraManager;->emmcRemainCapacity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " wbType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/powervision/camera/camera/BaseCameraManager;->wbType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " styleMode= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/powervision/camera/camera/BaseCameraManager;->styleMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " luminance ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/powervision/camera/camera/BaseCameraManager;->luminance:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " contrast="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/powervision/camera/camera/BaseCameraManager;->contrast:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " saturation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/powervision/camera/camera/BaseCameraManager;->saturation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " cameraAudioState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraAudioState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " waterMarkType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/powervision/camera/camera/BaseCameraManager;->waterMarkType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " gestureState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/powervision/camera/camera/BaseCameraManager;->gestureState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " delayTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/powervision/camera/camera/BaseCameraManager;->delayTime:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " lapseFileDuration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/powervision/camera/camera/BaseCameraManager;->lapseFileDuration:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  isSavePhoto="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/powervision/camera/camera/BaseCameraManager;->isSavePhoto:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " headlightState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/powervision/camera/camera/BaseCameraManager;->headlightState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  audioSampleRate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/powervision/camera/camera/BaseCameraManager;->audioSampleRate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private notifyCaptureMode(Ljava/lang/String;)V
    .locals 3

    .line 2230
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2231
    iget-object p1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->Tag:Ljava/lang/String;

    const-string v0, "  error ...notifyCaptureMode()  result = null"

    invoke-static {p1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "0"

    .line 2234
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2235
    iget v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->localPhotoType:I

    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->photoGraphType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2237
    iget v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->localPhotoValue:I

    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->multipleShotsNum:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 2239
    iget v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->localPhotoValue:I

    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->aebValue:I

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 2241
    iget v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->localPhotoValue:I

    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->timingTime:I

    .line 2244
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " callback .. notifyCaptureMode() ..result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  photoGraphType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/powervision/camera/camera/BaseCameraManager;->photoGraphType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  localPhotoValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/powervision/camera/camera/BaseCameraManager;->localPhotoValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2247
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraSetCaptureModeListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraSetCaptureModeListener;

    .line 2248
    invoke-interface {v1, p1}, Lcom/powervision/camera/camera/CameraListener$CameraSetCaptureModeListener;->onSetCaptureMode(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method private declared-synchronized notifyCurrentWorkStatus(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 2205
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2206
    iget-object p1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->Tag:Ljava/lang/String;

    const-string v0, "  error ...getCameraState()  result = null"

    invoke-static {p1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2207
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "0x106"

    .line 2209
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2210
    sget p1, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_PHOTO:I

    iput p1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraCurrentStatus:I

    goto :goto_0

    :cond_1
    const-string v0, "0x107"

    .line 2211
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2212
    sget p1, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_RECORD:I

    iput p1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraCurrentStatus:I

    goto :goto_0

    :cond_2
    const-string v0, "0x108"

    .line 2213
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2214
    sget p1, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_RECORDING:I

    iput p1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraCurrentStatus:I

    goto :goto_0

    .line 2216
    :cond_3
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  error ...getCameraState()   result ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2218
    :goto_0
    iget-object p1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraControllListenerList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_4

    .line 2219
    monitor-exit p0

    return-void

    :cond_4
    const/4 p1, 0x0

    .line 2221
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraControllListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_5

    .line 2222
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraControllListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/camera/camera/CameraListener$CameraControllListener;

    iget v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraCurrentStatus:I

    invoke-interface {v0, v1}, Lcom/powervision/camera/camera/CameraListener$CameraControllListener;->onCameraStateChange(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 2224
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private onCameraDisconnect()V
    .locals 1

    const/4 v0, 0x0

    .line 722
    iput-boolean v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->isEmmcFull:Z

    .line 723
    iput-boolean v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->isSDFull:Z

    .line 724
    iput-boolean v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->isTakingPhoto:Z

    .line 725
    iput-boolean v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->isSlowSpeedCard:Z

    .line 726
    iput-boolean v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->setSysTimeSuccess:Z

    return-void
.end method

.method private parseCameraAllParams(Ljava/lang/String;)Z
    .locals 41

    move-object/from16 v15, p0

    move-object/from16 v0, p1

    .line 1608
    iget-object v1, v15, Lcom/powervision/camera/camera/BaseCameraManager;->Tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  \u76f8\u673a\u6240\u6709\u53c2\u6570 \u6e90\u6570\u636e ... CameraManger    AllParameters  content ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1609
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_27

    const-string v1, ";;"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_27

    const-string v1, ";;"

    .line 1610
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1660
    array-length v1, v0

    if-nez v1, :cond_0

    return v2

    .line 1665
    :cond_0
    array-length v1, v0

    const/4 v3, 0x4

    const-string v4, ","

    const/4 v5, 0x3

    const/4 v6, 0x2

    const-string v7, ""

    const/4 v14, 0x1

    const-string v8, ":"

    if-le v1, v14, :cond_7

    aget-object v1, v0, v2

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1666
    aget-object v1, v0, v2

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1668
    array-length v9, v1

    const-string v10, "sub_work_mode:"

    const-string v11, "main_work_mode:"

    if-ne v9, v6, :cond_1

    aget-object v9, v1, v2

    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    aget-object v9, v1, v14

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1670
    aget-object v9, v1, v2

    invoke-virtual {v9, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1671
    aget-object v1, v1, v14

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1672
    aget-object v9, v9, v14

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 1673
    aget-object v1, v1, v14

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    move-object v10, v7

    move-object v12, v10

    move-object v13, v12

    move-object/from16 v16, v13

    move-object v11, v9

    move-object/from16 v9, v16

    goto/16 :goto_2

    .line 1674
    :cond_1
    array-length v9, v1

    if-ne v9, v5, :cond_5

    aget-object v9, v1, v2

    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    aget-object v9, v1, v14

    .line 1675
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    aget-object v9, v1, v6

    invoke-virtual {v9, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1676
    aget-object v9, v1, v2

    invoke-virtual {v9, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1677
    aget-object v10, v1, v14

    invoke-virtual {v10, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 1678
    aget-object v9, v9, v14

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 1679
    aget-object v10, v10, v14

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 1681
    aget-object v11, v1, v6

    const-string v12, "sheets:"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1682
    aget-object v1, v1, v6

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1683
    aget-object v1, v1, v14

    move-object v11, v7

    :goto_0
    move-object v12, v11

    goto :goto_1

    .line 1684
    :cond_2
    aget-object v11, v1, v6

    const-string v12, "abe_num:"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1685
    aget-object v1, v1, v6

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1686
    aget-object v1, v1, v14

    move-object v11, v1

    move-object v1, v7

    move-object v12, v1

    goto :goto_1

    .line 1687
    :cond_3
    aget-object v11, v1, v6

    const-string v12, "time:"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1688
    aget-object v1, v1, v6

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1689
    aget-object v1, v1, v14

    move-object v12, v1

    move-object v1, v7

    move-object v11, v1

    goto :goto_1

    :cond_4
    move-object v1, v7

    move-object v11, v1

    goto :goto_0

    :goto_1
    move-object v13, v7

    move-object/from16 v16, v12

    move-object v12, v11

    move-object v11, v9

    move-object v9, v1

    move-object v1, v10

    move-object v10, v13

    goto/16 :goto_2

    .line 1692
    :cond_5
    array-length v9, v1

    if-ne v9, v3, :cond_6

    aget-object v9, v1, v2

    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    aget-object v9, v1, v14

    .line 1693
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    aget-object v9, v1, v6

    const-string v10, "delay_time:"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    aget-object v9, v1, v5

    const-string v10, "lapse_file_duration:"

    .line 1694
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1695
    aget-object v9, v1, v2

    invoke-virtual {v9, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1696
    aget-object v9, v9, v14

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 1698
    aget-object v10, v1, v14

    invoke-virtual {v10, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 1699
    aget-object v10, v10, v14

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 1701
    aget-object v11, v1, v6

    invoke-virtual {v11, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 1702
    aget-object v11, v11, v14

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 1704
    aget-object v1, v1, v5

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1705
    aget-object v1, v1, v14

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    move-object v12, v7

    move-object/from16 v16, v12

    move-object v13, v11

    move-object v11, v9

    move-object/from16 v9, v16

    move-object/from16 v40, v10

    move-object v10, v1

    move-object/from16 v1, v40

    goto :goto_2

    :cond_6
    move-object v1, v7

    move-object v9, v1

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object/from16 v16, v13

    :goto_2
    move-object/from16 v33, v10

    move-object v10, v9

    move-object v9, v1

    move-object v1, v11

    move-object/from16 v11, v16

    goto :goto_4

    .line 1707
    :cond_7
    array-length v1, v0

    if-le v1, v14, :cond_8

    aget-object v1, v0, v2

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1708
    aget-object v1, v0, v2

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1709
    aget-object v1, v1, v14

    move-object v9, v7

    goto :goto_3

    :cond_8
    move-object v1, v7

    move-object v9, v1

    :goto_3
    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object/from16 v33, v13

    .line 1711
    :goto_4
    array-length v3, v0

    if-le v3, v14, :cond_9

    aget-object v3, v0, v14

    const-string v2, "ratio_size"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1712
    aget-object v2, v0, v14

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto :goto_5

    :cond_9
    move-object v3, v7

    .line 1714
    :goto_5
    array-length v2, v0

    if-le v2, v6, :cond_a

    aget-object v2, v0, v6

    const-string v5, "snap_file_format"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    aget-object v2, v0, v6

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1715
    aget-object v2, v0, v6

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1716
    aget-object v2, v2, v14

    move-object v5, v2

    goto :goto_6

    :cond_a
    move-object v5, v7

    .line 1718
    :goto_6
    array-length v2, v0

    const/4 v6, 0x3

    if-le v2, v6, :cond_14

    aget-object v2, v0, v6

    const-string v14, ";"

    invoke-virtual {v2, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1719
    aget-object v2, v0, v6

    const-string v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    .line 1720
    aget-object v14, v2, v6

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_b

    aget-object v14, v2, v6

    invoke-virtual {v14, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 1721
    aget-object v14, v2, v6

    invoke-virtual {v14, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v14, 0x1

    aget-object v6, v6, v14

    goto :goto_7

    :cond_b
    const/4 v14, 0x1

    move-object v6, v7

    .line 1723
    :goto_7
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_10

    const-string v14, "0x260"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    const/4 v14, 0x1

    .line 1725
    aget-object v20, v2, v14

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    move-object/from16 v21, v13

    if-nez v20, :cond_c

    aget-object v13, v2, v14

    invoke-virtual {v13, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 1726
    aget-object v13, v2, v14

    invoke-virtual {v13, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    aget-object v13, v13, v14

    goto :goto_8

    :cond_c
    move-object v13, v7

    :goto_8
    const/4 v14, 0x2

    .line 1728
    aget-object v18, v2, v14

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    move-object/from16 v22, v13

    if-nez v18, :cond_d

    aget-object v13, v2, v14

    invoke-virtual {v13, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 1729
    aget-object v13, v2, v14

    invoke-virtual {v13, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    aget-object v13, v13, v14

    goto :goto_9

    :cond_d
    move-object v13, v7

    :goto_9
    const/4 v14, 0x3

    .line 1731
    aget-object v17, v2, v14

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    move-object/from16 v23, v13

    if-nez v17, :cond_e

    aget-object v13, v2, v14

    invoke-virtual {v13, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 1732
    aget-object v13, v2, v14

    invoke-virtual {v13, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    aget-object v13, v13, v14

    goto :goto_a

    :cond_e
    move-object v13, v7

    .line 1734
    :goto_a
    array-length v14, v2

    move-object/from16 v24, v13

    const/4 v13, 0x5

    if-lt v14, v13, :cond_f

    const/4 v13, 0x4

    aget-object v14, v2, v13

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_f

    aget-object v14, v2, v13

    invoke-virtual {v14, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 1735
    aget-object v2, v2, v13

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v13, 0x1

    aget-object v2, v2, v13

    move-object/from16 v34, v2

    move-object v13, v6

    goto :goto_b

    :cond_f
    move-object v13, v6

    move-object/from16 v34, v7

    :goto_b
    move-object/from16 v14, v22

    move-object/from16 v6, v23

    move-object/from16 v22, v24

    goto/16 :goto_e

    :cond_10
    move-object/from16 v21, v13

    .line 1737
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_13

    const-string v13, "0x261"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    const/4 v13, 0x1

    .line 1739
    aget-object v14, v2, v13

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_11

    aget-object v14, v2, v13

    invoke-virtual {v14, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 1740
    aget-object v14, v2, v13

    invoke-virtual {v14, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    aget-object v14, v14, v13

    goto :goto_c

    :cond_11
    move-object v14, v7

    :goto_c
    const/4 v13, 0x2

    .line 1742
    aget-object v18, v2, v13

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    move-object/from16 v22, v6

    if-nez v18, :cond_12

    aget-object v6, v2, v13

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 1743
    aget-object v2, v2, v13

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    aget-object v2, v2, v6

    move-object v6, v2

    move-object/from16 v34, v7

    goto :goto_d

    :cond_12
    move-object v6, v7

    move-object/from16 v34, v6

    goto :goto_d

    :cond_13
    move-object/from16 v22, v6

    move-object v6, v7

    move-object v14, v6

    move-object/from16 v34, v14

    :goto_d
    move-object/from16 v13, v22

    move-object/from16 v22, v34

    goto :goto_e

    :cond_14
    move-object/from16 v21, v13

    move-object v6, v7

    move-object v13, v6

    move-object v14, v13

    move-object/from16 v22, v14

    move-object/from16 v34, v22

    .line 1747
    :goto_e
    array-length v2, v0

    move-object/from16 v23, v6

    const/4 v6, 0x4

    if-le v2, v6, :cond_15

    aget-object v2, v0, v6

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1748
    aget-object v2, v0, v6

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    .line 1749
    aget-object v2, v2, v6

    move-object v6, v2

    goto :goto_f

    :cond_15
    move-object v6, v7

    .line 1751
    :goto_f
    array-length v2, v0

    move-object/from16 v24, v6

    const/4 v6, 0x5

    if-le v2, v6, :cond_16

    aget-object v2, v0, v6

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1752
    aget-object v2, v0, v6

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    .line 1753
    aget-object v2, v2, v6

    move-object v6, v2

    goto :goto_10

    :cond_16
    move-object v6, v7

    .line 1756
    :goto_10
    array-length v2, v0

    move-object/from16 v19, v6

    const/4 v6, 0x6

    if-le v2, v6, :cond_17

    aget-object v2, v0, v6

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1758
    aget-object v2, v0, v6

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1759
    array-length v6, v2

    move-object/from16 v25, v14

    const/4 v14, 0x3

    if-ne v6, v14, :cond_18

    const/4 v6, 0x0

    aget-object v14, v2, v6

    invoke-virtual {v14, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_18

    const/4 v6, 0x1

    aget-object v14, v2, v6

    invoke-virtual {v14, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_18

    const/4 v14, 0x2

    aget-object v6, v2, v14

    .line 1760
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_18

    const/4 v6, 0x1

    .line 1762
    aget-object v14, v2, v6

    invoke-virtual {v14, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    aget-object v14, v14, v6

    const/16 v18, 0x2

    .line 1763
    aget-object v2, v2, v18

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v6

    move-object v6, v2

    goto :goto_11

    :cond_17
    move-object/from16 v25, v14

    :cond_18
    move-object v6, v7

    move-object v14, v6

    .line 1766
    :goto_11
    array-length v2, v0

    move-object/from16 v26, v6

    const/4 v6, 0x7

    if-le v2, v6, :cond_19

    aget-object v2, v0, v6

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1767
    aget-object v2, v0, v6

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1768
    array-length v6, v2

    move-object/from16 v27, v14

    const/4 v14, 0x3

    if-ne v6, v14, :cond_1a

    const/4 v6, 0x0

    aget-object v14, v2, v6

    invoke-virtual {v14, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1a

    const/4 v6, 0x1

    aget-object v14, v2, v6

    invoke-virtual {v14, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1a

    const/4 v14, 0x2

    aget-object v6, v2, v14

    .line 1769
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1a

    const/4 v6, 0x1

    .line 1771
    aget-object v14, v2, v6

    invoke-virtual {v14, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    aget-object v14, v14, v6

    const/16 v18, 0x2

    .line 1772
    aget-object v2, v2, v18

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v6

    move-object v6, v2

    goto :goto_12

    :cond_19
    move-object/from16 v27, v14

    :cond_1a
    move-object v6, v7

    move-object v14, v6

    .line 1776
    :goto_12
    array-length v2, v0

    move-object/from16 v28, v6

    const/16 v6, 0x8

    if-le v2, v6, :cond_1b

    aget-object v2, v0, v6

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1777
    aget-object v2, v0, v6

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1778
    array-length v6, v2

    move-object/from16 v29, v14

    const/4 v14, 0x3

    if-ne v6, v14, :cond_1c

    const/4 v6, 0x0

    aget-object v14, v2, v6

    invoke-virtual {v14, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1c

    const/4 v14, 0x1

    aget-object v6, v2, v14

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1c

    const/4 v6, 0x2

    aget-object v14, v2, v6

    .line 1779
    invoke-virtual {v14, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1c

    const/4 v6, 0x0

    .line 1780
    aget-object v2, v2, v6

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    aget-object v2, v2, v6

    move-object v14, v2

    goto :goto_13

    :cond_1b
    move-object/from16 v29, v14

    :cond_1c
    move-object v14, v7

    .line 1784
    :goto_13
    array-length v2, v0

    const/16 v6, 0x9

    if-le v2, v6, :cond_1d

    aget-object v2, v0, v6

    const-string v6, "wb_work"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/16 v2, 0x9

    aget-object v6, v0, v2

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 1785
    aget-object v2, v0, v2

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    aget-object v2, v2, v6

    move-object v6, v2

    goto :goto_14

    :cond_1d
    move-object v6, v7

    .line 1788
    :goto_14
    array-length v2, v0

    move-object/from16 v17, v6

    const/16 v6, 0xa

    if-le v2, v6, :cond_1e

    aget-object v2, v0, v6

    const-string v6, "style_mode"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/16 v2, 0xa

    aget-object v6, v0, v2

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 1789
    aget-object v2, v0, v2

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    aget-object v2, v2, v6

    move-object v6, v2

    goto :goto_15

    :cond_1e
    move-object v6, v7

    .line 1792
    :goto_15
    array-length v2, v0

    move-object/from16 v30, v6

    const/16 v6, 0xb

    if-le v2, v6, :cond_1f

    aget-object v2, v0, v6

    const-string v6, "luma"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v2, 0xb

    aget-object v6, v0, v2

    const-string v2, "contr"

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v2, 0xb

    aget-object v6, v0, v2

    const-string v2, "satu"

    .line 1793
    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v2, 0xb

    aget-object v6, v0, v2

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1f

    aget-object v6, v0, v2

    invoke-virtual {v6, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 1795
    aget-object v2, v0, v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1796
    array-length v4, v2

    const/4 v6, 0x2

    if-le v4, v6, :cond_1f

    const/4 v4, 0x0

    .line 1797
    aget-object v4, v2, v4

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/16 v16, 0x1

    aget-object v4, v4, v16

    .line 1798
    aget-object v6, v2, v16

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v16

    const/16 v18, 0x2

    .line 1799
    aget-object v2, v2, v18

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v16

    move-object/from16 v16, v2

    move-object/from16 v40, v6

    move-object v6, v4

    move-object/from16 v4, v40

    goto :goto_16

    :cond_1f
    move-object v4, v7

    move-object v6, v4

    move-object/from16 v16, v6

    .line 1802
    :goto_16
    array-length v2, v0

    move-object/from16 v31, v4

    const/16 v4, 0xc

    if-le v2, v4, :cond_20

    aget-object v2, v0, v4

    const-string v4, "audio_stat"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v2, 0xc

    aget-object v4, v0, v2

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 1803
    aget-object v2, v0, v2

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aget-object v2, v2, v4

    move-object v4, v2

    goto :goto_17

    :cond_20
    move-object v4, v7

    .line 1805
    :goto_17
    array-length v2, v0

    move-object/from16 v32, v4

    const-string v4, "gesture_stat"

    move-object/from16 p1, v6

    const/16 v6, 0xd

    if-le v2, v6, :cond_22

    aget-object v2, v0, v6

    const-string v6, "logo_stat"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_22

    const/16 v2, 0xd

    aget-object v6, v0, v2

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 1806
    aget-object v6, v0, v2

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/16 v20, 0x1

    aget-object v6, v6, v20

    .line 1807
    invoke-virtual {v6, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v35

    if-eqz v35, :cond_21

    .line 1808
    invoke-virtual {v6, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 1809
    aget-object v2, v0, v2

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/16 v18, 0x2

    aget-object v2, v2, v18

    move-object/from16 v18, v2

    goto :goto_18

    :cond_21
    move-object/from16 v18, v7

    goto :goto_18

    :cond_22
    move-object v6, v7

    move-object/from16 v18, v6

    .line 1812
    :goto_18
    array-length v2, v0

    move-object/from16 v35, v7

    const/16 v7, 0xe

    if-le v2, v7, :cond_23

    aget-object v2, v0, v7

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_23

    aget-object v2, v0, v7

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1813
    aget-object v2, v0, v7

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aget-object v2, v2, v4

    move-object v7, v2

    goto :goto_19

    :cond_23
    move-object/from16 v7, v18

    .line 1816
    :goto_19
    array-length v2, v0

    const/16 v4, 0xf

    if-le v2, v4, :cond_24

    aget-object v2, v0, v4

    const-string v4, "is_save_photo:"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_24

    const/16 v2, 0xf

    .line 1817
    aget-object v2, v0, v2

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aget-object v2, v2, v4

    move-object v4, v2

    goto :goto_1a

    :cond_24
    move-object/from16 v4, v35

    .line 1819
    :goto_1a
    array-length v2, v0

    move-object/from16 v18, v4

    const/16 v4, 0x10

    if-le v2, v4, :cond_25

    const/16 v2, 0x10

    aget-object v2, v0, v2

    const-string v4, "headlight_stat:"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_25

    const/16 v2, 0x10

    .line 1820
    aget-object v2, v0, v2

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aget-object v2, v2, v4

    move-object v4, v2

    goto :goto_1b

    :cond_25
    move-object/from16 v4, v35

    .line 1822
    :goto_1b
    array-length v2, v0

    move-object/from16 v36, v4

    const/16 v4, 0x11

    if-le v2, v4, :cond_26

    const/16 v2, 0x11

    aget-object v2, v0, v2

    const-string v4, "audio_sample_rate:"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_26

    const/16 v2, 0x11

    .line 1823
    aget-object v0, v0, v2

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/16 v20, 0x1

    aget-object v0, v0, v20

    move-object v8, v0

    goto :goto_1c

    :cond_26
    const/16 v20, 0x1

    move-object/from16 v8, v35

    .line 1826
    :goto_1c
    iget-object v0, v15, Lcom/powervision/camera/camera/BaseCameraManager;->Tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " parseCameraAllParams() ..... mainWorkMode="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  subWorkMode="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  sheets="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  aebValueStr="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  time="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  ratio_size="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  snapFileFormat="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  exposure="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  iso="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v25

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v25, v3

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  exptime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v23

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  metering="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v22

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  evValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v34

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  heWorkMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v24

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  afWorkMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v19

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  storageTypeSDCard="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   sdAll="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  sdRemain="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v26

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " all="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  remain="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v28

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  wbWork="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v17

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  styleMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v30

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  lumaStr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  contrStr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v31

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "satuStr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v16

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  audioState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v32

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  logoStat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " gesture_stat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  delay_time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v21

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " lapse_file_duration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v33

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  is_save_photo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v18

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " headlight_stat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v36

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  audio_sample_rate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v35, v16

    move-object/from16 v16, v22

    move-object v2, v9

    move-object/from16 v9, v25

    move-object/from16 v22, v26

    move-object/from16 v25, v28

    move-object/from16 v28, p1

    move-object/from16 v26, v17

    move-object/from16 v17, v34

    move-object/from16 v34, v36

    move-object/from16 v40, v33

    move-object/from16 v33, v18

    move-object/from16 v18, v24

    move-object/from16 v24, v29

    move-object/from16 v29, v31

    move-object/from16 v31, v21

    move-object/from16 v21, v27

    move-object/from16 v27, v30

    move-object/from16 v30, v32

    move-object/from16 v32, v40

    move-object v3, v10

    move-object v10, v4

    move-object v4, v12

    move-object v12, v5

    move-object v5, v11

    move-object/from16 v36, v6

    move-object v6, v9

    move-object/from16 v37, v7

    move-object v7, v12

    move-object/from16 v38, v8

    move-object v8, v13

    move-object v9, v10

    move-object/from16 v10, v23

    move-object/from16 v11, v16

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    move-object/from16 v16, v14

    move-object/from16 v17, v21

    move-object/from16 v18, v24

    const/16 v39, 0x1

    move-object/from16 v14, v19

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v22

    move-object/from16 v19, v25

    move-object/from16 v20, v26

    move-object/from16 v21, v27

    move-object/from16 v22, v28

    move-object/from16 v23, v29

    move-object/from16 v24, v35

    move-object/from16 v25, v30

    move-object/from16 v26, v36

    move-object/from16 v27, v37

    move-object/from16 v28, v31

    move-object/from16 v29, v32

    move-object/from16 v30, v33

    move-object/from16 v31, v34

    move-object/from16 v32, v38

    .line 1838
    invoke-direct/range {v0 .. v32}, Lcom/powervision/camera/camera/BaseCameraManager;->notifyAllParmas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v39

    :cond_27
    const/4 v0, 0x0

    return v0
.end method

.method private targetListIsEmpty(Ljava/util/List;Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 2068
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2071
    :cond_0
    iget-object p1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->Tag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " CameraManger .."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  is isEmpty"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public synthetic lambda$new$0$BaseCameraManager(I)V
    .locals 8

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 734
    :goto_0
    iput-boolean v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->isCameraConnect:Z

    .line 735
    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->Tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---> ConnectionListener   status ...result i= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    iget-boolean v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->isCameraConnect:Z

    if-eqz v1, :cond_2

    const-wide/16 v0, 0x0

    .line 737
    iput-wide v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->lastDisconnectTime:J

    .line 738
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object p1, Lcom/powervision/base/utils/TimeUtils;->TIME_FORMAT_ALL:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/powervision/base/utils/TimeUtils;->time2Date(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 739
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/camera/camera/CameraManager;->setCameraSysTime(Ljava/lang/String;)V

    .line 740
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   ...set SysTime() ...--------currentTimeStr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    iget-object p1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraConnectListenerList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 744
    :cond_1
    iget-object p1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraConnectListenerList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/camera/camera/CameraListener;

    .line 745
    invoke-interface {v0}, Lcom/powervision/camera/camera/CameraListener;->onCameraConnect()V

    goto :goto_1

    .line 748
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 749
    iget-wide v3, p0, Lcom/powervision/camera/camera/BaseCameraManager;->lastDisconnectTime:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x1f4

    cmp-long v7, v3, v5

    if-lez v7, :cond_8

    .line 750
    iput-wide v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->lastDisconnectTime:J

    .line 754
    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraConnectListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/camera/camera/CameraListener;

    if-ne p1, v0, :cond_4

    .line 756
    invoke-interface {v2}, Lcom/powervision/camera/camera/CameraListener;->onCameraConnectFaile()V

    .line 757
    invoke-direct {p0}, Lcom/powervision/camera/camera/BaseCameraManager;->onCameraDisconnect()V

    goto :goto_2

    :cond_4
    const/4 v3, 0x2

    if-ne p1, v3, :cond_5

    .line 759
    invoke-interface {v2}, Lcom/powervision/camera/camera/CameraListener;->onCameraConnectFaile()V

    .line 760
    invoke-direct {p0}, Lcom/powervision/camera/camera/BaseCameraManager;->onCameraDisconnect()V

    goto :goto_2

    :cond_5
    const/4 v3, 0x3

    if-ne p1, v3, :cond_6

    .line 762
    invoke-interface {v2}, Lcom/powervision/camera/camera/CameraListener;->onCameraDisconnect()V

    .line 763
    invoke-direct {p0}, Lcom/powervision/camera/camera/BaseCameraManager;->onCameraDisconnect()V

    goto :goto_2

    :cond_6
    const/4 v3, 0x4

    if-ne p1, v3, :cond_3

    .line 765
    invoke-interface {v2}, Lcom/powervision/camera/camera/CameraListener;->onCameraConnectHeartBeatTimeOut()V

    .line 766
    iget-object v2, p0, Lcom/powervision/camera/camera/BaseCameraManager;->Tag:Ljava/lang/String;

    const-string v3, " camera ...onCameraConnectHeartBeatTimeOut"

    invoke-static {v2, v3}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    invoke-direct {p0}, Lcom/powervision/camera/camera/BaseCameraManager;->onCameraDisconnect()V

    goto :goto_2

    .line 770
    :cond_7
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " camera ...init  --->connection() ...i= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " commandDisConnect()..commandConnect()"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public synthetic lambda$new$1$BaseCameraManager(I)V
    .locals 2

    .line 806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " camera ...init ...onConnectAudio() ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "connect_audio_test"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 807
    :goto_0
    iput-boolean p1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->isCameraAudioState:Z

    .line 808
    iget-object p1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraAudioListenerConnectStateList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/camera/camera/CameraListener$CameraAudioConnectStateListener;

    .line 809
    iget-boolean v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->isCameraAudioState:Z

    if-eqz v1, :cond_1

    .line 810
    invoke-interface {v0}, Lcom/powervision/camera/camera/CameraListener$CameraAudioConnectStateListener;->onCameraAudioConnectSuccess()V

    goto :goto_1

    .line 812
    :cond_1
    invoke-interface {v0}, Lcom/powervision/camera/camera/CameraListener$CameraAudioConnectStateListener;->onCameraAudioConnectFailed()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public synthetic lambda$new$10$BaseCameraManager(Ljava/lang/String;)V
    .locals 1

    .line 978
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraGetResolutionListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 981
    :cond_0
    invoke-direct {p0, p1}, Lcom/powervision/camera/camera/BaseCameraManager;->nofityCameraResolution(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$new$11$BaseCameraManager(Ljava/lang/String;)V
    .locals 2

    .line 989
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyEnableHistogramListenerList:Ljava/util/List;

    const-string v1, "mCameraNotifyEnableHistogramListenerList"

    invoke-direct {p0, v0, v1}, Lcom/powervision/camera/camera/BaseCameraManager;->targetListIsEmpty(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 992
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyEnableHistogramListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraNotifyEnableHistogramListener;

    .line 993
    invoke-direct {p0, p1, v1}, Lcom/powervision/camera/camera/BaseCameraManager;->enableHistogramData(Ljava/lang/String;Lcom/powervision/camera/camera/CameraListener$CameraNotifyEnableHistogramListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$12$BaseCameraManager([II)V
    .locals 0

    .line 1020
    iget-object p1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyHistogramDataListenerList:Ljava/util/List;

    const-string p2, "mCameraNotifyHistogramDataListenerList"

    invoke-direct {p0, p1, p2}, Lcom/powervision/camera/camera/BaseCameraManager;->targetListIsEmpty(Ljava/util/List;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1024
    iget-object p1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyHistogramDataListenerList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/powervision/camera/camera/CameraListener$CameraNotifyHistogramDataListener;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$13$BaseCameraManager(Ljava/lang/String;)V
    .locals 5

    .line 1035
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraGetCurrentExposureStatusListenerList:Ljava/util/List;

    const-string v1, "mCameraGetCurrentExposureStatusListenerList"

    invoke-direct {p0, v0, v1}, Lcom/powervision/camera/camera/BaseCameraManager;->targetListIsEmpty(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraGetCurrentExposureStatusListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraGetCurrentExposureStatusListener;

    .line 1039
    iget-object v2, p0, Lcom/powervision/camera/camera/BaseCameraManager;->Tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " CameraManger ...enableHistogram   result ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    invoke-interface {v1, p1}, Lcom/powervision/camera/camera/CameraListener$CameraGetCurrentExposureStatusListener;->onGetCameraCurrentExposureStatus(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$14$BaseCameraManager(Ljava/lang/String;)V
    .locals 2

    .line 1049
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->nCameraSetExposureModeListenerList:Ljava/util/List;

    const-string v1, "nCameraSetExposureModeListenerList"

    invoke-direct {p0, v0, v1}, Lcom/powervision/camera/camera/BaseCameraManager;->targetListIsEmpty(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1051
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1052
    iget v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->localExposureMode:I

    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->exposureMode:I

    .line 1055
    :cond_0
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->nCameraSetExposureModeListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraSetExposureModeListener;

    .line 1056
    invoke-interface {v1, p1}, Lcom/powervision/camera/camera/CameraListener$CameraSetExposureModeListener;->onSetExposureMode(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic lambda$new$15$BaseCameraManager(Ljava/lang/String;)V
    .locals 2

    .line 1066
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraSetIsoListenerList:Ljava/util/List;

    const-string v1, " mCameraSetIsoListenerList"

    invoke-direct {p0, v0, v1}, Lcom/powervision/camera/camera/BaseCameraManager;->targetListIsEmpty(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1067
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1068
    iget v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->localIsoValue:I

    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->isoType:I

    .line 1071
    :cond_0
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraSetIsoListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraSetIsoListener;

    .line 1072
    invoke-interface {v1, p1}, Lcom/powervision/camera/camera/CameraListener$CameraSetIsoListener;->onSetIso(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic lambda$new$16$BaseCameraManager(Ljava/lang/String;)V
    .locals 2

    .line 1082
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifySetExposureTimeListenerList:Ljava/util/List;

    const-string v1, " CameraNotifySetExposureTimeListenerList"

    invoke-direct {p0, v0, v1}, Lcom/powervision/camera/camera/BaseCameraManager;->targetListIsEmpty(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1084
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1085
    iget v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->localShutterValue:I

    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->exptimeValue:I

    .line 1089
    :cond_0
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifySetExposureTimeListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraSetExposureTimeListener;

    .line 1090
    invoke-interface {v1, p1}, Lcom/powervision/camera/camera/CameraListener$CameraSetExposureTimeListener;->onSetExposureTime(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic lambda$new$17$BaseCameraManager(Ljava/lang/String;)V
    .locals 3

    .line 1100
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1101
    iget v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->localEvIntValue:I

    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->evIntValue:I

    .line 1102
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   set Ev result ... evIntValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/powervision/camera/camera/BaseCameraManager;->evIntValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    :cond_0
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraSetEVListenerList:Ljava/util/List;

    const-string v1, " mCameraSetEVListenerList"

    invoke-direct {p0, v0, v1}, Lcom/powervision/camera/camera/BaseCameraManager;->targetListIsEmpty(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1106
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraSetEVListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraSetEVListener;

    .line 1107
    invoke-interface {v1, p1}, Lcom/powervision/camera/camera/CameraListener$CameraSetEVListener;->onSetEV(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic lambda$new$18$BaseCameraManager(Ljava/lang/String;)V
    .locals 2

    .line 1117
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifySetMeteringModeListenermList:Ljava/util/List;

    const-string v1, " CameraNotifySetMeteringModeListenermList"

    invoke-direct {p0, v0, v1}, Lcom/powervision/camera/camera/BaseCameraManager;->targetListIsEmpty(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1120
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifySetMeteringModeListenermList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraSetMeteringModeListener;

    .line 1121
    invoke-interface {v1, p1}, Lcom/powervision/camera/camera/CameraListener$CameraSetMeteringModeListener;->onSetMeteringMode(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$19$BaseCameraManager(Ljava/lang/String;)V
    .locals 3

    .line 1131
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  CameraNotifyGetWhiteBalanceListener()...  s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraGetWhiteBalanceListenerList:Ljava/util/List;

    const-string v1, " CameraNotifyGetWhiteBalanceListener"

    invoke-direct {p0, v0, v1}, Lcom/powervision/camera/camera/BaseCameraManager;->targetListIsEmpty(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1135
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraGetWhiteBalanceListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraGetWhiteBalanceListener;

    .line 1136
    invoke-interface {v1, p1}, Lcom/powervision/camera/camera/CameraListener$CameraGetWhiteBalanceListener;->onGetWhiteBalance(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$2$BaseCameraManager(Ljava/lang/String;)V
    .locals 0

    .line 820
    invoke-direct {p0, p1}, Lcom/powervision/camera/camera/BaseCameraManager;->notifyCurrentWorkStatus(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$new$20$BaseCameraManager(Ljava/lang/String;)V
    .locals 3

    .line 1146
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraSetWhiteBalanceListenerList:Ljava/util/List;

    const-string v1, " CameraNotifySetWhiteBalanceListener"

    invoke-direct {p0, v0, v1}, Lcom/powervision/camera/camera/BaseCameraManager;->targetListIsEmpty(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1148
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1149
    iget v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->localWhiteBalance:I

    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->wbType:I

    .line 1151
    :cond_0
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callback ..setWB ...wbType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/powervision/camera/camera/BaseCameraManager;->wbType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "..localWhiteBalance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/powervision/camera/camera/BaseCameraManager;->localWhiteBalance:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraSetWhiteBalanceListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraSetWhiteBalanceListener;

    .line 1155
    invoke-interface {v1, p1}, Lcom/powervision/camera/camera/CameraListener$CameraSetWhiteBalanceListener;->onSetWhiteBalance(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic lambda$new$21$BaseCameraManager(Ljava/lang/String;)V
    .locals 3

    .line 1164
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraSetPhotoStyleListenerList:Ljava/util/List;

    const-string v1, " mCameraSetPhotoStyleListenerList"

    invoke-direct {p0, v0, v1}, Lcom/powervision/camera/camera/BaseCameraManager;->targetListIsEmpty(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "0"

    .line 1166
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1167
    iget v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->localStyleMode:I

    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->styleMode:I

    .line 1169
    :cond_0
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  callback .. CameraNotifySetPhotoStyleListener()----->styleMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/powervision/camera/camera/BaseCameraManager;->styleMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  callback .. ()----->styleMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->styleMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "->localStyleMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->localStyleMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "style_set"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraSetPhotoStyleListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraSetPhotoStyleListener;

    .line 1174
    invoke-interface {v1, p1}, Lcom/powervision/camera/camera/CameraListener$CameraSetPhotoStyleListener;->onSetPhotoStyle(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic lambda$new$22$BaseCameraManager(Ljava/lang/String;)V
    .locals 2

    .line 1185
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1186
    iget v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->localLuminance:I

    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->luminance:I

    .line 1188
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".callback...\u4eae\u5ea6..  s ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   luminance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->luminance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cust_value"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraSetLuminanceListenerList:Ljava/util/List;

    const-string v1, " mCameraSetLuminanceListenerList"

    invoke-direct {p0, v0, v1}, Lcom/powervision/camera/camera/BaseCameraManager;->targetListIsEmpty(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1192
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraSetLuminanceListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraSetLuminanceListener;

    .line 1193
    invoke-interface {v1, p1}, Lcom/powervision/camera/camera/CameraListener$CameraSetLuminanceListener;->onSetLuminance(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic lambda$new$23$BaseCameraManager(Ljava/lang/String;)V
    .locals 2

    .line 1203
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1204
    iget v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->localContrast:I

    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->contrast:I

    .line 1206
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".callback...\u5bf9\u6bd4\u5ea6..  s ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   contrast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->contrast:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cust_value"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraSetContrastListenerList:Ljava/util/List;

    const-string v1, " mCameraSetContrastListenerList"

    invoke-direct {p0, v0, v1}, Lcom/powervision/camera/camera/BaseCameraManager;->targetListIsEmpty(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1210
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraSetContrastListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraSetContrastListener;

    .line 1211
    invoke-interface {v1, p1}, Lcom/powervision/camera/camera/CameraListener$CameraSetContrastListener;->onSetContrast(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic lambda$new$24$BaseCameraManager(Ljava/lang/String;)V
    .locals 2

    .line 1220
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1221
    iget v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->localSaturation:I

    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->saturation:I

    .line 1223
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".callback...\u9971\u548c\u5ea6..  s ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   saturation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->saturation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cust_value"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraSetSaturationListenerList:Ljava/util/List;

    const-string v1, " mCameraSetSaturationListenerList"

    invoke-direct {p0, v0, v1}, Lcom/powervision/camera/camera/BaseCameraManager;->targetListIsEmpty(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1227
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraSetSaturationListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraSetSaturationListener;

    .line 1228
    invoke-interface {v1, p1}, Lcom/powervision/camera/camera/CameraListener$CameraSetSaturationListener;->onSetSaturation(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic lambda$new$25$BaseCameraManager(Ljava/lang/String;)V
    .locals 2

    .line 1238
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraEnableResistBlinkListenerList:Ljava/util/List;

    const-string v1, " mCameraEnableResistBlinkListenerList"

    invoke-direct {p0, v0, v1}, Lcom/powervision/camera/camera/BaseCameraManager;->targetListIsEmpty(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1240
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1241
    iget v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->localAntiFlickerMode:I

    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mAntiFlickerMode:I

    goto :goto_0

    .line 1243
    :cond_0
    iget v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mAntiFlickerMode:I

    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->localAntiFlickerMode:I

    .line 1245
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAntiFlickerMode ..\u6297\u95ea\u70c1...mAntiFlickerMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mAntiFlickerMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "localAntiFlickerMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->localAntiFlickerMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "s_g_af"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraEnableResistBlinkListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraEnableResistBlinkListener;

    .line 1249
    invoke-interface {v1, p1}, Lcom/powervision/camera/camera/CameraListener$CameraEnableResistBlinkListener;->onEnableResistBlink(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public synthetic lambda$new$26$BaseCameraManager(Ljava/lang/String;)V
    .locals 3

    .line 1259
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraResetCameraParamListenerList:Ljava/util/List;

    const-string v1, " mCameraResetCameraParamListenerList"

    invoke-direct {p0, v0, v1}, Lcom/powervision/camera/camera/BaseCameraManager;->targetListIsEmpty(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1261
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1262
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callback .. CameraNotifyResetCameraParamListener()... result ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    :cond_0
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraResetCameraParamListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraResetCameraParamListener;

    .line 1266
    invoke-interface {v1, p1}, Lcom/powervision/camera/camera/CameraListener$CameraResetCameraParamListener;->onResetCameraParam(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic lambda$new$27$BaseCameraManager(Ljava/lang/String;)V
    .locals 2

    .line 1276
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraSetCaptureModeListenerList:Ljava/util/List;

    const-string v1, " mCameraSetCaptureModeListenerList"

    invoke-direct {p0, v0, v1}, Lcom/powervision/camera/camera/BaseCameraManager;->targetListIsEmpty(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1277
    invoke-direct {p0, p1}, Lcom/powervision/camera/camera/BaseCameraManager;->notifyCaptureMode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$28$BaseCameraManager(Ljava/lang/String;)V
    .locals 3

    .line 1286
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraGetStorageDeviceTypeListenerList:Ljava/util/List;

    const-string v1, " mCameraGetStorageDeviceTypeListenerList"

    invoke-direct {p0, v0, v1}, Lcom/powervision/camera/camera/BaseCameraManager;->targetListIsEmpty(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1288
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0x1000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1289
    iput-boolean v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->storageTypeSDCard:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1291
    iput-boolean v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->storageTypeSDCard:Z

    .line 1293
    :goto_0
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  CameraNotifyGetStorageDeviceTypeListener() s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraGetStorageDeviceTypeListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraGetStorageDeviceTypeListener;

    .line 1296
    invoke-interface {v1, p1}, Lcom/powervision/camera/camera/CameraListener$CameraGetStorageDeviceTypeListener;->onGetStorageDeviceType(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public synthetic lambda$new$29$BaseCameraManager(Ljava/lang/String;)V
    .locals 3

    .line 1306
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  callback ...\u8bbe\u7f6e\u5b58\u50a8\u7c7b\u578b\u7ed3\u679c.. s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  storageTypeSDCard="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/powervision/camera/camera/BaseCameraManager;->storageTypeSDCard:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraSetCurrentStorageDeviceListenerList:Ljava/util/List;

    const-string v1, " mCameraSetCurrentStorageDeviceListenerList"

    invoke-direct {p0, v0, v1}, Lcom/powervision/camera/camera/BaseCameraManager;->targetListIsEmpty(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1309
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1310
    iget-boolean v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->localStorageType:Z

    iput-boolean v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->storageTypeSDCard:Z

    .line 1313
    :cond_0
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraSetCurrentStorageDeviceListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraSetCurrentStorageDeviceListener;

    .line 1314
    invoke-interface {v1, p1}, Lcom/powervision/camera/camera/CameraListener$CameraSetCurrentStorageDeviceListener;->onSetCurrentStorageDevice(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic lambda$new$3$BaseCameraManager(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 829
    iput-boolean v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->isTakingPhoto:Z

    .line 830
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraControllListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 833
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 834
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " -----send cmd result ...CameraNotifyStartPhotoListener s= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "0"

    .line 835
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 836
    iget v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->photoGraphType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    const/4 v0, 0x6

    .line 837
    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->photoGraphType:I

    .line 838
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraControllListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraControllListener;

    .line 839
    invoke-interface {v1, p1}, Lcom/powervision/camera/camera/CameraListener$CameraControllListener;->onPhotograph(Ljava/lang/String;)V

    goto :goto_0

    .line 842
    :cond_1
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " --222222-CameraNotifyStartPhotoListener s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " photoGraphType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/powervision/camera/camera/BaseCameraManager;->photoGraphType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "   localPhotoValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/powervision/camera/camera/BaseCameraManager;->localPhotoValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_2
    const-string v0, "0x416"

    .line 844
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 845
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraControllListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraControllListener;

    .line 846
    invoke-interface {v1}, Lcom/powervision/camera/camera/CameraListener$CameraControllListener;->onTimingStart()V

    goto :goto_1

    :cond_3
    const-string v0, "0x417"

    .line 848
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 849
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraControllListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraControllListener;

    .line 850
    invoke-interface {v1}, Lcom/powervision/camera/camera/CameraListener$CameraControllListener;->onMultipleShotsStart()V

    goto :goto_2

    :cond_4
    const-string v0, "0x418"

    .line 852
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 853
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraControllListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraControllListener;

    .line 854
    invoke-interface {v1}, Lcom/powervision/camera/camera/CameraListener$CameraControllListener;->onAEBMultiplePhotoStart()V

    goto :goto_3

    :cond_5
    const-string v0, "0x419"

    .line 856
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 857
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraControllListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraControllListener;

    .line 858
    invoke-interface {v1}, Lcom/powervision/camera/camera/CameraListener$CameraControllListener;->onHDRMultiplePhotoStart()V

    goto :goto_4

    :cond_6
    const-string v0, "-1"

    .line 860
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "0x104"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_7

    :cond_7
    const-string v0, "0x803"

    .line 865
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 866
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraControllListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraControllListener;

    .line 867
    invoke-interface {v1, p1}, Lcom/powervision/camera/camera/CameraListener$CameraControllListener;->onPhotograph(Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    const-string v0, "0x203"

    .line 869
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 870
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraControllListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraControllListener;

    .line 871
    iget v2, p0, Lcom/powervision/camera/camera/BaseCameraManager;->photoGraphType:I

    invoke-interface {v1, p1, v2}, Lcom/powervision/camera/camera/CameraListener$CameraControllListener;->onStorageFull(Ljava/lang/String;I)V

    goto :goto_6

    .line 861
    :cond_9
    :goto_7
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraControllListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraControllListener;

    .line 863
    invoke-interface {v1, p1}, Lcom/powervision/camera/camera/CameraListener$CameraControllListener;->fail(Ljava/lang/String;)V

    goto :goto_8

    .line 875
    :cond_a
    :goto_9
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " callback ...onPhotograph  \u62cd\u7167\u6a21\u5f0f\u89e3\u6790 \u7ed3\u679c  s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  photoGraphType="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->photoGraphType:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  localPhotoValue="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->localPhotoValue:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$new$30$BaseCameraManager(Ljava/lang/String;)V
    .locals 4

    .line 1421
    invoke-static {p1}, Lcom/powervision/camera/utils/CameraUtil;->getRecordTimeResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1422
    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->Tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " \u5269\u4f59\u5f55\u50cf\u65f6\u957f----getRestRecordTime()--s= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "recordTimeResult= "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    iget-object p1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyGetRestRecordTimeListenerList:Ljava/util/List;

    const-string v1, "cameraNotifyGetRestRecordTimeListenerList"

    invoke-direct {p0, p1, v1}, Lcom/powervision/camera/camera/BaseCameraManager;->targetListIsEmpty(Ljava/util/List;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1427
    iget-object p1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyGetRestRecordTimeListenerList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetRestRecordTimeListener;

    .line 1428
    invoke-interface {v1, v0}, Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetRestRecordTimeListener;->getRestRecordTime(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$31$BaseCameraManager(Ljava/lang/String;)V
    .locals 3

    .line 1438
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  callback ..setPhotoFileFormat() ...s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifySetPhotoFileFormatListenerList:Ljava/util/List;

    const-string v1, "cameraNotifySetPhotoFileFormatListenerList"

    invoke-direct {p0, v0, v1}, Lcom/powervision/camera/camera/BaseCameraManager;->targetListIsEmpty(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1441
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1442
    iget v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->localPhotoFileFormat:I

    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->photoFormatType:I

    .line 1445
    :cond_0
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifySetPhotoFileFormatListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraNotifySetPhotoFileFormatListener;

    .line 1446
    invoke-interface {v1, p1}, Lcom/powervision/camera/camera/CameraListener$CameraNotifySetPhotoFileFormatListener;->setPhotoFileFormat(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic lambda$new$32$BaseCameraManager(Ljava/lang/String;)V
    .locals 3

    .line 1456
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  callback ..getPhotoFileFormat() ...s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1457
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyGetPhotoFileFormatListenerList:Ljava/util/List;

    const-string v1, "cameraNotifyGetPhotoFileFormatListenerList"

    invoke-direct {p0, v0, v1}, Lcom/powervision/camera/camera/BaseCameraManager;->targetListIsEmpty(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1460
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyGetPhotoFileFormatListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetPhotoFileFormatListener;

    .line 1461
    invoke-interface {v1, p1}, Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetPhotoFileFormatListener;->getPhotoFileFormat(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$33$BaseCameraManager(Ljava/lang/String;)V
    .locals 3

    .line 1471
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  callback ..stopDelayTimePhoto() ...s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyStopDelayTimePhotoListenerList:Ljava/util/List;

    const-string v1, "mCameraNotifyStopDelayTimePhotoListenerList"

    invoke-direct {p0, v0, v1}, Lcom/powervision/camera/camera/BaseCameraManager;->targetListIsEmpty(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1475
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyStopDelayTimePhotoListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraNotifyStopDelayTimePhotoListener;

    .line 1476
    invoke-interface {v1, p1}, Lcom/powervision/camera/camera/CameraListener$CameraNotifyStopDelayTimePhotoListener;->stopDelayTimePhoto(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$34$BaseCameraManager(Ljava/lang/String;)V
    .locals 3

    .line 1485
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyGetCameraAllParametersListenerList:Ljava/util/List;

    const-string v1, "mCameraNotifyGetCameraAllParametersListenerList"

    invoke-direct {p0, v0, v1}, Lcom/powervision/camera/camera/BaseCameraManager;->targetListIsEmpty(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1487
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   basecameraManager ...getCameraAllParameters() ...s= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ...mCameraNotifyGetCameraAllParametersListenerList.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyGetCameraAllParametersListenerList:Ljava/util/List;

    .line 1489
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1487
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    invoke-direct {p0, p1}, Lcom/powervision/camera/camera/BaseCameraManager;->parseCameraAllParams(Ljava/lang/String;)Z

    move-result p1

    .line 1493
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyGetCameraAllParametersListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetCameraAllParametersListener;

    if-eqz p1, :cond_0

    .line 1495
    invoke-interface {v1}, Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetCameraAllParametersListener;->getCameraAllParameters()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic lambda$new$35$BaseCameraManager(Ljava/lang/String;)V
    .locals 3

    .line 1531
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1532
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " call back ... set SysTime().. onSetSysTime result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "0"

    .line 1533
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1536
    :cond_0
    iget-boolean v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->isCameraConnect:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->setSysTimeSuccess:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1537
    iput-boolean v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->setSysTimeSuccess:Z

    .line 1538
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/powervision/base/utils/TimeUtils;->TIME_FORMAT_ALL:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/powervision/base/utils/TimeUtils;->time2Date(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1540
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/powervision/camera/camera/CameraManager;->setCameraSysTime(Ljava/lang/String;)V

    .line 1544
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnSetSysTimeListenerList:Ljava/util/List;

    const-string v1, "mCameraNotifyOnSetSysTimeListenerList"

    invoke-direct {p0, v0, v1}, Lcom/powervision/camera/camera/BaseCameraManager;->targetListIsEmpty(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1547
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnSetSysTimeListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnSetSysTimeListener;

    .line 1548
    invoke-interface {v1, p1}, Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnSetSysTimeListener;->onSetSysTime(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public synthetic lambda$new$36$BaseCameraManager()V
    .locals 2

    .line 1580
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->Tag:Ljava/lang/String;

    const-string v1, " notify  ......onSDFull ()"

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1581
    iput-boolean v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->isSDFull:Z

    .line 1582
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnSDFullListenerList:Ljava/util/List;

    const-string v1, "cameraNotifyOnSDFullListenerList"

    invoke-direct {p0, v0, v1}, Lcom/powervision/camera/camera/BaseCameraManager;->targetListIsEmpty(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1585
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnSDFullListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnSDFullListener;

    .line 1586
    invoke-interface {v1}, Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnSDFullListener;->onSDFull()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$37$BaseCameraManager()V
    .locals 2

    .line 1593
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->Tag:Ljava/lang/String;

    const-string v1, " notify......onInternalStorageFull ()"

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1594
    iput-boolean v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->isEmmcFull:Z

    .line 1595
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnInternalStorageFullListenerList:Ljava/util/List;

    const-string v1, "cameraNotifyOnInternalStorageFullListenerList"

    invoke-direct {p0, v0, v1}, Lcom/powervision/camera/camera/BaseCameraManager;->targetListIsEmpty(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1598
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnInternalStorageFullListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnInternalStorageFullListener;

    .line 1599
    invoke-interface {v1}, Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnInternalStorageFullListener;->onInternalStorageFull()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$38$BaseCameraManager(I)V
    .locals 3

    .line 2613
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ...onAEBMultiplePhotoState  num="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2615
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraAEBMultiplePhotoStateListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraAEBMultiplePhotoStateListener;

    .line 2616
    invoke-interface {v1, p1}, Lcom/powervision/camera/camera/CameraListener$CameraAEBMultiplePhotoStateListener;->onAEBMultiplePhotoState(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$39$BaseCameraManager(Ljava/lang/String;)V
    .locals 3

    .line 2625
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ...onHDRMultiplePhotoState  s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2626
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2628
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraHDRMultiplePhotoStateListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraHDRMultiplePhotoStateListener;

    .line 2629
    invoke-interface {v1, p1}, Lcom/powervision/camera/camera/CameraListener$CameraHDRMultiplePhotoStateListener;->onHDRMultiplePhotoState(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$4$BaseCameraManager(Ljava/lang/String;)V
    .locals 3

    .line 880
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraControllListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 883
    :cond_0
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraControllListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraControllListener;

    const-string v2, "0"

    .line 885
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 886
    sget v2, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_RECORDING:I

    iput v2, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraCurrentStatus:I

    .line 888
    :cond_1
    invoke-interface {v1, p1}, Lcom/powervision/camera/camera/CameraListener$CameraControllListener;->onStartRecordVideo(Ljava/lang/String;)V

    goto :goto_0

    .line 890
    :cond_2
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ...onStartRecordVideo     s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$new$40$BaseCameraManager(Ljava/lang/String;)V
    .locals 3

    .line 2638
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ...onIsSaveLapsePhoto  s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2639
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2640
    iget v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->localIsSavePhoto:I

    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->isSavePhoto:I

    goto :goto_0

    .line 2642
    :cond_0
    iget v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->isSavePhoto:I

    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->localIsSavePhoto:I

    .line 2645
    :goto_0
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraIsSaveLapsePhotoListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraIsSaveLapsePhotoListener;

    .line 2646
    invoke-interface {v1, p1}, Lcom/powervision/camera/camera/CameraListener$CameraIsSaveLapsePhotoListener;->onIsSaveLapsePhoto(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public synthetic lambda$new$41$BaseCameraManager(I)V
    .locals 3

    .line 2655
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "...onRecordDuration  time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2656
    iget v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraCurrentStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnRecordDurationListenerList:Ljava/util/List;

    const-string v1, "mCameraNotifyOnRecordDurationListenerList"

    invoke-direct {p0, v0, v1}, Lcom/powervision/camera/camera/BaseCameraManager;->targetListIsEmpty(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2659
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnRecordDurationListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraOnRecordDurationListener;

    .line 2660
    invoke-interface {v1, p1}, Lcom/powervision/camera/camera/CameraListener$CameraOnRecordDurationListener;->onRecordDuration(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$42$BaseCameraManager(Ljava/lang/String;)V
    .locals 3

    .line 2671
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "...onEnableHeadLight  status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2672
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "0"

    .line 2673
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2674
    iget v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->localHeadLightState:I

    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->headlightState:I

    goto :goto_0

    .line 2676
    :cond_0
    iget v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->headlightState:I

    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->localHeadLightState:I

    .line 2679
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraOnEnableHeadLightListenerList:Ljava/util/List;

    const-string v1, "mCameraOnEnableHeadLightListenerList"

    invoke-direct {p0, v0, v1}, Lcom/powervision/camera/camera/BaseCameraManager;->targetListIsEmpty(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2682
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraOnEnableHeadLightListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraOnEnableHeadLightListener;

    .line 2683
    invoke-interface {v1, p1}, Lcom/powervision/camera/camera/CameraListener$CameraOnEnableHeadLightListener;->onEnableHeadLight(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public synthetic lambda$new$43$BaseCameraManager(Ljava/lang/String;)V
    .locals 3

    .line 2694
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "...onGetHeadLightState  status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2695
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraOnGetHeadLightStateListenerList:Ljava/util/List;

    const-string v1, "mCameraOnGetHeadLightStateListenerList"

    invoke-direct {p0, v0, v1}, Lcom/powervision/camera/camera/BaseCameraManager;->targetListIsEmpty(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2698
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraOnGetHeadLightStateListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraOnGetHeadLightStateListener;

    .line 2699
    invoke-interface {v1, p1}, Lcom/powervision/camera/camera/CameraListener$CameraOnGetHeadLightStateListener;->onGetHeadLight(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$44$BaseCameraManager(Ljava/lang/String;)V
    .locals 3

    .line 2738
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2739
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  onSetAudioRate()...result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2740
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraOnSetAudioRateListenerList:Ljava/util/List;

    const-string v1, "mCameraOnSetAudioRateListenerList"

    invoke-direct {p0, v0, v1}, Lcom/powervision/camera/camera/BaseCameraManager;->targetListIsEmpty(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2743
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraOnSetAudioRateListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraOnSetAudioRateListener;

    .line 2744
    invoke-interface {v1, p1}, Lcom/powervision/camera/camera/CameraListener$CameraOnSetAudioRateListener;->onSetAudioRate(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$45$BaseCameraManager(Ljava/lang/String;)V
    .locals 3

    .line 2752
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2755
    :cond_0
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  OnGetAudioRate()...result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2756
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraOnGetAudioRateListenerList:Ljava/util/List;

    const-string v1, "mCameraOnGetAudioRateListenerList"

    invoke-direct {p0, v0, v1}, Lcom/powervision/camera/camera/BaseCameraManager;->targetListIsEmpty(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2759
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraOnGetAudioRateListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraOnGetAudioRateListener;

    .line 2760
    invoke-interface {v1, p1}, Lcom/powervision/camera/camera/CameraListener$CameraOnGetAudioRateListener;->onGetAudioRate(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic lambda$new$46$BaseCameraManager(I)V
    .locals 3

    .line 2771
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  local ......CameraNotifyOnPhotoState   callback ...status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 2774
    iget-object p1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraControllListenerList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/camera/camera/CameraListener$CameraControllListener;

    const-string v1, "0"

    .line 2775
    invoke-interface {v0, v1}, Lcom/powervision/camera/camera/CameraListener$CameraControllListener;->onPhotograph(Ljava/lang/String;)V

    goto :goto_0

    .line 2779
    :cond_0
    iget-object p1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraControllListenerList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/camera/camera/CameraListener$CameraControllListener;

    const-string v1, "-1"

    .line 2780
    invoke-interface {v0, v1}, Lcom/powervision/camera/camera/CameraListener$CameraControllListener;->fail(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public synthetic lambda$new$47$BaseCameraManager(Ljava/lang/String;)V
    .locals 3

    .line 2787
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2788
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ".........StopRecord()..result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2789
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraControllListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "cmd=batt_turn_off_record_success"

    .line 2792
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2793
    sget p1, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_RECORD:I

    iput p1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraCurrentStatus:I

    .line 2797
    iget-object p1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraControllListenerList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/camera/camera/CameraListener$CameraControllListener;

    const-string v1, "0"

    .line 2798
    invoke-interface {v0, v1}, Lcom/powervision/camera/camera/CameraListener$CameraControllListener;->onStopRecordVideo(Ljava/lang/String;)V

    const-string v0, "notify_new"

    const-string v1, ".........StopRecord().. 11111111"

    .line 2799
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic lambda$new$48$BaseCameraManager(I)V
    .locals 3

    .line 2807
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "...CameraNotifyOnCameraSensorHighTemperatureListener() data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2808
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraOnCameraSensorHighTemperatureListenerList:Ljava/util/List;

    const-string v1, "mCameraOnCameraSensorHighTemperatureListenerList"

    invoke-direct {p0, v0, v1}, Lcom/powervision/camera/camera/BaseCameraManager;->targetListIsEmpty(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2812
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraOnCameraSensorHighTemperatureListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraOnCameraSensorHighTemperatureListener;

    .line 2813
    invoke-interface {v1, p1}, Lcom/powervision/camera/camera/CameraListener$CameraOnCameraSensorHighTemperatureListener;->onCameraSensorHighTemperature(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$49$BaseCameraManager(Ljava/lang/String;)V
    .locals 3

    .line 2822
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "...onCameraSDCardSpeedDetected() data= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2823
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Slow_Speed_SDCard"

    .line 2826
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 2827
    iput-boolean v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->isSlowSpeedCard:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2829
    iput-boolean v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->isSlowSpeedCard:Z

    .line 2832
    :goto_0
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraOnCameraSDCardSpeedDetectedListenerList:Ljava/util/List;

    const-string v1, "mCameraNotifyOnCameraSDCardSpeedDetectedListenerList"

    invoke-direct {p0, v0, v1}, Lcom/powervision/camera/camera/BaseCameraManager;->targetListIsEmpty(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 2838
    :cond_2
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraOnCameraSDCardSpeedDetectedListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraOnCameraSDCardSpeedDetectedListener;

    .line 2840
    invoke-interface {v1, p1}, Lcom/powervision/camera/camera/CameraListener$CameraOnCameraSDCardSpeedDetectedListener;->onCameraSDCardSpeedDetected(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public synthetic lambda$new$5$BaseCameraManager(Ljava/lang/String;)V
    .locals 3

    .line 894
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraControllListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 897
    :cond_0
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraControllListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraControllListener;

    const-string v2, "0"

    .line 898
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 899
    sget v2, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_RECORD:I

    iput v2, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraCurrentStatus:I

    .line 901
    :cond_1
    invoke-interface {v1, p1}, Lcom/powervision/camera/camera/CameraListener$CameraControllListener;->onStopRecordVideo(Ljava/lang/String;)V

    goto :goto_0

    .line 903
    :cond_2
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ...onStopRecordVideo     s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public synthetic lambda$new$50$BaseCameraManager(Ljava/lang/String;)V
    .locals 2

    .line 2848
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2852
    :cond_0
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnSetTypeCModeListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnSetTypeCModeListener;

    .line 2853
    invoke-interface {v1, p1}, Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnSetTypeCModeListener;->onCameraNotifyOnSetTypeCMode(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic lambda$new$51$BaseCameraManager(Ljava/lang/String;)V
    .locals 2

    .line 2861
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2865
    :cond_0
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnGetTypeCModeListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnGetTypeCModeListener;

    .line 2866
    invoke-interface {v1, p1}, Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnGetTypeCModeListener;->onCameraNotifyOnGetTypeCMode(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic lambda$new$52$BaseCameraManager(Ljava/lang/String;)V
    .locals 3

    .line 2873
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2876
    :cond_0
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "...CameraNotifyOnGetPhotoStyleListener() result= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_"

    .line 2877
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2878
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 2879
    array-length v0, p1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 2880
    aget-object v1, p1, v0

    invoke-static {v1, v0}, Lcom/powervision/camera/utils/CameraUtil;->formatStringNumber(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->luminance:I

    const/4 v1, 0x1

    .line 2881
    aget-object v1, p1, v1

    invoke-static {v1, v0}, Lcom/powervision/camera/utils/CameraUtil;->formatStringNumber(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->contrast:I

    const/4 v1, 0x2

    .line 2882
    aget-object p1, p1, v1

    invoke-static {p1, v0}, Lcom/powervision/camera/utils/CameraUtil;->formatStringNumber(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->saturation:I

    .line 2884
    iget-object p1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnGetPhotoStyleListenerList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnGetPhotoStyleListener;

    .line 2885
    invoke-interface {v0}, Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnGetPhotoStyleListener;->onGetPhotoStyle()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic lambda$new$53$BaseCameraManager()V
    .locals 2

    .line 2893
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->Tag:Ljava/lang/String;

    const-string v1, "....CameraNotifyOnSDStorageSlowListener............."

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2894
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnSDStorageSlowListenerList:Ljava/util/List;

    const-string v1, "mCameraNotifyOnSDStorageSlowListenerList"

    invoke-direct {p0, v0, v1}, Lcom/powervision/camera/camera/BaseCameraManager;->targetListIsEmpty(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2899
    :cond_0
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnSDStorageSlowListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnSDStorageSlowListener;

    .line 2900
    invoke-interface {v1}, Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnSDStorageSlowListener;->onSDStorageSlow()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic lambda$new$54$BaseCameraManager(Ljava/lang/String;)V
    .locals 2

    .line 2907
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2910
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "...onSetGestureFirstTimeTeachingState() .. result= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "new_camera"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2911
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraOnSetGestureFirstTimeTeachingStateList:Ljava/util/List;

    const-string v1, "mCameraOnSetGestureFirstTimeTeachingStateList"

    invoke-direct {p0, v0, v1}, Lcom/powervision/camera/camera/BaseCameraManager;->targetListIsEmpty(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 2917
    :cond_1
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraOnSetGestureFirstTimeTeachingStateList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraOnSetGestureFirstTimeTeachingStateListener;

    .line 2918
    invoke-interface {v1, p1}, Lcom/powervision/camera/camera/CameraListener$CameraOnSetGestureFirstTimeTeachingStateListener;->onSetGestureFirstTimeTeachingState(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public synthetic lambda$new$55$BaseCameraManager(Ljava/lang/String;)V
    .locals 2

    .line 2925
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2928
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "...onGetGestureFirstTimeTeachingState() .. result= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "new_camera"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2929
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraOnGetGestureFirstTimeTeachingStateList:Ljava/util/List;

    const-string v1, "mCameraOnGetGestureFirstTimeTeachingStateList"

    invoke-direct {p0, v0, v1}, Lcom/powervision/camera/camera/BaseCameraManager;->targetListIsEmpty(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 2935
    :cond_1
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraOnGetGestureFirstTimeTeachingStateList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraOnGetGestureFirstTimeTeachingStateListener;

    .line 2936
    invoke-interface {v1, p1}, Lcom/powervision/camera/camera/CameraListener$CameraOnGetGestureFirstTimeTeachingStateListener;->onGetGestureFirstTimeTeachingState(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public synthetic lambda$new$56$BaseCameraManager(Ljava/lang/String;)V
    .locals 2

    .line 2943
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2947
    :cond_0
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraOnSetGestureOnlyDiscerningTypeList:Ljava/util/List;

    const-string v1, "mCameraOnSetGestureOnlyDiscerningTypeList"

    invoke-direct {p0, v0, v1}, Lcom/powervision/camera/camera/BaseCameraManager;->targetListIsEmpty(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 2951
    :cond_1
    iget v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->localGestureDiscerningType:I

    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mGestureDiscerningType:I

    .line 2952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "...onSetGestureOnlyDiscerningType() .. result= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mGestureDiscerningType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mGestureDiscerningType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "new_camera"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2956
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraOnSetGestureOnlyDiscerningTypeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraOnSetGestureOnlyDiscerningTypeListener;

    .line 2957
    invoke-interface {v1, p1}, Lcom/powervision/camera/camera/CameraListener$CameraOnSetGestureOnlyDiscerningTypeListener;->onSetGestureOnlyDiscerningType(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public synthetic lambda$new$57$BaseCameraManager(Ljava/lang/String;)V
    .locals 2

    .line 2962
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "======set  video format ======type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mov_set"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2963
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnSetMuxerFormatList:Ljava/util/List;

    const-string v1, "mCameraNotifyOnSetMuxerFormatList"

    .line 2964
    invoke-direct {p0, v0, v1}, Lcom/powervision/camera/camera/BaseCameraManager;->targetListIsEmpty(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "0"

    .line 2967
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2968
    iget v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->localMuxerFormatType:I

    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mMuxerFormatType:I

    .line 2972
    :cond_1
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnSetMuxerFormatList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnSetMuxerFormatListener;

    .line 2973
    invoke-interface {v1, p1}, Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnSetMuxerFormatListener;->onSetMuxerFormat(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public synthetic lambda$new$58$BaseCameraManager(Ljava/lang/String;)V
    .locals 2

    .line 2978
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "======get video format ======type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mov_set"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2979
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2983
    :cond_0
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnGetMuxerFormatList:Ljava/util/List;

    const-string v1, "mCameraNotifyOnGetMuxerFormatList"

    invoke-direct {p0, v0, v1}, Lcom/powervision/camera/camera/BaseCameraManager;->targetListIsEmpty(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 2986
    invoke-static {p1, v0}, Lcom/powervision/camera/utils/CameraUtil;->formatStringNumber(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mMuxerFormatType:I

    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    .line 2988
    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mMuxerFormatType:I

    .line 2991
    :cond_2
    iget-object p1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnGetMuxerFormatList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnGetMuxerFormatListener;

    .line 2992
    iget v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mMuxerFormatType:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnGetMuxerFormatListener;->onGetMuxerFormat(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public synthetic lambda$new$6$BaseCameraManager(Ljava/lang/String;)V
    .locals 3

    .line 907
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraControllListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 910
    :cond_0
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraControllListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraControllListener;

    const-string v2, "0"

    .line 911
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 912
    sget v2, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_PHOTO:I

    iput v2, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraCurrentStatus:I

    .line 914
    :cond_1
    invoke-interface {v1, p1}, Lcom/powervision/camera/camera/CameraListener$CameraControllListener;->onSwitchPhotographMode(Ljava/lang/String;)V

    goto :goto_0

    .line 916
    :cond_2
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ...onSwitchPhotographMode     s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public synthetic lambda$new$7$BaseCameraManager(Ljava/lang/String;)V
    .locals 3

    .line 921
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraControllListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 924
    :cond_0
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraControllListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraControllListener;

    const-string v2, "0"

    .line 925
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 926
    sget v2, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_RECORD:I

    iput v2, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraCurrentStatus:I

    .line 928
    :cond_1
    invoke-interface {v1, p1}, Lcom/powervision/camera/camera/CameraListener$CameraControllListener;->onSwitchRecordMode(Ljava/lang/String;)V

    goto :goto_0

    .line 930
    :cond_2
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ...onSwitchRecordMode     s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public synthetic lambda$new$8$BaseCameraManager(Ljava/lang/String;)V
    .locals 2

    .line 939
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraResolutionChangeListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 942
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 943
    iget v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->localVideResolution:I

    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraCurrentResolution:I

    goto :goto_0

    .line 945
    :cond_1
    iget v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraCurrentResolution:I

    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->localVideResolution:I

    .line 948
    :goto_0
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraResolutionChangeListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraResolutionChangeListener;

    .line 949
    invoke-interface {v1, p1}, Lcom/powervision/camera/camera/CameraListener$CameraResolutionChangeListener;->onVideoResolutionChange(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public synthetic lambda$new$9$BaseCameraManager(Ljava/lang/String;)V
    .locals 3

    .line 959
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraResolutionChangeListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, "0"

    .line 962
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 963
    iget v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->localPhotoResolution:I

    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraPhotoSize:I

    goto :goto_0

    .line 965
    :cond_1
    iget v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraPhotoSize:I

    iput v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->localPhotoResolution:I

    .line 968
    :goto_0
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraResolutionChangeListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/camera/CameraListener$CameraResolutionChangeListener;

    .line 969
    invoke-interface {v1, p1}, Lcom/powervision/camera/camera/CameraListener$CameraResolutionChangeListener;->onPhotoResolutionChange(Ljava/lang/String;)V

    goto :goto_1

    .line 971
    :cond_2
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ...onPhotoResolutionChange   manager \u8fd4\u56de  s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method protected setCameraCallBackListeners()V
    .locals 2

    .line 2096
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyConnectionListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyConnectionListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->addCameraNotifyConnectionListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyConnectionListener;)V

    .line 2097
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyStatusConnectionListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyStatusConnectionListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->addCameraNotifyStatusConnectionListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyStatusConnectionListener;)V

    .line 2102
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraGetCameraWorkStateListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetCameraWorkStateListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyGetCameraWorkStateListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetCameraWorkStateListener;)V

    .line 2103
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->CameraNotifyStartPhotoListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyStartPhotoListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyStartPhotoListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyStartPhotoListener;)V

    .line 2104
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyStartRecordListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyStartRecordListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyStartRecordListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyStartRecordListener;)V

    .line 2105
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyStopRecordListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyStopRecordListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyStopRecordListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyStopRecordListener;)V

    .line 2106
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifySwitchToSnapModeListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifySwitchToSnapModeListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifySwitchToSnapModeListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifySwitchToSnapModeListener;)V

    .line 2107
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifySwitchToRecordModeListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifySwitchToRecordModeListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifySwitchToRecordModeListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifySwitchToRecordModeListener;)V

    .line 2108
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifySetVideoResolutionListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetVideoResolutionListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifySetVideoResolutionListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetVideoResolutionListener;)V

    .line 2109
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifySetPhotoResolutionListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetPhotoResolutionListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifySetPhotoResolutionListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetPhotoResolutionListener;)V

    .line 2110
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyGetCurrentResolution:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetCurrentResolutionListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyGetCurrentResolutionListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetCurrentResolutionListener;)V

    .line 2111
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyEnableHistogramListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyEnableHistogramListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyEnableHistogramListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyEnableHistogramListener;)V

    .line 2112
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyHistogramDataListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyHistogramDataListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyHistogramDataListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyHistogramDataListener;)V

    .line 2114
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyGetCurrentExposureStatusListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetCurrentExposureStatusListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyGetCurrentExposureStatusListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetCurrentExposureStatusListener;)V

    .line 2115
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifySetExposureModeListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetExposureModeListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifySetExposureModeListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetExposureModeListener;)V

    .line 2116
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifySetISOListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetISOListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifySetISOListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetISOListener;)V

    .line 2117
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifySetExposureTimeListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetExposureTimeListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifySetExposureTimeListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetExposureTimeListener;)V

    .line 2118
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifySetEVListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetEVListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifySetEVListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetEVListener;)V

    .line 2119
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifySetMeteringModeListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetMeteringModeListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifysetMeteringModeListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetMeteringModeListener;)V

    .line 2120
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyGetWhiteBalanceListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetWhiteBalanceListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyGetWhiteBalanceListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetWhiteBalanceListener;)V

    .line 2121
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifySetWhiteBalanceListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetWhiteBalanceListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifySetWhiteBalanceListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetWhiteBalanceListener;)V

    .line 2122
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifySetPhotoStyleListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetPhotoStyleListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifySetPhotoStyleListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetPhotoStyleListener;)V

    .line 2124
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyFormatStorageDeviceListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyFormatStorageDeviceListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyFormatStorageDeviceListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyFormatStorageDeviceListener;)V

    .line 2125
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyGetRestPhotoNumberListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetRestPhotoNumberListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyGetRestPhotoNumberListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetRestPhotoNumberListener;)V

    .line 2126
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyGetRecordTimeListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetRecordTimeListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyGetRecordTimeListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetRecordTimeListener;)V

    .line 2127
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyGetSDStorageSizeListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetSDStorageSizeListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyGetSDStorageSizeListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetSDStorageSizeListener;)V

    .line 2128
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyGetEmmcStorageSizeListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetEmmcStorageSizeListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyGetEmmcStorageSizeListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetEmmcStorageSizeListener;)V

    .line 2129
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyGetRestRecordTimeListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetRestRecordTimeListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyGetRestRecordTimeListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetRestRecordTimeListener;)V

    .line 2131
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyGetPhotoFileFormatListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetPhotoFileFormatListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyGetPhotoFileFormatListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetPhotoFileFormatListener;)V

    .line 2132
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifySetPhotoFileFormatListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetPhotoFileFormatListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifySetPhotoFileFormatListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetPhotoFileFormatListener;)V

    .line 2133
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyStopDelayTimePhotoListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyStopDelayTimePhotoListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyStopDelayTimeListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyStopDelayTimePhotoListener;)V

    .line 2134
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyGetCameraAllParametersListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetCameraAllParametersListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyGetAllParameters(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetCameraAllParametersListener;)V

    .line 2135
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifySetLuminanceListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetLuminanceListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifySetLuminanceListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetLuminanceListener;)V

    .line 2136
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifySetContrastListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetContrastListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyContrastListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetContrastListener;)V

    .line 2137
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifySetSaturationListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetSaturationListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifySetSaturationListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetSaturationListener;)V

    .line 2138
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyEnableResistBlinkListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyEnableResistBlinkListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyEnableResistBlinkListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyEnableResistBlinkListener;)V

    .line 2139
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyResetCameraParamListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyResetCameraParamListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyResetCameraParamListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyResetCameraParamListener;)V

    .line 2140
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifySetCaptureModeListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetCaptureModeListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifySetCaptureModeListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetCaptureModeListener;)V

    .line 2142
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyGetStorageDeviceTypeListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetStorageDeviceTypeListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyGetStorageDeviceTypeListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetStorageDeviceTypeListener;)V

    .line 2144
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifySetCurrentStorageDeviceListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetCurrentStorageDeviceListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifySetCurrentStorageDeviceListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifySetCurrentStorageDeviceListener;)V

    .line 2145
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnEnableAudioListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnEnableAudioListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyOnEnableAudioListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnEnableAudioListener;)V

    .line 2146
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnSetSysTimeListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSetSysTimeListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyOnSetSysTimeListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSetSysTimeListener;)V

    .line 2147
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnEnableLogoListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnEnableLogoListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyOnEnableLogoListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnEnableLogoListener;)V

    .line 2149
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnSDFullListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSDFullListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyOnSDFullListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSDFullListener;)V

    .line 2150
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnInternalStorageFullListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnInternalStorageFullListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyOnInternalStorageFullListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnInternalStorageFullListener;)V

    .line 2152
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnForwardLamp:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnForwardLamp;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyOnForwardLamp(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnForwardLamp;)V

    .line 2153
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnGestureSnap:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureSnap;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyOnGestureSnap(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureSnap;)V

    .line 2154
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnGestureSnapGroup:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureSnapGroup;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyOnGestureSnapGroup(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureSnapGroup;)V

    .line 2155
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnGestureStartRecord:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureStartRecord;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyOnGestureStartRecord(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureStartRecord;)V

    .line 2156
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnGestureStopRecord:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureStopRecord;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyOnGestureStopRecord(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureStopRecord;)V

    .line 2157
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnGestureStartTrack:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureStartTrack;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyOnGestureStartTrack(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureStartTrack;)V

    .line 2158
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnGestureStopTrack:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureStopTrack;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyOnGestureStopTrack(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureStopTrack;)V

    .line 2159
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnGetGestureStat:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetGestureStat;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyOnGetGestureStat(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetGestureStat;)V

    .line 2160
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnEnableGesture:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnEnableGesture;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyOnEnableGesture(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnEnableGesture;)V

    .line 2161
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnDelayPhoto:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnDelayPhoto;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyOnDelayPhoto(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnDelayPhoto;)V

    .line 2162
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnStopLapsePhoto:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnStopLapsePhoto;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyOnStopLapsePhoto(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnStopLapsePhoto;)V

    .line 2163
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnCreateLapseFiile:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnCreateLapseFiile;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyOnCreateLapseFiile(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnCreateLapseFiile;)V

    .line 2164
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnGetLapseSnap:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetLapseSnap;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyOnGetLapseSnap(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetLapseSnap;)V

    .line 2165
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnGetLapseFileDuration:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetLapseFileDuration;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyOnGetLapseFileDuration(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetLapseFileDuration;)V

    .line 2166
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnLapsePhotoNumber:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnLapsePhotoNumber;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyOnLapsePhotoNumber(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnLapsePhotoNumber;)V

    .line 2167
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnLapseFileDuration:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnLapseFileDuration;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyOnLapseFileDuration(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnLapseFileDuration;)V

    .line 2168
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnMultiplePhotoListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnMultiplePhotoListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyOnMultiplePhotoListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnMultiplePhotoListener;)V

    .line 2170
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnOnAEBMultiplePhotoStateListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnOnAEBMultiplePhotoStateListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyOnOnAEBMultiplePhotoStateListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnOnAEBMultiplePhotoStateListener;)V

    .line 2171
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnOnHDRMultiplePhotoStateListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnOnHDRMultiplePhotoStateListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyOnOnHDRMultiplePhotoStateListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnOnHDRMultiplePhotoStateListener;)V

    .line 2172
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnIsSaveLapsePhotoListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnIsSaveLapsePhotoListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyOnIsSaveLapsePhotoListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnIsSaveLapsePhotoListener;)V

    .line 2173
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnRecordDurationListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnRecordDurationListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyOnRecordDurationListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnRecordDurationListener;)V

    .line 2174
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnEnableHeadLightListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnEnableHeadLightListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyOnEnableHeadLightListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnEnableHeadLightListener;)V

    .line 2175
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnGetHeadLightStateListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetHeadLightStateListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyOnGetHeadLightStateListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetHeadLightStateListener;)V

    .line 2176
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnGestureSDFullListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureSDFullListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyOnGestureSDFullListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureSDFullListener;)V

    .line 2177
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnGestureInternalStorageFullListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureInternalStorageFullListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyOnGestureInternalStorageFullListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureInternalStorageFullListener;)V

    .line 2178
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnSetAudioRateListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSetAudioRateListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyOnSetAudioRateListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSetAudioRateListener;)V

    .line 2179
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnGetAudioRateListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetAudioRateListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyOnGetAudioRateListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetAudioRateListener;)V

    .line 2180
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnPhotoStateListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnPhotoStateListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyOnPhotoStateListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnPhotoStateListener;)V

    .line 2181
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraStopRecordStateListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnCameraStopRecordStateListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyOnCameraStopRecordStateListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnCameraStopRecordStateListener;)V

    .line 2182
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnCameraSensorHighTemperatureListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnCameraSensorHighTemperatureListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyOnCameraSensorHighTemperatureListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnCameraSensorHighTemperatureListener;)V

    .line 2183
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mCameraNotifyOnCameraSDCardSpeedDetectedListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnCameraSDCardSpeedDetectedListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyOnCameraSDCardSpeedDetectedListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnCameraSDCardSpeedDetectedListener;)V

    .line 2184
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnSetTypeCModeListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSetTypeCModeListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyOnSetTypeCModeListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSetTypeCModeListener;)V

    .line 2185
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnGetTypeCModeListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetTypeCModeListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyOnGetTypeCModeListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetTypeCModeListener;)V

    .line 2186
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnGetPhotoStyleListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetPhotoStyleListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyOnGetPhotoStyleListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetPhotoStyleListener;)V

    .line 2187
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnSDStorageSlowListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSDStorageSlowListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyOnSDStorageSlowListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSDStorageSlowListener;)V

    .line 2189
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnGetGestureFirstTimeTeachingStateListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetGestureFirstTimeTeachingStateListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyOnGetGestureFirstTimeTeachingStateListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetGestureFirstTimeTeachingStateListener;)V

    .line 2191
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnSetGestureFirstTimeTeachingStateListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSetGestureFirstTimeTeachingStateListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyOnSetGestureFirstTimeTeachingStateListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSetGestureFirstTimeTeachingStateListener;)V

    .line 2193
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnSetGestureOnlyDiscerningTypeListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSetGestureOnlyDiscerningTypeListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyOnSetGestureOnlyDiscerningTypeListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSetGestureOnlyDiscerningTypeListener;)V

    .line 2196
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnSetMuxerFormatListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSetMuxerFormatListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyOnSetMuxerFormatListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnSetMuxerFormatListener;)V

    .line 2198
    iget-object v0, p0, Lcom/powervision/camera/camera/BaseCameraManager;->mPowerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    iget-object v1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->cameraNotifyOnGetMuxerFormatListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetMuxerFormatListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyOnGetMuxerFormatListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetMuxerFormatListener;)V

    return-void
.end method

.method public setTakingPhoto(Z)V
    .locals 0

    .line 340
    iput-boolean p1, p0, Lcom/powervision/camera/camera/BaseCameraManager;->isTakingPhoto:Z

    return-void
.end method
