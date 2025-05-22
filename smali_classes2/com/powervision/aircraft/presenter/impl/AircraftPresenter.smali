.class public Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;
.super Lcom/powervision/base/base/BasePresenter;
.source "AircraftPresenter.java"

# interfaces
.implements Lcom/powervision/aircraft/presenter/IAircraftPresenter;
.implements Lcom/powervision/sdk/callback/Ap03NoFlyOpreateResultListener;
.implements Lcom/powervision/sdk/callback/Ap03ConnectDeviceListener;
.implements Lcom/powervision/sdk/callback/Ap03CurrentModeListener;
.implements Lcom/powervision/sdk/callback/Ap03SatellitesListener;
.implements Lcom/powervision/sdk/callback/Ap03BatteryStatusListener;
.implements Lcom/powervision/sdk/callback/Ap03LocalPositionNedListener;
.implements Lcom/powervision/sdk/callback/Ap03OnStartFolllowAndSetFollowModeListener;
.implements Lcom/powervision/sdk/callback/Ap03VisionTrackListener;
.implements Lcom/powervision/sdk/callback/Ap03VisionDetectListener;
.implements Lcom/powervision/sdk/callback/Ap03OnPauseFollowAndSetFollowModeListener;
.implements Lcom/powervision/sdk/callback/Ap03OnFollowCurrentListener;
.implements Lcom/powervision/sdk/callback/Ap03OnAttitudeListener;
.implements Lcom/powervision/sdk/callback/Ap03GimbalAttitudeListener;
.implements Lcom/powervision/sdk/callback/Ap03SysWarnListener;
.implements Lcom/powervision/sdk/callback/Ap03BarrierListener;
.implements Lcom/powervision/sdk/callback/Ap03RemoteElectricListener;
.implements Lcom/powervision/sdk/callback/Ap03SendFileStatusListener;
.implements Lcom/powervision/sdk/callback/Ap03ConnectLinkListener;
.implements Lcom/powervision/sdk/callback/Ap03RemoteKeyListener;
.implements Lcom/powervision/sdk/callback/Ap03LandProtectListener;
.implements Lcom/powervision/camera/camera/CameraListener$CameraNotifyHistogramDataListener;
.implements Lcom/powervision/camera/camera/CameraListener$CameraNotifyEnableHistogramListener;
.implements Lcom/powervision/sdk/callback/Ap03RoboticArmListener;
.implements Lcom/powervision/sdk/callback/Ap03NotifyOnGimbalParameterResultIntListener;
.implements Lcom/powervision/sdk/callback/Ap03RtlorTaktoffStatusListener;
.implements Lcom/powervision/sdk/callback/Ap03NotifyOnSetWaterproofCaseStatusResultListener;
.implements Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnSDFullListener;
.implements Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnInternalStorageFullListener;
.implements Lcom/powervision/camera/camera/CameraListener$CameraSetCurrentStorageDeviceListener;
.implements Lcom/powervision/camera/camera/CameraListener$CameraAEBMultiplePhotoStateListener;
.implements Lcom/powervision/camera/camera/CameraListener$CameraHDRMultiplePhotoStateListener;
.implements Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetRemainingRtlTimeResultListener;
.implements Lcom/powervision/sdk/callback/Ap03AirSetGetDl01OperationResultListener;
.implements Lcom/powervision/sdk/callback/Ap03ReturnPointListener;
.implements Lcom/powervision/camera/camera/CameraListener$CameraOnRecordDurationListener;
.implements Lcom/powervision/sdk/callback/Ap03NotifyOnAllowNoFlyZoneArmResultListener;
.implements Lcom/powervision/natives/PowerSDKCallback$NotifyOnSetGetDl01OperationResultListener;
.implements Lcom/powervision/sdk/callback/Ap03OnSetRainproofModeResultListener;
.implements Lcom/powervision/sdk/callback/Ap03OnRemoteControlerResultListener;
.implements Lcom/powervision/sdk/callback/Ap03SetGetParamResultListener;
.implements Lcom/powervision/sdk/callback/Ap03RemoteModeResultListener;
.implements Lcom/powervision/sdk/callback/Ap03OnSetTimeLapsePhotoMaxSpeedResultListener;
.implements Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetRefuseLowPowerReturnResultListener;
.implements Lcom/powervision/livestreaming/core/listener/RESConnectionListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BasePresenter<",
        "Lcom/powervision/aircraft/ui/view/IAircraftView;",
        "Lcom/powervision/aircraft/model/impl/AircraftModel;",
        ">;",
        "Lcom/powervision/aircraft/presenter/IAircraftPresenter;",
        "Lcom/powervision/sdk/callback/Ap03NoFlyOpreateResultListener;",
        "Lcom/powervision/sdk/callback/Ap03ConnectDeviceListener;",
        "Lcom/powervision/sdk/callback/Ap03CurrentModeListener;",
        "Lcom/powervision/sdk/callback/Ap03SatellitesListener;",
        "Lcom/powervision/sdk/callback/Ap03BatteryStatusListener;",
        "Lcom/powervision/sdk/callback/Ap03LocalPositionNedListener;",
        "Lcom/powervision/sdk/callback/Ap03OnStartFolllowAndSetFollowModeListener;",
        "Lcom/powervision/sdk/callback/Ap03VisionTrackListener;",
        "Lcom/powervision/sdk/callback/Ap03VisionDetectListener;",
        "Lcom/powervision/sdk/callback/Ap03OnPauseFollowAndSetFollowModeListener;",
        "Lcom/powervision/sdk/callback/Ap03OnFollowCurrentListener;",
        "Lcom/powervision/sdk/callback/Ap03OnAttitudeListener;",
        "Lcom/powervision/sdk/callback/Ap03GimbalAttitudeListener;",
        "Lcom/powervision/sdk/callback/Ap03SysWarnListener;",
        "Lcom/powervision/sdk/callback/Ap03BarrierListener;",
        "Lcom/powervision/sdk/callback/Ap03RemoteElectricListener;",
        "Lcom/powervision/sdk/callback/Ap03SendFileStatusListener;",
        "Lcom/powervision/sdk/callback/Ap03ConnectLinkListener;",
        "Lcom/powervision/sdk/callback/Ap03RemoteKeyListener;",
        "Lcom/powervision/sdk/callback/Ap03LandProtectListener;",
        "Lcom/powervision/camera/camera/CameraListener$CameraNotifyHistogramDataListener;",
        "Lcom/powervision/camera/camera/CameraListener$CameraNotifyEnableHistogramListener;",
        "Lcom/powervision/sdk/callback/Ap03RoboticArmListener;",
        "Lcom/powervision/sdk/callback/Ap03NotifyOnGimbalParameterResultIntListener;",
        "Lcom/powervision/sdk/callback/Ap03RtlorTaktoffStatusListener;",
        "Lcom/powervision/sdk/callback/Ap03NotifyOnSetWaterproofCaseStatusResultListener;",
        "Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnSDFullListener;",
        "Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnInternalStorageFullListener;",
        "Lcom/powervision/camera/camera/CameraListener$CameraSetCurrentStorageDeviceListener;",
        "Lcom/powervision/camera/camera/CameraListener$CameraAEBMultiplePhotoStateListener;",
        "Lcom/powervision/camera/camera/CameraListener$CameraHDRMultiplePhotoStateListener;",
        "Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetRemainingRtlTimeResultListener;",
        "Lcom/powervision/sdk/callback/Ap03AirSetGetDl01OperationResultListener;",
        "Lcom/powervision/sdk/callback/Ap03ReturnPointListener;",
        "Lcom/powervision/camera/camera/CameraListener$CameraOnRecordDurationListener;",
        "Lcom/powervision/sdk/callback/Ap03NotifyOnAllowNoFlyZoneArmResultListener;",
        "Lcom/powervision/natives/PowerSDKCallback$NotifyOnSetGetDl01OperationResultListener;",
        "Lcom/powervision/sdk/callback/Ap03OnSetRainproofModeResultListener;",
        "Lcom/powervision/sdk/callback/Ap03OnRemoteControlerResultListener;",
        "Lcom/powervision/sdk/callback/Ap03SetGetParamResultListener;",
        "Lcom/powervision/sdk/callback/Ap03RemoteModeResultListener;",
        "Lcom/powervision/sdk/callback/Ap03OnSetTimeLapsePhotoMaxSpeedResultListener;",
        "Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetRefuseLowPowerReturnResultListener;",
        "Lcom/powervision/livestreaming/core/listener/RESConnectionListener;"
    }
.end annotation


# instance fields
.field private Tag:Ljava/lang/String;

.field private angleInfo:Lcom/powervision/aircraft/lapse/data/AngleInfo;

.field private ap03NotifyOnGetTakeoffPointResultListener:Lcom/powervision/sdk/callback/Ap03NotifyOnGetTakeoffPointResultListener;

.field private cameraManager:Lcom/powervision/camera/camera/CameraManager;

.field private cameraNotifyOnCreateLapseFiile:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnCreateLapseFiile;

.field private cameraNotifyOnLapseFileDuration:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnLapseFileDuration;

.field private cameraNotifyOnLapsePhotoNumber:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnLapsePhotoNumber;

.field private cameraNotifyOnMultiplePhotoListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnMultiplePhotoListener;

.field private cameraNotifyOnStopLapsePhoto:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnStopLapsePhoto;

.field private followParamCallback:Lcom/powervision/natives/callback/FollowParamCallback;

.field private heightSpeedInfo:Lcom/powervision/aircraft/lapse/data/HeightSpeedInfo;

.field private lat:D

.field private logUtilInstance:Lcom/powervision/base/utils/FlightLogUtil;

.field private lon:D

.field private mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

.field private mCameraOnCameraSensorHighTemperatureListener:Lcom/powervision/camera/camera/CameraListener$CameraOnCameraSensorHighTemperatureListener;

.field private nedPositionInfo:Lcom/powervision/aircraft/lapse/data/NedPositionInfo;

.field private onSetFollowParmasListener:Lcom/powervision/aircraft/smart/SmartFollowManager$OnSetFollowParmasListener;

.field private startWater:Z

.field private tryNun:I

.field private type:I

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 94
    invoke-direct {p0}, Lcom/powervision/base/base/BasePresenter;-><init>()V

    const-string v0, "AircraftPresenter"

    .line 119
    iput-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->Tag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 934
    iput v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->type:I

    .line 1309
    iput v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->tryNun:I

    .line 1373
    new-instance v1, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$7;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$7;-><init>(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;)V

    iput-object v1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->cameraNotifyOnMultiplePhotoListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnMultiplePhotoListener;

    .line 1386
    new-instance v1, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$8;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$8;-><init>(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;)V

    iput-object v1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->ap03NotifyOnGetTakeoffPointResultListener:Lcom/powervision/sdk/callback/Ap03NotifyOnGetTakeoffPointResultListener;

    .line 1398
    new-instance v1, Lcom/powervision/aircraft/presenter/impl/-$$Lambda$AircraftPresenter$4LGwXKa9l3gIL7lzjEKDlAmNmPY;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/presenter/impl/-$$Lambda$AircraftPresenter$4LGwXKa9l3gIL7lzjEKDlAmNmPY;-><init>(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;)V

    iput-object v1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mCameraOnCameraSensorHighTemperatureListener:Lcom/powervision/camera/camera/CameraListener$CameraOnCameraSensorHighTemperatureListener;

    .line 1507
    new-instance v1, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$9;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$9;-><init>(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;)V

    iput-object v1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->cameraNotifyOnStopLapsePhoto:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnStopLapsePhoto;

    .line 1519
    new-instance v1, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$10;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$10;-><init>(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;)V

    iput-object v1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->cameraNotifyOnCreateLapseFiile:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnCreateLapseFiile;

    .line 1538
    new-instance v1, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$11;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$11;-><init>(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;)V

    iput-object v1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->cameraNotifyOnLapsePhotoNumber:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnLapsePhotoNumber;

    .line 1553
    new-instance v1, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$12;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$12;-><init>(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;)V

    iput-object v1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->cameraNotifyOnLapseFileDuration:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnLapseFileDuration;

    .line 1566
    iput-boolean v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->startWater:Z

    .line 1577
    new-instance v0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$13;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$13;-><init>(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;)V

    iput-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->onSetFollowParmasListener:Lcom/powervision/aircraft/smart/SmartFollowManager$OnSetFollowParmasListener;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;)Lcom/powervision/base/base/BaseModel;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;)Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->startWater:Z

    return p0
.end method

.method static synthetic access$2102(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;Z)Z
    .locals 0

    .line 94
    iput-boolean p1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->startWater:Z

    return p1
.end method

.method static synthetic access$300(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;)Lcom/powervision/base/base/BaseModel;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    return-object p0
.end method

.method static synthetic access$400(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$502(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;I)I
    .locals 0

    .line 94
    iput p1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->type:I

    return p1
.end method

.method static synthetic access$600(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method private getObservableCompareData()Lio/reactivex/Observable;
    .locals 1

    .line 817
    new-instance v0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$4;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$4;-><init>(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public SetTimeLapsePhotoMaxSpeedResult(I)V
    .locals 2

    .line 1496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTimeLapsePhotoMaxSpeedResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SetTimeLapsePhot"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 1499
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {v0, p1}, Lcom/powervision/aircraft/ui/view/IAircraftView;->updateTimeLapsePhotoMaxSpeedResult(I)V

    :cond_0
    return-void
.end method

.method public ap03LocalNedPositionInfo(FFFFFF)V
    .locals 0

    .line 660
    iget-object p4, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->nedPositionInfo:Lcom/powervision/aircraft/lapse/data/NedPositionInfo;

    iput p1, p4, Lcom/powervision/aircraft/lapse/data/NedPositionInfo;->x:F

    .line 661
    iget-object p1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->nedPositionInfo:Lcom/powervision/aircraft/lapse/data/NedPositionInfo;

    iput p2, p1, Lcom/powervision/aircraft/lapse/data/NedPositionInfo;->y:F

    .line 662
    iget-object p1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->nedPositionInfo:Lcom/powervision/aircraft/lapse/data/NedPositionInfo;

    iput p3, p1, Lcom/powervision/aircraft/lapse/data/NedPositionInfo;->z:F

    .line 663
    invoke-static {}, Lcom/powervision/base/databus/LiveDataBusX;->getInstance()Lcom/powervision/base/databus/LiveDataBusX;

    move-result-object p1

    const-class p2, Lcom/powervision/aircraft/lapse/data/NedPositionInfo;

    const-string p3, "ned_local_position"

    invoke-virtual {p1, p3, p2}, Lcom/powervision/base/databus/LiveDataBusX;->with(Ljava/lang/String;Ljava/lang/Class;)Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;

    move-result-object p1

    iget-object p2, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->nedPositionInfo:Lcom/powervision/aircraft/lapse/data/NedPositionInfo;

    invoke-virtual {p1, p2}, Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public ap03LocalPositionInfo(FFFF)V
    .locals 3

    .line 641
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->heightSpeedInfo:Lcom/powervision/aircraft/lapse/data/HeightSpeedInfo;

    if-nez v0, :cond_0

    .line 642
    new-instance v0, Lcom/powervision/aircraft/lapse/data/HeightSpeedInfo;

    invoke-direct {v0}, Lcom/powervision/aircraft/lapse/data/HeightSpeedInfo;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->heightSpeedInfo:Lcom/powervision/aircraft/lapse/data/HeightSpeedInfo;

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->heightSpeedInfo:Lcom/powervision/aircraft/lapse/data/HeightSpeedInfo;

    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/lapse/data/HeightSpeedInfo;->setHeight(F)V

    .line 645
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->heightSpeedInfo:Lcom/powervision/aircraft/lapse/data/HeightSpeedInfo;

    invoke-virtual {v0, p4}, Lcom/powervision/aircraft/lapse/data/HeightSpeedInfo;->setVps(F)V

    .line 646
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->heightSpeedInfo:Lcom/powervision/aircraft/lapse/data/HeightSpeedInfo;

    invoke-virtual {v0, p2}, Lcom/powervision/aircraft/lapse/data/HeightSpeedInfo;->setxSpeed(F)V

    .line 647
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->heightSpeedInfo:Lcom/powervision/aircraft/lapse/data/HeightSpeedInfo;

    invoke-virtual {v0, p3}, Lcom/powervision/aircraft/lapse/data/HeightSpeedInfo;->setySpeed(F)V

    .line 648
    invoke-static {}, Lcom/powervision/base/databus/LiveDataBusX;->getInstance()Lcom/powervision/base/databus/LiveDataBusX;

    move-result-object v0

    const-class v1, Lcom/powervision/aircraft/lapse/data/HeightSpeedInfo;

    const-string v2, "height_speed"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/databus/LiveDataBusX;->with(Ljava/lang/String;Ljava/lang/Class;)Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->heightSpeedInfo:Lcom/powervision/aircraft/lapse/data/HeightSpeedInfo;

    invoke-virtual {v0, v1}, Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 649
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-nez v0, :cond_1

    return-void

    .line 652
    :cond_1
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {v0, p1}, Lcom/powervision/aircraft/ui/view/IAircraftView;->updateHight(F)V

    .line 653
    iget-object p1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast p1, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {p1, p2}, Lcom/powervision/aircraft/ui/view/IAircraftView;->updateHorizontalSpeed(F)V

    .line 654
    iget-object p1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast p1, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {p1, p3}, Lcom/powervision/aircraft/ui/view/IAircraftView;->updateVertical(F)V

    .line 655
    iget-object p1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast p1, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {p1, p4}, Lcom/powervision/aircraft/ui/view/IAircraftView;->updateVps(F)V

    return-void
.end method

.method public deviceState(Ljava/lang/String;)V
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {v0, p1}, Lcom/powervision/aircraft/ui/view/IAircraftView;->updateDeviceState(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getAircraftAttitude(FFF)V
    .locals 3

    .line 708
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->angleInfo:Lcom/powervision/aircraft/lapse/data/AngleInfo;

    if-nez v0, :cond_0

    .line 709
    new-instance v0, Lcom/powervision/aircraft/lapse/data/AngleInfo;

    invoke-direct {v0}, Lcom/powervision/aircraft/lapse/data/AngleInfo;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->angleInfo:Lcom/powervision/aircraft/lapse/data/AngleInfo;

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->angleInfo:Lcom/powervision/aircraft/lapse/data/AngleInfo;

    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/lapse/data/AngleInfo;->setPitch(F)V

    .line 712
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->angleInfo:Lcom/powervision/aircraft/lapse/data/AngleInfo;

    invoke-virtual {v0, p2}, Lcom/powervision/aircraft/lapse/data/AngleInfo;->setRoll(F)V

    .line 713
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->angleInfo:Lcom/powervision/aircraft/lapse/data/AngleInfo;

    invoke-virtual {v0, p3}, Lcom/powervision/aircraft/lapse/data/AngleInfo;->setYaw(F)V

    .line 714
    invoke-static {}, Lcom/powervision/base/databus/LiveDataBusX;->getInstance()Lcom/powervision/base/databus/LiveDataBusX;

    move-result-object v0

    const-class v1, Lcom/powervision/aircraft/lapse/data/AngleInfo;

    const-string v2, "angle_model"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/databus/LiveDataBusX;->with(Ljava/lang/String;Ljava/lang/Class;)Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->angleInfo:Lcom/powervision/aircraft/lapse/data/AngleInfo;

    invoke-virtual {v0, v1}, Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 715
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_1

    .line 716
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {v0, p1, p2, p3}, Lcom/powervision/aircraft/ui/view/IAircraftView;->updateAircraftAttitudeInfo(FFF)V

    :cond_1
    return-void
.end method

.method public getBarrierInfo([F)V
    .locals 1

    .line 736
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {v0, p1}, Lcom/powervision/aircraft/ui/view/IAircraftView;->updateBarrierInfo([F)V

    :cond_0
    return-void
.end method

.method public getBatterInfo(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 620
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {v0, p1, p2, p3}, Lcom/powervision/aircraft/ui/view/IAircraftView;->updateBatteryInfo(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public getBatteryElectric(FIIIIIIIIIII)V
    .locals 14

    move-object v0, p0

    .line 607
    iget-object v1, v0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v1, :cond_0

    .line 608
    iget-object v1, v0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    move-object v2, v1

    check-cast v2, Lcom/powervision/aircraft/ui/view/IAircraftView;

    move v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p12

    invoke-interface/range {v2 .. v13}, Lcom/powervision/aircraft/ui/view/IAircraftView;->updateBattery(FIIIIIIIIII)V

    :cond_0
    return-void
.end method

.method public getBatteryTime(I)V
    .locals 1

    .line 632
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {v0, p1}, Lcom/powervision/aircraft/ui/view/IAircraftView;->updateSurplusTime(I)V

    :cond_0
    return-void
.end method

.method public getDl01OperationResult(IILjava/lang/String;)V
    .locals 1

    .line 1345
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 1346
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {v0, p1, p2, p3}, Lcom/powervision/aircraft/ui/view/IAircraftView;->getDL01Date(IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getFlyBatteryElectric(II)V
    .locals 0

    return-void
.end method

.method public getFollowDetectInfo(J[F[F[F[F[F[SI)V
    .locals 12

    move-object v0, p0

    .line 692
    iget-object v1, v0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v1, :cond_0

    .line 693
    iget-object v1, v0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    move-object v2, v1

    check-cast v2, Lcom/powervision/aircraft/ui/view/IAircraftView;

    move-wide v3, p1

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    invoke-interface/range {v2 .. v11}, Lcom/powervision/aircraft/ui/view/IAircraftView;->updateFollowDetect(J[F[F[F[F[F[SI)V

    :cond_0
    return-void
.end method

.method public getFollowModeInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 668
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {v0, p1, p2}, Lcom/powervision/aircraft/ui/view/IAircraftView;->updateStartFollowInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getFollowTrackInfo(FFFFFII)V
    .locals 10

    move-object v0, p0

    .line 683
    iget-object v1, v0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v1, :cond_0

    .line 684
    iget-object v1, v0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    move-object v2, v1

    check-cast v2, Lcom/powervision/aircraft/ui/view/IAircraftView;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Lcom/powervision/aircraft/ui/view/IAircraftView;->updateFollowTrack(FFFFFII)V

    :cond_0
    return-void
.end method

.method public getGimbalAttitude(FFF)V
    .locals 1

    .line 722
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {v0, p1, p2, p3}, Lcom/powervision/aircraft/ui/view/IAircraftView;->updateGimbalAttitudeInfo(FFF)V

    :cond_0
    return-void
.end method

.method public getGimbalValue()V
    .locals 2

    .line 544
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0}, Lcom/powervision/sdk/Ap03Manager;->getPowerSDK()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    const-string v1, "PV_GIM_ROLL_ADJ"

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->downloadGimbalParameter(Ljava/lang/String;)I

    .line 545
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0}, Lcom/powervision/sdk/Ap03Manager;->getPowerSDK()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    const-string v1, "PV_GIM_YAW_ADJ"

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->downloadGimbalParameter(Ljava/lang/String;)I

    return-void
.end method

.method public getHandhledBatteryValue(F)V
    .locals 0

    return-void
.end method

.method public getHomeReturnPoint()V
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0}, Lcom/powervision/sdk/Ap03Manager;->getPowerSDK()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getHomePoint()I

    return-void
.end method

.method public getLandProtectResult(I)V
    .locals 1

    .line 1236
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 1237
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {v0, p1}, Lcom/powervision/aircraft/ui/view/IAircraftView;->upLandProtectResult(I)V

    :cond_0
    return-void
.end method

.method public getLat()D
    .locals 2

    .line 131
    iget-wide v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->lat:D

    return-wide v0
.end method

.method public getLimitedFlyZone(DD)V
    .locals 8

    .line 878
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fly , DBManager.getInstance().queryAll().size() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/powervision/base/db/DBManager;->getInstance()Lcom/powervision/base/db/DBManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/base/db/DBManager;->queryAll()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 879
    invoke-virtual {p0, p1, p2}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->setLat(D)V

    .line 880
    invoke-virtual {p0, p3, p4}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->setLon(D)V

    .line 881
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast v0, Lcom/powervision/aircraft/model/impl/AircraftModel;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/powervision/aircraft/model/impl/AircraftModel;->getLimitedPolygon(DD)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/net/observable/StringObservable;->getObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$6;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$6;-><init>(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;)V

    .line 883
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v7, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$5;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$5;-><init>(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;DD)V

    .line 899
    invoke-virtual {v0, v7}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public getLon()D
    .locals 2

    .line 139
    iget-wide v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->lon:D

    return-wide v0
.end method

.method public getNoFlyZone(DD)V
    .locals 7

    const-string v0, "--------=========1111111"

    .line 756
    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 757
    iput v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->type:I

    .line 758
    new-instance v0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$1;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$1;-><init>(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;DD)V

    .line 759
    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 773
    new-instance p2, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$2;

    invoke-direct {p2, p0}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$2;-><init>(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;)V

    .line 792
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p3

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p3

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    .line 793
    invoke-direct {p0}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->getObservableCompareData()Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$3;

    invoke-direct {p2, p0}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter$3;-><init>(Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public getPauseFollowModeInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 675
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {v0, p1, p2}, Lcom/powervision/aircraft/ui/view/IAircraftView;->updatePauseFollowInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getRemainingRtlTime()V
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0}, Lcom/powervision/sdk/Ap03Manager;->getPowerSDK()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getRemainingRtlTime()I

    return-void
.end method

.method public getRemoteElectric(I)V
    .locals 1

    .line 743
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {v0, p1}, Lcom/powervision/aircraft/ui/view/IAircraftView;->updateRemoteElectric(I)V

    :cond_0
    return-void
.end method

.method public getReturnPotinInfo(III)V
    .locals 1

    .line 1352
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 1353
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {v0, p1, p2, p3}, Lcom/powervision/aircraft/ui/view/IAircraftView;->updateReturnPoint(III)V

    :cond_0
    return-void
.end method

.method public getSatellitesNum(I)V
    .locals 1

    .line 597
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {v0, p1}, Lcom/powervision/aircraft/ui/view/IAircraftView;->updateSatellite(I)V

    :cond_0
    return-void
.end method

.method public getSetRefuseLowPowerReturnResult(Ljava/lang/String;)V
    .locals 2

    .line 1649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4f4e\u7535\u8fd4\u822a\u7ed3\u679c = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    return-void
.end method

.method public getSpeedAndDistanceInfo(FF)V
    .locals 1

    .line 699
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {v0, p1, p2}, Lcom/powervision/aircraft/ui/view/IAircraftView;->updateSpeedAndDistanceInfo(FF)V

    :cond_0
    return-void
.end method

.method public getSysWarnInfo(III)V
    .locals 1

    .line 729
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {v0, p1, p2, p3}, Lcom/powervision/aircraft/ui/view/IAircraftView;->updateWarnInfo(III)V

    :cond_0
    return-void
.end method

.method public getTakeOffPoint()V
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0}, Lcom/powervision/sdk/Ap03Manager;->getPowerSDK()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getTakeoffPoint()I

    return-void
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->version:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic lambda$new$0$AircraftPresenter(I)V
    .locals 1

    .line 1400
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-nez v0, :cond_0

    return-void

    .line 1401
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {v0, p1}, Lcom/powervision/aircraft/ui/view/IAircraftView;->onCameraSensorHighTemperature(I)V

    return-void
.end method

.method public land()V
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0}, Lcom/powervision/sdk/Ap03Manager;->getPowerSDK()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->land()I

    return-void
.end method

.method public linkState(Ljava/lang/String;)V
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {v0, p1}, Lcom/powervision/aircraft/ui/view/IAircraftView;->updateConnect(Ljava/lang/String;)V

    return-void
.end method

.method public onAEBMultiplePhotoState(I)V
    .locals 2

    .line 1290
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 1292
    iget-object p1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast p1, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {p1}, Lcom/powervision/aircraft/ui/view/IAircraftView;->setAEBMultipleShotsFail()V

    goto :goto_0

    .line 1294
    :cond_1
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/aircraft/ui/view/IAircraftView;

    const-string v1, ""

    invoke-interface {v0, v1, p1}, Lcom/powervision/aircraft/ui/view/IAircraftView;->setAEBMultipleShotsSuccess(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public onAllowNoFlyZoneArmResult(I)V
    .locals 1

    .line 1368
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 1369
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {v0, p1}, Lcom/powervision/aircraft/ui/view/IAircraftView;->noflyCheck(I)V

    :cond_0
    return-void
.end method

.method public onCloseConnection()V
    .locals 1

    .line 1636
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 1637
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {v0}, Lcom/powervision/aircraft/ui/view/IAircraftView;->liveCloseConnectionResult()V

    :cond_0
    return-void
.end method

.method public onEnableHistogram(I)V
    .locals 1

    .line 1014
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {v0, p1}, Lcom/powervision/aircraft/ui/view/IAircraftView;->showHistogramView(I)V

    :cond_0
    return-void
.end method

.method public onGetAirDl01OperationResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1338
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 1339
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {v0, p1, p2, p3}, Lcom/powervision/aircraft/ui/view/IAircraftView;->getAirDL03Data(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onGetHistogramData([II)V
    .locals 1

    .line 1007
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 1008
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {v0, p1, p2}, Lcom/powervision/aircraft/ui/view/IAircraftView;->showHistogramData([II)V

    :cond_0
    return-void
.end method

.method public onHDRMultiplePhotoState(Ljava/lang/String;)V
    .locals 1

    .line 1301
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-nez v0, :cond_0

    return-void

    .line 1302
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "hdr_snap_success"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1303
    iget-object p1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast p1, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {p1}, Lcom/powervision/aircraft/ui/view/IAircraftView;->setHDRMultipleShotsSuccess()V

    goto :goto_0

    .line 1305
    :cond_1
    iget-object p1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast p1, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {p1}, Lcom/powervision/aircraft/ui/view/IAircraftView;->setHDRMultipleShotsFail()V

    :goto_0
    return-void
.end method

.method public onInternalStorageFull()V
    .locals 1

    .line 1274
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 1275
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {v0}, Lcom/powervision/aircraft/ui/view/IAircraftView;->updateOnInternalStorageFull()V

    :cond_0
    return-void
.end method

.method public onLandStatus(Ljava/lang/String;)V
    .locals 1

    .line 1215
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 1216
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {v0, p1}, Lcom/powervision/aircraft/ui/view/IAircraftView;->updateLand(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onOpenConnectionFail()V
    .locals 1

    .line 1629
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 1630
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {v0}, Lcom/powervision/aircraft/ui/view/IAircraftView;->liveOpenConnectionFailed()V

    :cond_0
    return-void
.end method

.method public onOpenConnectionSuccess()V
    .locals 1

    .line 1622
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 1623
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {v0}, Lcom/powervision/aircraft/ui/view/IAircraftView;->liveOpenConnectionSuccess()V

    :cond_0
    return-void
.end method

.method public onRecordDuration(I)V
    .locals 1

    .line 1359
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 1360
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {v0, p1}, Lcom/powervision/aircraft/ui/view/IAircraftView;->onUpdateRecordingTime(I)V

    :cond_0
    return-void
.end method

.method public onRemoteControlerResult(IIII)V
    .locals 1

    .line 1410
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-nez v0, :cond_0

    return-void

    .line 1411
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/powervision/aircraft/ui/view/IAircraftView;->onGetRemoteControlerResult(IIII)V

    return-void
.end method

.method public onRemoteParameterDownloadFailed(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onRemoteParameterDownloadSuccess(Ljava/lang/String;I)V
    .locals 1

    .line 1459
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "PV_RC_MODE"

    .line 1462
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1463
    iget-object p1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-nez p1, :cond_1

    return-void

    .line 1464
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onRemoteParameterDownloadSuccess DOWNLOAD... success  type="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "fly_guide"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1465
    iget-object p1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast p1, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {p1, p2}, Lcom/powervision/aircraft/ui/view/IAircraftView;->onGetRemoteMode(I)V

    :cond_2
    return-void
.end method

.method public onRemoteParameterDownloadTimeOut()V
    .locals 0

    return-void
.end method

.method public onRemoteParameterUploadFailed(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onRemoteParameterUploadSuccess(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onRemoteParameterUploadTimeOut()V
    .locals 0

    return-void
.end method

.method public onReturnStatus(Ljava/lang/String;)V
    .locals 1

    .line 1222
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 1223
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {v0, p1}, Lcom/powervision/aircraft/ui/view/IAircraftView;->updateRtl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRoboticArmStateChange(ZZZ)V
    .locals 0

    .line 1021
    iget-object p1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz p1, :cond_0

    .line 1022
    iget-object p1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast p1, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {p1, p3}, Lcom/powervision/aircraft/ui/view/IAircraftView;->onRoboticArmStateChangeView(Z)V

    :cond_0
    return-void
.end method

.method public onRoboticArmStateGet()V
    .locals 0

    return-void
.end method

.method public onSDFull()V
    .locals 1

    .line 1266
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 1267
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {v0}, Lcom/powervision/aircraft/ui/view/IAircraftView;->updateOnSDFull()V

    :cond_0
    return-void
.end method

.method public onSetCurrentStorageDevice(Ljava/lang/String;)V
    .locals 2

    .line 1281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   result ... onSetCurrentStorageDevice  result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "set_camera"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v1, 0x0

    .line 1283
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1284
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 v1, 0xf3

    invoke-virtual {p1, v1, v0}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    return-void
.end method

.method public onSetGetFloatParamDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V
    .locals 0

    return-void
.end method

.method public onSetGetIntParamDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 1424
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "NEW_USER_GUI"

    .line 1428
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "DOWNLOAD"

    const-string v2, "SUCCESS"

    if-eqz v0, :cond_3

    const-string p3, "UPLOAD"

    .line 1429
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const-string v0, "fly_guide"

    if-eqz p3, :cond_1

    .line 1430
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1431
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onSetGetIntParamDate upload... success....value="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1433
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1434
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1435
    iget-object p1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-nez p1, :cond_2

    return-void

    .line 1436
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onSetGetIntParamDate DOWNLOAD... success  value="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    iget-object p1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast p1, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {p1, p4}, Lcom/powervision/aircraft/ui/view/IAircraftView;->onGetFlightGuideStatus(I)V

    goto :goto_0

    :cond_3
    const-string v0, "MPC_AVOI_ON"

    .line 1440
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 1441
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1442
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1443
    iget-object p1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-nez p1, :cond_4

    return-void

    .line 1444
    :cond_4
    iget-object p1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast p1, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {p1, p4}, Lcom/powervision/aircraft/ui/view/IAircraftView;->barrierStatus(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onSetGetLongParamDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    return-void
.end method

.method public onTakeoffStatus(Ljava/lang/String;)V
    .locals 1

    .line 1208
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 1209
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {v0, p1}, Lcom/powervision/aircraft/ui/view/IAircraftView;->updateTakeOff(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onWriteError(I)V
    .locals 1

    .line 1643
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 1644
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {v0, p1}, Lcom/powervision/aircraft/ui/view/IAircraftView;->liveWriteError(I)V

    :cond_0
    return-void
.end method

.method public rainproofModeReslut(I)V
    .locals 1

    .line 1258
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 1259
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {v0, p1}, Lcom/powervision/aircraft/ui/view/IAircraftView;->updateRainproofMode(I)V

    :cond_0
    return-void
.end method

.method public removeListeners()V
    .locals 3

    const-string v0, "remove--------------->"

    .line 246
    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeCurrentModeListener(Lcom/powervision/sdk/callback/Ap03CurrentModeListener;)V

    .line 248
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/sdk/Ap03Manager;->setSatellitesListener(Lcom/powervision/sdk/callback/Ap03SatellitesListener;)V

    .line 249
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeBatteryStatusListener(Lcom/powervision/sdk/callback/Ap03BatteryStatusListener;)V

    .line 250
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeLocalPositionNedListener(Lcom/powervision/sdk/callback/Ap03LocalPositionNedListener;)V

    .line 251
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, v1}, Lcom/powervision/sdk/Ap03Manager;->setFollowStateListener(Lcom/powervision/sdk/callback/Ap03OnStartFolllowAndSetFollowModeListener;)V

    .line 252
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeVisionDetectListener(Lcom/powervision/sdk/callback/Ap03VisionDetectListener;)V

    .line 253
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeVisionTrackLIstener(Lcom/powervision/sdk/callback/Ap03VisionTrackListener;)V

    .line 254
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, v1}, Lcom/powervision/sdk/Ap03Manager;->setFollowCurrentListener(Lcom/powervision/sdk/callback/Ap03OnFollowCurrentListener;)V

    .line 255
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, v1}, Lcom/powervision/sdk/Ap03Manager;->setPauseFollowStateListener(Lcom/powervision/sdk/callback/Ap03OnPauseFollowAndSetFollowModeListener;)V

    .line 256
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, v1}, Lcom/powervision/sdk/Ap03Manager;->setOnAttitudeListener(Lcom/powervision/sdk/callback/Ap03OnAttitudeListener;)V

    .line 257
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeAp03SysWarnListener(Lcom/powervision/sdk/callback/Ap03SysWarnListener;)V

    .line 258
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, v1}, Lcom/powervision/sdk/Ap03Manager;->setAp03BarrierListener(Lcom/powervision/sdk/callback/Ap03BarrierListener;)V

    .line 259
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeAp03RemoteElectricListener(Lcom/powervision/sdk/callback/Ap03RemoteElectricListener;)V

    .line 260
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, v1}, Lcom/powervision/sdk/Ap03Manager;->setAp03SendFileStatusListener(Lcom/powervision/sdk/callback/Ap03SendFileStatusListener;)V

    .line 261
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, v1}, Lcom/powervision/sdk/Ap03Manager;->setAp03NoFlyOpreateResultListener(Lcom/powervision/sdk/callback/Ap03NoFlyOpreateResultListener;)V

    .line 262
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, v1}, Lcom/powervision/sdk/Ap03Manager;->setAp03RemoteKeyListener(Lcom/powervision/sdk/callback/Ap03RemoteKeyListener;)V

    .line 263
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeAp03NotifyOnGimbalParameterResultIntListener(Lcom/powervision/sdk/callback/Ap03NotifyOnGimbalParameterResultIntListener;)V

    .line 264
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeAp03NotifyOnSetWaterproofCaseStatusResultListener(Lcom/powervision/sdk/callback/Ap03NotifyOnSetWaterproofCaseStatusResultListener;)V

    .line 265
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeAp03NotifyOnSetRainproofModeResultListener(Lcom/powervision/sdk/callback/Ap03OnSetRainproofModeResultListener;)V

    .line 266
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeRoboticArmListener(Lcom/powervision/sdk/callback/Ap03RoboticArmListener;)V

    .line 267
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, v1}, Lcom/powervision/sdk/Ap03Manager;->setAp03RtlorTaktoffStatusListener(Lcom/powervision/sdk/callback/Ap03RtlorTaktoffStatusListener;)V

    .line 268
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, v1}, Lcom/powervision/sdk/Ap03Manager;->setAp03LandProtectListener(Lcom/powervision/sdk/callback/Ap03LandProtectListener;)V

    .line 269
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeAp03AirSetGetDl01OperationResultListener(Lcom/powervision/sdk/callback/Ap03AirSetGetDl01OperationResultListener;)V

    .line 270
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeAp03NotifyOnGetRemainingRtlTimeResultListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetRemainingRtlTimeResultListener;)V

    .line 271
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeAp03ReturnPointListener(Lcom/powervision/sdk/callback/Ap03ReturnPointListener;)V

    .line 272
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, v1}, Lcom/powervision/sdk/Ap03Manager;->setTakeoffPointResultListener(Lcom/powervision/sdk/callback/Ap03NotifyOnGetTakeoffPointResultListener;)V

    .line 273
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeUpAndDownIntParamListener(Lcom/powervision/sdk/callback/Ap03SetGetParamResultListener;)V

    .line 274
    invoke-static {}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->get()Lcom/powervision/natives/connect/ConnectRemoteSDK;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->removeListener(Lcom/powervision/sdk/callback/Ap03RemoteModeResultListener;)V

    .line 276
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeAp03OnSetTimeLapsePhotoMaxSpeedResultListener(Lcom/powervision/sdk/callback/Ap03OnSetTimeLapsePhotoMaxSpeedResultListener;)V

    .line 278
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraEnableHistogramListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyEnableHistogramListener;)V

    .line 279
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraHistogramDataListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyHistogramDataListener;)V

    .line 280
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraSetCurrentStorageDeviceListener(Lcom/powervision/camera/camera/CameraListener$CameraSetCurrentStorageDeviceListener;)V

    .line 282
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraOnSDFullListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnSDFullListener;)V

    .line 283
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraOnInternalStorageFullListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnInternalStorageFullListener;)V

    .line 285
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v2, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->cameraNotifyOnMultiplePhotoListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnMultiplePhotoListener;

    invoke-virtual {v0, v2}, Lcom/powervision/camera/camera/CameraManager;->removeCameraNotifyOnMultiplePhotoListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnMultiplePhotoListener;)V

    .line 286
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraAEBMultiplePhotoStateListener(Lcom/powervision/camera/camera/CameraListener$CameraAEBMultiplePhotoStateListener;)V

    .line 287
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraHDRMultiplePhotoStateListener(Lcom/powervision/camera/camera/CameraListener$CameraHDRMultiplePhotoStateListener;)V

    .line 288
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraOnRecordDurationListener(Lcom/powervision/camera/camera/CameraListener$CameraOnRecordDurationListener;)V

    .line 289
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v2, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mCameraOnCameraSensorHighTemperatureListener:Lcom/powervision/camera/camera/CameraListener$CameraOnCameraSensorHighTemperatureListener;

    invoke-virtual {v0, v2}, Lcom/powervision/camera/camera/CameraManager;->removeCameraOnCameraSensorHighTemperatureListener(Lcom/powervision/camera/camera/CameraListener$CameraOnCameraSensorHighTemperatureListener;)V

    .line 292
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v2, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->cameraNotifyOnCreateLapseFiile:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnCreateLapseFiile;

    invoke-virtual {v0, v2}, Lcom/powervision/camera/camera/CameraManager;->removeCameraNotifyOnCreateLapseFiile(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnCreateLapseFiile;)V

    .line 293
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v2, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->cameraNotifyOnLapseFileDuration:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnLapseFileDuration;

    invoke-virtual {v0, v2}, Lcom/powervision/camera/camera/CameraManager;->removeCameraNotifyOnLapseFileDuration(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnLapseFileDuration;)V

    .line 294
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v2, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->cameraNotifyOnStopLapsePhoto:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnStopLapsePhoto;

    invoke-virtual {v0, v2}, Lcom/powervision/camera/camera/CameraManager;->removeCameraNotifyOnStopLapsePhotoListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnStopLapsePhoto;)V

    .line 295
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v2, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->cameraNotifyOnLapsePhotoNumber:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnLapsePhotoNumber;

    invoke-virtual {v0, v2}, Lcom/powervision/camera/camera/CameraManager;->removeCameraNotifyOnLapsePhotoNumber(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnLapsePhotoNumber;)V

    .line 297
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_AP03_API;->removeSetGetDl01OperationResultListener(Lcom/powervision/natives/PowerSDKCallback$NotifyOnSetGetDl01OperationResultListener;)V

    .line 298
    invoke-static {}, Lcom/powervision/livestreaming/LiveStreaming;->getInstance()Lcom/powervision/livestreaming/LiveStreaming;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/powervision/livestreaming/LiveStreaming;->setLiveStreamingListener(Lcom/powervision/livestreaming/core/listener/RESConnectionListener;)V

    .line 299
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnSetRefuseLowPowerReturnResultListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetRefuseLowPowerReturnResultListener;)V

    .line 300
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, v1}, Lcom/powervision/sdk/Ap03Manager;->setNotifyOnAllowNoFlyZoneArmResultListener(Lcom/powervision/sdk/callback/Ap03NotifyOnAllowNoFlyZoneArmResultListener;)V

    .line 301
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartFollowManager;->getInstance()Lcom/powervision/aircraft/smart/SmartFollowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->onSetFollowParmasListener:Lcom/powervision/aircraft/smart/SmartFollowManager$OnSetFollowParmasListener;

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/smart/SmartFollowManager;->removeListener(Lcom/powervision/aircraft/smart/SmartFollowManager$OnSetFollowParmasListener;)V

    return-void
.end method

.method public removeRemoteControlerResultListener()V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/sdk/Ap03Manager;->setAp03OnRemoteControlerResultListener(Lcom/powervision/sdk/callback/Ap03OnRemoteControlerResultListener;)V

    return-void
.end method

.method public sendFile(Ljava/lang/String;)V
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0}, Lcom/powervision/sdk/Ap03Manager;->getPowerSDK()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/natives/PVSDK_AP03_API;->sendNoFlyZoneFile(Ljava/lang/String;)I

    return-void
.end method

.method public setAirDL01Close()V
    .locals 4

    .line 487
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0}, Lcom/powervision/sdk/Ap03Manager;->getPowerSDK()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    const/16 v1, 0x12

    const-string v2, "0"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/natives/PVSDK_AP03_API;->airSetGetOperation(ILjava/lang/String;I)I

    return-void
.end method

.method public setAirDL01NDAClose()V
    .locals 4

    .line 494
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0}, Lcom/powervision/sdk/Ap03Manager;->getPowerSDK()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    const/16 v1, 0x13

    const-string v2, "-90"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/natives/PVSDK_AP03_API;->airSetGetOperation(ILjava/lang/String;I)I

    return-void
.end method

.method public setAirDL01NDAOpen()V
    .locals 4

    .line 480
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0}, Lcom/powervision/sdk/Ap03Manager;->getPowerSDK()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    const/16 v1, 0x13

    const-string v2, "-10"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/natives/PVSDK_AP03_API;->airSetGetOperation(ILjava/lang/String;I)I

    return-void
.end method

.method public setAirDL01Open()V
    .locals 4

    .line 473
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0}, Lcom/powervision/sdk/Ap03Manager;->getPowerSDK()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    const/16 v1, 0x12

    const-string v2, "1"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/natives/PVSDK_AP03_API;->airSetGetOperation(ILjava/lang/String;I)I

    return-void
.end method

.method public setClipsMode()V
    .locals 3

    .line 383
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0}, Lcom/powervision/sdk/Ap03Manager;->getPowerSDK()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/powervision/natives/PVSDK_AP03_API;->setFlightingMode(II)I

    return-void
.end method

.method public setCommonResultFailed()V
    .locals 2

    const-string v0, "\u83b7\u53d6\u5269\u4f59\u65f6\u95f4\u5931\u8d25"

    .line 1329
    invoke-static {v0}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    .line 1330
    iget v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->tryNun:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 1331
    invoke-virtual {p0}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->getRemainingRtlTime()V

    .line 1332
    iget v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->tryNun:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->tryNun:I

    :cond_0
    return-void
.end method

.method public setCommonResultSuccess(I)V
    .locals 2

    .line 1313
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-nez v0, :cond_0

    return-void

    .line 1314
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {v0, p1}, Lcom/powervision/aircraft/ui/view/IAircraftView;->getRemainingRtlTime(I)V

    .line 1315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u83b7\u53d6\u5230\u5269\u4f59\u65f6\u95f4 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    return-void
.end method

.method public setCommonResultTimeout()V
    .locals 2

    const-string v0, "\u83b7\u53d6\u5269\u4f59\u65f6\u95f4\u8d85\u65f6"

    .line 1320
    invoke-static {v0}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    .line 1321
    iget v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->tryNun:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 1322
    invoke-virtual {p0}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->getRemainingRtlTime()V

    .line 1323
    iget v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->tryNun:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->tryNun:I

    :cond_0
    return-void
.end method

.method public setConfirmDisarm(I)V
    .locals 1

    .line 523
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0}, Lcom/powervision/sdk/Ap03Manager;->getPowerSDK()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/natives/PVSDK_AP03_API;->confirmDisarm(I)I

    return-void
.end method

.method public setCurrencyMode(II)V
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0}, Lcom/powervision/sdk/Ap03Manager;->getPowerSDK()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/powervision/natives/PVSDK_AP03_API;->setFlightingMode(II)I

    return-void
.end method

.method public setCurrentMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {v0, p1, p2}, Lcom/powervision/aircraft/ui/view/IAircraftView;->updateMode(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    :cond_0
    iget-object p2, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->logUtilInstance:Lcom/powervision/base/utils/FlightLogUtil;

    if-eqz p2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 579
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object p2

    invoke-static {p1}, Lcom/powervision/base/utils/FlyModeUtil;->getFlyModeIndex(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/powervision/base/utils/FlightLogUtil;->setFlyMode(I)V

    :cond_1
    return-void
.end method

.method public setFastMode()V
    .locals 3

    .line 344
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0}, Lcom/powervision/sdk/Ap03Manager;->getPowerSDK()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    const/16 v1, 0x13

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/powervision/natives/PVSDK_AP03_API;->setFlightingMode(II)I

    return-void
.end method

.method public setFlyZoneOperate(I)V
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0}, Lcom/powervision/sdk/Ap03Manager;->getPowerSDK()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/natives/PVSDK_AP03_API;->noFlyZoneOperate(I)I

    return-void
.end method

.method public setFollowMode()V
    .locals 3

    .line 308
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0}, Lcom/powervision/sdk/Ap03Manager;->getPowerSDK()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/powervision/natives/PVSDK_AP03_API;->setFlightingMode(II)I

    return-void
.end method

.method public setGetAirDL01Value(ILjava/lang/String;I)V
    .locals 1

    .line 516
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0}, Lcom/powervision/sdk/Ap03Manager;->getPowerSDK()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/powervision/natives/PVSDK_AP03_API;->airSetGetOperation(ILjava/lang/String;I)I

    return-void
.end method

.method public setGetDL01Value(ILjava/lang/String;I)V
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0}, Lcom/powervision/sdk/Ap03Manager;->getPowerSDK()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/powervision/natives/PVSDK_AP03_API;->setGetOperation(ILjava/lang/String;I)I

    return-void
.end method

.method public setGetGimbalParameterResult(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .line 1033
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParameterResult  :  var1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  var2 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  var3 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;)V

    const-string v0, "UPLOAD_SUCCESS"

    .line 1034
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "PV_GIM_YAW_ADJ"

    const-string v2, "PV_GIM_ROLL_ADJ"

    if-eqz v0, :cond_2

    .line 1035
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1036
    iget-object p1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz p1, :cond_6

    .line 1037
    iget-object p1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast p1, Lcom/powervision/aircraft/ui/view/IAircraftView;

    int-to-float p2, p3

    invoke-interface {p1, p2, v0}, Lcom/powervision/aircraft/ui/view/IAircraftView;->setGimbalViewPitch(FZ)V

    goto/16 :goto_0

    .line 1039
    :cond_0
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1040
    iget-object p1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz p1, :cond_6

    .line 1041
    iget-object p1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast p1, Lcom/powervision/aircraft/ui/view/IAircraftView;

    int-to-float p2, p3

    invoke-interface {p1, p2, v0}, Lcom/powervision/aircraft/ui/view/IAircraftView;->setGimbalViewYaw(FZ)V

    goto/16 :goto_0

    :cond_1
    const-string p1, "PV_GIM_LSE_FLAG"

    .line 1043
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "\u4e91\u53f0\u8bbe\u7f6e\u6210\u529f"

    .line 1044
    invoke-static {p1}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "DOWNLOAD_SUCCESS"

    .line 1046
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 1047
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1048
    iget-object p1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz p1, :cond_6

    .line 1049
    iget-object p1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast p1, Lcom/powervision/aircraft/ui/view/IAircraftView;

    int-to-float p2, p3

    invoke-interface {p1, p2, v3}, Lcom/powervision/aircraft/ui/view/IAircraftView;->setGimbalViewPitch(FZ)V

    goto :goto_0

    .line 1051
    :cond_3
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1052
    iget-object p1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz p1, :cond_6

    .line 1053
    iget-object p1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast p1, Lcom/powervision/aircraft/ui/view/IAircraftView;

    int-to-float p2, p3

    invoke-interface {p1, p2, v3}, Lcom/powervision/aircraft/ui/view/IAircraftView;->setGimbalViewYaw(FZ)V

    goto :goto_0

    :cond_4
    const-string v0, "DOWNLOAD_TIMEOUT"

    .line 1056
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1057
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1058
    iget-object p1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz p1, :cond_6

    .line 1059
    iget-object p1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast p1, Lcom/powervision/aircraft/ui/view/IAircraftView;

    int-to-float p2, p3

    invoke-interface {p1, p2, v3}, Lcom/powervision/aircraft/ui/view/IAircraftView;->setGimbalViewPitch(FZ)V

    goto :goto_0

    .line 1061
    :cond_5
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1062
    iget-object p1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz p1, :cond_6

    .line 1063
    iget-object p1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast p1, Lcom/powervision/aircraft/ui/view/IAircraftView;

    int-to-float p2, p3

    invoke-interface {p1, p2, v3}, Lcom/powervision/aircraft/ui/view/IAircraftView;->setGimbalViewYaw(FZ)V

    :cond_6
    :goto_0
    return-void
.end method

.method public setGimbalDown()V
    .locals 3

    .line 452
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0}, Lcom/powervision/sdk/Ap03Manager;->getPowerSDK()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    const/16 v1, -0x5a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/powervision/natives/PVSDK_AP03_API;->setGimbalAngle(III)I

    return-void
.end method

.method public setGimbalMiddle()V
    .locals 3

    .line 445
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0}, Lcom/powervision/sdk/Ap03Manager;->getPowerSDK()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    const/16 v1, -0xa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/powervision/natives/PVSDK_AP03_API;->setGimbalAngle(III)I

    return-void
.end method

.method public setGimbalPitchPalstance(I)V
    .locals 2

    .line 392
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0}, Lcom/powervision/sdk/Ap03Manager;->getPowerSDK()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setGimbalPalstance(III)I

    .line 394
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->logUtilInstance:Lcom/powervision/base/utils/FlightLogUtil;

    if-eqz v0, :cond_0

    int-to-float p1, p1

    .line 395
    invoke-virtual {v0, p1}, Lcom/powervision/base/utils/FlightLogUtil;->setGimbalPitchAngle(F)V

    :cond_0
    return-void
.end method

.method public setLandProtect(I)V
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0}, Lcom/powervision/sdk/Ap03Manager;->getPowerSDK()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/natives/PVSDK_AP03_API;->landProtectUserFeedback(I)I

    return-void
.end method

.method public setLandProtectStatus(I)V
    .locals 1

    .line 1229
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 1230
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {v0, p1}, Lcom/powervision/aircraft/ui/view/IAircraftView;->upLandProtectStatus(I)V

    :cond_0
    return-void
.end method

.method public setLat(D)V
    .locals 0

    .line 135
    iput-wide p1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->lat:D

    return-void
.end method

.method public setListener()V
    .locals 2

    .line 155
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartFollowManager;->getInstance()Lcom/powervision/aircraft/smart/SmartFollowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/aircraft/smart/SmartFollowManager;->initSDK()V

    .line 156
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    .line 157
    new-instance v0, Lcom/powervision/aircraft/lapse/data/NedPositionInfo;

    invoke-direct {v0}, Lcom/powervision/aircraft/lapse/data/NedPositionInfo;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->nedPositionInfo:Lcom/powervision/aircraft/lapse/data/NedPositionInfo;

    .line 158
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    .line 159
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->setCurrentModeListener(Lcom/powervision/sdk/callback/Ap03CurrentModeListener;)V

    .line 160
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->setSatellitesListener(Lcom/powervision/sdk/callback/Ap03SatellitesListener;)V

    .line 161
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->setBatteryStatusListener(Lcom/powervision/sdk/callback/Ap03BatteryStatusListener;)V

    .line 162
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->addLocalPositionNedListener(Lcom/powervision/sdk/callback/Ap03LocalPositionNedListener;)V

    .line 163
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->setFollowStateListener(Lcom/powervision/sdk/callback/Ap03OnStartFolllowAndSetFollowModeListener;)V

    .line 164
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->setVisionDetectListener(Lcom/powervision/sdk/callback/Ap03VisionDetectListener;)V

    .line 165
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->setVisionTrackLIstener(Lcom/powervision/sdk/callback/Ap03VisionTrackListener;)V

    .line 166
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->setFollowCurrentListener(Lcom/powervision/sdk/callback/Ap03OnFollowCurrentListener;)V

    .line 167
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->setPauseFollowStateListener(Lcom/powervision/sdk/callback/Ap03OnPauseFollowAndSetFollowModeListener;)V

    .line 168
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->setOnAttitudeListener(Lcom/powervision/sdk/callback/Ap03OnAttitudeListener;)V

    .line 169
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->setGimbalAttitudeListener(Lcom/powervision/sdk/callback/Ap03GimbalAttitudeListener;)V

    .line 170
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->addAp03SysWarnListener(Lcom/powervision/sdk/callback/Ap03SysWarnListener;)V

    .line 171
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->setAp03BarrierListener(Lcom/powervision/sdk/callback/Ap03BarrierListener;)V

    .line 172
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->addAp03RemoteElectricListener(Lcom/powervision/sdk/callback/Ap03RemoteElectricListener;)V

    .line 173
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->setAp03SendFileStatusListener(Lcom/powervision/sdk/callback/Ap03SendFileStatusListener;)V

    .line 174
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->setAp03NoFlyOpreateResultListener(Lcom/powervision/sdk/callback/Ap03NoFlyOpreateResultListener;)V

    .line 175
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->setAp03RemoteKeyListener(Lcom/powervision/sdk/callback/Ap03RemoteKeyListener;)V

    .line 176
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->addAp03NotifyOnGimbalParameterResultIntListener(Lcom/powervision/sdk/callback/Ap03NotifyOnGimbalParameterResultIntListener;)V

    .line 178
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->addAp03NotifyOnSetWaterproofCaseStatusResultListener(Lcom/powervision/sdk/callback/Ap03NotifyOnSetWaterproofCaseStatusResultListener;)V

    .line 179
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->addAp03NotifyOnSetRainproofModeResultListener(Lcom/powervision/sdk/callback/Ap03OnSetRainproofModeResultListener;)V

    .line 181
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraEnableHistogramListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyEnableHistogramListener;)V

    .line 182
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraHistogramDataListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyHistogramDataListener;)V

    .line 183
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraSetCurrentStorageDeviceListener(Lcom/powervision/camera/camera/CameraListener$CameraSetCurrentStorageDeviceListener;)V

    .line 185
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraOnSDFullListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnSDFullListener;)V

    .line 186
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraOnInternalStorageFullListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnInternalStorageFullListener;)V

    .line 188
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->addRoboticArmListener(Lcom/powervision/sdk/callback/Ap03RoboticArmListener;)V

    .line 190
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->setAp03RtlorTaktoffStatusListener(Lcom/powervision/sdk/callback/Ap03RtlorTaktoffStatusListener;)V

    .line 191
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->setAp03LandProtectListener(Lcom/powervision/sdk/callback/Ap03LandProtectListener;)V

    .line 193
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraAEBMultiplePhotoStateListener(Lcom/powervision/camera/camera/CameraListener$CameraAEBMultiplePhotoStateListener;)V

    .line 194
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraHDRMultiplePhotoStateListener(Lcom/powervision/camera/camera/CameraListener$CameraHDRMultiplePhotoStateListener;)V

    .line 195
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraOnRecordDurationListener(Lcom/powervision/camera/camera/CameraListener$CameraOnRecordDurationListener;)V

    .line 196
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->addAp03NotifyOnGetRemainingRtlTimeResultListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetRemainingRtlTimeResultListener;)V

    .line 198
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->addAp03AirSetGetDl01OperationResultListener(Lcom/powervision/sdk/callback/Ap03AirSetGetDl01OperationResultListener;)V

    .line 200
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->addAp03ReturnPointListener(Lcom/powervision/sdk/callback/Ap03ReturnPointListener;)V

    .line 202
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->setNotifyOnAllowNoFlyZoneArmResultListener(Lcom/powervision/sdk/callback/Ap03NotifyOnAllowNoFlyZoneArmResultListener;)V

    .line 204
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    iget-object v1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->ap03NotifyOnGetTakeoffPointResultListener:Lcom/powervision/sdk/callback/Ap03NotifyOnGetTakeoffPointResultListener;

    invoke-virtual {v0, v1}, Lcom/powervision/sdk/Ap03Manager;->setTakeoffPointResultListener(Lcom/powervision/sdk/callback/Ap03NotifyOnGetTakeoffPointResultListener;)V

    .line 206
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->setUpAndDownIntParamListener(Lcom/powervision/sdk/callback/Ap03SetGetParamResultListener;)V

    .line 207
    invoke-static {}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->get()Lcom/powervision/natives/connect/ConnectRemoteSDK;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->addAp03RemoteModeResultListener(Lcom/powervision/sdk/callback/Ap03RemoteModeResultListener;)V

    .line 209
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->cameraNotifyOnMultiplePhotoListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnMultiplePhotoListener;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->addCameraNotifyOnMultiplePhotoListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnMultiplePhotoListener;)V

    .line 211
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mCameraOnCameraSensorHighTemperatureListener:Lcom/powervision/camera/camera/CameraListener$CameraOnCameraSensorHighTemperatureListener;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->addCameraOnCameraSensorHighTemperatureListener(Lcom/powervision/camera/camera/CameraListener$CameraOnCameraSensorHighTemperatureListener;)V

    .line 213
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_AP03_API;->addAp03NotifyOnSetGetDl01OperationResultListener(Lcom/powervision/natives/PowerSDKCallback$NotifyOnSetGetDl01OperationResultListener;)V

    .line 215
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->addAp03OnSetTimeLapsePhotoMaxSpeedResultListener(Lcom/powervision/sdk/callback/Ap03OnSetTimeLapsePhotoMaxSpeedResultListener;)V

    .line 218
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->cameraNotifyOnStopLapsePhoto:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnStopLapsePhoto;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->addCameraNotifyOnStopLapsePhotoListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnStopLapsePhoto;)V

    .line 219
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->cameraNotifyOnLapsePhotoNumber:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnLapsePhotoNumber;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->addCameraNotifyOnLapsePhotoNumber(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnLapsePhotoNumber;)V

    .line 220
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->cameraNotifyOnLapseFileDuration:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnLapseFileDuration;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->addCameraNotifyOnLapseFileDuration(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnLapseFileDuration;)V

    .line 221
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    iget-object v1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->cameraNotifyOnCreateLapseFiile:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnCreateLapseFiile;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->addCameraNotifyOnCreateLapseFiile(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnCreateLapseFiile;)V

    .line 222
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartFollowManager;->getInstance()Lcom/powervision/aircraft/smart/SmartFollowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->onSetFollowParmasListener:Lcom/powervision/aircraft/smart/SmartFollowManager$OnSetFollowParmasListener;

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/smart/SmartFollowManager;->setOnSetFollowParmasListener(Lcom/powervision/aircraft/smart/SmartFollowManager$OnSetFollowParmasListener;)V

    .line 224
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnSetRefuseLowPowerReturnResultListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetRefuseLowPowerReturnResultListener;)V

    .line 227
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->logUtilInstance:Lcom/powervision/base/utils/FlightLogUtil;

    if-nez v0, :cond_0

    .line 228
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->logUtilInstance:Lcom/powervision/base/utils/FlightLogUtil;

    .line 231
    :cond_0
    invoke-static {}, Lcom/powervision/livestreaming/LiveStreaming;->getInstance()Lcom/powervision/livestreaming/LiveStreaming;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/livestreaming/LiveStreaming;->setLiveStreamingListener(Lcom/powervision/livestreaming/core/listener/RESConnectionListener;)V

    return-void
.end method

.method public setLon(D)V
    .locals 0

    .line 143
    iput-wide p1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->lon:D

    return-void
.end method

.method public setLowPowerReturn()V
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0}, Lcom/powervision/sdk/Ap03Manager;->getPowerSDK()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->nowLowPowerReturn()I

    return-void
.end method

.method public setMannalMode()V
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0}, Lcom/powervision/sdk/Ap03Manager;->getPowerSDK()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setFlightingMode(II)I

    return-void
.end method

.method public setNoflyZoneOperateStatusFactoryFailed()V
    .locals 1

    const-string v0, "----------setNoflyZoneOperateStatusFactoryFailed-------------"

    .line 1095
    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void
.end method

.method public setNoflyZoneOperateStatusFactoryProgress(I)V
    .locals 2

    .line 1107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----------setNoflyZoneOperateStatusFactoryProgress-------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void
.end method

.method public setNoflyZoneOperateStatusFactorySqliteFailed()V
    .locals 1

    const-string v0, "----------setNoflyZoneOperateStatusFactorySqliteFailed-------------"

    .line 1184
    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void
.end method

.method public setNoflyZoneOperateStatusFactorySqliteProgress(I)V
    .locals 2

    .line 1196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----------setNoflyZoneOperateStatusFactorySqliteProgress-------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void
.end method

.method public setNoflyZoneOperateStatusFactorySqliteSuccess()V
    .locals 1

    const-string v0, "----------setNoflyZoneOperateStatusFactorySqliteSuccess-------------"

    .line 1202
    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void
.end method

.method public setNoflyZoneOperateStatusFactorySqliteTimeout()V
    .locals 1

    const-string v0, "----------setNoflyZoneOperateStatusFactorySqliteTimeout-------------"

    .line 1190
    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void
.end method

.method public setNoflyZoneOperateStatusFactorySuccess()V
    .locals 1

    const-string v0, "----------setNoflyZoneOperateStatusFactorySuccess-------------"

    .line 1113
    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void
.end method

.method public setNoflyZoneOperateStatusFactoryTimeout()V
    .locals 1

    const-string v0, "----------setNoflyZoneOperateStatusFactoryTimeout-------------"

    .line 1101
    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void
.end method

.method public setNoflyZoneOperateStatusRealtimeFailed()V
    .locals 1

    const-string v0, "----------setNoflyZoneOperateStatusRealtimeFailed-------------"

    .line 1071
    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void
.end method

.method public setNoflyZoneOperateStatusRealtimeProgress(I)V
    .locals 2

    .line 1083
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----------setNoflyZoneOperateStatusRealtimeProgress-------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void
.end method

.method public setNoflyZoneOperateStatusRealtimeSuccess()V
    .locals 1

    const-string v0, "----------setNoflyZoneOperateStatusRealtimeSuccess-------------"

    .line 1089
    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void
.end method

.method public setNoflyZoneOperateStatusRealtimeTimeout()V
    .locals 1

    const-string v0, "----------setNoflyZoneOperateStatusRealtimeTimeout-------------"

    .line 1077
    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void
.end method

.method public setNoflyZoneOperateStatusVersionFailed()V
    .locals 1

    const-string v0, "----------setNoflyZoneOperateStatusVersionFailed-------------"

    .line 1120
    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void
.end method

.method public setNoflyZoneOperateStatusVersionSuccess(Ljava/lang/String;)V
    .locals 2

    .line 1154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----------setNoflyZoneOperateStatusVersionSuccess------------- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 1156
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1157
    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->setVersion(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setNoflyZoneOperateStatusVersionTimeout()V
    .locals 1

    const-string v0, "----------setNoflyZoneOperateStatusVersionTimeout-------------"

    .line 1148
    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void
.end method

.method public setNoflyzoneStatusCheckMd5Failed()V
    .locals 1

    const-string v0, "----------setNoflyzoneStatusCheckMd5Failed-------------"

    .line 975
    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 976
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 979
    :cond_0
    iget v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->type:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 980
    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->setFlyZoneOperate(I)V

    :cond_1
    return-void
.end method

.method public setNoflyzoneStatusCheckMd5Success()V
    .locals 4

    const-string v0, "----------setNoflyzoneStatusCheckMd5Success-------------"

    .line 957
    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 958
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 961
    :cond_0
    iget v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->type:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 962
    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->setFlyZoneOperate(I)V

    .line 963
    invoke-virtual {p0}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->getLat()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->getLon()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->getNoFlyZone(DD)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 965
    invoke-virtual {p0, v1}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->setFlyZoneOperate(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setNoflyzoneStatusSendDataFailed(I)V
    .locals 2

    .line 947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----------setNoflyzoneStatusSendDataFailed-------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void
.end method

.method public setNoflyzoneStatusSendDataSuccess()V
    .locals 1

    const-string v0, "----------setNoflyzoneStatusSendDataSuccess-------------"

    .line 942
    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void
.end method

.method public setNoflyzoneStatusSendingData(I)V
    .locals 2

    .line 952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----------setNoflyzoneStatusSendingData-------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void
.end method

.method public setPhotographyMode()V
    .locals 3

    .line 358
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0}, Lcom/powervision/sdk/Ap03Manager;->getPowerSDK()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/powervision/natives/PVSDK_AP03_API;->setFlightingMode(II)I

    return-void
.end method

.method public setPointSurrondMode()V
    .locals 3

    .line 315
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0}, Lcom/powervision/sdk/Ap03Manager;->getPowerSDK()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/powervision/natives/PVSDK_AP03_API;->setFlightingMode(II)I

    return-void
.end method

.method public setPosctlMode()V
    .locals 3

    .line 329
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0}, Lcom/powervision/sdk/Ap03Manager;->getPowerSDK()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/powervision/natives/PVSDK_AP03_API;->setFlightingMode(II)I

    return-void
.end method

.method public setRainproofMode(I)V
    .locals 1

    .line 552
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0}, Lcom/powervision/sdk/Ap03Manager;->getPowerSDK()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/natives/PVSDK_AP03_API;->setRainproofMode(I)I

    return-void
.end method

.method public setRefuseLowPowerReturn()V
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0}, Lcom/powervision/sdk/Ap03Manager;->getPowerSDK()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->refuseLowPowerReturn()I

    return-void
.end method

.method public setRemoteControlerResultListener()V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->setAp03OnRemoteControlerResultListener(Lcom/powervision/sdk/callback/Ap03OnRemoteControlerResultListener;)V

    return-void
.end method

.method public setRemoteCustomKey(I)V
    .locals 1

    .line 1000
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {v0, p1}, Lcom/powervision/aircraft/ui/view/IAircraftView;->customKeyState(I)V

    :cond_0
    return-void
.end method

.method public setRemoteRecord()V
    .locals 1

    .line 993
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 994
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {v0}, Lcom/powervision/aircraft/ui/view/IAircraftView;->onSetRemoteRecord()V

    :cond_0
    return-void
.end method

.method public setRemoteTakePic()V
    .locals 1

    .line 986
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 987
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {v0}, Lcom/powervision/aircraft/ui/view/IAircraftView;->onSetRemoteTakePic()V

    :cond_0
    return-void
.end method

.method public setReturnPoint(IFFF)V
    .locals 1

    .line 566
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0}, Lcom/powervision/sdk/Ap03Manager;->getPowerSDK()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/powervision/natives/PVSDK_AP03_API;->setReturnPoint(IFFF)I

    return-void
.end method

.method public setRollValue(I)V
    .locals 2

    .line 420
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0}, Lcom/powervision/sdk/Ap03Manager;->getPowerSDK()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    const-string v1, "PV_GIM_ROLL_ADJ"

    invoke-virtual {v0, v1, p1}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadGimbalIntParameter(Ljava/lang/String;I)I

    return-void
.end method

.method public setRtl()V
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0}, Lcom/powervision/sdk/Ap03Manager;->getPowerSDK()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->rtl()I

    return-void
.end method

.method public setStartWater(ZI)V
    .locals 2

    .line 1569
    iput-boolean p1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->startWater:Z

    .line 1570
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartFollowManager;->getInstance()Lcom/powervision/aircraft/smart/SmartFollowManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/aircraft/smart/SmartFollowManager;->initSDK()V

    .line 1571
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartFollowManager;->getInstance()Lcom/powervision/aircraft/smart/SmartFollowManager;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x4

    invoke-virtual {p1, p2, v0}, Lcom/powervision/aircraft/smart/SmartFollowManager;->setFollowParams(I[I)V

    return-void
.end method

.method public setStopGimbalPitch()V
    .locals 2

    .line 400
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0}, Lcom/powervision/sdk/Ap03Manager;->getPowerSDK()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setGimbalPalstance(III)I

    return-void
.end method

.method public setTimeLapsePhotoMaxSpeed(F)V
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0}, Lcom/powervision/sdk/Ap03Manager;->getPowerSDK()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/natives/PVSDK_AP03_API;->setTimeLapsePhotoMaxSpeed(F)I

    return-void
.end method

.method public setTripleMode()V
    .locals 3

    .line 337
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0}, Lcom/powervision/sdk/Ap03Manager;->getPowerSDK()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/powervision/natives/PVSDK_AP03_API;->setFlightingMode(II)I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 937
    iput p1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->type:I

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->version:Ljava/lang/String;

    return-void
.end method

.method public setVisionTrack(FFFF)V
    .locals 10

    .line 387
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0}, Lcom/powervision/sdk/Ap03Manager;->getPowerSDK()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, -0x2

    const-wide/16 v8, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v9}, Lcom/powervision/natives/PVSDK_AP03_API;->setVisionTrackFrame(FFFFFIJ)I

    return-void
.end method

.method public setWaterMode(I)V
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0}, Lcom/powervision/sdk/Ap03Manager;->getPowerSDK()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/natives/PVSDK_AP03_API;->setWaterproofCaseStatus(I)I

    return-void
.end method

.method public setYawValue(I)V
    .locals 2

    .line 416
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0}, Lcom/powervision/sdk/Ap03Manager;->getPowerSDK()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    const-string v1, "PV_GIM_YAW_ADJ"

    invoke-virtual {v0, v1, p1}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadGimbalIntParameter(Ljava/lang/String;I)I

    return-void
.end method

.method public takeOff()V
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mAp03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0}, Lcom/powervision/sdk/Ap03Manager;->getPowerSDK()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->takeoff()I

    return-void
.end method

.method public updateLandProtectStatus()V
    .locals 1

    .line 1243
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mRxManager:Lcom/powervision/base/rxmanager/RxManager;

    if-eqz v0, :cond_0

    .line 1244
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {v0}, Lcom/powervision/aircraft/ui/view/IAircraftView;->updateLandProtectStatus()V

    :cond_0
    return-void
.end method

.method public waterProofcaseStatusResult(I)V
    .locals 1

    .line 1250
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 1251
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/aircraft/ui/view/IAircraftView;

    invoke-interface {v0, p1}, Lcom/powervision/aircraft/ui/view/IAircraftView;->updateWaterMode(I)V

    :cond_0
    return-void
.end method
