.class public Lcom/powervision/natives/PVSDK_AP03_API;
.super Ljava/lang/Object;
.source "PVSDK_AP03_API.java"


# static fields
.field private static final mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;


# instance fields
.field private ap03NotifyOnAccCalibrationStatusListener:Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnAccCalibrationStatusListener;

.field private ap03NotifyOnAirConnectLinkResultListener:Lcom/powervision/natives/PowerSDKCallback$NotifyOnAirConnectLinkResultListener;

.field private ap03NotifyOnAirSetGetDl01OperationResultListener:Lcom/powervision/natives/PowerSDKCallback$NotifyOnAirSetGetDl01OperationResultListener;

.field private ap03NotifyOnAllowNoFlyZoneArmResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnAllowNoFlyZoneArmResultListener;

.field public ap03NotifyOnArmStatusWarningListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnArmStatusWarningListener;

.field private ap03NotifyOnArmStatusWarningListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnArmStatusWarningListener;",
            ">;"
        }
    .end annotation
.end field

.field private ap03NotifyOnAttitudeListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnAttitudeListener;

.field public ap03NotifyOnBatteryStatusListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryStatusListener;

.field private ap03NotifyOnBatteryUpgradeResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryUpgradeResultListener;

.field private ap03NotifyOnBatteryUpgradeResultListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryUpgradeResultListener;",
            ">;"
        }
    .end annotation
.end field

.field public ap03NotifyOnBatteryWarningListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryWarningListener;

.field private ap03NotifyOnCalibrationOffsetListener:Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnCalibrationOffsetListener;

.field private ap03NotifyOnCancelCalibrationResultListener:Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnCancelCalibrationResultListener;

.field private ap03NotifyOnConfirmDisarmResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnConfirmDisarmResultListener;

.field private ap03NotifyOnConnectActivationResultListener:Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnConnectActivationResultListener;

.field private ap03NotifyOnCurrentModeListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnCurrentModeListener;

.field private ap03NotifyOnCurrentSysStatusListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnCurrentSysStatusListener;

.field private ap03NotifyOnEnableActivationListener:Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnEnableActivationListener;

.field public ap03NotifyOnFlyWarningListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnFlyWarningListener;

.field public ap03NotifyOnFollowCurrentListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnFollowCurrentListener;

.field public ap03NotifyOnFrontDistanceListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnFrontDistanceListener;

.field private ap03NotifyOnGetActivationCodeListener:Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnGetActivationCodeListener;

.field private ap03NotifyOnGetActivationSnCodeListener:Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnGetActivationSnCodeListener;

.field private ap03NotifyOnGetDroneVertionListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetDroneVertionListener;

.field private ap03NotifyOnGetHomePositionResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetHomePositionResultListener;

.field private ap03NotifyOnGetRemainingRtlTimeResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetRemainingRtlTimeResultListener;

.field private ap03NotifyOnGetTakeoffPointResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetTakeoffPointResultListener;

.field private ap03NotifyOnGimbalAttitudeListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalAttitudeListener;

.field private ap03NotifyOnGimbalCalibrationResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalCalibrationResultListener;

.field private ap03NotifyOnGimbalParameterResultFloatListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalParameterResultFloatListener;

.field private ap03NotifyOnGimbalParameterResultIntListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalParameterResultIntListener;

.field private ap03NotifyOnGimbalParameterResultLongListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalParameterResultLongListener;

.field private ap03NotifyOnGimbalStatusListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalStatusListener;

.field private ap03NotifyOnGpsRawIntListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGpsRawIntListener;

.field private ap03NotifyOnGyroCalibrationStatusListener:Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnGyroCalibrationStatusListener;

.field private ap03NotifyOnHighresImuListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnHighresImuListener;

.field public ap03NotifyOnHornStatusWarningListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnHornStatusWarningListener;

.field private ap03NotifyOnIntegrationUpgradeGetUpgradeStatusListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnIntegrationUpgradeGetUpgradeStatusListener;

.field private ap03NotifyOnIntegrationUpgradeStatusListener:Lcom/powervision/natives/callback/UpgradeCallback$Ap03NotifyOnIntegrationUpgradeStatusListener;

.field private ap03NotifyOnLandListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnLandListener;

.field private ap03NotifyOnLandProtectStatusListener:Lcom/powervision/natives/callback/LandProtectCallback$Ap03NotifyOnLandProtectStatusListener;

.field private ap03NotifyOnLandProtectUserFeedbackResultListener:Lcom/powervision/natives/callback/LandProtectCallback$Ap03NotifyOnLandProtectUserFeedbackResultListener;

.field private ap03NotifyOnLocalPositionNedListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnLocalPositionNedListener;

.field private ap03NotifyOnMagCalibrationStatusListener:Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnMagCalibrationStatusListener;

.field private ap03NotifyOnNoFlyZoneOperateResultListener:Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnNoFlyZoneOperateResultListener;

.field private ap03NotifyOnPauseFollowListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnPauseFollowListener;

.field private ap03NotifyOnQueryActivationStatusListener:Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnQueryActivationStatusListener;

.field private ap03NotifyOnROISetParamResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnROISetParamResultListener;

.field private ap03NotifyOnRTLListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnRTLListener;

.field private ap03NotifyOnReceiveTimeLapsePhotoStatusListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnReceiveTimeLapsePhotoStatusListener;

.field private ap03NotifyOnRemoteElectricResultListener:Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteElectricResultListener;

.field private ap03NotifyOnRemoteKeyResultListener:Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteKeyResultListener;

.field private ap03NotifyOnRemoteMcuUpgradeStatusListener:Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteMcuUpgradeStatusListener;

.field private ap03NotifyOnRemoteThumbwheelResultListener:Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteThumbwheelResultListener;

.field private ap03NotifyOnSendNoFlyZoneFileStatusListener:Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnSendNoFlyZoneFileStatusListener;

.field private ap03NotifyOnSetFollowModeListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetFollowModeListener;

.field private ap03NotifyOnSetFollowParamListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetFollowParamListener;

.field private ap03NotifyOnSetRainproofModeResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetRainproofModeResultListener;

.field private ap03NotifyOnSetRefuseLowPowerReturnResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetRefuseLowPowerReturnResultListener;

.field public ap03NotifyOnSetReturnPointListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetReturnPointListener;

.field private ap03NotifyOnSetSubModeOneKeyVideoResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetSubModeOneKeyVideoResultListener;

.field private ap03NotifyOnSetTimeLapsePhotoMaxSpeedResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetTimeLapsePhotoMaxSpeedResultListener;

.field private ap03NotifyOnSetWaterproofCaseStatusResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetWaterproofCaseStatusResultListener;

.field public ap03NotifyOnSmartFunctionCurrentListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSmartFunctionCurrentListener;

.field public ap03NotifyOnStartFollowAndSetFollowModeListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnStartFollowAndSetFollowModeListener;

.field private ap03NotifyOnStartFollowListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnStartFollowListener;

.field private ap03NotifyOnStatusReportingListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnStatusReportingListener;

.field private ap03NotifyOnStatusTextNotifyListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnStatusTextNotifyListener;

.field private ap03NotifyOnSubModeExecuteStatusListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSubModeExecuteStatusListener;

.field private ap03NotifyOnSubModeTrajDataResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSubModeTrajDataResultListener;

.field private ap03NotifyOnTakeoffListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnTakeoffListener;

.field public ap03NotifyOnVisionDetectListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnVisionDetectListener;

.field public ap03NotifyOnVisionTrackListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnVisionTrackListener;

.field private ap03NotifyRemoteCalibarListener:Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteCalibraResultListener;

.field private ap03NotifyRemoteConnectLinkListener:Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyRemoteConnectLinkListener;

.field private ap03NotifyRemoteConnectListener:Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyRemoteConnectListener;

.field private ap03NotifySmartFunctionStatusListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifySmartFunctionStatusListener;

.field private ap03NotifyonGetActivationHwCodeListener:Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyonGetActivationHwCodeListener;

.field private ap03NotifyonParameterResultFloatListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyonParameterResultFloatListener;

.field private ap03NotifyonParameterResultIntListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyonParameterResultIntListener;

.field private ap03NotifyonParameterResultLongListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyonParameterResultLongListener;

.field public ap03NotifyonPauseFollowAndSetFollowModeListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyonPauseFollowAndSetFollowModeListener;

.field private ap03NotifyonRemoteParameterResultIntListener:Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyonRemoteParameterResultIntListener;

.field private ap03OnResetAllParamResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03OnResetAllParamResultListener;

.field private ap03UpgradeGetVersionStatusListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/natives/callback/UpgradeCallback$Ap03OnIntegrationUpgradeGetVersionStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private connectionDevicceListener:Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionDevicceListener;

.field private connectionLinkListener:Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionLinkListener;

.field private mAp03NotifyOnDistanceSensorStatusListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnDistanceSensorStatusListener;

.field private mAp03NotifyOnRemoteManualControlResultListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteManualControlResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNotifyOnSetGetDl01OperationResultListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/natives/PowerSDKCallback$NotifyOnSetGetDl01OperationResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteDl01UpgradeStatusList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/powervision/natives/callback/RemoteStatusCallback$RemoteDl01UpgradeStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private notifyOnConnectLinkResultListener:Lcom/powervision/natives/PowerSDKCallback$NotifyOnConnectLinkResultListener;

.field private remoteGetBootLoaderStatusListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/natives/callback/RemoteStatusCallback$RemoteGetBootLoaderStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private subAttributesStatus:Lcom/powervision/natives/callback/SystemStatusCallback$SubAttributesStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-direct {v0}, Lcom/powervision/natives/PVSDK_AP03_API;-><init>()V

    sput-object v0, Lcom/powervision/natives/PVSDK_AP03_API;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 639
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnArmStatusWarningListeners:Ljava/util/ArrayList;

    .line 781
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->mNotifyOnSetGetDl01OperationResultListenerList:Ljava/util/List;

    .line 820
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->mRemoteDl01UpgradeStatusList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 955
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03UpgradeGetVersionStatusListenerList:Ljava/util/List;

    .line 1292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->mAp03NotifyOnRemoteManualControlResultListenerList:Ljava/util/List;

    .line 1340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->remoteGetBootLoaderStatusListenerList:Ljava/util/List;

    const/4 v0, 0x0

    .line 1440
    iput-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnBatteryUpgradeResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryUpgradeResultListener;

    .line 1443
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnBatteryUpgradeResultListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public static getInstance()Lcom/powervision/natives/PVSDK_AP03_API;
    .locals 1

    .line 30
    sget-object v0, Lcom/powervision/natives/PVSDK_AP03_API;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    return-object v0
.end method


# virtual methods
.method public addAp03NotifyOnArmStatusWarningListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnArmStatusWarningListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 642
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnArmStatusWarningListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnArmStatusWarningListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addAp03NotifyOnBatteryUpgradeResultListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryUpgradeResultListener;)V
    .locals 2

    .line 1450
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnBatteryUpgradeResultListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1451
    :try_start_0
    iget-object v1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnBatteryUpgradeResultListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1452
    iget-object v1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnBatteryUpgradeResultListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1454
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addAp03NotifyOnRemoteManualControlResultListener(Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteManualControlResultListener;)V
    .locals 1

    .line 1301
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->mAp03NotifyOnRemoteManualControlResultListenerList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1302
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1303
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->mAp03NotifyOnRemoteManualControlResultListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addAp03NotifyOnSetGetDl01OperationResultListener(Lcom/powervision/natives/PowerSDKCallback$NotifyOnSetGetDl01OperationResultListener;)V
    .locals 1

    .line 794
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->mNotifyOnSetGetDl01OperationResultListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->mNotifyOnSetGetDl01OperationResultListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addAp03OnIntegrationUpgradeGetVersionStatusListener(Lcom/powervision/natives/callback/UpgradeCallback$Ap03OnIntegrationUpgradeGetVersionStatusListener;)V
    .locals 2

    .line 962
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03UpgradeGetVersionStatusListenerList:Ljava/util/List;

    monitor-enter v0

    .line 963
    :try_start_0
    iget-object v1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03UpgradeGetVersionStatusListenerList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 964
    iget-object v1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03UpgradeGetVersionStatusListenerList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 966
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public airConnectLink()I
    .locals 1

    .line 358
    invoke-static {}, Lcom/powervision/natives/JniDl01Native;->airConnectLink()I

    move-result v0

    return v0
.end method

.method public airSetGetOperation(ILjava/lang/String;I)I
    .locals 1

    .line 363
    sget-boolean v0, Lcom/powervision/natives/PVSDK_W4_API;->SDKAVILIBALE:Z

    if-eqz v0, :cond_0

    .line 364
    invoke-static {p1, p2, p3}, Lcom/powervision/natives/JniDl01Native;->airSetGetOperation(ILjava/lang/String;I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public allowNoFlyZoneArm(I)I
    .locals 0

    .line 320
    invoke-static {p1}, Lcom/powervision/natives/JniAp03Native;->allowNoFlyZoneArm(I)I

    move-result p1

    return p1
.end method

.method public batteryUpgrade()I
    .locals 1

    .line 309
    invoke-static {}, Lcom/powervision/natives/JniAp03Native;->batteryUpgrade()I

    move-result v0

    return v0
.end method

.method public cancelCalibration()I
    .locals 1

    .line 231
    invoke-static {}, Lcom/powervision/natives/JniAp03Native;->cancelCalibration()I

    move-result v0

    return v0
.end method

.method public completeCalibar()I
    .locals 1

    .line 445
    invoke-static {}, Lcom/powervision/natives/JniRemoteNative;->completeCalibar()I

    move-result v0

    return v0
.end method

.method public confirmDisarm(I)I
    .locals 0

    .line 286
    invoke-static {p1}, Lcom/powervision/natives/JniAp03Native;->confirmDisarm(I)I

    move-result p1

    return p1
.end method

.method public connectActivationLink()I
    .locals 1

    .line 239
    invoke-static {}, Lcom/powervision/natives/JniAp03Native;->connectActivationLink()I

    move-result v0

    return v0
.end method

.method public connectDevice()I
    .locals 1

    .line 71
    invoke-static {}, Lcom/powervision/natives/JniAp03Native;->connectDevice()I

    move-result v0

    return v0
.end method

.method public connectLink()I
    .locals 1

    .line 60
    invoke-static {}, Lcom/powervision/natives/JniAp03Native;->connectLink()I

    move-result v0

    return v0
.end method

.method public connectLinkDl01()I
    .locals 1

    .line 344
    invoke-static {}, Lcom/powervision/natives/JniDl01Native;->connectDl01Link()I

    move-result v0

    return v0
.end method

.method public connectRemote()I
    .locals 1

    .line 433
    invoke-static {}, Lcom/powervision/natives/JniRemoteNative;->connectRemote()I

    move-result v0

    return v0
.end method

.method public disConnectDevice()I
    .locals 1

    .line 76
    invoke-static {}, Lcom/powervision/natives/JniAp03Native;->disconnectDevice()I

    move-result v0

    return v0
.end method

.method public disConnectLink()I
    .locals 1

    .line 65
    invoke-static {}, Lcom/powervision/natives/JniAp03Native;->disConnectLink()I

    move-result v0

    return v0
.end method

.method public disConnectRemote()I
    .locals 1

    .line 437
    invoke-static {}, Lcom/powervision/natives/JniRemoteNative;->disConnectRemote()I

    move-result v0

    return v0
.end method

.method public disconnectActivationLink()I
    .locals 1

    .line 243
    invoke-static {}, Lcom/powervision/natives/JniAp03Native;->disconnectActivationLink()I

    move-result v0

    return v0
.end method

.method public downloadGimbalParameter(Ljava/lang/String;)I
    .locals 1

    .line 406
    sget-boolean v0, Lcom/powervision/natives/PVSDK_W4_API;->SDKAVILIBALE:Z

    if-eqz v0, :cond_0

    .line 407
    invoke-static {p1}, Lcom/powervision/natives/JniGimbalNative;->downloadGimbalParameter(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public downloadParameter(Ljava/lang/String;)I
    .locals 0

    .line 191
    invoke-static {p1}, Lcom/powervision/natives/JniAp03Native;->downloadParameter(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public downloadRemoteParameter(Ljava/lang/String;)I
    .locals 0

    .line 461
    invoke-static {p1}, Lcom/powervision/natives/JniRemoteNative;->downloadRemoteParameter(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public enableActivation()I
    .locals 1

    .line 247
    invoke-static {}, Lcom/powervision/natives/JniAp03Native;->enableActivation()I

    move-result v0

    return v0
.end method

.method public getActivationCode()I
    .locals 1

    .line 255
    invoke-static {}, Lcom/powervision/natives/JniAp03Native;->getActivationCode()I

    move-result v0

    return v0
.end method

.method public getActivationSnCode()I
    .locals 1

    .line 267
    invoke-static {}, Lcom/powervision/natives/JniAp03Native;->getActivationSnCode()I

    move-result v0

    return v0
.end method

.method public getAp03NotifyOnAccCalibrationStatusListener()Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnAccCalibrationStatusListener;
    .locals 1

    .line 1015
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnAccCalibrationStatusListener:Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnAccCalibrationStatusListener;

    return-object v0
.end method

.method public getAp03NotifyOnAirConnectLinkResultListener()Lcom/powervision/natives/PowerSDKCallback$NotifyOnAirConnectLinkResultListener;
    .locals 1

    .line 802
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnAirConnectLinkResultListener:Lcom/powervision/natives/PowerSDKCallback$NotifyOnAirConnectLinkResultListener;

    return-object v0
.end method

.method public getAp03NotifyOnAirSetGetDl01OperationResultListener()Lcom/powervision/natives/PowerSDKCallback$NotifyOnAirSetGetDl01OperationResultListener;
    .locals 1

    .line 812
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnAirSetGetDl01OperationResultListener:Lcom/powervision/natives/PowerSDKCallback$NotifyOnAirSetGetDl01OperationResultListener;

    return-object v0
.end method

.method public getAp03NotifyOnAllowNoFlyZoneArmResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnAllowNoFlyZoneArmResultListener;
    .locals 1

    .line 1508
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnAllowNoFlyZoneArmResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnAllowNoFlyZoneArmResultListener;

    return-object v0
.end method

.method public getAp03NotifyOnAttitudeListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnAttitudeListener;
    .locals 1

    .line 519
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnAttitudeListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnAttitudeListener;

    return-object v0
.end method

.method public getAp03NotifyOnBatteryStatusListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryStatusListener;
    .locals 1

    .line 673
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnBatteryStatusListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryStatusListener;

    return-object v0
.end method

.method public getAp03NotifyOnBatteryUpgradeResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryUpgradeResultListener;
    .locals 1

    .line 1430
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnBatteryUpgradeResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryUpgradeResultListener;

    return-object v0
.end method

.method public getAp03NotifyOnBatteryUpgradeResultListeners()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryUpgradeResultListener;",
            ">;"
        }
    .end annotation

    .line 1446
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnBatteryUpgradeResultListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAp03NotifyOnBatteryWarningListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryWarningListener;
    .locals 1

    .line 620
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnBatteryWarningListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryWarningListener;

    return-object v0
.end method

.method public getAp03NotifyOnCalibrationOffsetListener()Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnCalibrationOffsetListener;
    .locals 1

    .line 1026
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnCalibrationOffsetListener:Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnCalibrationOffsetListener;

    return-object v0
.end method

.method public getAp03NotifyOnCancelCalibrationResultListener()Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnCancelCalibrationResultListener;
    .locals 1

    .line 1036
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnCancelCalibrationResultListener:Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnCancelCalibrationResultListener;

    return-object v0
.end method

.method public getAp03NotifyOnConfirmDisarmResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnConfirmDisarmResultListener;
    .locals 1

    .line 1371
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnConfirmDisarmResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnConfirmDisarmResultListener;

    return-object v0
.end method

.method public getAp03NotifyOnConnectActivationResultListener()Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnConnectActivationResultListener;
    .locals 1

    .line 1111
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnConnectActivationResultListener:Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnConnectActivationResultListener;

    return-object v0
.end method

.method public getAp03NotifyOnCurrentModeListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnCurrentModeListener;
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnCurrentModeListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnCurrentModeListener;

    return-object v0
.end method

.method public getAp03NotifyOnCurrentSysStatusListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnCurrentSysStatusListener;
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnCurrentSysStatusListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnCurrentSysStatusListener;

    return-object v0
.end method

.method public getAp03NotifyOnDistanceSensorStatusListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnDistanceSensorStatusListener;
    .locals 1

    .line 1358
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->mAp03NotifyOnDistanceSensorStatusListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnDistanceSensorStatusListener;

    return-object v0
.end method

.method public getAp03NotifyOnEnableActivationListener()Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnEnableActivationListener;
    .locals 1

    .line 1131
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnEnableActivationListener:Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnEnableActivationListener;

    return-object v0
.end method

.method public getAp03NotifyOnFlyWarningListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnFlyWarningListener;
    .locals 1

    .line 610
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnFlyWarningListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnFlyWarningListener;

    return-object v0
.end method

.method public getAp03NotifyOnFollowCurrentListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnFollowCurrentListener;
    .locals 1

    .line 703
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnFollowCurrentListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnFollowCurrentListener;

    return-object v0
.end method

.method public getAp03NotifyOnFrontDistanceListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnFrontDistanceListener;
    .locals 1

    .line 663
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnFrontDistanceListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnFrontDistanceListener;

    return-object v0
.end method

.method public getAp03NotifyOnGetActivationCodeListener()Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnGetActivationCodeListener;
    .locals 1

    .line 1142
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnGetActivationCodeListener:Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnGetActivationCodeListener;

    return-object v0
.end method

.method public getAp03NotifyOnGetActivationSnCodeListener()Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnGetActivationSnCodeListener;
    .locals 1

    .line 1153
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnGetActivationSnCodeListener:Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnGetActivationSnCodeListener;

    return-object v0
.end method

.method public getAp03NotifyOnGetDroneVertionListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetDroneVertionListener;
    .locals 1

    .line 845
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnGetDroneVertionListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetDroneVertionListener;

    return-object v0
.end method

.method public getAp03NotifyOnGetHomePositionResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetHomePositionResultListener;
    .locals 1

    .line 1397
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnGetHomePositionResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetHomePositionResultListener;

    return-object v0
.end method

.method public getAp03NotifyOnGetRemainingRtlTimeResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetRemainingRtlTimeResultListener;
    .locals 1

    .line 1087
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnGetRemainingRtlTimeResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetRemainingRtlTimeResultListener;

    return-object v0
.end method

.method public getAp03NotifyOnGetTakeoffPointResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetTakeoffPointResultListener;
    .locals 1

    .line 1384
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnGetTakeoffPointResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetTakeoffPointResultListener;

    return-object v0
.end method

.method public getAp03NotifyOnGimbalAttitudeListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalAttitudeListener;
    .locals 1

    .line 753
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnGimbalAttitudeListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalAttitudeListener;

    return-object v0
.end method

.method public getAp03NotifyOnGimbalCalibrationResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalCalibrationResultListener;
    .locals 1

    .line 1231
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnGimbalCalibrationResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalCalibrationResultListener;

    return-object v0
.end method

.method public getAp03NotifyOnGimbalParameterResultFloatListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalParameterResultFloatListener;
    .locals 1

    .line 1211
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnGimbalParameterResultFloatListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalParameterResultFloatListener;

    return-object v0
.end method

.method public getAp03NotifyOnGimbalParameterResultIntListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalParameterResultIntListener;
    .locals 1

    .line 1201
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnGimbalParameterResultIntListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalParameterResultIntListener;

    return-object v0
.end method

.method public getAp03NotifyOnGimbalParameterResultLongListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalParameterResultLongListener;
    .locals 1

    .line 1221
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnGimbalParameterResultLongListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalParameterResultLongListener;

    return-object v0
.end method

.method public getAp03NotifyOnGimbalStatusListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalStatusListener;
    .locals 1

    .line 763
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnGimbalStatusListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalStatusListener;

    return-object v0
.end method

.method public getAp03NotifyOnGpsRawIntListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGpsRawIntListener;
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnGpsRawIntListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGpsRawIntListener;

    return-object v0
.end method

.method public getAp03NotifyOnGyroCalibrationStatusListener()Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnGyroCalibrationStatusListener;
    .locals 1

    .line 993
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnGyroCalibrationStatusListener:Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnGyroCalibrationStatusListener;

    return-object v0
.end method

.method public getAp03NotifyOnHighresImuListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnHighresImuListener;
    .locals 1

    .line 600
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnHighresImuListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnHighresImuListener;

    return-object v0
.end method

.method public getAp03NotifyOnHornStatusWarningListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnHornStatusWarningListener;
    .locals 1

    .line 630
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnHornStatusWarningListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnHornStatusWarningListener;

    return-object v0
.end method

.method public getAp03NotifyOnIntegrationUpgradeGetUpgradeStatusListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnIntegrationUpgradeGetUpgradeStatusListener;
    .locals 1

    .line 1521
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnIntegrationUpgradeGetUpgradeStatusListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnIntegrationUpgradeGetUpgradeStatusListener;

    return-object v0
.end method

.method public getAp03NotifyOnIntegrationUpgradeStatusListener()Lcom/powervision/natives/callback/UpgradeCallback$Ap03NotifyOnIntegrationUpgradeStatusListener;
    .locals 1

    .line 982
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnIntegrationUpgradeStatusListener:Lcom/powervision/natives/callback/UpgradeCallback$Ap03NotifyOnIntegrationUpgradeStatusListener;

    return-object v0
.end method

.method public getAp03NotifyOnLandListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnLandListener;
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnLandListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnLandListener;

    return-object v0
.end method

.method public getAp03NotifyOnLandProtectStatusListener()Lcom/powervision/natives/callback/LandProtectCallback$Ap03NotifyOnLandProtectStatusListener;
    .locals 1

    .line 1165
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnLandProtectStatusListener:Lcom/powervision/natives/callback/LandProtectCallback$Ap03NotifyOnLandProtectStatusListener;

    return-object v0
.end method

.method public getAp03NotifyOnLandProtectUserFeedbackResultListener()Lcom/powervision/natives/callback/LandProtectCallback$Ap03NotifyOnLandProtectUserFeedbackResultListener;
    .locals 1

    .line 1175
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnLandProtectUserFeedbackResultListener:Lcom/powervision/natives/callback/LandProtectCallback$Ap03NotifyOnLandProtectUserFeedbackResultListener;

    return-object v0
.end method

.method public getAp03NotifyOnLocalPositionNedListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnLocalPositionNedListener;
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnLocalPositionNedListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnLocalPositionNedListener;

    return-object v0
.end method

.method public getAp03NotifyOnMagCalibrationStatusListener()Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnMagCalibrationStatusListener;
    .locals 1

    .line 1004
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnMagCalibrationStatusListener:Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnMagCalibrationStatusListener;

    return-object v0
.end method

.method public getAp03NotifyOnNoFlyZoneOperateResultListener()Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnNoFlyZoneOperateResultListener;
    .locals 1

    .line 1046
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnNoFlyZoneOperateResultListener:Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnNoFlyZoneOperateResultListener;

    return-object v0
.end method

.method public getAp03NotifyOnPauseFollowListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnPauseFollowListener;
    .locals 1

    .line 896
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnPauseFollowListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnPauseFollowListener;

    return-object v0
.end method

.method public getAp03NotifyOnQueryActivationStatusListener()Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnQueryActivationStatusListener;
    .locals 1

    .line 1121
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnQueryActivationStatusListener:Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnQueryActivationStatusListener;

    return-object v0
.end method

.method public getAp03NotifyOnROISetParamResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnROISetParamResultListener;
    .locals 1

    .line 926
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnROISetParamResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnROISetParamResultListener;

    return-object v0
.end method

.method public getAp03NotifyOnRTLListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnRTLListener;
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnRTLListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnRTLListener;

    return-object v0
.end method

.method public getAp03NotifyOnReceiveTimeLapsePhotoStatusListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnReceiveTimeLapsePhotoStatusListener;
    .locals 1

    .line 1574
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnReceiveTimeLapsePhotoStatusListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnReceiveTimeLapsePhotoStatusListener;

    return-object v0
.end method

.method public getAp03NotifyOnRemoteElectricResultListener()Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteElectricResultListener;
    .locals 1

    .line 1285
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnRemoteElectricResultListener:Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteElectricResultListener;

    return-object v0
.end method

.method public getAp03NotifyOnRemoteKeyResultListener()Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteKeyResultListener;
    .locals 1

    .line 1320
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnRemoteKeyResultListener:Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteKeyResultListener;

    return-object v0
.end method

.method public getAp03NotifyOnRemoteManualControlResultListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteManualControlResultListener;",
            ">;"
        }
    .end annotation

    .line 1295
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->mAp03NotifyOnRemoteManualControlResultListenerList:Ljava/util/List;

    return-object v0
.end method

.method public getAp03NotifyOnRemoteMcuUpgradeStatusListener()Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteMcuUpgradeStatusListener;
    .locals 1

    .line 1330
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnRemoteMcuUpgradeStatusListener:Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteMcuUpgradeStatusListener;

    return-object v0
.end method

.method public getAp03NotifyOnRemoteThumbwheelResultListener()Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteThumbwheelResultListener;
    .locals 1

    .line 1310
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnRemoteThumbwheelResultListener:Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteThumbwheelResultListener;

    return-object v0
.end method

.method public getAp03NotifyOnSendNoFlyZoneFileStatusListener()Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnSendNoFlyZoneFileStatusListener;
    .locals 1

    .line 1056
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnSendNoFlyZoneFileStatusListener:Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnSendNoFlyZoneFileStatusListener;

    return-object v0
.end method

.method public getAp03NotifyOnSetFollowModeListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetFollowModeListener;
    .locals 1

    .line 906
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnSetFollowModeListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetFollowModeListener;

    return-object v0
.end method

.method public getAp03NotifyOnSetFollowParamListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetFollowParamListener;
    .locals 1

    .line 916
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnSetFollowParamListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetFollowParamListener;

    return-object v0
.end method

.method public getAp03NotifyOnSetGetDl01OperationResultListener()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/powervision/natives/PowerSDKCallback$NotifyOnSetGetDl01OperationResultListener;",
            ">;"
        }
    .end annotation

    .line 784
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->mNotifyOnSetGetDl01OperationResultListenerList:Ljava/util/List;

    return-object v0
.end method

.method public getAp03NotifyOnSetRainproofModeResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetRainproofModeResultListener;
    .locals 1

    .line 1548
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnSetRainproofModeResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetRainproofModeResultListener;

    return-object v0
.end method

.method public getAp03NotifyOnSetRefuseLowPowerReturnResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetRefuseLowPowerReturnResultListener;
    .locals 1

    .line 936
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnSetRefuseLowPowerReturnResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetRefuseLowPowerReturnResultListener;

    return-object v0
.end method

.method public getAp03NotifyOnSetReturnPointListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetReturnPointListener;
    .locals 1

    .line 713
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnSetReturnPointListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetReturnPointListener;

    return-object v0
.end method

.method public getAp03NotifyOnSetSubModeOneKeyVideoResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetSubModeOneKeyVideoResultListener;
    .locals 1

    .line 1186
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnSetSubModeOneKeyVideoResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetSubModeOneKeyVideoResultListener;

    return-object v0
.end method

.method public getAp03NotifyOnSetTimeLapsePhotoMaxSpeedResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetTimeLapsePhotoMaxSpeedResultListener;
    .locals 1

    .line 1561
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnSetTimeLapsePhotoMaxSpeedResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetTimeLapsePhotoMaxSpeedResultListener;

    return-object v0
.end method

.method public getAp03NotifyOnSetWaterproofCaseStatusResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetWaterproofCaseStatusResultListener;
    .locals 1

    .line 1097
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnSetWaterproofCaseStatusResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetWaterproofCaseStatusResultListener;

    return-object v0
.end method

.method public getAp03NotifyOnSmartFunctionCurrentListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSmartFunctionCurrentListener;
    .locals 1

    .line 693
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnSmartFunctionCurrentListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSmartFunctionCurrentListener;

    return-object v0
.end method

.method public getAp03NotifyOnStartFollowAndSetFollowModeListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnStartFollowAndSetFollowModeListener;
    .locals 1

    .line 723
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnStartFollowAndSetFollowModeListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnStartFollowAndSetFollowModeListener;

    return-object v0
.end method

.method public getAp03NotifyOnStartFollowListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnStartFollowListener;
    .locals 1

    .line 886
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnStartFollowListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnStartFollowListener;

    return-object v0
.end method

.method public getAp03NotifyOnStatusReportingListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnStatusReportingListener;
    .locals 1

    .line 1077
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnStatusReportingListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnStatusReportingListener;

    return-object v0
.end method

.method public getAp03NotifyOnStatusTextNotifyListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnStatusTextNotifyListener;
    .locals 1

    .line 1410
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnStatusTextNotifyListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnStatusTextNotifyListener;

    return-object v0
.end method

.method public getAp03NotifyOnSubModeExecuteStatusListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSubModeExecuteStatusListener;
    .locals 1

    .line 569
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnSubModeExecuteStatusListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSubModeExecuteStatusListener;

    return-object v0
.end method

.method public getAp03NotifyOnSubModeTrajDataResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSubModeTrajDataResultListener;
    .locals 1

    .line 1067
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnSubModeTrajDataResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSubModeTrajDataResultListener;

    return-object v0
.end method

.method public getAp03NotifyOnTakeoffListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnTakeoffListener;
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnTakeoffListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnTakeoffListener;

    return-object v0
.end method

.method public getAp03NotifyOnVisionDetectListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnVisionDetectListener;
    .locals 1

    .line 743
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnVisionDetectListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnVisionDetectListener;

    return-object v0
.end method

.method public getAp03NotifyOnVisionTrackListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnVisionTrackListener;
    .locals 1

    .line 683
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnVisionTrackListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnVisionTrackListener;

    return-object v0
.end method

.method public getAp03NotifyRemoteCalibarListener()Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteCalibraResultListener;
    .locals 1

    .line 1265
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyRemoteCalibarListener:Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteCalibraResultListener;

    return-object v0
.end method

.method public getAp03NotifyRemoteConnectLinkListener()Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyRemoteConnectLinkListener;
    .locals 1

    .line 1245
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyRemoteConnectLinkListener:Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyRemoteConnectLinkListener;

    return-object v0
.end method

.method public getAp03NotifyRemoteConnectListener()Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyRemoteConnectListener;
    .locals 1

    .line 1255
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyRemoteConnectListener:Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyRemoteConnectListener;

    return-object v0
.end method

.method public getAp03NotifySmartFunctionStatusListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifySmartFunctionStatusListener;
    .locals 1

    .line 947
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifySmartFunctionStatusListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifySmartFunctionStatusListener;

    return-object v0
.end method

.method public getAp03NotifyonGetActivationHwCodeListener()Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyonGetActivationHwCodeListener;
    .locals 1

    .line 1422
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyonGetActivationHwCodeListener:Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyonGetActivationHwCodeListener;

    return-object v0
.end method

.method public getAp03NotifyonParameterResultFloatListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyonParameterResultFloatListener;
    .locals 1

    .line 865
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyonParameterResultFloatListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyonParameterResultFloatListener;

    return-object v0
.end method

.method public getAp03NotifyonParameterResultIntListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyonParameterResultIntListener;
    .locals 1

    .line 855
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyonParameterResultIntListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyonParameterResultIntListener;

    return-object v0
.end method

.method public getAp03NotifyonParameterResultLongListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyonParameterResultLongListener;
    .locals 1

    .line 875
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyonParameterResultLongListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyonParameterResultLongListener;

    return-object v0
.end method

.method public getAp03NotifyonPauseFollowAndSetFollowModeListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyonPauseFollowAndSetFollowModeListener;
    .locals 1

    .line 733
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyonPauseFollowAndSetFollowModeListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyonPauseFollowAndSetFollowModeListener;

    return-object v0
.end method

.method public getAp03NotifyonRemoteParameterResultIntListener()Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyonRemoteParameterResultIntListener;
    .locals 1

    .line 1275
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyonRemoteParameterResultIntListener:Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyonRemoteParameterResultIntListener;

    return-object v0
.end method

.method public getAp03OnIntegrationUpgradeGetVersionStatusListenerList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/powervision/natives/callback/UpgradeCallback$Ap03OnIntegrationUpgradeGetVersionStatusListener;",
            ">;"
        }
    .end annotation

    .line 958
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03UpgradeGetVersionStatusListenerList:Ljava/util/List;

    return-object v0
.end method

.method public getAp03OnResetAllParamResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03OnResetAllParamResultListener;
    .locals 1

    .line 1535
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03OnResetAllParamResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03OnResetAllParamResultListener;

    return-object v0
.end method

.method public getConnectionDevicceListener()Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionDevicceListener;
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->connectionDevicceListener:Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionDevicceListener;

    return-object v0
.end method

.method public getConnectionLinkListener()Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionLinkListener;
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->connectionLinkListener:Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionLinkListener;

    return-object v0
.end method

.method public getDroneVer()I
    .locals 1

    .line 171
    invoke-static {}, Lcom/powervision/natives/JniAp03Native;->getDroneVer()I

    move-result v0

    return v0
.end method

.method public getDroneVersion()I
    .locals 1

    .line 263
    invoke-static {}, Lcom/powervision/natives/JniAp03Native;->getDroneVersion()I

    move-result v0

    return v0
.end method

.method public getHardwareVersionCode()I
    .locals 1

    .line 304
    invoke-static {}, Lcom/powervision/natives/JniAp03Native;->getHardwareVersionCode()I

    move-result v0

    return v0
.end method

.method public getHomePoint()I
    .locals 1

    .line 296
    invoke-static {}, Lcom/powervision/natives/JniAp03Native;->getHomePoint()I

    move-result v0

    return v0
.end method

.method public getNotifyOnConnectLinkResultListener()Lcom/powervision/natives/PowerSDKCallback$NotifyOnConnectLinkResultListener;
    .locals 1

    .line 774
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->notifyOnConnectLinkResultListener:Lcom/powervision/natives/PowerSDKCallback$NotifyOnConnectLinkResultListener;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)I
    .locals 0

    .line 175
    invoke-static {p1}, Lcom/powervision/natives/JniAp03Native;->getParameter(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getRemainingRtlTime()I
    .locals 1

    .line 276
    invoke-static {}, Lcom/powervision/natives/JniAp03Native;->getRemainingRtlTime()I

    move-result v0

    return v0
.end method

.method public getRemoteDl01UpgradeStatusList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/powervision/natives/callback/RemoteStatusCallback$RemoteDl01UpgradeStatusListener;",
            ">;"
        }
    .end annotation

    .line 828
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->mRemoteDl01UpgradeStatusList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public getRemoteGetBootLoaderStatusListenerList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/powervision/natives/callback/RemoteStatusCallback$RemoteGetBootLoaderStatusListener;",
            ">;"
        }
    .end annotation

    .line 1343
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->remoteGetBootLoaderStatusListenerList:Ljava/util/List;

    return-object v0
.end method

.method public getSubAttributesStatus()Lcom/powervision/natives/callback/SystemStatusCallback$SubAttributesStatus;
    .locals 1

    .line 580
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->subAttributesStatus:Lcom/powervision/natives/callback/SystemStatusCallback$SubAttributesStatus;

    return-object v0
.end method

.method public getTakeoffPoint()I
    .locals 1

    .line 291
    invoke-static {}, Lcom/powervision/natives/JniAp03Native;->getTakeoffPoint()I

    move-result v0

    return v0
.end method

.method public initBodyCallBack()V
    .locals 0

    .line 50
    invoke-static {}, Lcom/powervision/natives/JniAp03Native;->registerAp03Callbacks()I

    return-void
.end method

.method public initGimalCallBack()V
    .locals 0

    .line 46
    invoke-static {}, Lcom/powervision/natives/JniGimbalNative;->registerGimbalCallbacks()I

    return-void
.end method

.method public initPowerSDK()V
    .locals 2

    const-string v0, "POWERSDK"

    const-string v1, "====>initPowerSDK"

    .line 35
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "p_camera"

    const-string v1, "  camera .initPowerSDK\uff08\uff09\u3002\u3002\u3002 JniCameraNative.registerCallbacks()"

    .line 38
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public initRemote()V
    .locals 0

    .line 42
    invoke-static {}, Lcom/powervision/natives/JniCameraNative;->registerCallbacks()I

    return-void
.end method

.method public integrationUpgrade(Ljava/lang/String;)I
    .locals 0

    .line 203
    invoke-static {p1}, Lcom/powervision/natives/JniAp03Native;->integrationUpgrade(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public intergrationUpgradeGetUpgradeStatus()I
    .locals 1

    .line 325
    invoke-static {}, Lcom/powervision/natives/JniAp03Native;->intergrationUpgradeGetUpgradeStatus()I

    move-result v0

    return v0
.end method

.method public intergrationUpgradeGetVersion()I
    .locals 1

    .line 195
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    sget-boolean v0, Lcom/powervision/natives/PVSDK_W4_API;->SDKAVILIBALE:Z

    if-eqz v0, :cond_0

    .line 196
    invoke-static {}, Lcom/powervision/natives/JniAp03Native;->intergrationUpgradeGetVersion()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public land()I
    .locals 1

    .line 86
    invoke-static {}, Lcom/powervision/natives/JniAp03Native;->land()I

    move-result v0

    return v0
.end method

.method public landProtectUserFeedback(I)I
    .locals 0

    .line 259
    invoke-static {p1}, Lcom/powervision/natives/JniAp03Native;->landProtectUserFeedback(I)I

    move-result p1

    return p1
.end method

.method public mcuUpgrade(Ljava/lang/String;)I
    .locals 0

    .line 465
    invoke-static {p1}, Lcom/powervision/natives/JniRemoteNative;->mcuUpgrade(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public noFlyZoneOperate(I)I
    .locals 0

    .line 227
    invoke-static {p1}, Lcom/powervision/natives/JniAp03Native;->noFlyZoneOperate(I)I

    move-result p1

    return p1
.end method

.method public notifyAp03BatteryUpgradeResult(II)V
    .locals 3

    .line 1458
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnBatteryUpgradeResultListeners:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1459
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnBatteryUpgradeResultListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 1474
    :pswitch_0
    iget-object v2, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnBatteryUpgradeResultListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryUpgradeResultListener;

    invoke-interface {v2, p2}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryUpgradeResultListener;->setBatteryUpgradeResultCodeTriggerTimeout(I)V

    goto :goto_1

    .line 1484
    :pswitch_1
    iget-object v2, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnBatteryUpgradeResultListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryUpgradeResultListener;

    invoke-interface {v2, p2}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryUpgradeResultListener;->setBatteryUpgradeResultCodeTriggerPercent(I)V

    goto :goto_1

    .line 1471
    :pswitch_2
    iget-object v2, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnBatteryUpgradeResultListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryUpgradeResultListener;

    invoke-interface {v2, p2}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryUpgradeResultListener;->setBatteryUpgradeResultCodeTriggerFailed(I)V

    goto :goto_1

    .line 1468
    :pswitch_3
    iget-object v2, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnBatteryUpgradeResultListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryUpgradeResultListener;

    invoke-interface {v2, p2}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryUpgradeResultListener;->setBatteryUpgradeResultCodeTriggerSuccess(I)V

    goto :goto_1

    .line 1481
    :pswitch_4
    iget-object v2, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnBatteryUpgradeResultListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryUpgradeResultListener;

    invoke-interface {v2, p2}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryUpgradeResultListener;->setBatteryUpgradeResultCodeQueryTimeout(I)V

    goto :goto_1

    .line 1465
    :pswitch_5
    iget-object v2, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnBatteryUpgradeResultListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryUpgradeResultListener;

    invoke-interface {v2, p2}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryUpgradeResultListener;->setBatteryUpgradeResultCodeAutoFailed(I)V

    goto :goto_1

    .line 1477
    :pswitch_6
    iget-object v2, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnBatteryUpgradeResultListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryUpgradeResultListener;

    invoke-interface {v2, p2}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryUpgradeResultListener;->setBatteryUpgradeResultCodeAutoInprogress(I)V

    goto :goto_1

    .line 1462
    :pswitch_7
    iget-object v2, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnBatteryUpgradeResultListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryUpgradeResultListener;

    invoke-interface {v2, p2}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryUpgradeResultListener;->setBatteryUpgradeResultCodeAutoSuccess(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1490
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public notifyOnArmStatusWarningListeners(Ljava/lang/String;)V
    .locals 3

    .line 653
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnArmStatusWarningListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 654
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 655
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnArmStatusWarningListener;

    invoke-interface {v2, p1}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnArmStatusWarningListener;->getArmStatus(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public nowLowPowerReturn()I
    .locals 1

    .line 166
    invoke-static {}, Lcom/powervision/natives/JniAp03Native;->nowLowPowerReturn()I

    move-result v0

    return v0
.end method

.method public pauseFollow()I
    .locals 1

    .line 128
    invoke-static {}, Lcom/powervision/natives/JniAp03Native;->pauseFollow()I

    move-result v0

    return v0
.end method

.method public queryActivationStatus()I
    .locals 1

    .line 251
    invoke-static {}, Lcom/powervision/natives/JniAp03Native;->queryActivationStatus()I

    move-result v0

    return v0
.end method

.method public queryBatteryUpgradeStatus()I
    .locals 1

    .line 315
    invoke-static {}, Lcom/powervision/natives/JniAp03Native;->queryBatteryUpgradeStatus()I

    move-result v0

    return v0
.end method

.method public refuseLowPowerReturn()I
    .locals 1

    .line 162
    invoke-static {}, Lcom/powervision/natives/JniAp03Native;->refuseLowPowerReturn()I

    move-result v0

    return v0
.end method

.method public remoteConnectLink()I
    .locals 1

    .line 425
    invoke-static {}, Lcom/powervision/natives/JniRemoteNative;->remoteConnectLink()I

    move-result v0

    return v0
.end method

.method public remoteDisConnectLink()I
    .locals 1

    .line 429
    invoke-static {}, Lcom/powervision/natives/JniRemoteNative;->remoteDisConnectLink()I

    move-result v0

    return v0
.end method

.method public removeAp03BatteryUpgradeListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryUpgradeResultListener;)V
    .locals 2

    .line 1494
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnBatteryUpgradeResultListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1495
    :try_start_0
    iget-object v1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnBatteryUpgradeResultListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1496
    iget-object v1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnBatteryUpgradeResultListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1498
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeAp03IntegrationUpgradeGetVersionStatusListener(Lcom/powervision/natives/callback/UpgradeCallback$Ap03OnIntegrationUpgradeGetVersionStatusListener;)V
    .locals 2

    .line 970
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03UpgradeGetVersionStatusListenerList:Ljava/util/List;

    monitor-enter v0

    .line 971
    :try_start_0
    iget-object v1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03UpgradeGetVersionStatusListenerList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 972
    iget-object v1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03UpgradeGetVersionStatusListenerList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 974
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeAp03NotifyOnArmStatusWarningListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnArmStatusWarningListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 647
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnArmStatusWarningListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnBatteryUpgradeResultListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeSetGetDl01OperationResultListener(Lcom/powervision/natives/PowerSDKCallback$NotifyOnSetGetDl01OperationResultListener;)V
    .locals 1

    .line 788
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->mNotifyOnSetGetDl01OperationResultListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->mNotifyOnSetGetDl01OperationResultListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public resetAllParam()I
    .locals 1

    .line 417
    invoke-static {}, Lcom/powervision/natives/JniGimbalNative;->resetAllParam()I

    move-result v0

    return v0
.end method

.method public rtl()I
    .locals 1

    .line 91
    invoke-static {}, Lcom/powervision/natives/JniAp03Native;->rtl()I

    move-result v0

    return v0
.end method

.method public sendNoFlyZoneFile(Ljava/lang/String;)I
    .locals 0

    .line 223
    invoke-static {p1}, Lcom/powervision/natives/JniAp03Native;->sendNoFlyZoneFile(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public sendTrajectoryData([F[F[F[F[FIZ)I
    .locals 0

    .line 235
    invoke-static/range {p1 .. p7}, Lcom/powervision/natives/JniAp03Native;->sendTrajectoryData([F[F[F[F[FIZ)I

    move-result p1

    return p1
.end method

.method public setAp03NotifyOnAccCalibrationStatusListener(Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnAccCalibrationStatusListener;)V
    .locals 0

    .line 1019
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnAccCalibrationStatusListener:Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnAccCalibrationStatusListener;

    return-void
.end method

.method public setAp03NotifyOnAirConnectLinkResultListener(Lcom/powervision/natives/PowerSDKCallback$NotifyOnAirConnectLinkResultListener;)V
    .locals 0

    .line 806
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnAirConnectLinkResultListener:Lcom/powervision/natives/PowerSDKCallback$NotifyOnAirConnectLinkResultListener;

    return-void
.end method

.method public setAp03NotifyOnAirSetGetDl01OperationResultListener(Lcom/powervision/natives/PowerSDKCallback$NotifyOnAirSetGetDl01OperationResultListener;)V
    .locals 0

    .line 816
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnAirSetGetDl01OperationResultListener:Lcom/powervision/natives/PowerSDKCallback$NotifyOnAirSetGetDl01OperationResultListener;

    return-void
.end method

.method public setAp03NotifyOnAllowNoFlyZoneArmResultListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnAllowNoFlyZoneArmResultListener;)V
    .locals 0

    .line 1512
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnAllowNoFlyZoneArmResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnAllowNoFlyZoneArmResultListener;

    return-void
.end method

.method public setAp03NotifyOnAttitudeListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnAttitudeListener;)V
    .locals 0

    .line 523
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnAttitudeListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnAttitudeListener;

    return-void
.end method

.method public setAp03NotifyOnBatteryStatusListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryStatusListener;)V
    .locals 0

    .line 677
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnBatteryStatusListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryStatusListener;

    return-void
.end method

.method public setAp03NotifyOnBatteryUpgradeResultListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryUpgradeResultListener;)V
    .locals 0

    .line 1434
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnBatteryUpgradeResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryUpgradeResultListener;

    return-void
.end method

.method public setAp03NotifyOnBatteryWarningListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryWarningListener;)V
    .locals 0

    .line 624
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnBatteryWarningListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryWarningListener;

    return-void
.end method

.method public setAp03NotifyOnCalibrationOffsetListener(Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnCalibrationOffsetListener;)V
    .locals 0

    .line 1030
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnCalibrationOffsetListener:Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnCalibrationOffsetListener;

    return-void
.end method

.method public setAp03NotifyOnCancelCalibrationResultListener(Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnCancelCalibrationResultListener;)V
    .locals 0

    .line 1040
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnCancelCalibrationResultListener:Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnCancelCalibrationResultListener;

    return-void
.end method

.method public setAp03NotifyOnConfirmDisarmResultListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnConfirmDisarmResultListener;)V
    .locals 0

    .line 1375
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnConfirmDisarmResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnConfirmDisarmResultListener;

    return-void
.end method

.method public setAp03NotifyOnConnectActivationResultListener(Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnConnectActivationResultListener;)V
    .locals 0

    .line 1115
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnConnectActivationResultListener:Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnConnectActivationResultListener;

    return-void
.end method

.method public setAp03NotifyOnCurrentModeListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnCurrentModeListener;)V
    .locals 0

    .line 563
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnCurrentModeListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnCurrentModeListener;

    return-void
.end method

.method public setAp03NotifyOnCurrentSysStatusListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnCurrentSysStatusListener;)V
    .locals 0

    .line 594
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnCurrentSysStatusListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnCurrentSysStatusListener;

    return-void
.end method

.method public setAp03NotifyOnDistanceSensorStatusListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnDistanceSensorStatusListener;)V
    .locals 0

    .line 1362
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->mAp03NotifyOnDistanceSensorStatusListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnDistanceSensorStatusListener;

    return-void
.end method

.method public setAp03NotifyOnEnableActivationListener(Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnEnableActivationListener;)V
    .locals 0

    .line 1135
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnEnableActivationListener:Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnEnableActivationListener;

    return-void
.end method

.method public setAp03NotifyOnFlyWarningListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnFlyWarningListener;)V
    .locals 0

    .line 614
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnFlyWarningListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnFlyWarningListener;

    return-void
.end method

.method public setAp03NotifyOnFollowCurrentListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnFollowCurrentListener;)V
    .locals 0

    .line 707
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnFollowCurrentListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnFollowCurrentListener;

    return-void
.end method

.method public setAp03NotifyOnFrontDistanceListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnFrontDistanceListener;)V
    .locals 0

    .line 667
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnFrontDistanceListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnFrontDistanceListener;

    return-void
.end method

.method public setAp03NotifyOnGetActivationCodeListener(Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnGetActivationCodeListener;)V
    .locals 0

    .line 1146
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnGetActivationCodeListener:Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnGetActivationCodeListener;

    return-void
.end method

.method public setAp03NotifyOnGetActivationSnCodeListener(Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnGetActivationSnCodeListener;)V
    .locals 0

    .line 1157
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnGetActivationSnCodeListener:Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnGetActivationSnCodeListener;

    return-void
.end method

.method public setAp03NotifyOnGetDroneVertionListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetDroneVertionListener;)V
    .locals 0

    .line 849
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnGetDroneVertionListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetDroneVertionListener;

    return-void
.end method

.method public setAp03NotifyOnGetHomePositionResultListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetHomePositionResultListener;)V
    .locals 0

    .line 1401
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnGetHomePositionResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetHomePositionResultListener;

    return-void
.end method

.method public setAp03NotifyOnGetRemainingRtlTimeResultListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetRemainingRtlTimeResultListener;)V
    .locals 0

    .line 1091
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnGetRemainingRtlTimeResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetRemainingRtlTimeResultListener;

    return-void
.end method

.method public setAp03NotifyOnGetTakeoffPointResultListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetTakeoffPointResultListener;)V
    .locals 0

    .line 1388
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnGetTakeoffPointResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetTakeoffPointResultListener;

    return-void
.end method

.method public setAp03NotifyOnGimbalAttitudeListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalAttitudeListener;)V
    .locals 0

    .line 757
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnGimbalAttitudeListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalAttitudeListener;

    return-void
.end method

.method public setAp03NotifyOnGimbalCalibrationResultListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalCalibrationResultListener;)V
    .locals 0

    .line 1235
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnGimbalCalibrationResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalCalibrationResultListener;

    return-void
.end method

.method public setAp03NotifyOnGimbalParameterResultFloatListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalParameterResultFloatListener;)V
    .locals 0

    .line 1215
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnGimbalParameterResultFloatListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalParameterResultFloatListener;

    return-void
.end method

.method public setAp03NotifyOnGimbalParameterResultIntListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalParameterResultIntListener;)V
    .locals 0

    .line 1205
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnGimbalParameterResultIntListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalParameterResultIntListener;

    return-void
.end method

.method public setAp03NotifyOnGimbalParameterResultLongListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalParameterResultLongListener;)V
    .locals 0

    .line 1225
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnGimbalParameterResultLongListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalParameterResultLongListener;

    return-void
.end method

.method public setAp03NotifyOnGimbalStatusListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalStatusListener;)V
    .locals 0

    .line 767
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnGimbalStatusListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalStatusListener;

    return-void
.end method

.method public setAp03NotifyOnGpsRawIntListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGpsRawIntListener;)V
    .locals 0

    .line 503
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnGpsRawIntListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGpsRawIntListener;

    return-void
.end method

.method public setAp03NotifyOnGyroCalibrationStatusListener(Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnGyroCalibrationStatusListener;)V
    .locals 0

    .line 997
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnGyroCalibrationStatusListener:Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnGyroCalibrationStatusListener;

    return-void
.end method

.method public setAp03NotifyOnHighresImuListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnHighresImuListener;)V
    .locals 0

    .line 604
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnHighresImuListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnHighresImuListener;

    return-void
.end method

.method public setAp03NotifyOnHornStatusWarningListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnHornStatusWarningListener;)V
    .locals 0

    .line 634
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnHornStatusWarningListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnHornStatusWarningListener;

    return-void
.end method

.method public setAp03NotifyOnIntegrationUpgradeGetUpgradeStatusListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnIntegrationUpgradeGetUpgradeStatusListener;)V
    .locals 0

    .line 1525
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnIntegrationUpgradeGetUpgradeStatusListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnIntegrationUpgradeGetUpgradeStatusListener;

    return-void
.end method

.method public setAp03NotifyOnIntegrationUpgradeStatusListener(Lcom/powervision/natives/callback/UpgradeCallback$Ap03NotifyOnIntegrationUpgradeStatusListener;)V
    .locals 0

    .line 986
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnIntegrationUpgradeStatusListener:Lcom/powervision/natives/callback/UpgradeCallback$Ap03NotifyOnIntegrationUpgradeStatusListener;

    return-void
.end method

.method public setAp03NotifyOnLandListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnLandListener;)V
    .locals 0

    .line 543
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnLandListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnLandListener;

    return-void
.end method

.method public setAp03NotifyOnLandProtectStatusListener(Lcom/powervision/natives/callback/LandProtectCallback$Ap03NotifyOnLandProtectStatusListener;)V
    .locals 0

    .line 1169
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnLandProtectStatusListener:Lcom/powervision/natives/callback/LandProtectCallback$Ap03NotifyOnLandProtectStatusListener;

    return-void
.end method

.method public setAp03NotifyOnLandProtectUserFeedbackResultListener(Lcom/powervision/natives/callback/LandProtectCallback$Ap03NotifyOnLandProtectUserFeedbackResultListener;)V
    .locals 0

    .line 1179
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnLandProtectUserFeedbackResultListener:Lcom/powervision/natives/callback/LandProtectCallback$Ap03NotifyOnLandProtectUserFeedbackResultListener;

    return-void
.end method

.method public setAp03NotifyOnLocalPositionNedListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnLocalPositionNedListener;)V
    .locals 0

    .line 513
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnLocalPositionNedListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnLocalPositionNedListener;

    return-void
.end method

.method public setAp03NotifyOnMagCalibrationStatusListener(Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnMagCalibrationStatusListener;)V
    .locals 0

    .line 1008
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnMagCalibrationStatusListener:Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnMagCalibrationStatusListener;

    return-void
.end method

.method public setAp03NotifyOnNoFlyZoneOperateResultListener(Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnNoFlyZoneOperateResultListener;)V
    .locals 0

    .line 1050
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnNoFlyZoneOperateResultListener:Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnNoFlyZoneOperateResultListener;

    return-void
.end method

.method public setAp03NotifyOnPauseFollowListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnPauseFollowListener;)V
    .locals 0

    .line 900
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnPauseFollowListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnPauseFollowListener;

    return-void
.end method

.method public setAp03NotifyOnQueryActivationStatusListener(Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnQueryActivationStatusListener;)V
    .locals 0

    .line 1125
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnQueryActivationStatusListener:Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnQueryActivationStatusListener;

    return-void
.end method

.method public setAp03NotifyOnROISetParamResultListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnROISetParamResultListener;)V
    .locals 0

    .line 930
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnROISetParamResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnROISetParamResultListener;

    return-void
.end method

.method public setAp03NotifyOnRTLListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnRTLListener;)V
    .locals 0

    .line 553
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnRTLListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnRTLListener;

    return-void
.end method

.method public setAp03NotifyOnReceiveTimeLapsePhotoStatusListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnReceiveTimeLapsePhotoStatusListener;)V
    .locals 0

    .line 1578
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnReceiveTimeLapsePhotoStatusListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnReceiveTimeLapsePhotoStatusListener;

    return-void
.end method

.method public setAp03NotifyOnRemoteElectricResultListener(Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteElectricResultListener;)V
    .locals 0

    .line 1289
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnRemoteElectricResultListener:Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteElectricResultListener;

    return-void
.end method

.method public setAp03NotifyOnRemoteKeyResultListener(Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteKeyResultListener;)V
    .locals 0

    .line 1324
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnRemoteKeyResultListener:Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteKeyResultListener;

    return-void
.end method

.method public setAp03NotifyOnRemoteMcuUpgradeStatusListener(Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteMcuUpgradeStatusListener;)V
    .locals 0

    .line 1334
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnRemoteMcuUpgradeStatusListener:Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteMcuUpgradeStatusListener;

    return-void
.end method

.method public setAp03NotifyOnRemoteThumbwheelResultListener(Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteThumbwheelResultListener;)V
    .locals 0

    .line 1314
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnRemoteThumbwheelResultListener:Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteThumbwheelResultListener;

    return-void
.end method

.method public setAp03NotifyOnSendNoFlyZoneFileStatusListener(Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnSendNoFlyZoneFileStatusListener;)V
    .locals 0

    .line 1060
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnSendNoFlyZoneFileStatusListener:Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnSendNoFlyZoneFileStatusListener;

    return-void
.end method

.method public setAp03NotifyOnSetFollowModeListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetFollowModeListener;)V
    .locals 0

    .line 910
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnSetFollowModeListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetFollowModeListener;

    return-void
.end method

.method public setAp03NotifyOnSetFollowParamListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetFollowParamListener;)V
    .locals 0

    .line 920
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnSetFollowParamListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetFollowParamListener;

    return-void
.end method

.method public setAp03NotifyOnSetRainproofModeResultListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetRainproofModeResultListener;)V
    .locals 0

    .line 1552
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnSetRainproofModeResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetRainproofModeResultListener;

    return-void
.end method

.method public setAp03NotifyOnSetRefuseLowPowerReturnResultListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetRefuseLowPowerReturnResultListener;)V
    .locals 0

    .line 940
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnSetRefuseLowPowerReturnResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetRefuseLowPowerReturnResultListener;

    return-void
.end method

.method public setAp03NotifyOnSetReturnPointListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetReturnPointListener;)V
    .locals 0

    .line 717
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnSetReturnPointListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetReturnPointListener;

    return-void
.end method

.method public setAp03NotifyOnSetSubModeOneKeyVideoResultListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetSubModeOneKeyVideoResultListener;)V
    .locals 0

    .line 1190
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnSetSubModeOneKeyVideoResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetSubModeOneKeyVideoResultListener;

    return-void
.end method

.method public setAp03NotifyOnSetTimeLapsePhotoMaxSpeedResultListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetTimeLapsePhotoMaxSpeedResultListener;)V
    .locals 0

    .line 1565
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnSetTimeLapsePhotoMaxSpeedResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetTimeLapsePhotoMaxSpeedResultListener;

    return-void
.end method

.method public setAp03NotifyOnSetWaterproofCaseStatusResultListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetWaterproofCaseStatusResultListener;)V
    .locals 0

    .line 1101
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnSetWaterproofCaseStatusResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetWaterproofCaseStatusResultListener;

    return-void
.end method

.method public setAp03NotifyOnSmartFunctionCurrentListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSmartFunctionCurrentListener;)V
    .locals 0

    .line 697
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnSmartFunctionCurrentListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSmartFunctionCurrentListener;

    return-void
.end method

.method public setAp03NotifyOnStartFollowAndSetFollowModeListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnStartFollowAndSetFollowModeListener;)V
    .locals 0

    .line 727
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnStartFollowAndSetFollowModeListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnStartFollowAndSetFollowModeListener;

    return-void
.end method

.method public setAp03NotifyOnStartFollowListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnStartFollowListener;)V
    .locals 0

    .line 890
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnStartFollowListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnStartFollowListener;

    return-void
.end method

.method public setAp03NotifyOnStatusReportingListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnStatusReportingListener;)V
    .locals 0

    .line 1081
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnStatusReportingListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnStatusReportingListener;

    return-void
.end method

.method public setAp03NotifyOnStatusTextNotifyListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnStatusTextNotifyListener;)V
    .locals 0

    .line 1414
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnStatusTextNotifyListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnStatusTextNotifyListener;

    return-void
.end method

.method public setAp03NotifyOnSubModeExecuteStatusListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSubModeExecuteStatusListener;)V
    .locals 0

    .line 573
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnSubModeExecuteStatusListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSubModeExecuteStatusListener;

    return-void
.end method

.method public setAp03NotifyOnSubModeTrajDataResultListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSubModeTrajDataResultListener;)V
    .locals 0

    .line 1071
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnSubModeTrajDataResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSubModeTrajDataResultListener;

    return-void
.end method

.method public setAp03NotifyOnTakeoffListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnTakeoffListener;)V
    .locals 0

    .line 533
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnTakeoffListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnTakeoffListener;

    return-void
.end method

.method public setAp03NotifyOnVisionDetectListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnVisionDetectListener;)V
    .locals 0

    .line 747
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnVisionDetectListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnVisionDetectListener;

    return-void
.end method

.method public setAp03NotifyOnVisionTrackListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnVisionTrackListener;)V
    .locals 0

    .line 687
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyOnVisionTrackListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnVisionTrackListener;

    return-void
.end method

.method public setAp03NotifyRemoteCalibarListener(Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteCalibraResultListener;)V
    .locals 0

    .line 1269
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyRemoteCalibarListener:Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteCalibraResultListener;

    return-void
.end method

.method public setAp03NotifyRemoteConnectLinkListener(Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyRemoteConnectLinkListener;)V
    .locals 0

    .line 1249
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyRemoteConnectLinkListener:Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyRemoteConnectLinkListener;

    return-void
.end method

.method public setAp03NotifyRemoteConnectListener(Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyRemoteConnectListener;)V
    .locals 0

    .line 1259
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyRemoteConnectListener:Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyRemoteConnectListener;

    return-void
.end method

.method public setAp03NotifySmartFunctionStatusListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifySmartFunctionStatusListener;)V
    .locals 0

    .line 951
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifySmartFunctionStatusListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifySmartFunctionStatusListener;

    return-void
.end method

.method public setAp03NotifyonGetActivationHwCodeListener(Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyonGetActivationHwCodeListener;)V
    .locals 0

    .line 1426
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyonGetActivationHwCodeListener:Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyonGetActivationHwCodeListener;

    return-void
.end method

.method public setAp03NotifyonParameterResultFloatListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyonParameterResultFloatListener;)V
    .locals 0

    .line 869
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyonParameterResultFloatListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyonParameterResultFloatListener;

    return-void
.end method

.method public setAp03NotifyonParameterResultIntListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyonParameterResultIntListener;)V
    .locals 0

    .line 859
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyonParameterResultIntListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyonParameterResultIntListener;

    return-void
.end method

.method public setAp03NotifyonParameterResultLongListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyonParameterResultLongListener;)V
    .locals 0

    .line 879
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyonParameterResultLongListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyonParameterResultLongListener;

    return-void
.end method

.method public setAp03NotifyonPauseFollowAndSetFollowModeListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyonPauseFollowAndSetFollowModeListener;)V
    .locals 0

    .line 737
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyonPauseFollowAndSetFollowModeListener:Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyonPauseFollowAndSetFollowModeListener;

    return-void
.end method

.method public setAp03NotifyonRemoteParameterResultIntListener(Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyonRemoteParameterResultIntListener;)V
    .locals 0

    .line 1279
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03NotifyonRemoteParameterResultIntListener:Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyonRemoteParameterResultIntListener;

    return-void
.end method

.method public setAp03OnResetAllParamResultListener(Lcom/powervision/natives/PowerSDKCallback$Ap03OnResetAllParamResultListener;)V
    .locals 0

    .line 1539
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->ap03OnResetAllParamResultListener:Lcom/powervision/natives/PowerSDKCallback$Ap03OnResetAllParamResultListener;

    return-void
.end method

.method public setConnectionDevicceListener(Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionDevicceListener;)V
    .locals 0

    .line 492
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->connectionDevicceListener:Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionDevicceListener;

    return-void
.end method

.method public setConnectionLinkListener(Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionLinkListener;)V
    .locals 0

    .line 481
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->connectionLinkListener:Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionLinkListener;

    return-void
.end method

.method public setFlightingMode(II)I
    .locals 1

    .line 110
    sget-boolean v0, Lcom/powervision/natives/PVSDK_W4_API;->SDKAVILIBALE:Z

    if-eqz v0, :cond_0

    .line 111
    invoke-static {p1, p2}, Lcom/powervision/natives/JniAp03Native;->setFlightingMode(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public setFollowParam(Lcom/powervision/natives/callback/FollowParamCallback;)I
    .locals 7

    .line 133
    iget v0, p1, Lcom/powervision/natives/callback/FollowParamCallback;->height:F

    iget v1, p1, Lcom/powervision/natives/callback/FollowParamCallback;->distance:F

    iget v2, p1, Lcom/powervision/natives/callback/FollowParamCallback;->velocity:F

    iget v3, p1, Lcom/powervision/natives/callback/FollowParamCallback;->switchFraming:I

    iget v4, p1, Lcom/powervision/natives/callback/FollowParamCallback;->frame:I

    iget v5, p1, Lcom/powervision/natives/callback/FollowParamCallback;->followSwitch:I

    iget v6, p1, Lcom/powervision/natives/callback/FollowParamCallback;->followEnable:I

    invoke-static/range {v0 .. v6}, Lcom/powervision/natives/JniAp03Native;->setFollowParam(FFFIIII)I

    move-result p1

    return p1
.end method

.method public setGetOperation(ILjava/lang/String;I)I
    .locals 1

    .line 349
    sget-boolean v0, Lcom/powervision/natives/PVSDK_W4_API;->SDKAVILIBALE:Z

    if-eqz v0, :cond_0

    .line 350
    invoke-static {p1, p2, p3}, Lcom/powervision/natives/JniDl01Native;->setGetOperation(ILjava/lang/String;I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public setGimbalAngle(III)I
    .locals 1

    .line 384
    sget-boolean v0, Lcom/powervision/natives/PVSDK_W4_API;->SDKAVILIBALE:Z

    if-eqz v0, :cond_0

    .line 385
    invoke-static {p1, p2, p3}, Lcom/powervision/natives/JniGimbalNative;->setGimbalAngle(III)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public setGimbalPalstance(III)I
    .locals 1

    .line 376
    sget-boolean v0, Lcom/powervision/natives/PVSDK_W4_API;->SDKAVILIBALE:Z

    if-eqz v0, :cond_0

    .line 377
    invoke-static {p1, p2, p3}, Lcom/powervision/natives/JniGimbalNative;->setGimbalPalstance(III)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public setNotifyOnConnectLinkResultListener(Lcom/powervision/natives/PowerSDKCallback$NotifyOnConnectLinkResultListener;)V
    .locals 0

    .line 778
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->notifyOnConnectLinkResultListener:Lcom/powervision/natives/PowerSDKCallback$NotifyOnConnectLinkResultListener;

    return-void
.end method

.method public setNoviceModeAltitudeLimit(J)I
    .locals 0

    .line 158
    invoke-static {p1, p2}, Lcom/powervision/natives/JniAp03Native;->setNoviceModeAltitudeLimit(J)I

    move-result p1

    return p1
.end method

.method public setRainproofMode(I)I
    .locals 0

    .line 330
    invoke-static {p1}, Lcom/powervision/natives/JniAp03Native;->setRainproofMode(I)I

    move-result p1

    return p1
.end method

.method public setRemoteDl01UpgradeStatusListener(Lcom/powervision/natives/callback/RemoteStatusCallback$RemoteDl01UpgradeStatusListener;)V
    .locals 1

    .line 837
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->mRemoteDl01UpgradeStatusList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->mRemoteDl01UpgradeStatusList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setRemoteGetBootLoaderStatusListener(Lcom/powervision/natives/callback/RemoteStatusCallback$RemoteGetBootLoaderStatusListener;)V
    .locals 1

    .line 1347
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->remoteGetBootLoaderStatusListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1348
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_AP03_API;->remoteGetBootLoaderStatusListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setReturnPoint(IFFF)I
    .locals 0

    .line 153
    invoke-static {p1, p2, p3, p4}, Lcom/powervision/natives/JniAp03Native;->setReturnPoint(IFFF)I

    move-result p1

    return p1
.end method

.method public setRoiParam(FFFFIIIII)I
    .locals 0

    .line 140
    invoke-static/range {p1 .. p9}, Lcom/powervision/natives/JniAp03Native;->setRoiParam(FFFFIIIII)I

    move-result p1

    return p1
.end method

.method public setSubAttributesStatus(Lcom/powervision/natives/callback/SystemStatusCallback$SubAttributesStatus;)V
    .locals 0

    .line 584
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_AP03_API;->subAttributesStatus:Lcom/powervision/natives/callback/SystemStatusCallback$SubAttributesStatus;

    return-void
.end method

.method public setSubModeOneKeyVideoROI(FFI)I
    .locals 0

    .line 271
    invoke-static {p1, p2, p3}, Lcom/powervision/natives/JniAp03Native;->setSubModeOneKeyVideoROI(FFI)I

    move-result p1

    return p1
.end method

.method public setTimeLapsePhotoMaxSpeed(F)I
    .locals 0

    .line 335
    invoke-static {p1}, Lcom/powervision/natives/JniAp03Native;->setTimeLapsePhotoMaxSpeed(F)I

    move-result p1

    return p1
.end method

.method public setUserLocation(II)I
    .locals 0

    .line 300
    invoke-static {p1, p2}, Lcom/powervision/natives/JniAp03Native;->setUserLocation(II)I

    move-result p1

    return p1
.end method

.method public setVisionTrackFrame(FFFFFIJ)I
    .locals 0

    .line 118
    invoke-static/range {p1 .. p8}, Lcom/powervision/natives/JniAp03Native;->setVisionTrackFrame(FFFFFIJ)I

    move-result p1

    return p1
.end method

.method public setWaterproofCaseStatus(I)I
    .locals 0

    .line 281
    invoke-static {p1}, Lcom/powervision/natives/JniAp03Native;->setWaterproofCaseStatus(I)I

    move-result p1

    return p1
.end method

.method public startAccelCalibration()I
    .locals 1

    .line 215
    invoke-static {}, Lcom/powervision/natives/JniAp03Native;->startAccelCalibration()I

    move-result v0

    return v0
.end method

.method public startCalibar()I
    .locals 1

    .line 441
    invoke-static {}, Lcom/powervision/natives/JniRemoteNative;->startCalibar()I

    move-result v0

    return v0
.end method

.method public startFollow()I
    .locals 1

    .line 123
    invoke-static {}, Lcom/powervision/natives/JniAp03Native;->startFollow()I

    move-result v0

    return v0
.end method

.method public startGyroCalibration()I
    .locals 1

    .line 207
    invoke-static {}, Lcom/powervision/natives/JniAp03Native;->startGyroCalibration()I

    move-result v0

    return v0
.end method

.method public startLevelCalibration()I
    .locals 1

    .line 219
    invoke-static {}, Lcom/powervision/natives/JniAp03Native;->startLevelCalibration()I

    move-result v0

    return v0
.end method

.method public startMagCalibration()I
    .locals 1

    .line 211
    invoke-static {}, Lcom/powervision/natives/JniAp03Native;->startMagCalibration()I

    move-result v0

    return v0
.end method

.method public startUpGimbalCalibration()I
    .locals 1

    .line 413
    invoke-static {}, Lcom/powervision/natives/JniGimbalNative;->startUpGimbalCalibration()I

    move-result v0

    return v0
.end method

.method public takeoff()I
    .locals 1

    .line 81
    invoke-static {}, Lcom/powervision/natives/JniAp03Native;->takeoff()I

    move-result v0

    return v0
.end method

.method public uninitPowerSDK()V
    .locals 0

    .line 55
    invoke-static {}, Lcom/powervision/natives/JniCommonNative;->unInitSDK()I

    return-void
.end method

.method public uploadFloatParameter(Ljava/lang/String;F)I
    .locals 0

    .line 183
    invoke-static {p1, p2}, Lcom/powervision/natives/JniAp03Native;->uploadFloatParameter(Ljava/lang/String;F)I

    move-result p1

    return p1
.end method

.method public uploadGimbalFloatParameter(Ljava/lang/String;F)I
    .locals 0

    .line 398
    invoke-static {p1, p2}, Lcom/powervision/natives/JniGimbalNative;->uploadGimbalFloatParameter(Ljava/lang/String;F)I

    move-result p1

    return p1
.end method

.method public uploadGimbalIntParameter(Ljava/lang/String;I)I
    .locals 1

    .line 391
    sget-boolean v0, Lcom/powervision/natives/PVSDK_W4_API;->SDKAVILIBALE:Z

    if-eqz v0, :cond_0

    .line 392
    invoke-static {p1, p2}, Lcom/powervision/natives/JniGimbalNative;->uploadGimbalIntParameter(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public uploadGimbalLongParameter(Ljava/lang/String;J)I
    .locals 0

    long-to-float p2, p2

    .line 402
    invoke-static {p1, p2}, Lcom/powervision/natives/JniGimbalNative;->uploadGimbalLongParameter(Ljava/lang/String;F)I

    move-result p1

    return p1
.end method

.method public uploadIntParameter(Ljava/lang/String;I)I
    .locals 0

    .line 179
    invoke-static {p1, p2}, Lcom/powervision/natives/JniAp03Native;->uploadIntParameter(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public uploadLongParameter(Ljava/lang/String;J)I
    .locals 0

    .line 187
    invoke-static {p1, p2, p3}, Lcom/powervision/natives/JniAp03Native;->uploadLongParameter(Ljava/lang/String;J)I

    move-result p1

    return p1
.end method

.method public uploadRemoteFloatParameter(Ljava/lang/String;F)I
    .locals 0

    .line 453
    invoke-static {p1, p2}, Lcom/powervision/natives/JniRemoteNative;->uploadRemoteFloatParameter(Ljava/lang/String;F)I

    move-result p1

    return p1
.end method

.method public uploadRemoteIntParameter(Ljava/lang/String;I)I
    .locals 0

    .line 449
    invoke-static {p1, p2}, Lcom/powervision/natives/JniRemoteNative;->uploadRemoteIntParameter(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public uploadRemoteLongParameter(Ljava/lang/String;J)I
    .locals 0

    .line 457
    invoke-static {p1, p2, p3}, Lcom/powervision/natives/JniRemoteNative;->uploadRemoteLongParameter(Ljava/lang/String;J)I

    move-result p1

    return p1
.end method
