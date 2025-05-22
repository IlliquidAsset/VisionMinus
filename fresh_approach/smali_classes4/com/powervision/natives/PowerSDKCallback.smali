.class public Lcom/powervision/natives/PowerSDKCallback;
.super Ljava/lang/Object;
.source "PowerSDKCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnReceiveTimeLapsePhotoStatusListener;,
        Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetTimeLapsePhotoMaxSpeedResultListener;,
        Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetRainproofModeResultListener;,
        Lcom/powervision/natives/PowerSDKCallback$Ap03OnResetAllParamResultListener;,
        Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnIntegrationUpgradeGetUpgradeStatusListener;,
        Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnAllowNoFlyZoneArmResultListener;,
        Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryUpgradeResultListener;,
        Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnStatusTextNotifyListener;,
        Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetHomePositionResultListener;,
        Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetTakeoffPointResultListener;,
        Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnConfirmDisarmResultListener;,
        Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnDistanceSensorStatusListener;,
        Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetWaterproofCaseStatusResultListener;,
        Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetRemainingRtlTimeResultListener;,
        Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnStatusReportingListener;,
        Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetSubModeOneKeyVideoResultListener;,
        Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSubModeTrajDataResultListener;,
        Lcom/powervision/natives/PowerSDKCallback$Ap03NotifySmartFunctionStatusListener;,
        Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetRefuseLowPowerReturnResultListener;,
        Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnROISetParamResultListener;,
        Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetFollowParamListener;,
        Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetFollowModeListener;,
        Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnPauseFollowListener;,
        Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnStartFollowListener;,
        Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalCalibrationResultListener;,
        Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalParameterResultLongListener;,
        Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalParameterResultFloatListener;,
        Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalParameterResultIntListener;,
        Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyonParameterResultLongListener;,
        Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyonParameterResultFloatListener;,
        Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyonParameterResultIntListener;,
        Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetDroneVertionListener;,
        Lcom/powervision/natives/PowerSDKCallback$NotifyOnAirSetGetDl01OperationResultListener;,
        Lcom/powervision/natives/PowerSDKCallback$NotifyOnAirConnectLinkResultListener;,
        Lcom/powervision/natives/PowerSDKCallback$NotifyOnSetGetDl01OperationResultListener;,
        Lcom/powervision/natives/PowerSDKCallback$NotifyOnConnectLinkResultListener;,
        Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalStatusListener;,
        Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalAttitudeListener;,
        Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnVisionDetectListener;,
        Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyonPauseFollowAndSetFollowModeListener;,
        Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnStartFollowAndSetFollowModeListener;,
        Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetReturnPointListener;,
        Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnFollowCurrentListener;,
        Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSmartFunctionCurrentListener;,
        Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnVisionTrackListener;,
        Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryStatusListener;,
        Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnFrontDistanceListener;,
        Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnArmStatusWarningListener;,
        Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnHornStatusWarningListener;,
        Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryWarningListener;,
        Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnFlyWarningListener;,
        Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnHighresImuListener;,
        Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnCurrentSysStatusListener;,
        Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSubModeExecuteStatusListener;,
        Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnCurrentModeListener;,
        Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnRTLListener;,
        Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnLandListener;,
        Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnTakeoffListener;,
        Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnAttitudeListener;,
        Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnLocalPositionNedListener;,
        Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGpsRawIntListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
