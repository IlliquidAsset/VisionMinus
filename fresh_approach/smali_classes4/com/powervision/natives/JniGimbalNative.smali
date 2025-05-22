.class public Lcom/powervision/natives/JniGimbalNative;
.super Ljava/lang/Object;
.source "JniGimbalNative.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static Ap03NotifyOnGimbalAttitudeListener(III)V
    .locals 1

    .line 29
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnGimbalAttitudeListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalAttitudeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnGimbalAttitudeListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalAttitudeListener;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalAttitudeListener;->getGimbalAttitude(III)V

    :cond_0
    return-void
.end method

.method static Ap03NotifyOnGimbalCalibrationResultListener(Ljava/lang/String;I)V
    .locals 1

    .line 60
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnGimbalParameterResultIntListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalParameterResultIntListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnGimbalCalibrationResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalCalibrationResultListener;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalCalibrationResultListener;->getGimbalCalibrationResult(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method static Ap03NotifyOnGimbalParameterResultFloatListener(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 1

    .line 48
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnGimbalParameterResultFloatListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalParameterResultFloatListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnGimbalParameterResultFloatListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalParameterResultFloatListener;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalParameterResultFloatListener;->setGetGimbalParameterResult(Ljava/lang/String;Ljava/lang/String;F)V

    :cond_0
    return-void
.end method

.method static Ap03NotifyOnGimbalParameterResultIntListener(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 42
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnGimbalParameterResultIntListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalParameterResultIntListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnGimbalParameterResultIntListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalParameterResultIntListener;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalParameterResultIntListener;->setGetGimbalParameterResult(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method static Ap03NotifyOnGimbalParameterResultLongListener(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .line 54
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnGimbalParameterResultLongListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalParameterResultLongListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnGimbalParameterResultLongListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalParameterResultLongListener;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalParameterResultLongListener;->setGetGimbalParameterResult(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method static Ap03NotifyOnGimbalStatusListener([I)V
    .locals 1

    .line 36
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnGimbalStatusListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnGimbalStatusListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalStatusListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalStatusListener;->getGimbalStatus([I)V

    :cond_0
    return-void
.end method

.method static Ap03OnResetAllParamResultListener(I)V
    .locals 1

    .line 66
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03OnResetAllParamResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03OnResetAllParamResultListener;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03OnResetAllParamResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03OnResetAllParamResultListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/PowerSDKCallback$Ap03OnResetAllParamResultListener;->setGimbalResetAllParamResultinfoTimeout()V

    goto :goto_0

    .line 72
    :cond_1
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03OnResetAllParamResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03OnResetAllParamResultListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/PowerSDKCallback$Ap03OnResetAllParamResultListener;->setGimbalResetAllParamResultinfoSuccess()V

    goto :goto_0

    .line 69
    :cond_2
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03OnResetAllParamResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03OnResetAllParamResultListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/PowerSDKCallback$Ap03OnResetAllParamResultListener;->setGimbalResetAllParamResultinfoFailed()V

    :cond_3
    :goto_0
    return-void
.end method

.method public static native downloadGimbalParameter(Ljava/lang/String;)I
.end method

.method public static native registerGimbalCallbacks()I
.end method

.method public static native resetAllParam()I
.end method

.method public static native setGimbalAngle(III)I
.end method

.method public static native setGimbalPalstance(III)I
.end method

.method public static native startUpGimbalCalibration()I
.end method

.method public static native uploadGimbalFloatParameter(Ljava/lang/String;F)I
.end method

.method public static native uploadGimbalIntParameter(Ljava/lang/String;I)I
.end method

.method public static native uploadGimbalLongParameter(Ljava/lang/String;F)I
.end method
