.class public Lcom/powervision/sdk/Ap03Manager;
.super Ljava/lang/Object;
.source "Ap03Manager.java"


# static fields
.field private static ap03Manager:Lcom/powervision/sdk/Ap03Manager;

.field private static isLeftLoad:Z

.field private static isRightLoad:Z


# instance fields
.field private _ap03NotifyOnGimbalParameterResultIntListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalParameterResultIntListener;

.field private ap03BarrierListener:Lcom/powervision/sdk/callback/Ap03BarrierListener;

.field private ap03FollowListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/sdk/callback/Ap03FollowListener;",
            ">;"
        }
    .end annotation
.end field

.field private ap03GimbalAttitudeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/sdk/callback/Ap03GimbalAttitudeListener;",
            ">;"
        }
    .end annotation
.end field

.field private ap03LandProtectListener:Lcom/powervision/sdk/callback/Ap03LandProtectListener;

.field private ap03LocalPositionNedListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/sdk/callback/Ap03LocalPositionNedListener;",
            ">;"
        }
    .end annotation
.end field

.field private ap03LocationListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/sdk/callback/Ap03LocationListener;",
            ">;"
        }
    .end annotation
.end field

.field private ap03NoFlyOpreateResultListener:Lcom/powervision/sdk/callback/Ap03NoFlyOpreateResultListener;

.field private ap03NotifyOnAllowNoFlyZoneArmResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnAllowNoFlyZoneArmResultListener;

.field private ap03NotifyOnAttitudeListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnAttitudeListener;

.field private ap03NotifyOnBatteryStatusListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryStatusListener;

.field private ap03NotifyOnCurrentModeListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnCurrentModeListener;

.field private ap03NotifyOnCurrentSysStatusListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnCurrentSysStatusListener;

.field private ap03NotifyOnFollowCurrentListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnFollowCurrentListener;

.field private ap03NotifyOnFrontDistanceListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnFrontDistanceListener;

.field private ap03NotifyOnGetHomePositionResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetHomePositionResultListener;

.field private ap03NotifyOnGetTakeoffPointResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetTakeoffPointResultListener;

.field private ap03NotifyOnGimbalParameterResultIntListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/sdk/callback/Ap03NotifyOnGimbalParameterResultIntListener;",
            ">;"
        }
    .end annotation
.end field

.field private ap03NotifyOnGimbalStatusListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalStatusListener;

.field private ap03NotifyOnGpsRawIntListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGpsRawIntListener;

.field private ap03NotifyOnLandListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnLandListener;

.field private ap03NotifyOnLandProtectStatusListener:Lcom/powervision/natives/callback/LandProtectCallback$Ap03NotifyOnLandProtectStatusListener;

.field private ap03NotifyOnLandProtectUserFeedbackResultListener:Lcom/powervision/natives/callback/LandProtectCallback$Ap03NotifyOnLandProtectUserFeedbackResultListener;

.field private ap03NotifyOnLocalPositionNedListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnLocalPositionNedListener;

.field private ap03NotifyOnNoFlyZoneOperateResultListener:Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnNoFlyZoneOperateResultListener;

.field private ap03NotifyOnQueryActivationStatusListener:Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnQueryActivationStatusListener;

.field private ap03NotifyOnQueryActivationStatusListenersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnQueryActivationStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private ap03NotifyOnRTLListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnRTLListener;

.field private ap03NotifyOnReceiveTimeLapsePhotoStatusListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnReceiveTimeLapsePhotoStatusListener;

.field private ap03NotifyOnRemoteElectricResultListener:Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteElectricResultListener;

.field private ap03NotifyOnRemoteKeyResultListener:Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteKeyResultListener;

.field private ap03NotifyOnSendNoFlyZoneFileStatusListener:Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnSendNoFlyZoneFileStatusListener;

.field private ap03NotifyOnSetFollowParamListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetFollowParamListener;

.field private ap03NotifyOnSetRainproofModeResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetRainproofModeResultListener;

.field private ap03NotifyOnSetRainproofModeResultListenersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/sdk/callback/Ap03OnSetRainproofModeResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private ap03NotifyOnSetTimeLapsePhotoMaxSpeedResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetTimeLapsePhotoMaxSpeedResultListener;

.field private ap03NotifyOnSetWaterproofCaseStatusResultListenersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/sdk/callback/Ap03NotifyOnSetWaterproofCaseStatusResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private ap03NotifyOnSmartFunctionCurrentListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSmartFunctionCurrentListener;

.field private ap03NotifyOnStartFollowAndSetFollowModeListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnStartFollowAndSetFollowModeListener;

.field private ap03NotifyOnStatusTextNotifyListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnStatusTextNotifyListener;

.field private ap03NotifyOnSubModeExecuteStatusListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSubModeExecuteStatusListener;

.field private ap03NotifyOnSubModeTrajDataResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSubModeTrajDataResultListener;

.field private ap03NotifyOnTakeoffListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnTakeoffListener;

.field private ap03NotifyOnVisionDetectListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnVisionDetectListener;

.field private ap03NotifyOnVisionTrackListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnVisionTrackListener;

.field private ap03NotifyonParameterResultFloatListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyonParameterResultFloatListener;

.field private ap03NotifyonParameterResultIntListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyonParameterResultIntListener;

.field private ap03NotifyonParameterResultLongListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyonParameterResultLongListener;

.field private ap03NotifyonPauseFollowAndSetFollowModeListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyonPauseFollowAndSetFollowModeListener;

.field private ap03OnAttitudeListener:Lcom/powervision/sdk/callback/Ap03OnAttitudeListener;

.field private ap03OnFollowCurrentListener:Lcom/powervision/sdk/callback/Ap03OnFollowCurrentListener;

.field private ap03OnPauseFollowAndSetFollowModeListener:Lcom/powervision/sdk/callback/Ap03OnPauseFollowAndSetFollowModeListener;

.field private ap03OnSetTimeLapsePhotoMaxSpeedResultListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/sdk/callback/Ap03OnSetTimeLapsePhotoMaxSpeedResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private ap03OnStartFolllowAndSetFollowModeListener:Lcom/powervision/sdk/callback/Ap03OnStartFolllowAndSetFollowModeListener;

.field private ap03OnSubModeExecuteStatusListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/sdk/callback/Ap03OnSubModeExecuteStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private ap03OnSubModeTrajDataResultListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/sdk/callback/Ap03OnSubModeTrajDataResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private ap03RemoteKeyListener:Lcom/powervision/sdk/callback/Ap03RemoteKeyListener;

.field private ap03ReturnPointListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/sdk/callback/Ap03ReturnPointListener;",
            ">;"
        }
    .end annotation
.end field

.field private ap03RtlorTaktoffStatusListener:Lcom/powervision/sdk/callback/Ap03RtlorTaktoffStatusListener;

.field private ap03SatellitesListener:Lcom/powervision/sdk/callback/Ap03SatellitesListener;

.field private ap03SendFileStatusListener:Lcom/powervision/sdk/callback/Ap03SendFileStatusListener;

.field private ap03SetGetParamResultIntListenersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/sdk/callback/Ap03SetGetParamResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private ap03SetGetParamResultListenersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/sdk/callback/Ap03SetGetParamResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private ap03SetGetParamResultLongListenersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/sdk/callback/Ap03SetGetParamResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private ap03SmartFunctionCurrentListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/sdk/callback/Ap03SmartFunctionCurrentListener;",
            ">;"
        }
    .end annotation
.end field

.field private ap03VisionDetectListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/sdk/callback/Ap03VisionDetectListener;",
            ">;"
        }
    .end annotation
.end field

.field private ap03VisionTrackListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/sdk/callback/Ap03VisionTrackListener;",
            ">;"
        }
    .end annotation
.end field

.field public barrierStatus:I

.field public currentMode:Ljava/lang/String;

.field public currentSubMode:Ljava/lang/String;

.field public isArm:Z

.field private isConnectDevice:Z

.field isLandingWaterMode:Z

.field private isRemoteConnect:Z

.field isWaterproofMode:Z

.field mAp03AirSetGetDl01OperationResultListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/sdk/callback/Ap03AirSetGetDl01OperationResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private mAp03BatteryStatusListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/sdk/callback/Ap03BatteryStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private mAp03CurrentModeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/sdk/callback/Ap03CurrentModeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mAp03NotifyOnROISetParamResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnROISetParamResultListener;

.field mAp03NotifyOnRemoteManualControlResultListener:Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteManualControlResultListener;

.field private mAp03OnRemoteControlerResultListener:Lcom/powervision/sdk/callback/Ap03OnRemoteControlerResultListener;

.field private mAp03RemoteElectricListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/sdk/callback/Ap03RemoteElectricListener;",
            ">;"
        }
    .end annotation
.end field

.field private mAp03RoboticArmListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/sdk/callback/Ap03RoboticArmListener;",
            ">;"
        }
    .end annotation
.end field

.field private mAp03SurroundListener:Lcom/powervision/sdk/callback/Ap03SurroundListener;

.field private mAp03SysWarnListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/sdk/callback/Ap03SysWarnListener;",
            ">;"
        }
    .end annotation
.end field

.field private mArmStatus:I

.field mNotifyOnAirSetGetDl01OperationResultListener:Lcom/powervision/natives/PowerSDKCallback$NotifyOnAirSetGetDl01OperationResultListener;

.field private mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

.field private notifyOnAllowNoFlyZoneArmResultListener:Lcom/powervision/sdk/callback/Ap03NotifyOnAllowNoFlyZoneArmResultListener;

.field private notifyOnGetRemainingRtlTimeResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetRemainingRtlTimeResultListener;

.field private notifyOnReceiveTimeLapsePhotoStatusListener:Lcom/powervision/sdk/callback/Ap03NotifyOnReceiveTimeLapsePhotoStatusListener;

.field private notifyOnSetWaterproofCaseStatusResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetWaterproofCaseStatusResultListener;

.field private remainingRtlTimeResultListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetRemainingRtlTimeResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private subAttributesStatus:Lcom/powervision/natives/callback/SystemStatusCallback$SubAttributesStatus;

.field private takeoffPointResultListener:Lcom/powervision/sdk/callback/Ap03NotifyOnGetTakeoffPointResultListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/powervision/sdk/Ap03Manager;->isRemoteConnect:Z

    .line 116
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->mAp03CurrentModeListeners:Ljava/util/List;

    .line 118
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->remainingRtlTimeResultListeners:Ljava/util/List;

    .line 147
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->mAp03BatteryStatusListeners:Ljava/util/List;

    .line 162
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03LocalPositionNedListenerList:Ljava/util/List;

    .line 176
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03LocationListenerList:Ljava/util/List;

    .line 193
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03VisionDetectListenerList:Ljava/util/List;

    .line 210
    new-instance v1, Lcom/powervision/sdk/Ap03Manager$1;

    invoke-direct {v1, p0}, Lcom/powervision/sdk/Ap03Manager$1;-><init>(Lcom/powervision/sdk/Ap03Manager;)V

    iput-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnVisionDetectListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnVisionDetectListener;

    .line 223
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03VisionTrackListenerList:Ljava/util/List;

    .line 240
    new-instance v1, Lcom/powervision/sdk/Ap03Manager$2;

    invoke-direct {v1, p0}, Lcom/powervision/sdk/Ap03Manager$2;-><init>(Lcom/powervision/sdk/Ap03Manager;)V

    iput-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnVisionTrackListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnVisionTrackListener;

    .line 269
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03GimbalAttitudeListeners:Ljava/util/List;

    .line 280
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->mAp03SysWarnListener:Ljava/util/List;

    .line 303
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->mAp03RemoteElectricListener:Ljava/util/List;

    const-string v1, ""

    .line 410
    iput-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->currentMode:Ljava/lang/String;

    iput-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->currentSubMode:Ljava/lang/String;

    .line 415
    new-instance v1, Lcom/powervision/sdk/Ap03Manager$3;

    invoke-direct {v1, p0}, Lcom/powervision/sdk/Ap03Manager$3;-><init>(Lcom/powervision/sdk/Ap03Manager;)V

    iput-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnCurrentModeListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnCurrentModeListener;

    .line 436
    new-instance v1, Lcom/powervision/sdk/Ap03Manager$4;

    invoke-direct {v1, p0}, Lcom/powervision/sdk/Ap03Manager$4;-><init>(Lcom/powervision/sdk/Ap03Manager;)V

    iput-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnGpsRawIntListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGpsRawIntListener;

    .line 488
    new-instance v1, Lcom/powervision/sdk/Ap03Manager$5;

    invoke-direct {v1, p0}, Lcom/powervision/sdk/Ap03Manager$5;-><init>(Lcom/powervision/sdk/Ap03Manager;)V

    iput-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnBatteryStatusListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryStatusListener;

    .line 520
    new-instance v1, Lcom/powervision/sdk/Ap03Manager$6;

    invoke-direct {v1, p0}, Lcom/powervision/sdk/Ap03Manager$6;-><init>(Lcom/powervision/sdk/Ap03Manager;)V

    iput-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnLocalPositionNedListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnLocalPositionNedListener;

    .line 545
    new-instance v1, Lcom/powervision/sdk/Ap03Manager$7;

    invoke-direct {v1, p0}, Lcom/powervision/sdk/Ap03Manager$7;-><init>(Lcom/powervision/sdk/Ap03Manager;)V

    iput-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnStartFollowAndSetFollowModeListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnStartFollowAndSetFollowModeListener;

    .line 555
    new-instance v1, Lcom/powervision/sdk/Ap03Manager$8;

    invoke-direct {v1, p0}, Lcom/powervision/sdk/Ap03Manager$8;-><init>(Lcom/powervision/sdk/Ap03Manager;)V

    iput-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyonPauseFollowAndSetFollowModeListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyonPauseFollowAndSetFollowModeListener;

    .line 578
    new-instance v1, Lcom/powervision/sdk/Ap03Manager$9;

    invoke-direct {v1, p0}, Lcom/powervision/sdk/Ap03Manager$9;-><init>(Lcom/powervision/sdk/Ap03Manager;)V

    iput-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->mAp03NotifyOnROISetParamResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnROISetParamResultListener;

    .line 599
    new-instance v1, Lcom/powervision/sdk/Ap03Manager$10;

    invoke-direct {v1, p0}, Lcom/powervision/sdk/Ap03Manager$10;-><init>(Lcom/powervision/sdk/Ap03Manager;)V

    iput-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnSetFollowParamListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetFollowParamListener;

    .line 615
    new-instance v1, Lcom/powervision/sdk/Ap03Manager$11;

    invoke-direct {v1, p0}, Lcom/powervision/sdk/Ap03Manager$11;-><init>(Lcom/powervision/sdk/Ap03Manager;)V

    iput-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnFollowCurrentListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnFollowCurrentListener;

    .line 625
    new-instance v1, Lcom/powervision/sdk/Ap03Manager$12;

    invoke-direct {v1, p0}, Lcom/powervision/sdk/Ap03Manager$12;-><init>(Lcom/powervision/sdk/Ap03Manager;)V

    iput-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnAttitudeListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnAttitudeListener;

    .line 637
    new-instance v1, Lcom/powervision/sdk/Ap03Manager$13;

    invoke-direct {v1, p0}, Lcom/powervision/sdk/Ap03Manager$13;-><init>(Lcom/powervision/sdk/Ap03Manager;)V

    iput-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnGimbalStatusListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalStatusListener;

    .line 654
    new-instance v1, Lcom/powervision/sdk/Ap03Manager$14;

    invoke-direct {v1, p0}, Lcom/powervision/sdk/Ap03Manager$14;-><init>(Lcom/powervision/sdk/Ap03Manager;)V

    iput-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnCurrentSysStatusListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnCurrentSysStatusListener;

    .line 700
    new-instance v1, Lcom/powervision/sdk/Ap03Manager$15;

    invoke-direct {v1, p0}, Lcom/powervision/sdk/Ap03Manager$15;-><init>(Lcom/powervision/sdk/Ap03Manager;)V

    iput-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnFrontDistanceListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnFrontDistanceListener;

    .line 713
    new-instance v1, Lcom/powervision/sdk/Ap03Manager$16;

    invoke-direct {v1, p0}, Lcom/powervision/sdk/Ap03Manager$16;-><init>(Lcom/powervision/sdk/Ap03Manager;)V

    iput-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnRemoteElectricResultListener:Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteElectricResultListener;

    .line 727
    new-instance v1, Lcom/powervision/sdk/Ap03Manager$17;

    invoke-direct {v1, p0}, Lcom/powervision/sdk/Ap03Manager$17;-><init>(Lcom/powervision/sdk/Ap03Manager;)V

    iput-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnSendNoFlyZoneFileStatusListener:Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnSendNoFlyZoneFileStatusListener;

    .line 770
    new-instance v1, Lcom/powervision/sdk/Ap03Manager$18;

    invoke-direct {v1, p0}, Lcom/powervision/sdk/Ap03Manager$18;-><init>(Lcom/powervision/sdk/Ap03Manager;)V

    iput-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnNoFlyZoneOperateResultListener:Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnNoFlyZoneOperateResultListener;

    .line 879
    new-instance v1, Lcom/powervision/sdk/Ap03Manager$19;

    invoke-direct {v1, p0}, Lcom/powervision/sdk/Ap03Manager$19;-><init>(Lcom/powervision/sdk/Ap03Manager;)V

    iput-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnRemoteKeyResultListener:Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteKeyResultListener;

    .line 911
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnGimbalParameterResultIntListener:Ljava/util/List;

    .line 929
    new-instance v1, Lcom/powervision/sdk/Ap03Manager$20;

    invoke-direct {v1, p0}, Lcom/powervision/sdk/Ap03Manager$20;-><init>(Lcom/powervision/sdk/Ap03Manager;)V

    iput-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->_ap03NotifyOnGimbalParameterResultIntListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalParameterResultIntListener;

    .line 955
    iput v0, p0, Lcom/powervision/sdk/Ap03Manager;->mArmStatus:I

    .line 962
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mAp03RoboticArmListenerList:Ljava/util/List;

    .line 979
    new-instance v0, Lcom/powervision/sdk/Ap03Manager$21;

    invoke-direct {v0, p0}, Lcom/powervision/sdk/Ap03Manager$21;-><init>(Lcom/powervision/sdk/Ap03Manager;)V

    iput-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnSubModeExecuteStatusListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSubModeExecuteStatusListener;

    .line 990
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03OnSubModeExecuteStatusListenerList:Ljava/util/List;

    .line 1007
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03OnSubModeTrajDataResultListenerList:Ljava/util/List;

    .line 1009
    new-instance v0, Lcom/powervision/sdk/Ap03Manager$22;

    invoke-direct {v0, p0}, Lcom/powervision/sdk/Ap03Manager$22;-><init>(Lcom/powervision/sdk/Ap03Manager;)V

    iput-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnSubModeTrajDataResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSubModeTrajDataResultListener;

    .line 1033
    new-instance v0, Lcom/powervision/sdk/Ap03Manager$23;

    invoke-direct {v0, p0}, Lcom/powervision/sdk/Ap03Manager$23;-><init>(Lcom/powervision/sdk/Ap03Manager;)V

    iput-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyonParameterResultFloatListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyonParameterResultFloatListener;

    .line 1044
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03SetGetParamResultListenersList:Ljava/util/List;

    const/4 v0, -0x1

    .line 1058
    iput v0, p0, Lcom/powervision/sdk/Ap03Manager;->barrierStatus:I

    .line 1063
    new-instance v0, Lcom/powervision/sdk/Ap03Manager$24;

    invoke-direct {v0, p0}, Lcom/powervision/sdk/Ap03Manager$24;-><init>(Lcom/powervision/sdk/Ap03Manager;)V

    iput-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyonParameterResultIntListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyonParameterResultIntListener;

    .line 1077
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03SetGetParamResultIntListenersList:Ljava/util/List;

    .line 1095
    new-instance v0, Lcom/powervision/sdk/Ap03Manager$25;

    invoke-direct {v0, p0}, Lcom/powervision/sdk/Ap03Manager$25;-><init>(Lcom/powervision/sdk/Ap03Manager;)V

    iput-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyonParameterResultLongListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyonParameterResultLongListener;

    .line 1106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03SetGetParamResultLongListenersList:Ljava/util/List;

    .line 1123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnSetWaterproofCaseStatusResultListenersList:Ljava/util/List;

    .line 1137
    new-instance v0, Lcom/powervision/sdk/Ap03Manager$26;

    invoke-direct {v0, p0}, Lcom/powervision/sdk/Ap03Manager$26;-><init>(Lcom/powervision/sdk/Ap03Manager;)V

    iput-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->notifyOnSetWaterproofCaseStatusResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetWaterproofCaseStatusResultListener;

    .line 1150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnSetRainproofModeResultListenersList:Ljava/util/List;

    .line 1164
    new-instance v0, Lcom/powervision/sdk/Ap03Manager$27;

    invoke-direct {v0, p0}, Lcom/powervision/sdk/Ap03Manager$27;-><init>(Lcom/powervision/sdk/Ap03Manager;)V

    iput-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnSetRainproofModeResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetRainproofModeResultListener;

    .line 1177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03OnSetTimeLapsePhotoMaxSpeedResultListenerList:Ljava/util/List;

    .line 1191
    new-instance v0, Lcom/powervision/sdk/Ap03Manager$28;

    invoke-direct {v0, p0}, Lcom/powervision/sdk/Ap03Manager$28;-><init>(Lcom/powervision/sdk/Ap03Manager;)V

    iput-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnSetTimeLapsePhotoMaxSpeedResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetTimeLapsePhotoMaxSpeedResultListener;

    .line 1201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03FollowListenerList:Ljava/util/List;

    .line 1218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03SmartFunctionCurrentListenerList:Ljava/util/List;

    .line 1227
    new-instance v0, Lcom/powervision/sdk/Ap03Manager$29;

    invoke-direct {v0, p0}, Lcom/powervision/sdk/Ap03Manager$29;-><init>(Lcom/powervision/sdk/Ap03Manager;)V

    iput-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnSmartFunctionCurrentListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSmartFunctionCurrentListener;

    .line 1248
    new-instance v0, Lcom/powervision/sdk/Ap03Manager$30;

    invoke-direct {v0, p0}, Lcom/powervision/sdk/Ap03Manager$30;-><init>(Lcom/powervision/sdk/Ap03Manager;)V

    iput-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->subAttributesStatus:Lcom/powervision/natives/callback/SystemStatusCallback$SubAttributesStatus;

    .line 1293
    new-instance v0, Lcom/powervision/sdk/Ap03Manager$31;

    invoke-direct {v0, p0}, Lcom/powervision/sdk/Ap03Manager$31;-><init>(Lcom/powervision/sdk/Ap03Manager;)V

    iput-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnRTLListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnRTLListener;

    .line 1302
    new-instance v0, Lcom/powervision/sdk/Ap03Manager$32;

    invoke-direct {v0, p0}, Lcom/powervision/sdk/Ap03Manager$32;-><init>(Lcom/powervision/sdk/Ap03Manager;)V

    iput-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnLandListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnLandListener;

    .line 1311
    new-instance v0, Lcom/powervision/sdk/Ap03Manager$33;

    invoke-direct {v0, p0}, Lcom/powervision/sdk/Ap03Manager$33;-><init>(Lcom/powervision/sdk/Ap03Manager;)V

    iput-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnTakeoffListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnTakeoffListener;

    .line 1321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mAp03AirSetGetDl01OperationResultListenerList:Ljava/util/List;

    .line 1336
    new-instance v0, Lcom/powervision/sdk/Ap03Manager$34;

    invoke-direct {v0, p0}, Lcom/powervision/sdk/Ap03Manager$34;-><init>(Lcom/powervision/sdk/Ap03Manager;)V

    iput-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mNotifyOnAirSetGetDl01OperationResultListener:Lcom/powervision/natives/PowerSDKCallback$NotifyOnAirSetGetDl01OperationResultListener;

    .line 1361
    new-instance v0, Lcom/powervision/sdk/Ap03Manager$35;

    invoke-direct {v0, p0}, Lcom/powervision/sdk/Ap03Manager$35;-><init>(Lcom/powervision/sdk/Ap03Manager;)V

    iput-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnLandProtectStatusListener:Lcom/powervision/natives/callback/LandProtectCallback$Ap03NotifyOnLandProtectStatusListener;

    .line 1386
    new-instance v0, Lcom/powervision/sdk/Ap03Manager$36;

    invoke-direct {v0, p0}, Lcom/powervision/sdk/Ap03Manager$36;-><init>(Lcom/powervision/sdk/Ap03Manager;)V

    iput-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnLandProtectUserFeedbackResultListener:Lcom/powervision/natives/callback/LandProtectCallback$Ap03NotifyOnLandProtectUserFeedbackResultListener;

    .line 1419
    new-instance v0, Lcom/powervision/sdk/Ap03Manager$37;

    invoke-direct {v0, p0}, Lcom/powervision/sdk/Ap03Manager$37;-><init>(Lcom/powervision/sdk/Ap03Manager;)V

    iput-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mAp03NotifyOnRemoteManualControlResultListener:Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteManualControlResultListener;

    .line 1464
    new-instance v0, Lcom/powervision/sdk/Ap03Manager$38;

    invoke-direct {v0, p0}, Lcom/powervision/sdk/Ap03Manager$38;-><init>(Lcom/powervision/sdk/Ap03Manager;)V

    iput-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->notifyOnGetRemainingRtlTimeResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetRemainingRtlTimeResultListener;

    .line 1491
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03ReturnPointListenerList:Ljava/util/List;

    .line 1505
    new-instance v0, Lcom/powervision/sdk/Ap03Manager$39;

    invoke-direct {v0, p0}, Lcom/powervision/sdk/Ap03Manager$39;-><init>(Lcom/powervision/sdk/Ap03Manager;)V

    iput-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnGetHomePositionResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetHomePositionResultListener;

    .line 1526
    new-instance v0, Lcom/powervision/sdk/Ap03Manager$40;

    invoke-direct {v0, p0}, Lcom/powervision/sdk/Ap03Manager$40;-><init>(Lcom/powervision/sdk/Ap03Manager;)V

    iput-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnStatusTextNotifyListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnStatusTextNotifyListener;

    .line 1543
    new-instance v0, Lcom/powervision/sdk/Ap03Manager$41;

    invoke-direct {v0, p0}, Lcom/powervision/sdk/Ap03Manager$41;-><init>(Lcom/powervision/sdk/Ap03Manager;)V

    iput-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnAllowNoFlyZoneArmResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnAllowNoFlyZoneArmResultListener;

    .line 1562
    new-instance v0, Lcom/powervision/sdk/Ap03Manager$42;

    invoke-direct {v0, p0}, Lcom/powervision/sdk/Ap03Manager$42;-><init>(Lcom/powervision/sdk/Ap03Manager;)V

    iput-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnGetTakeoffPointResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetTakeoffPointResultListener;

    .line 1578
    new-instance v0, Lcom/powervision/sdk/Ap03Manager$43;

    invoke-direct {v0, p0}, Lcom/powervision/sdk/Ap03Manager$43;-><init>(Lcom/powervision/sdk/Ap03Manager;)V

    iput-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnReceiveTimeLapsePhotoStatusListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnReceiveTimeLapsePhotoStatusListener;

    .line 1589
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnQueryActivationStatusListenersList:Ljava/util/List;

    .line 1603
    new-instance v0, Lcom/powervision/sdk/Ap03Manager$44;

    invoke-direct {v0, p0}, Lcom/powervision/sdk/Ap03Manager$44;-><init>(Lcom/powervision/sdk/Ap03Manager;)V

    iput-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnQueryActivationStatusListener:Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnQueryActivationStatusListener;

    .line 88
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    .line 89
    invoke-direct {p0}, Lcom/powervision/sdk/Ap03Manager;->initSDKCallback()V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/sdk/Ap03Manager;)Ljava/util/List;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03VisionDetectListenerList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/sdk/Ap03Manager;)Ljava/util/List;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03VisionTrackListenerList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/powervision/sdk/Ap03Manager;)Ljava/util/List;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03FollowListenerList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03OnFollowCurrentListener;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03OnFollowCurrentListener:Lcom/powervision/sdk/callback/Ap03OnFollowCurrentListener;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03OnAttitudeListener;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03OnAttitudeListener:Lcom/powervision/sdk/callback/Ap03OnAttitudeListener;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/powervision/sdk/Ap03Manager;)Ljava/util/List;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03GimbalAttitudeListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/powervision/sdk/Ap03Manager;)Ljava/util/List;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/powervision/sdk/Ap03Manager;->mAp03SysWarnListener:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1500()Z
    .locals 1

    .line 64
    sget-boolean v0, Lcom/powervision/sdk/Ap03Manager;->isLeftLoad:Z

    return v0
.end method

.method static synthetic access$1502(Z)Z
    .locals 0

    .line 64
    sput-boolean p0, Lcom/powervision/sdk/Ap03Manager;->isLeftLoad:Z

    return p0
.end method

.method static synthetic access$1600()Z
    .locals 1

    .line 64
    sget-boolean v0, Lcom/powervision/sdk/Ap03Manager;->isRightLoad:Z

    return v0
.end method

.method static synthetic access$1602(Z)Z
    .locals 0

    .line 64
    sput-boolean p0, Lcom/powervision/sdk/Ap03Manager;->isRightLoad:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/powervision/sdk/Ap03Manager;)Ljava/util/List;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/powervision/sdk/Ap03Manager;->mAp03RoboticArmListenerList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/powervision/sdk/Ap03Manager;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/powervision/sdk/Ap03Manager;->mArmStatus:I

    return p0
.end method

.method static synthetic access$1802(Lcom/powervision/sdk/Ap03Manager;I)I
    .locals 0

    .line 64
    iput p1, p0, Lcom/powervision/sdk/Ap03Manager;->mArmStatus:I

    return p1
.end method

.method static synthetic access$1900(Lcom/powervision/sdk/Ap03Manager;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/powervision/sdk/Ap03Manager;->isConnectDevice:Z

    return p0
.end method

.method static synthetic access$1902(Lcom/powervision/sdk/Ap03Manager;Z)Z
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/powervision/sdk/Ap03Manager;->isConnectDevice:Z

    return p1
.end method

.method static synthetic access$200(Lcom/powervision/sdk/Ap03Manager;)Ljava/util/List;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/powervision/sdk/Ap03Manager;->mAp03CurrentModeListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03BarrierListener;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03BarrierListener:Lcom/powervision/sdk/callback/Ap03BarrierListener;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/powervision/sdk/Ap03Manager;)Ljava/util/List;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/powervision/sdk/Ap03Manager;->mAp03RemoteElectricListener:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03SendFileStatusListener;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03SendFileStatusListener:Lcom/powervision/sdk/callback/Ap03SendFileStatusListener;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03NoFlyOpreateResultListener;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NoFlyOpreateResultListener:Lcom/powervision/sdk/callback/Ap03NoFlyOpreateResultListener;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03RemoteKeyListener;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03RemoteKeyListener:Lcom/powervision/sdk/callback/Ap03RemoteKeyListener;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/powervision/sdk/Ap03Manager;)Ljava/util/List;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnGimbalParameterResultIntListener:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/powervision/sdk/Ap03Manager;)Ljava/util/List;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03OnSubModeExecuteStatusListenerList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/powervision/sdk/Ap03Manager;)Ljava/util/List;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03OnSubModeTrajDataResultListenerList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/powervision/sdk/Ap03Manager;)Ljava/util/List;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03SetGetParamResultListenersList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/powervision/sdk/Ap03Manager;)Ljava/util/List;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03SetGetParamResultIntListenersList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03SatellitesListener;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03SatellitesListener:Lcom/powervision/sdk/callback/Ap03SatellitesListener;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/powervision/sdk/Ap03Manager;)Ljava/util/List;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03SetGetParamResultLongListenersList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/powervision/sdk/Ap03Manager;)Ljava/util/List;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnSetWaterproofCaseStatusResultListenersList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/powervision/sdk/Ap03Manager;)Ljava/util/List;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnSetRainproofModeResultListenersList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/powervision/sdk/Ap03Manager;)Ljava/util/List;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03OnSetTimeLapsePhotoMaxSpeedResultListenerList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/powervision/sdk/Ap03Manager;)Ljava/util/List;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03SmartFunctionCurrentListenerList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03RtlorTaktoffStatusListener;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03RtlorTaktoffStatusListener:Lcom/powervision/sdk/callback/Ap03RtlorTaktoffStatusListener;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03LandProtectListener;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03LandProtectListener:Lcom/powervision/sdk/callback/Ap03LandProtectListener;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03OnRemoteControlerResultListener;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/powervision/sdk/Ap03Manager;->mAp03OnRemoteControlerResultListener:Lcom/powervision/sdk/callback/Ap03OnRemoteControlerResultListener;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/powervision/sdk/Ap03Manager;)Ljava/util/List;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/powervision/sdk/Ap03Manager;->remainingRtlTimeResultListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/powervision/sdk/Ap03Manager;)Ljava/util/List;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03ReturnPointListenerList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/powervision/sdk/Ap03Manager;)Ljava/util/List;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03LocationListenerList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03NotifyOnAllowNoFlyZoneArmResultListener;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/powervision/sdk/Ap03Manager;->notifyOnAllowNoFlyZoneArmResultListener:Lcom/powervision/sdk/callback/Ap03NotifyOnAllowNoFlyZoneArmResultListener;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03NotifyOnGetTakeoffPointResultListener;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/powervision/sdk/Ap03Manager;->takeoffPointResultListener:Lcom/powervision/sdk/callback/Ap03NotifyOnGetTakeoffPointResultListener;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03NotifyOnReceiveTimeLapsePhotoStatusListener;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/powervision/sdk/Ap03Manager;->notifyOnReceiveTimeLapsePhotoStatusListener:Lcom/powervision/sdk/callback/Ap03NotifyOnReceiveTimeLapsePhotoStatusListener;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/powervision/sdk/Ap03Manager;)Ljava/util/List;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnQueryActivationStatusListenersList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/powervision/sdk/Ap03Manager;)Ljava/util/List;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/powervision/sdk/Ap03Manager;->mAp03BatteryStatusListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/powervision/sdk/Ap03Manager;)Ljava/util/List;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03LocalPositionNedListenerList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03OnStartFolllowAndSetFollowModeListener;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03OnStartFolllowAndSetFollowModeListener:Lcom/powervision/sdk/callback/Ap03OnStartFolllowAndSetFollowModeListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03OnPauseFollowAndSetFollowModeListener;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03OnPauseFollowAndSetFollowModeListener:Lcom/powervision/sdk/callback/Ap03OnPauseFollowAndSetFollowModeListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03SurroundListener;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/powervision/sdk/Ap03Manager;->mAp03SurroundListener:Lcom/powervision/sdk/callback/Ap03SurroundListener;

    return-object p0
.end method

.method public static getInstance()Lcom/powervision/sdk/Ap03Manager;
    .locals 2

    .line 100
    sget-object v0, Lcom/powervision/sdk/Ap03Manager;->ap03Manager:Lcom/powervision/sdk/Ap03Manager;

    if-nez v0, :cond_0

    .line 101
    const-class v0, Lcom/powervision/sdk/Ap03Manager;

    monitor-enter v0

    .line 102
    :try_start_0
    new-instance v1, Lcom/powervision/sdk/Ap03Manager;

    invoke-direct {v1}, Lcom/powervision/sdk/Ap03Manager;-><init>()V

    sput-object v1, Lcom/powervision/sdk/Ap03Manager;->ap03Manager:Lcom/powervision/sdk/Ap03Manager;

    .line 103
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 105
    :cond_0
    :goto_0
    sget-object v0, Lcom/powervision/sdk/Ap03Manager;->ap03Manager:Lcom/powervision/sdk/Ap03Manager;

    return-object v0
.end method

.method private initConnectLinkDll01()V
    .locals 0

    return-void
.end method

.method private initSDKCallback()V
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    iget-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnCurrentModeListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnCurrentModeListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnCurrentModeListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnCurrentModeListener;)V

    .line 338
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    iget-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnGpsRawIntListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGpsRawIntListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnGpsRawIntListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGpsRawIntListener;)V

    .line 339
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    iget-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnBatteryStatusListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryStatusListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnBatteryStatusListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryStatusListener;)V

    .line 340
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    iget-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnLocalPositionNedListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnLocalPositionNedListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnLocalPositionNedListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnLocalPositionNedListener;)V

    .line 341
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    iget-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnStartFollowAndSetFollowModeListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnStartFollowAndSetFollowModeListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnStartFollowAndSetFollowModeListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnStartFollowAndSetFollowModeListener;)V

    .line 342
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    iget-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnVisionDetectListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnVisionDetectListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnVisionDetectListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnVisionDetectListener;)V

    .line 343
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    iget-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnVisionTrackListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnVisionTrackListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnVisionTrackListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnVisionTrackListener;)V

    .line 344
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    iget-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyonPauseFollowAndSetFollowModeListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyonPauseFollowAndSetFollowModeListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyonPauseFollowAndSetFollowModeListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyonPauseFollowAndSetFollowModeListener;)V

    .line 345
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    iget-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnFollowCurrentListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnFollowCurrentListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnFollowCurrentListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnFollowCurrentListener;)V

    .line 346
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    iget-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnAttitudeListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnAttitudeListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnAttitudeListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnAttitudeListener;)V

    .line 347
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    iget-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnGimbalStatusListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalStatusListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnGimbalStatusListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalStatusListener;)V

    .line 348
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    iget-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnCurrentSysStatusListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnCurrentSysStatusListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnCurrentSysStatusListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnCurrentSysStatusListener;)V

    .line 349
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    iget-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnFrontDistanceListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnFrontDistanceListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnFrontDistanceListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnFrontDistanceListener;)V

    .line 351
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    iget-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->mAp03NotifyOnROISetParamResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnROISetParamResultListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnROISetParamResultListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnROISetParamResultListener;)V

    .line 352
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    iget-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnRemoteElectricResultListener:Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteElectricResultListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnRemoteElectricResultListener(Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteElectricResultListener;)V

    .line 353
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    iget-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnSetFollowParamListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetFollowParamListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnSetFollowParamListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetFollowParamListener;)V

    .line 355
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    iget-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnSendNoFlyZoneFileStatusListener:Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnSendNoFlyZoneFileStatusListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnSendNoFlyZoneFileStatusListener(Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnSendNoFlyZoneFileStatusListener;)V

    .line 356
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    iget-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnNoFlyZoneOperateResultListener:Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnNoFlyZoneOperateResultListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnNoFlyZoneOperateResultListener(Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnNoFlyZoneOperateResultListener;)V

    .line 358
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    iget-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnRemoteKeyResultListener:Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteKeyResultListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnRemoteKeyResultListener(Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteKeyResultListener;)V

    .line 360
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    iget-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnSmartFunctionCurrentListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSmartFunctionCurrentListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnSmartFunctionCurrentListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSmartFunctionCurrentListener;)V

    .line 363
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    iget-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->_ap03NotifyOnGimbalParameterResultIntListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalParameterResultIntListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnGimbalParameterResultIntListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalParameterResultIntListener;)V

    .line 365
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    iget-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnSubModeExecuteStatusListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSubModeExecuteStatusListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnSubModeExecuteStatusListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSubModeExecuteStatusListener;)V

    .line 367
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    iget-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->subAttributesStatus:Lcom/powervision/natives/callback/SystemStatusCallback$SubAttributesStatus;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setSubAttributesStatus(Lcom/powervision/natives/callback/SystemStatusCallback$SubAttributesStatus;)V

    .line 369
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    iget-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyonParameterResultFloatListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyonParameterResultFloatListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyonParameterResultFloatListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyonParameterResultFloatListener;)V

    .line 370
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    iget-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyonParameterResultIntListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyonParameterResultIntListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyonParameterResultIntListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyonParameterResultIntListener;)V

    .line 371
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    iget-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyonParameterResultLongListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyonParameterResultLongListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyonParameterResultLongListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyonParameterResultLongListener;)V

    .line 374
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    iget-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnTakeoffListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnTakeoffListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnTakeoffListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnTakeoffListener;)V

    .line 375
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    iget-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnRTLListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnRTLListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnRTLListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnRTLListener;)V

    .line 376
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    iget-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnLandListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnLandListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnLandListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnLandListener;)V

    .line 377
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    iget-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->mNotifyOnAirSetGetDl01OperationResultListener:Lcom/powervision/natives/PowerSDKCallback$NotifyOnAirSetGetDl01OperationResultListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnAirSetGetDl01OperationResultListener(Lcom/powervision/natives/PowerSDKCallback$NotifyOnAirSetGetDl01OperationResultListener;)V

    .line 380
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    iget-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnLandProtectStatusListener:Lcom/powervision/natives/callback/LandProtectCallback$Ap03NotifyOnLandProtectStatusListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnLandProtectStatusListener(Lcom/powervision/natives/callback/LandProtectCallback$Ap03NotifyOnLandProtectStatusListener;)V

    .line 381
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    iget-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnLandProtectUserFeedbackResultListener:Lcom/powervision/natives/callback/LandProtectCallback$Ap03NotifyOnLandProtectUserFeedbackResultListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnLandProtectUserFeedbackResultListener(Lcom/powervision/natives/callback/LandProtectCallback$Ap03NotifyOnLandProtectUserFeedbackResultListener;)V

    .line 382
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    iget-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnStatusTextNotifyListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnStatusTextNotifyListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnStatusTextNotifyListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnStatusTextNotifyListener;)V

    .line 385
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    iget-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->mAp03NotifyOnRemoteManualControlResultListener:Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteManualControlResultListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->addAp03NotifyOnRemoteManualControlResultListener(Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteManualControlResultListener;)V

    .line 387
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    iget-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->notifyOnSetWaterproofCaseStatusResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetWaterproofCaseStatusResultListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnSetWaterproofCaseStatusResultListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetWaterproofCaseStatusResultListener;)V

    .line 388
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    iget-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->notifyOnGetRemainingRtlTimeResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetRemainingRtlTimeResultListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnGetRemainingRtlTimeResultListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetRemainingRtlTimeResultListener;)V

    .line 390
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    iget-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnGetHomePositionResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetHomePositionResultListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnGetHomePositionResultListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetHomePositionResultListener;)V

    .line 392
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    iget-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnAllowNoFlyZoneArmResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnAllowNoFlyZoneArmResultListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnAllowNoFlyZoneArmResultListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnAllowNoFlyZoneArmResultListener;)V

    .line 394
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    iget-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnGetTakeoffPointResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetTakeoffPointResultListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnGetTakeoffPointResultListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetTakeoffPointResultListener;)V

    .line 397
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    iget-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnSetRainproofModeResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetRainproofModeResultListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnSetRainproofModeResultListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetRainproofModeResultListener;)V

    .line 399
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    iget-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnSetTimeLapsePhotoMaxSpeedResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetTimeLapsePhotoMaxSpeedResultListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnSetTimeLapsePhotoMaxSpeedResultListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetTimeLapsePhotoMaxSpeedResultListener;)V

    .line 402
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    iget-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnSubModeTrajDataResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSubModeTrajDataResultListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnSubModeTrajDataResultListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSubModeTrajDataResultListener;)V

    .line 404
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    iget-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnReceiveTimeLapsePhotoStatusListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnReceiveTimeLapsePhotoStatusListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnReceiveTimeLapsePhotoStatusListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnReceiveTimeLapsePhotoStatusListener;)V

    .line 406
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    iget-object v1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnQueryActivationStatusListener:Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnQueryActivationStatusListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnQueryActivationStatusListener(Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnQueryActivationStatusListener;)V

    return-void
.end method

.method public static isLeftLoad()Z
    .locals 1

    .line 940
    sget-boolean v0, Lcom/powervision/sdk/Ap03Manager;->isLeftLoad:Z

    return v0
.end method

.method public static isNormalMode()Z
    .locals 1

    .line 952
    sget-boolean v0, Lcom/powervision/sdk/Ap03Manager;->isLeftLoad:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/powervision/sdk/Ap03Manager;->isRightLoad:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRightLoad()Z
    .locals 1

    .line 944
    sget-boolean v0, Lcom/powervision/sdk/Ap03Manager;->isRightLoad:Z

    return v0
.end method


# virtual methods
.method public addAp03AirSetGetDl01OperationResultListener(Lcom/powervision/sdk/callback/Ap03AirSetGetDl01OperationResultListener;)V
    .locals 1

    .line 1325
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mAp03AirSetGetDl01OperationResultListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1326
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mAp03AirSetGetDl01OperationResultListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addAp03FollowListenerList(Lcom/powervision/sdk/callback/Ap03FollowListener;)V
    .locals 1

    .line 1204
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03FollowListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1205
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03FollowListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addAp03NotifyOnGetRemainingRtlTimeResultListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetRemainingRtlTimeResultListener;)V
    .locals 1

    .line 1453
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->remainingRtlTimeResultListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1454
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->remainingRtlTimeResultListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addAp03NotifyOnGimbalParameterResultIntListener(Lcom/powervision/sdk/callback/Ap03NotifyOnGimbalParameterResultIntListener;)V
    .locals 1

    .line 915
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnGimbalParameterResultIntListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 916
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnGimbalParameterResultIntListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addAp03NotifyOnQueryActivationStatusListener(Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnQueryActivationStatusListener;)V
    .locals 1

    .line 1592
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnQueryActivationStatusListenersList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1593
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnQueryActivationStatusListenersList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addAp03NotifyOnSetRainproofModeResultListener(Lcom/powervision/sdk/callback/Ap03OnSetRainproofModeResultListener;)V
    .locals 1

    .line 1153
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnSetRainproofModeResultListenersList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1154
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnSetRainproofModeResultListenersList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addAp03NotifyOnSetWaterproofCaseStatusResultListener(Lcom/powervision/sdk/callback/Ap03NotifyOnSetWaterproofCaseStatusResultListener;)V
    .locals 1

    .line 1126
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnSetWaterproofCaseStatusResultListenersList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1127
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnSetWaterproofCaseStatusResultListenersList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addAp03OnSetTimeLapsePhotoMaxSpeedResultListener(Lcom/powervision/sdk/callback/Ap03OnSetTimeLapsePhotoMaxSpeedResultListener;)V
    .locals 1

    .line 1180
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03OnSetTimeLapsePhotoMaxSpeedResultListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1181
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03OnSetTimeLapsePhotoMaxSpeedResultListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addAp03RemoteElectricListener(Lcom/powervision/sdk/callback/Ap03RemoteElectricListener;)V
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mAp03RemoteElectricListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mAp03RemoteElectricListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addAp03ReturnPointListener(Lcom/powervision/sdk/callback/Ap03ReturnPointListener;)V
    .locals 1

    .line 1494
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03ReturnPointListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1495
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03ReturnPointListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addAp03SmartFunctionCurrentListener(Lcom/powervision/sdk/callback/Ap03SmartFunctionCurrentListener;)V
    .locals 1

    .line 1221
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03SmartFunctionCurrentListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1222
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03SmartFunctionCurrentListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addAp03SysWarnListener(Lcom/powervision/sdk/callback/Ap03SysWarnListener;)V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mAp03SysWarnListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mAp03SysWarnListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addLocalPositionNedListener(Lcom/powervision/sdk/callback/Ap03LocalPositionNedListener;)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03LocalPositionNedListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03LocalPositionNedListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addLocationListener(Lcom/powervision/sdk/callback/Ap03LocationListener;)V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03LocationListenerList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03LocationListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addRoboticArmListener(Lcom/powervision/sdk/callback/Ap03RoboticArmListener;)V
    .locals 1

    .line 965
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mAp03RoboticArmListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 966
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mAp03RoboticArmListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addSubModeExecuteStatusListener(Lcom/powervision/sdk/callback/Ap03OnSubModeExecuteStatusListener;)V
    .locals 1

    .line 993
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03OnSubModeExecuteStatusListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 994
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03OnSubModeExecuteStatusListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addSubModeTrajDataResultListener(Lcom/powervision/sdk/callback/Ap03OnSubModeTrajDataResultListener;)V
    .locals 1

    .line 1019
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03OnSubModeTrajDataResultListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1020
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03OnSubModeTrajDataResultListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getCurrentMode()Ljava/lang/String;
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->currentMode:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentSubMode()Ljava/lang/String;
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->currentSubMode:Ljava/lang/String;

    return-object v0
.end method

.method public getPowerSDK()Lcom/powervision/natives/PVSDK_AP03_API;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    return-object v0
.end method

.method public isLandingWaterMode()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/powervision/sdk/Ap03Manager;->isLandingWaterMode:Z

    return v0
.end method

.method public isStateNotChanged(ZZ)Z
    .locals 1

    .line 948
    sget-boolean v0, Lcom/powervision/sdk/Ap03Manager;->isLeftLoad:Z

    if-ne p1, v0, :cond_0

    sget-boolean p1, Lcom/powervision/sdk/Ap03Manager;->isRightLoad:Z

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isWaterproofMode()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/powervision/sdk/Ap03Manager;->isWaterproofMode:Z

    return v0
.end method

.method public removeAp03AirSetGetDl01OperationResultListener(Lcom/powervision/sdk/callback/Ap03AirSetGetDl01OperationResultListener;)V
    .locals 1

    .line 1331
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mAp03AirSetGetDl01OperationResultListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1332
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mAp03AirSetGetDl01OperationResultListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeAp03FollowListenerList(Lcom/powervision/sdk/callback/Ap03FollowListener;)V
    .locals 1

    .line 1210
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03FollowListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1211
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03FollowListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeAp03NotifyOnGetRemainingRtlTimeResultListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetRemainingRtlTimeResultListener;)V
    .locals 1

    .line 1459
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->remainingRtlTimeResultListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1460
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->remainingRtlTimeResultListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeAp03NotifyOnGimbalParameterResultIntListener(Lcom/powervision/sdk/callback/Ap03NotifyOnGimbalParameterResultIntListener;)V
    .locals 1

    .line 921
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnGimbalParameterResultIntListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnGimbalParameterResultIntListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 922
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnGimbalParameterResultIntListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeAp03NotifyOnQueryActivationStatusListener(Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnQueryActivationStatusListener;)V
    .locals 1

    .line 1598
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnQueryActivationStatusListenersList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1599
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnQueryActivationStatusListenersList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeAp03NotifyOnSetRainproofModeResultListener(Lcom/powervision/sdk/callback/Ap03OnSetRainproofModeResultListener;)V
    .locals 1

    .line 1159
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnSetRainproofModeResultListenersList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1160
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnSetRainproofModeResultListenersList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeAp03NotifyOnSetWaterproofCaseStatusResultListener(Lcom/powervision/sdk/callback/Ap03NotifyOnSetWaterproofCaseStatusResultListener;)V
    .locals 1

    .line 1132
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnSetWaterproofCaseStatusResultListenersList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1133
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NotifyOnSetWaterproofCaseStatusResultListenersList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeAp03OnSetTimeLapsePhotoMaxSpeedResultListener(Lcom/powervision/sdk/callback/Ap03OnSetTimeLapsePhotoMaxSpeedResultListener;)V
    .locals 1

    .line 1186
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03OnSetTimeLapsePhotoMaxSpeedResultListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1187
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03OnSetTimeLapsePhotoMaxSpeedResultListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeAp03RemoteElectricListener(Lcom/powervision/sdk/callback/Ap03RemoteElectricListener;)V
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mAp03RemoteElectricListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mAp03RemoteElectricListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeAp03ReturnPointListener(Lcom/powervision/sdk/callback/Ap03ReturnPointListener;)V
    .locals 1

    .line 1500
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03ReturnPointListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1501
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03ReturnPointListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeAp03SmartFunctionCurrentListener(Lcom/powervision/sdk/callback/Ap03SmartFunctionCurrentListener;)V
    .locals 1

    .line 1239
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03SmartFunctionCurrentListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1240
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03SmartFunctionCurrentListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeAp03SysWarnListener(Lcom/powervision/sdk/callback/Ap03SysWarnListener;)V
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mAp03SysWarnListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mAp03SysWarnListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeBatteryStatusListener(Lcom/powervision/sdk/callback/Ap03BatteryStatusListener;)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mAp03BatteryStatusListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mAp03BatteryStatusListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCurrentModeListener(Lcom/powervision/sdk/callback/Ap03CurrentModeListener;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mAp03CurrentModeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mAp03CurrentModeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeLocalPositionNedListener(Lcom/powervision/sdk/callback/Ap03LocalPositionNedListener;)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03LocalPositionNedListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03LocalPositionNedListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeRoboticArmListener(Lcom/powervision/sdk/callback/Ap03RoboticArmListener;)V
    .locals 1

    .line 971
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mAp03RoboticArmListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 972
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mAp03RoboticArmListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeSubModeExecuteStatusListener(Lcom/powervision/sdk/callback/Ap03OnSubModeExecuteStatusListener;)V
    .locals 1

    .line 999
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03OnSubModeExecuteStatusListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03OnSubModeExecuteStatusListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeSubModeTrajDataResultListener(Lcom/powervision/sdk/callback/Ap03OnSubModeTrajDataResultListener;)V
    .locals 1

    .line 1025
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03OnSubModeTrajDataResultListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03OnSubModeTrajDataResultListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeUpAndDownFloatParamListener(Lcom/powervision/sdk/callback/Ap03SetGetParamResultListener;)V
    .locals 1

    .line 1053
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03SetGetParamResultListenersList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1054
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03SetGetParamResultListenersList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeUpAndDownIntParamListener(Lcom/powervision/sdk/callback/Ap03SetGetParamResultListener;)V
    .locals 1

    .line 1086
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03SetGetParamResultIntListenersList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1087
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03SetGetParamResultIntListenersList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeUpAndDownLongParamListener(Lcom/powervision/sdk/callback/Ap03SetGetParamResultListener;)V
    .locals 1

    .line 1115
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03SetGetParamResultLongListenersList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1116
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03SetGetParamResultLongListenersList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeVisionDetectListener(Lcom/powervision/sdk/callback/Ap03VisionDetectListener;)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03VisionDetectListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03VisionDetectListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeVisionTrackLIstener(Lcom/powervision/sdk/callback/Ap03VisionTrackListener;)V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03VisionTrackListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03VisionTrackListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setAp03BarrierListener(Lcom/powervision/sdk/callback/Ap03BarrierListener;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03BarrierListener:Lcom/powervision/sdk/callback/Ap03BarrierListener;

    return-void
.end method

.method public setAp03LandProtectListener(Lcom/powervision/sdk/callback/Ap03LandProtectListener;)V
    .locals 0

    .line 1358
    iput-object p1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03LandProtectListener:Lcom/powervision/sdk/callback/Ap03LandProtectListener;

    return-void
.end method

.method public setAp03NoFlyOpreateResultListener(Lcom/powervision/sdk/callback/Ap03NoFlyOpreateResultListener;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03NoFlyOpreateResultListener:Lcom/powervision/sdk/callback/Ap03NoFlyOpreateResultListener;

    return-void
.end method

.method public setAp03OnRemoteControlerResultListener(Lcom/powervision/sdk/callback/Ap03OnRemoteControlerResultListener;)V
    .locals 0

    .line 1413
    iput-object p1, p0, Lcom/powervision/sdk/Ap03Manager;->mAp03OnRemoteControlerResultListener:Lcom/powervision/sdk/callback/Ap03OnRemoteControlerResultListener;

    return-void
.end method

.method public setAp03RemoteKeyListener(Lcom/powervision/sdk/callback/Ap03RemoteKeyListener;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03RemoteKeyListener:Lcom/powervision/sdk/callback/Ap03RemoteKeyListener;

    return-void
.end method

.method public setAp03RtlorTaktoffStatusListener(Lcom/powervision/sdk/callback/Ap03RtlorTaktoffStatusListener;)V
    .locals 0

    .line 1290
    iput-object p1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03RtlorTaktoffStatusListener:Lcom/powervision/sdk/callback/Ap03RtlorTaktoffStatusListener;

    return-void
.end method

.method public setAp03SendFileStatusListener(Lcom/powervision/sdk/callback/Ap03SendFileStatusListener;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03SendFileStatusListener:Lcom/powervision/sdk/callback/Ap03SendFileStatusListener;

    return-void
.end method

.method public setArmStatus(I)V
    .locals 0

    .line 958
    iput p1, p0, Lcom/powervision/sdk/Ap03Manager;->mArmStatus:I

    return-void
.end method

.method public setBatteryStatusListener(Lcom/powervision/sdk/callback/Ap03BatteryStatusListener;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mAp03BatteryStatusListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mAp03BatteryStatusListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setCurrentModeListener(Lcom/powervision/sdk/callback/Ap03CurrentModeListener;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mAp03CurrentModeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->mAp03CurrentModeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setFollowCurrentListener(Lcom/powervision/sdk/callback/Ap03OnFollowCurrentListener;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03OnFollowCurrentListener:Lcom/powervision/sdk/callback/Ap03OnFollowCurrentListener;

    return-void
.end method

.method public setFollowStateListener(Lcom/powervision/sdk/callback/Ap03OnStartFolllowAndSetFollowModeListener;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03OnStartFolllowAndSetFollowModeListener:Lcom/powervision/sdk/callback/Ap03OnStartFolllowAndSetFollowModeListener;

    return-void
.end method

.method public setGimbalAttitudeListener(Lcom/powervision/sdk/callback/Ap03GimbalAttitudeListener;)V
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03GimbalAttitudeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03GimbalAttitudeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setNotifyOnAllowNoFlyZoneArmResultListener(Lcom/powervision/sdk/callback/Ap03NotifyOnAllowNoFlyZoneArmResultListener;)V
    .locals 0

    .line 1540
    iput-object p1, p0, Lcom/powervision/sdk/Ap03Manager;->notifyOnAllowNoFlyZoneArmResultListener:Lcom/powervision/sdk/callback/Ap03NotifyOnAllowNoFlyZoneArmResultListener;

    return-void
.end method

.method public setNotifyOnReceiveTimeLapsePhotoStatusListener(Lcom/powervision/sdk/callback/Ap03NotifyOnReceiveTimeLapsePhotoStatusListener;)V
    .locals 0

    .line 1575
    iput-object p1, p0, Lcom/powervision/sdk/Ap03Manager;->notifyOnReceiveTimeLapsePhotoStatusListener:Lcom/powervision/sdk/callback/Ap03NotifyOnReceiveTimeLapsePhotoStatusListener;

    return-void
.end method

.method public setOnAttitudeListener(Lcom/powervision/sdk/callback/Ap03OnAttitudeListener;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03OnAttitudeListener:Lcom/powervision/sdk/callback/Ap03OnAttitudeListener;

    return-void
.end method

.method public setPauseFollowStateListener(Lcom/powervision/sdk/callback/Ap03OnPauseFollowAndSetFollowModeListener;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03OnPauseFollowAndSetFollowModeListener:Lcom/powervision/sdk/callback/Ap03OnPauseFollowAndSetFollowModeListener;

    return-void
.end method

.method public setSatellitesListener(Lcom/powervision/sdk/callback/Ap03SatellitesListener;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/powervision/sdk/Ap03Manager;->ap03SatellitesListener:Lcom/powervision/sdk/callback/Ap03SatellitesListener;

    return-void
.end method

.method public setTakeoffPointResultListener(Lcom/powervision/sdk/callback/Ap03NotifyOnGetTakeoffPointResultListener;)V
    .locals 0

    .line 1556
    iput-object p1, p0, Lcom/powervision/sdk/Ap03Manager;->takeoffPointResultListener:Lcom/powervision/sdk/callback/Ap03NotifyOnGetTakeoffPointResultListener;

    return-void
.end method

.method public setUpAndDownFloatParamListener(Lcom/powervision/sdk/callback/Ap03SetGetParamResultListener;)V
    .locals 1

    .line 1047
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03SetGetParamResultListenersList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1048
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03SetGetParamResultListenersList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setUpAndDownIntParamListener(Lcom/powervision/sdk/callback/Ap03SetGetParamResultListener;)V
    .locals 1

    .line 1080
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03SetGetParamResultIntListenersList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1081
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03SetGetParamResultIntListenersList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setUpAndDownLongParamListener(Lcom/powervision/sdk/callback/Ap03SetGetParamResultListener;)V
    .locals 1

    .line 1109
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03SetGetParamResultLongListenersList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1110
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03SetGetParamResultLongListenersList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setVisionDetectListener(Lcom/powervision/sdk/callback/Ap03VisionDetectListener;)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03VisionDetectListenerList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03VisionDetectListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setVisionTrackLIstener(Lcom/powervision/sdk/callback/Ap03VisionTrackListener;)V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03VisionTrackListenerList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager;->ap03VisionTrackListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setmAp03SurroundListener(Lcom/powervision/sdk/callback/Ap03SurroundListener;)V
    .locals 0

    .line 572
    iput-object p1, p0, Lcom/powervision/sdk/Ap03Manager;->mAp03SurroundListener:Lcom/powervision/sdk/callback/Ap03SurroundListener;

    return-void
.end method
