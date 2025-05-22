.class public Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;
.super Lcom/powervision/base/base/BasePresenter;
.source "NewHandheldPersenter.java"

# interfaces
.implements Lcom/powervision/sdk/callback/Ap03NotifyOnGimbalParameterResultIntListener;
.implements Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnForwardLamp;
.implements Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureSnap;
.implements Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureSnapGroup;
.implements Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureStartRecord;
.implements Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureStopRecord;
.implements Lcom/powervision/sdk/callback/Ap03RoboticArmListener;
.implements Lcom/powervision/camera/camera/CameraListener$CameraOnGestureStartTrackListener;
.implements Lcom/powervision/camera/camera/CameraListener$CameraOnGestureStopTrackListener;
.implements Lcom/powervision/sdk/callback/Ap03SysWarnListener;
.implements Lcom/powervision/sdk/callback/Ap03BatteryStatusListener;
.implements Lcom/powervision/camera/camera/CameraListener$CameraOnSetGestureFirstTimeTeachingStateListener;
.implements Lcom/powervision/camera/camera/CameraListener$CameraOnGetGestureFirstTimeTeachingStateListener;
.implements Lcom/powervision/camera/camera/CameraListener$CameraOnSetGestureOnlyDiscerningTypeListener;
.implements Lcom/powervision/livestreaming/core/listener/RESConnectionListener;
.implements Lcom/powervision/sdk/callback/Ap03VisionTrackListener;
.implements Lcom/powervision/sdk/callback/Ap03VisionDetectListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BasePresenter<",
        "Lcom/powervision/handheld/ui/view/INewHandheldView;",
        "Lcom/powervision/handheld/model/impl/HandheldModel;",
        ">;",
        "Lcom/powervision/sdk/callback/Ap03NotifyOnGimbalParameterResultIntListener;",
        "Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnForwardLamp;",
        "Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureSnap;",
        "Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureSnapGroup;",
        "Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureStartRecord;",
        "Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureStopRecord;",
        "Lcom/powervision/sdk/callback/Ap03RoboticArmListener;",
        "Lcom/powervision/camera/camera/CameraListener$CameraOnGestureStartTrackListener;",
        "Lcom/powervision/camera/camera/CameraListener$CameraOnGestureStopTrackListener;",
        "Lcom/powervision/sdk/callback/Ap03SysWarnListener;",
        "Lcom/powervision/sdk/callback/Ap03BatteryStatusListener;",
        "Lcom/powervision/camera/camera/CameraListener$CameraOnSetGestureFirstTimeTeachingStateListener;",
        "Lcom/powervision/camera/camera/CameraListener$CameraOnGetGestureFirstTimeTeachingStateListener;",
        "Lcom/powervision/camera/camera/CameraListener$CameraOnSetGestureOnlyDiscerningTypeListener;",
        "Lcom/powervision/livestreaming/core/listener/RESConnectionListener;",
        "Lcom/powervision/sdk/callback/Ap03VisionTrackListener;",
        "Lcom/powervision/sdk/callback/Ap03VisionDetectListener;"
    }
.end annotation


# instance fields
.field private ap03CurrentModeListener:Lcom/powervision/sdk/callback/Ap03CurrentModeListener;

.field private cameraConnectionListener:Lcom/powervision/camera/camera/CameraListener;

.field private cameraControllListener:Lcom/powervision/camera/camera/CameraListener$CameraControllListener;

.field cameraNotifyEnableHistogramListener:Lcom/powervision/camera/camera/CameraListener$CameraNotifyEnableHistogramListener;

.field private cameraNotifyGetRecordTimeListener:Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetRecordTimeListener;

.field cameraNotifyHistogramDataListener:Lcom/powervision/camera/camera/CameraListener$CameraNotifyHistogramDataListener;

.field private cameraNotifyOnCreateLapseFiile:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnCreateLapseFiile;

.field private cameraNotifyOnDelayPhoto:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnDelayPhoto;

.field private cameraNotifyOnInternalStorageFullListener:Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnInternalStorageFullListener;

.field private cameraNotifyOnLapseFileDuration:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnLapseFileDuration;

.field private cameraNotifyOnLapsePhotoNumber:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnLapsePhotoNumber;

.field private cameraNotifyOnMultiplePhotoListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnMultiplePhotoListener;

.field private cameraNotifyOnSDFullListener:Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnSDFullListener;

.field private cameraNotifyOnStopLapsePhoto:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnStopLapsePhoto;

.field private cameraNotifyStopDelayTimePhotoListener:Lcom/powervision/camera/camera/CameraListener$CameraNotifyStopDelayTimePhotoListener;

.field private cameraResolutionChangeListener:Lcom/powervision/camera/camera/CameraListener$CameraResolutionChangeListener;

.field private cameraSetCaptureModeListener:Lcom/powervision/camera/camera/CameraListener$CameraSetCaptureModeListener;

.field private captureMode:I

.field private isMiddleToPhoto:Z

.field private isSlowMotion:Z

.field private mCameraAEBMultiplePhotoStateListener:Lcom/powervision/camera/camera/CameraListener$CameraAEBMultiplePhotoStateListener;

.field private mCameraHDRMultiplePhotoStateListener:Lcom/powervision/camera/camera/CameraListener$CameraHDRMultiplePhotoStateListener;

.field private mCameraManager:Lcom/powervision/camera/camera/CameraManager;

.field private mCameraNotifyOnSDStorageSlowListener:Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnSDStorageSlowListener;

.field private mCameraOnCameraSensorHighTemperatureListener:Lcom/powervision/camera/camera/CameraListener$CameraOnCameraSensorHighTemperatureListener;

.field mCameraOnGestureInternalStorageFullListener:Lcom/powervision/camera/camera/CameraListener$CameraOnGestureInternalStorageFullListener;

.field mCameraOnGestureSDFullListener:Lcom/powervision/camera/camera/CameraListener$CameraOnGestureSDFullListener;

.field private mCameraOnRecordDurationListener:Lcom/powervision/camera/camera/CameraListener$CameraOnRecordDurationListener;

.field private mCameraSetCurrentStorageDeviceListener:Lcom/powervision/camera/camera/CameraListener$CameraSetCurrentStorageDeviceListener;

.field private mFollowParamCallback:Lcom/powervision/natives/callback/FollowParamCallback;

.field private powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

.field private resolution:I

.field private setType:Z

.field private tempType:I

.field private value1:I

.field private value2:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Lcom/powervision/base/base/BasePresenter;-><init>()V

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->tempType:I

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->setType:Z

    const/4 v0, 0x2

    .line 335
    iput v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->resolution:I

    .line 401
    new-instance v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$1;

    invoke-direct {v0, p0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$1;-><init>(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)V

    iput-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->cameraNotifyEnableHistogramListener:Lcom/powervision/camera/camera/CameraListener$CameraNotifyEnableHistogramListener;

    .line 411
    new-instance v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$2;

    invoke-direct {v0, p0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$2;-><init>(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)V

    iput-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->cameraNotifyHistogramDataListener:Lcom/powervision/camera/camera/CameraListener$CameraNotifyHistogramDataListener;

    .line 457
    new-instance v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$3;

    invoke-direct {v0, p0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$3;-><init>(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)V

    iput-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->ap03CurrentModeListener:Lcom/powervision/sdk/callback/Ap03CurrentModeListener;

    .line 547
    new-instance v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$4;

    invoke-direct {v0, p0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$4;-><init>(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)V

    iput-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->cameraSetCaptureModeListener:Lcom/powervision/camera/camera/CameraListener$CameraSetCaptureModeListener;

    .line 570
    new-instance v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$5;

    invoke-direct {v0, p0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$5;-><init>(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)V

    iput-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->cameraNotifyOnStopLapsePhoto:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnStopLapsePhoto;

    .line 579
    new-instance v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$6;

    invoke-direct {v0, p0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$6;-><init>(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)V

    iput-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->cameraNotifyOnCreateLapseFiile:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnCreateLapseFiile;

    .line 596
    new-instance v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$7;

    invoke-direct {v0, p0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$7;-><init>(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)V

    iput-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->cameraNotifyOnLapsePhotoNumber:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnLapsePhotoNumber;

    .line 611
    new-instance v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$8;

    invoke-direct {v0, p0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$8;-><init>(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)V

    iput-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->cameraNotifyOnLapseFileDuration:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnLapseFileDuration;

    .line 627
    new-instance v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$9;

    invoke-direct {v0, p0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$9;-><init>(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)V

    iput-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->cameraControllListener:Lcom/powervision/camera/camera/CameraListener$CameraControllListener;

    .line 784
    new-instance v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$10;

    invoke-direct {v0, p0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$10;-><init>(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)V

    iput-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->cameraNotifyOnDelayPhoto:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnDelayPhoto;

    .line 801
    new-instance v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$11;

    invoke-direct {v0, p0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$11;-><init>(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)V

    iput-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->cameraNotifyStopDelayTimePhotoListener:Lcom/powervision/camera/camera/CameraListener$CameraNotifyStopDelayTimePhotoListener;

    .line 813
    new-instance v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$12;

    invoke-direct {v0, p0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$12;-><init>(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)V

    iput-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->cameraNotifyGetRecordTimeListener:Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetRecordTimeListener;

    .line 822
    new-instance v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$13;

    invoke-direct {v0, p0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$13;-><init>(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)V

    iput-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->cameraNotifyOnMultiplePhotoListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnMultiplePhotoListener;

    .line 835
    new-instance v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$14;

    invoke-direct {v0, p0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$14;-><init>(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)V

    iput-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraAEBMultiplePhotoStateListener:Lcom/powervision/camera/camera/CameraListener$CameraAEBMultiplePhotoStateListener;

    .line 847
    new-instance v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$15;

    invoke-direct {v0, p0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$15;-><init>(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)V

    iput-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraHDRMultiplePhotoStateListener:Lcom/powervision/camera/camera/CameraListener$CameraHDRMultiplePhotoStateListener;

    .line 860
    new-instance v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$16;

    invoke-direct {v0, p0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$16;-><init>(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)V

    iput-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->cameraConnectionListener:Lcom/powervision/camera/camera/CameraListener;

    .line 891
    new-instance v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$17;

    invoke-direct {v0, p0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$17;-><init>(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)V

    iput-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->cameraNotifyOnSDFullListener:Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnSDFullListener;

    .line 900
    new-instance v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$18;

    invoke-direct {v0, p0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$18;-><init>(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)V

    iput-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->cameraNotifyOnInternalStorageFullListener:Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnInternalStorageFullListener;

    .line 909
    new-instance v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$19;

    invoke-direct {v0, p0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$19;-><init>(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)V

    iput-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->cameraResolutionChangeListener:Lcom/powervision/camera/camera/CameraListener$CameraResolutionChangeListener;

    .line 932
    new-instance v0, Lcom/powervision/handheld/persenter/impl/-$$Lambda$NewHandheldPersenter$-unN9o-uONDmbRF2Eee4gKoO0jE;

    invoke-direct {v0, p0}, Lcom/powervision/handheld/persenter/impl/-$$Lambda$NewHandheldPersenter$-unN9o-uONDmbRF2Eee4gKoO0jE;-><init>(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)V

    iput-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraOnRecordDurationListener:Lcom/powervision/camera/camera/CameraListener$CameraOnRecordDurationListener;

    .line 938
    sget-object v0, Lcom/powervision/handheld/persenter/impl/-$$Lambda$NewHandheldPersenter$yseK53n3YuvFkUYeS8MUkaG3U8c;->INSTANCE:Lcom/powervision/handheld/persenter/impl/-$$Lambda$NewHandheldPersenter$yseK53n3YuvFkUYeS8MUkaG3U8c;

    iput-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraSetCurrentStorageDeviceListener:Lcom/powervision/camera/camera/CameraListener$CameraSetCurrentStorageDeviceListener;

    .line 948
    new-instance v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$20;

    invoke-direct {v0, p0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$20;-><init>(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)V

    iput-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraOnGestureSDFullListener:Lcom/powervision/camera/camera/CameraListener$CameraOnGestureSDFullListener;

    .line 959
    new-instance v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$21;

    invoke-direct {v0, p0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$21;-><init>(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)V

    iput-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraOnGestureInternalStorageFullListener:Lcom/powervision/camera/camera/CameraListener$CameraOnGestureInternalStorageFullListener;

    .line 969
    new-instance v0, Lcom/powervision/handheld/persenter/impl/-$$Lambda$NewHandheldPersenter$6W2Jk2uNDCUx1RunYyogNpPVIxs;

    invoke-direct {v0, p0}, Lcom/powervision/handheld/persenter/impl/-$$Lambda$NewHandheldPersenter$6W2Jk2uNDCUx1RunYyogNpPVIxs;-><init>(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)V

    iput-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraOnCameraSensorHighTemperatureListener:Lcom/powervision/camera/camera/CameraListener$CameraOnCameraSensorHighTemperatureListener;

    .line 975
    new-instance v0, Lcom/powervision/handheld/persenter/impl/-$$Lambda$NewHandheldPersenter$JBhQ9JVCiEMLHl3pjZ01Yzygsa4;

    invoke-direct {v0, p0}, Lcom/powervision/handheld/persenter/impl/-$$Lambda$NewHandheldPersenter$JBhQ9JVCiEMLHl3pjZ01Yzygsa4;-><init>(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)V

    iput-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraNotifyOnSDStorageSlowListener:Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnSDStorageSlowListener;

    .line 64
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    .line 65
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    .line 66
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->addAp03NotifyOnGimbalParameterResultIntListener(Lcom/powervision/sdk/callback/Ap03NotifyOnGimbalParameterResultIntListener;)V

    .line 67
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->addAp03SysWarnListener(Lcom/powervision/sdk/callback/Ap03SysWarnListener;)V

    .line 68
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->addRoboticArmListener(Lcom/powervision/sdk/callback/Ap03RoboticArmListener;)V

    .line 69
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->setBatteryStatusListener(Lcom/powervision/sdk/callback/Ap03BatteryStatusListener;)V

    .line 70
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->setVisionDetectListener(Lcom/powervision/sdk/callback/Ap03VisionDetectListener;)V

    .line 71
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->setVisionTrackLIstener(Lcom/powervision/sdk/callback/Ap03VisionTrackListener;)V

    .line 72
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->cameraNotifyEnableHistogramListener:Lcom/powervision/camera/camera/CameraListener$CameraNotifyEnableHistogramListener;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->addCameraEnableHistogramListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyEnableHistogramListener;)V

    .line 73
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->cameraNotifyHistogramDataListener:Lcom/powervision/camera/camera/CameraListener$CameraNotifyHistogramDataListener;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->addCameraHistogramDataListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyHistogramDataListener;)V

    .line 74
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->ap03CurrentModeListener:Lcom/powervision/sdk/callback/Ap03CurrentModeListener;

    invoke-virtual {v0, v1}, Lcom/powervision/sdk/Ap03Manager;->setCurrentModeListener(Lcom/powervision/sdk/callback/Ap03CurrentModeListener;)V

    .line 75
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraNotifyOnForwardLampListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnForwardLamp;)V

    .line 76
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraNotifyOnGestureSnapListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureSnap;)V

    .line 77
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraNotifyOnGestureSnapGroupListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureSnapGroup;)V

    .line 78
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraNotifyOnGestureStartRecordListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureStartRecord;)V

    .line 79
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraNotifyOnGestureStopRecordListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureStopRecord;)V

    .line 80
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraOnGestureStartTrackListener(Lcom/powervision/camera/camera/CameraListener$CameraOnGestureStartTrackListener;)V

    .line 81
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraOnGestureStopTrackListener(Lcom/powervision/camera/camera/CameraListener$CameraOnGestureStopTrackListener;)V

    .line 83
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->cameraControllListener:Lcom/powervision/camera/camera/CameraListener$CameraControllListener;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->addCameraControllListener(Lcom/powervision/camera/camera/CameraListener$CameraControllListener;)V

    .line 85
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->cameraSetCaptureModeListener:Lcom/powervision/camera/camera/CameraListener$CameraSetCaptureModeListener;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->addCameraSetCaptureModeListener(Lcom/powervision/camera/camera/CameraListener$CameraSetCaptureModeListener;)V

    .line 86
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->cameraNotifyOnStopLapsePhoto:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnStopLapsePhoto;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->addCameraNotifyOnStopLapsePhotoListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnStopLapsePhoto;)V

    .line 87
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->cameraNotifyOnLapsePhotoNumber:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnLapsePhotoNumber;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->addCameraNotifyOnLapsePhotoNumber(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnLapsePhotoNumber;)V

    .line 88
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->cameraNotifyOnLapseFileDuration:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnLapseFileDuration;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->addCameraNotifyOnLapseFileDuration(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnLapseFileDuration;)V

    .line 89
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->cameraNotifyOnDelayPhoto:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnDelayPhoto;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->addCameraNotifyOnDelayPhoto(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnDelayPhoto;)V

    .line 90
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->cameraNotifyOnCreateLapseFiile:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnCreateLapseFiile;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->addCameraNotifyOnCreateLapseFiile(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnCreateLapseFiile;)V

    .line 93
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->cameraNotifyStopDelayTimePhotoListener:Lcom/powervision/camera/camera/CameraListener$CameraNotifyStopDelayTimePhotoListener;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->addCameraNotifyStopDelayTimePhotoListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyStopDelayTimePhotoListener;)V

    .line 94
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->cameraNotifyGetRecordTimeListener:Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetRecordTimeListener;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->addCameraNotifyGetRecordTimeListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetRecordTimeListener;)V

    .line 96
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->cameraNotifyOnMultiplePhotoListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnMultiplePhotoListener;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->addCameraNotifyOnMultiplePhotoListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnMultiplePhotoListener;)V

    .line 97
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraAEBMultiplePhotoStateListener:Lcom/powervision/camera/camera/CameraListener$CameraAEBMultiplePhotoStateListener;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->addCameraAEBMultiplePhotoStateListener(Lcom/powervision/camera/camera/CameraListener$CameraAEBMultiplePhotoStateListener;)V

    .line 98
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraHDRMultiplePhotoStateListener:Lcom/powervision/camera/camera/CameraListener$CameraHDRMultiplePhotoStateListener;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->addCameraHDRMultiplePhotoStateListener(Lcom/powervision/camera/camera/CameraListener$CameraHDRMultiplePhotoStateListener;)V

    .line 99
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->cameraConnectionListener:Lcom/powervision/camera/camera/CameraListener;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->addCameraListener(Lcom/powervision/camera/camera/CameraListener;)V

    .line 101
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->cameraNotifyOnSDFullListener:Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnSDFullListener;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->addCameraOnSDFullListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnSDFullListener;)V

    .line 102
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->cameraNotifyOnInternalStorageFullListener:Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnInternalStorageFullListener;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->addCameraOnInternalStorageFullListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnInternalStorageFullListener;)V

    .line 105
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->cameraResolutionChangeListener:Lcom/powervision/camera/camera/CameraListener$CameraResolutionChangeListener;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->addCameraResolutionChangeListener(Lcom/powervision/camera/camera/CameraListener$CameraResolutionChangeListener;)V

    .line 106
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraOnRecordDurationListener:Lcom/powervision/camera/camera/CameraListener$CameraOnRecordDurationListener;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->addCameraOnRecordDurationListener(Lcom/powervision/camera/camera/CameraListener$CameraOnRecordDurationListener;)V

    .line 107
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraSetCurrentStorageDeviceListener:Lcom/powervision/camera/camera/CameraListener$CameraSetCurrentStorageDeviceListener;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->addCameraSetCurrentStorageDeviceListener(Lcom/powervision/camera/camera/CameraListener$CameraSetCurrentStorageDeviceListener;)V

    .line 109
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraOnGestureSDFullListener:Lcom/powervision/camera/camera/CameraListener$CameraOnGestureSDFullListener;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->addCameraOnGestureSDFullListener(Lcom/powervision/camera/camera/CameraListener$CameraOnGestureSDFullListener;)V

    .line 110
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraOnGestureInternalStorageFullListener:Lcom/powervision/camera/camera/CameraListener$CameraOnGestureInternalStorageFullListener;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->addCameraOnGestureInternalStorageFullListener(Lcom/powervision/camera/camera/CameraListener$CameraOnGestureInternalStorageFullListener;)V

    .line 112
    new-instance v0, Lcom/powervision/natives/callback/FollowParamCallback;

    invoke-direct {v0}, Lcom/powervision/natives/callback/FollowParamCallback;-><init>()V

    iput-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mFollowParamCallback:Lcom/powervision/natives/callback/FollowParamCallback;

    .line 114
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraOnCameraSensorHighTemperatureListener:Lcom/powervision/camera/camera/CameraListener$CameraOnCameraSensorHighTemperatureListener;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->addCameraOnCameraSensorHighTemperatureListener(Lcom/powervision/camera/camera/CameraListener$CameraOnCameraSensorHighTemperatureListener;)V

    .line 115
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraNotifyOnSDStorageSlowListener:Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnSDStorageSlowListener;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->addCameraOnSDStorageSlowListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnSDStorageSlowListener;)V

    .line 117
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraOnSetGestureFirstTimeTeachingStateListener(Lcom/powervision/camera/camera/CameraListener$CameraOnSetGestureFirstTimeTeachingStateListener;)V

    .line 118
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraOnGetGestureFirstTimeTeachingStateListener(Lcom/powervision/camera/camera/CameraListener$CameraOnGetGestureFirstTimeTeachingStateListener;)V

    .line 119
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraOnSetGestureOnlyDiscerningTypeListener(Lcom/powervision/camera/camera/CameraListener$CameraOnSetGestureOnlyDiscerningTypeListener;)V

    .line 120
    invoke-static {}, Lcom/powervision/livestreaming/LiveStreaming;->getInstance()Lcom/powervision/livestreaming/LiveStreaming;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/livestreaming/LiveStreaming;->setLiveStreamingListener(Lcom/powervision/livestreaming/core/listener/RESConnectionListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/camera/camera/CameraManager;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->isSlowMotion:Z

    return p0
.end method

.method static synthetic access$2400(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->resolution:I

    return p0
.end method

.method static synthetic access$2502(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;I)I
    .locals 0

    .line 35
    iput p1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->resolution:I

    return p1
.end method

.method static synthetic access$2600(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->isMiddleToPhoto:Z

    return p0
.end method

.method static synthetic access$300(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->captureMode:I

    return p0
.end method

.method static synthetic access$3300(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->value1:I

    return p0
.end method

.method static synthetic access$3700(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$5500(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$5600(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$5700(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$5900(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$6000(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$6100(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$6200(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$6300(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$6400(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$6500(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$6600(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$6700(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$6800(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$6900(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->setType:Z

    return p0
.end method

.method static synthetic access$7000(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$7100(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$7200(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$7300(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$7400(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$7500(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$7600(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$7700(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$7800(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$7900(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$8000(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$8100(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$8200(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$8300(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic lambda$new$1(Ljava/lang/String;)V
    .locals 2

    .line 940
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 941
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v1, 0x0

    .line 942
    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 943
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p0

    const/16 v1, 0xf3

    invoke-virtual {p0, v1, v0}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public detachView()V
    .locals 2

    .line 1041
    invoke-super {p0}, Lcom/powervision/base/base/BasePresenter;->detachView()V

    .line 1042
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->ap03CurrentModeListener:Lcom/powervision/sdk/callback/Ap03CurrentModeListener;

    invoke-virtual {v0, v1}, Lcom/powervision/sdk/Ap03Manager;->removeCurrentModeListener(Lcom/powervision/sdk/callback/Ap03CurrentModeListener;)V

    return-void
.end method

.method public getBatterInfo(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public getBatteryElectric(FIIIIIIIIIII)V
    .locals 0

    return-void
.end method

.method public getBatteryTime(I)V
    .locals 0

    return-void
.end method

.method public getCameraCurrentResolution()I
    .locals 1

    .line 364
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentResolution()I

    move-result v0

    return v0
.end method

.method public getFlyBatteryElectric(II)V
    .locals 0

    return-void
.end method

.method public getFollowDetectInfo(J[F[F[F[F[F[SI)V
    .locals 12

    move-object v0, p0

    .line 435
    iget-object v1, v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v1, :cond_0

    .line 436
    iget-object v1, v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    move-object v2, v1

    check-cast v2, Lcom/powervision/handheld/ui/view/INewHandheldView;

    move-wide v3, p1

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    invoke-interface/range {v2 .. v11}, Lcom/powervision/handheld/ui/view/INewHandheldView;->updateDetectData(J[F[F[F[F[F[SI)V

    :cond_0
    return-void
.end method

.method public getFollowTrackInfo(FFFFFII)V
    .locals 10

    move-object v0, p0

    .line 452
    iget-object v1, v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v1, :cond_0

    .line 453
    iget-object v1, v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    move-object v2, v1

    check-cast v2, Lcom/powervision/handheld/ui/view/INewHandheldView;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Lcom/powervision/handheld/ui/view/INewHandheldView;->updateTrackStatus(FFFFFII)V

    :cond_0
    return-void
.end method

.method public getGimbalMode()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    if-eqz v0, :cond_0

    const-string v1, "PV_GIM_DV_MODE"

    .line 201
    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->downloadGimbalParameter(Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public getGimbalValue()V
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const-string v1, "PV_GIM_ROLL_ADJ"

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->downloadGimbalParameter(Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const-string v1, "PV_GIM_YAW_ADJ"

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->downloadGimbalParameter(Ljava/lang/String;)I

    return-void
.end method

.method public getHandhledBatteryValue(F)V
    .locals 1

    .line 1034
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 1035
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/handheld/ui/view/INewHandheldView;

    invoke-interface {v0, p1}, Lcom/powervision/handheld/ui/view/INewHandheldView;->updateHandleBattery(F)V

    :cond_0
    return-void
.end method

.method public getRecordTime()V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getRecordTime()V

    return-void
.end method

.method public getSysWarnInfo(III)V
    .locals 1

    .line 985
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 986
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/handheld/ui/view/INewHandheldView;

    invoke-interface {v0, p1, p2, p3}, Lcom/powervision/handheld/ui/view/INewHandheldView;->updateWarnInfo(III)V

    :cond_0
    return-void
.end method

.method public isSlowMotionMode()Z
    .locals 2

    .line 360
    invoke-virtual {p0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->getCameraCurrentResolution()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->getCameraCurrentResolution()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->getCameraCurrentResolution()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public synthetic lambda$new$0$NewHandheldPersenter(I)V
    .locals 1

    .line 934
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 935
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/handheld/ui/view/INewHandheldView;

    invoke-interface {v0, p1}, Lcom/powervision/handheld/ui/view/INewHandheldView;->onUpdateRecordingTime(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$2$NewHandheldPersenter(I)V
    .locals 1

    .line 971
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-nez v0, :cond_0

    return-void

    .line 972
    :cond_0
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/handheld/ui/view/INewHandheldView;

    invoke-interface {v0, p1}, Lcom/powervision/handheld/ui/view/INewHandheldView;->onCameraSensorHighTemperature(I)V

    return-void
.end method

.method public synthetic lambda$new$3$NewHandheldPersenter()V
    .locals 1

    .line 977
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-nez v0, :cond_0

    return-void

    .line 980
    :cond_0
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/handheld/ui/view/INewHandheldView;

    invoke-interface {v0}, Lcom/powervision/handheld/ui/view/INewHandheldView;->onSDStorageSlowNotify()V

    return-void
.end method

.method public onCloseConnection()V
    .locals 1

    .line 1085
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/handheld/ui/view/INewHandheldView;

    invoke-interface {v0}, Lcom/powervision/handheld/ui/view/INewHandheldView;->liveCloseConnectionResult()V

    :cond_0
    return-void
.end method

.method public onForwardLamp()V
    .locals 3

    const-string v0, "gesture"

    .line 474
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onForwardLamp"

    invoke-interface {v0, v2, v1}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 475
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    const/16 v1, 0xf25

    invoke-virtual {v0, v1}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    return-void
.end method

.method public onGestureSnap()V
    .locals 4

    const-string v0, "gesture"

    .line 483
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "onGestureSnap"

    invoke-interface {v0, v3, v2}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 485
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-nez v0, :cond_0

    return-void

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/handheld/ui/view/INewHandheldView;

    invoke-interface {v0}, Lcom/powervision/handheld/ui/view/INewHandheldView;->gestureTakePhotoStart()V

    .line 487
    iput v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->captureMode:I

    .line 488
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->setPhotoGraphType(I)V

    .line 489
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    const-string v1, "photo_type"

    const-string v2, "0-0"

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onGestureSnapGroup()V
    .locals 3

    const-string v0, "gesture"

    .line 498
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onGestureSnapGroup"

    invoke-interface {v0, v2, v1}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 499
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/handheld/ui/view/INewHandheldView;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/powervision/handheld/ui/view/INewHandheldView;->onGestureBuriedPoint(I)V

    :cond_0
    return-void
.end method

.method public onGestureStartRecord()V
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-nez v0, :cond_0

    return-void

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/handheld/ui/view/INewHandheldView;

    invoke-interface {v0}, Lcom/powervision/handheld/ui/view/INewHandheldView;->gestureStartRecord()V

    return-void
.end method

.method public onGestureStartTrack()V
    .locals 3

    .line 527
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/handheld/ui/view/INewHandheldView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/powervision/handheld/ui/view/INewHandheldView;->onGestureBuriedPoint(I)V

    .line 529
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/handheld/ui/view/INewHandheldView;

    invoke-interface {v0}, Lcom/powervision/handheld/ui/view/INewHandheldView;->onGestureStartFollow()V

    :cond_0
    const-string v0, "gesture"

    .line 531
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onGestureStartTrack"

    invoke-interface {v0, v2, v1}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onGestureStopRecord()V
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-nez v0, :cond_0

    return-void

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/handheld/ui/view/INewHandheldView;

    invoke-interface {v0}, Lcom/powervision/handheld/ui/view/INewHandheldView;->gestureStopRecord()V

    return-void
.end method

.method public onGestureStopTrack()V
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/handheld/ui/view/INewHandheldView;

    invoke-interface {v0}, Lcom/powervision/handheld/ui/view/INewHandheldView;->onGestureStopFollow()V

    :cond_0
    return-void
.end method

.method public onGetGestureFirstTimeTeachingState(Ljava/lang/String;)V
    .locals 1

    .line 1054
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 1055
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/handheld/ui/view/INewHandheldView;

    invoke-interface {v0, p1}, Lcom/powervision/handheld/ui/view/INewHandheldView;->onGetGestureFirstTimeState(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onOpenConnectionFail()V
    .locals 1

    .line 1078
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 1079
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/handheld/ui/view/INewHandheldView;

    invoke-interface {v0}, Lcom/powervision/handheld/ui/view/INewHandheldView;->liveOpenConnectionFailed()V

    :cond_0
    return-void
.end method

.method public onOpenConnectionSuccess()V
    .locals 1

    .line 1071
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 1072
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/handheld/ui/view/INewHandheldView;

    invoke-interface {v0}, Lcom/powervision/handheld/ui/view/INewHandheldView;->liveOpenConnectionSuccess()V

    :cond_0
    return-void
.end method

.method public onRoboticArmStateChange(ZZZ)V
    .locals 0

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 1000
    :cond_0
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 p2, 0xf28

    invoke-virtual {p1, p2}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    .line 1001
    invoke-static {}, Lcom/powervision/base/router/RouterUtil$Home;->getHomeActivity()Landroid/app/Activity;

    :cond_1
    return-void
.end method

.method public onRoboticArmStateGet()V
    .locals 0

    return-void
.end method

.method public onSetGestureFirstTimeTeachingState(Ljava/lang/String;)V
    .locals 1

    .line 1047
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 1048
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/handheld/ui/view/INewHandheldView;

    invoke-interface {v0, p1}, Lcom/powervision/handheld/ui/view/INewHandheldView;->onSetGestureFirstTimeState(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSetGestureOnlyDiscerningType(Ljava/lang/String;)V
    .locals 1

    .line 1061
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 1062
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/handheld/ui/view/INewHandheldView;

    invoke-interface {v0, p1}, Lcom/powervision/handheld/ui/view/INewHandheldView;->onSetGestureOnlyDiscerningResult(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onWriteError(I)V
    .locals 1

    .line 1092
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 1093
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/handheld/ui/view/INewHandheldView;

    invoke-interface {v0, p1}, Lcom/powervision/handheld/ui/view/INewHandheldView;->liveWriteError(I)V

    :cond_0
    return-void
.end method

.method public removeListener()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    if-eqz v0, :cond_0

    .line 125
    iget-object v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->cameraNotifyEnableHistogramListener:Lcom/powervision/camera/camera/CameraListener$CameraNotifyEnableHistogramListener;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->removeCameraEnableHistogramListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyEnableHistogramListener;)V

    .line 126
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->cameraNotifyHistogramDataListener:Lcom/powervision/camera/camera/CameraListener$CameraNotifyHistogramDataListener;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->removeCameraHistogramDataListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyHistogramDataListener;)V

    .line 127
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraNotifyOnForwardLampListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnForwardLamp;)V

    .line 128
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraNotifyOnGestureSnapListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureSnap;)V

    .line 129
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraNotifyOnGestureSnapGroupListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureSnapGroup;)V

    .line 130
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraNotifyOnGestureStartRecordListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureStartRecord;)V

    .line 131
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraNotifyOnGestureStopRecordListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGestureStopRecord;)V

    .line 132
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraOnGestureStopTrackListener(Lcom/powervision/camera/camera/CameraListener$CameraOnGestureStopTrackListener;)V

    .line 133
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraOnGestureStartTrackListener(Lcom/powervision/camera/camera/CameraListener$CameraOnGestureStartTrackListener;)V

    .line 134
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->cameraControllListener:Lcom/powervision/camera/camera/CameraListener$CameraControllListener;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->removeCameraControllListener(Lcom/powervision/camera/camera/CameraListener$CameraControllListener;)V

    .line 135
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->cameraSetCaptureModeListener:Lcom/powervision/camera/camera/CameraListener$CameraSetCaptureModeListener;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->removeCameraSetCaptureModeListener(Lcom/powervision/camera/camera/CameraListener$CameraSetCaptureModeListener;)V

    .line 136
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->cameraNotifyOnStopLapsePhoto:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnStopLapsePhoto;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->removeCameraNotifyOnStopLapsePhotoListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnStopLapsePhoto;)V

    .line 137
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->cameraNotifyOnLapsePhotoNumber:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnLapsePhotoNumber;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->removeCameraNotifyOnLapsePhotoNumber(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnLapsePhotoNumber;)V

    .line 138
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->cameraNotifyOnDelayPhoto:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnDelayPhoto;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->removeCameraNotifyOnDelayPhoto(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnDelayPhoto;)V

    .line 139
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->cameraNotifyOnCreateLapseFiile:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnCreateLapseFiile;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->removeCameraNotifyOnCreateLapseFiile(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnCreateLapseFiile;)V

    .line 140
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->cameraNotifyOnLapseFileDuration:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnLapseFileDuration;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->removeCameraNotifyOnLapseFileDuration(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnLapseFileDuration;)V

    .line 141
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->cameraNotifyStopDelayTimePhotoListener:Lcom/powervision/camera/camera/CameraListener$CameraNotifyStopDelayTimePhotoListener;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->removeCameraNotifyStopDelayTimePhotoListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyStopDelayTimePhotoListener;)V

    .line 142
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->cameraNotifyGetRecordTimeListener:Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetRecordTimeListener;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->removeCameraNotifyGetRecordTimeListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetRecordTimeListener;)V

    .line 143
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->cameraNotifyOnMultiplePhotoListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnMultiplePhotoListener;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->removeCameraNotifyOnMultiplePhotoListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnMultiplePhotoListener;)V

    .line 144
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->cameraNotifyOnSDFullListener:Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnSDFullListener;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->removeCameraOnSDFullListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnSDFullListener;)V

    .line 145
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->cameraNotifyOnInternalStorageFullListener:Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnInternalStorageFullListener;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->removeCameraOnInternalStorageFullListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnInternalStorageFullListener;)V

    .line 146
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->cameraConnectionListener:Lcom/powervision/camera/camera/CameraListener;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->removeCameraListener(Lcom/powervision/camera/camera/CameraListener;)V

    .line 147
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraAEBMultiplePhotoStateListener:Lcom/powervision/camera/camera/CameraListener$CameraAEBMultiplePhotoStateListener;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->removeCameraAEBMultiplePhotoStateListener(Lcom/powervision/camera/camera/CameraListener$CameraAEBMultiplePhotoStateListener;)V

    .line 148
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraHDRMultiplePhotoStateListener:Lcom/powervision/camera/camera/CameraListener$CameraHDRMultiplePhotoStateListener;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->removeCameraHDRMultiplePhotoStateListener(Lcom/powervision/camera/camera/CameraListener$CameraHDRMultiplePhotoStateListener;)V

    .line 149
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->cameraResolutionChangeListener:Lcom/powervision/camera/camera/CameraListener$CameraResolutionChangeListener;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->removeCameraResolutionChangeListener(Lcom/powervision/camera/camera/CameraListener$CameraResolutionChangeListener;)V

    .line 150
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraOnRecordDurationListener:Lcom/powervision/camera/camera/CameraListener$CameraOnRecordDurationListener;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->removeCameraOnRecordDurationListener(Lcom/powervision/camera/camera/CameraListener$CameraOnRecordDurationListener;)V

    .line 151
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraSetCurrentStorageDeviceListener:Lcom/powervision/camera/camera/CameraListener$CameraSetCurrentStorageDeviceListener;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->removeCameraSetCurrentStorageDeviceListener(Lcom/powervision/camera/camera/CameraListener$CameraSetCurrentStorageDeviceListener;)V

    .line 153
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraOnGestureSDFullListener:Lcom/powervision/camera/camera/CameraListener$CameraOnGestureSDFullListener;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->removeCameraOnGestureSDFullListener(Lcom/powervision/camera/camera/CameraListener$CameraOnGestureSDFullListener;)V

    .line 154
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraOnGestureInternalStorageFullListener:Lcom/powervision/camera/camera/CameraListener$CameraOnGestureInternalStorageFullListener;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->removeCameraOnGestureInternalStorageFullListener(Lcom/powervision/camera/camera/CameraListener$CameraOnGestureInternalStorageFullListener;)V

    .line 155
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraOnCameraSensorHighTemperatureListener:Lcom/powervision/camera/camera/CameraListener$CameraOnCameraSensorHighTemperatureListener;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->removeCameraOnCameraSensorHighTemperatureListener(Lcom/powervision/camera/camera/CameraListener$CameraOnCameraSensorHighTemperatureListener;)V

    .line 156
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraNotifyOnSDStorageSlowListener:Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnSDStorageSlowListener;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->removeCameraOnSDStorageSlowListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnSDStorageSlowListener;)V

    .line 157
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraOnSetGestureFirstTimeTeachingStateListener(Lcom/powervision/camera/camera/CameraListener$CameraOnSetGestureFirstTimeTeachingStateListener;)V

    .line 158
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraOnGetGestureFirstTimeTeachingStateListener(Lcom/powervision/camera/camera/CameraListener$CameraOnGetGestureFirstTimeTeachingStateListener;)V

    .line 159
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraOnSetGestureOnlyDiscerningTypeListener(Lcom/powervision/camera/camera/CameraListener$CameraOnSetGestureOnlyDiscerningTypeListener;)V

    .line 161
    :cond_0
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeRoboticArmListener(Lcom/powervision/sdk/callback/Ap03RoboticArmListener;)V

    .line 162
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeBatteryStatusListener(Lcom/powervision/sdk/callback/Ap03BatteryStatusListener;)V

    .line 163
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->ap03CurrentModeListener:Lcom/powervision/sdk/callback/Ap03CurrentModeListener;

    invoke-virtual {v0, v1}, Lcom/powervision/sdk/Ap03Manager;->removeCurrentModeListener(Lcom/powervision/sdk/callback/Ap03CurrentModeListener;)V

    .line 164
    invoke-static {}, Lcom/powervision/livestreaming/LiveStreaming;->getInstance()Lcom/powervision/livestreaming/LiveStreaming;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/livestreaming/LiveStreaming;->setLiveStreamingListener(Lcom/powervision/livestreaming/core/listener/RESConnectionListener;)V

    .line 165
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeVisionTrackLIstener(Lcom/powervision/sdk/callback/Ap03VisionTrackListener;)V

    .line 166
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeVisionDetectListener(Lcom/powervision/sdk/callback/Ap03VisionDetectListener;)V

    return-void
.end method

.method public setCaptureMode(III)V
    .locals 1

    .line 288
    iput p1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->tempType:I

    const/4 v0, 0x0

    .line 289
    iput-boolean v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->setType:Z

    .line 290
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/powervision/camera/camera/CameraManager;->setCaptureMode(III)V

    return-void
.end method

.method public setCaptureMode(IIIZ)V
    .locals 0

    .line 300
    iput p1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->tempType:I

    const/4 p4, 0x1

    .line 301
    iput-boolean p4, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->setType:Z

    .line 302
    iget-object p4, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {p4, p1, p2, p3}, Lcom/powervision/camera/camera/CameraManager;->setCaptureMode(III)V

    return-void
.end method

.method public setComposition(I)V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mFollowParamCallback:Lcom/powervision/natives/callback/FollowParamCallback;

    if-nez v0, :cond_0

    .line 271
    new-instance v0, Lcom/powervision/natives/callback/FollowParamCallback;

    invoke-direct {v0}, Lcom/powervision/natives/callback/FollowParamCallback;-><init>()V

    iput-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mFollowParamCallback:Lcom/powervision/natives/callback/FollowParamCallback;

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mFollowParamCallback:Lcom/powervision/natives/callback/FollowParamCallback;

    iput p1, v0, Lcom/powervision/natives/callback/FollowParamCallback;->switchFraming:I

    .line 274
    iget-object p1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mFollowParamCallback:Lcom/powervision/natives/callback/FollowParamCallback;

    invoke-virtual {p1, v0}, Lcom/powervision/natives/PVSDK_AP03_API;->setFollowParam(Lcom/powervision/natives/callback/FollowParamCallback;)I

    return-void
.end method

.method public setFollowMode()V
    .locals 3

    .line 216
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/powervision/natives/PVSDK_AP03_API;->setFlightingMode(II)I

    return-void
.end method

.method public setGetGimbalParameterResult(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "====name===="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=====value"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "====="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NewHandheldPersenter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/handheld/ui/view/INewHandheldView;

    invoke-interface {v0, p1, p2, p3}, Lcom/powervision/handheld/ui/view/INewHandheldView;->updateGimbalStatus(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public setGimbaMode(I)V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const-string v1, "PV_GIM_DV_MODE"

    invoke-virtual {v0, v1, p1}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadGimbalIntParameter(Ljava/lang/String;I)I

    return-void
.end method

.method public setGimbalHoming()V
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const/16 v1, -0xa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/powervision/natives/PVSDK_AP03_API;->setGimbalAngle(III)I

    return-void
.end method

.method public setGimbalParamter()V
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const-string v1, "PV_GIM_ARM_STAS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadGimbalIntParameter(Ljava/lang/String;I)I

    return-void
.end method

.method public setGimbalPitchPalstance(II)V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/powervision/natives/PVSDK_AP03_API;->setGimbalPalstance(III)I

    return-void
.end method

.method public setGimbalStatus(I)V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const-string v1, "PV_GIM_LSE_FLAG"

    invoke-virtual {v0, v1, p1}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadGimbalIntParameter(Ljava/lang/String;I)I

    return-void
.end method

.method public setMannalMode()V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setFlightingMode(II)I

    return-void
.end method

.method public setRollValue(I)V
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const-string v1, "PV_GIM_ROLL_ADJ"

    invoke-virtual {v0, v1, p1}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadGimbalIntParameter(Ljava/lang/String;I)I

    return-void
.end method

.method public setTrackData(FFFF)V
    .locals 9

    .line 239
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const/4 v5, 0x0

    const/4 v6, -0x2

    const-wide/16 v7, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v8}, Lcom/powervision/natives/PVSDK_AP03_API;->setVisionTrackFrame(FFFFFIJ)I

    return-void
.end method

.method public setVideoResolution(I)V
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p1}, Lcom/powervision/camera/camera/CameraManager;->setVedioResolution(I)V

    return-void
.end method

.method public setYawValue(I)V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const-string v1, "PV_GIM_YAW_ADJ"

    invoke-virtual {v0, v1, p1}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadGimbalIntParameter(Ljava/lang/String;I)I

    return-void
.end method

.method public startCapture(I)V
    .locals 1

    const/4 v0, -0x1

    .line 306
    invoke-virtual {p0, p1, v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->startCapture(II)V

    return-void
.end method

.method public startCapture(II)V
    .locals 1

    const/4 v0, -0x1

    .line 310
    invoke-virtual {p0, p1, p2, v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->startCapture(III)V

    return-void
.end method

.method public startCapture(III)V
    .locals 0

    .line 314
    iput p1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->captureMode:I

    .line 315
    iput p2, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->value1:I

    .line 316
    iput p3, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->value2:I

    const/4 p3, 0x4

    if-ne p1, p3, :cond_0

    .line 318
    iget-object p1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {p1, p2}, Lcom/powervision/camera/camera/CameraManager;->doStartPhoto(I)V

    goto :goto_0

    .line 320
    :cond_0
    iget-object p1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->doStartPhoto()V

    :goto_0
    return-void
.end method

.method public stopDelayCapture()V
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->stopLapsePhoto()V

    return-void
.end method

.method public stopTimingCapture()V
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->stopDelayTimePhoto()V

    return-void
.end method

.method public switchPhotoToRecord(Z)V
    .locals 0

    .line 387
    iput-boolean p1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->isSlowMotion:Z

    .line 388
    iget-object p1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->switchToRecordMode()V

    return-void
.end method

.method public switchRecordToPhoto(Z)V
    .locals 0

    .line 375
    iput-boolean p1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->isMiddleToPhoto:Z

    .line 376
    iget-object p1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->switchToSnapMode()V

    return-void
.end method
