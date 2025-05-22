.class public Lcom/powervision/natives/JniW4Native;
.super Ljava/lang/Object;
.source "JniW4Native.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "lzqMission"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static W4ConnectDeviceCallBackFromJni(I)V
    .locals 2

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deviceStatus "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqjava"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getConnectionDevicceListener()Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionDevicceListener;

    move-result-object v0

    if-eqz v0, :cond_6

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getConnectionDevicceListener()Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionDevicceListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionDevicceListener;->onHeartbeatTimeOut()V

    goto :goto_0

    .line 160
    :cond_1
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getConnectionDevicceListener()Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionDevicceListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionDevicceListener;->onHeartbeatRecovered()V

    goto :goto_0

    .line 157
    :cond_2
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getConnectionDevicceListener()Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionDevicceListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionDevicceListener;->onDeviceConnectTimeOut()V

    goto :goto_0

    .line 154
    :cond_3
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getConnectionDevicceListener()Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionDevicceListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionDevicceListener;->onDeviceDisConnected()V

    goto :goto_0

    .line 151
    :cond_4
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getConnectionDevicceListener()Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionDevicceListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionDevicceListener;->onDeviceConnectFailed()V

    goto :goto_0

    .line 148
    :cond_5
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getConnectionDevicceListener()Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionDevicceListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionDevicceListener;->onDeviceConnectSuccess()V

    :cond_6
    :goto_0
    return-void
.end method

.method static W4ConnectLinkCallBackFromJni(I)V
    .locals 1

    .line 87
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getConnectionLinkListener()Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionLinkListener;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getConnectionLinkListener()Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionLinkListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionLinkListener;->onConnectTimeOut()V

    goto :goto_0

    .line 96
    :cond_1
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getConnectionLinkListener()Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionLinkListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionLinkListener;->onDisConnected()V

    goto :goto_0

    .line 93
    :cond_2
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getConnectionLinkListener()Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionLinkListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionLinkListener;->onConnectFailed()V

    goto :goto_0

    .line 90
    :cond_3
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getConnectionLinkListener()Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionLinkListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionLinkListener;->onConnectSuccess()V

    :cond_4
    :goto_0
    return-void
.end method

.method static W4LightInfoCallBackFromJni(I)V
    .locals 2

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "W4LightInfoCallBackFromJni "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqlight"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getLightControlListener()Lcom/powervision/natives/callback/DophinCallback$LightControlListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getLightControlListener()Lcom/powervision/natives/callback/DophinCallback$LightControlListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/callback/DophinCallback$LightControlListener;->lightControl(I)V

    :cond_0
    return-void
.end method

.method static W4OnGpsRawIntCallBackFromJni(IIIIB)V
    .locals 7

    .line 175
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getGpsRawIntListener()Lcom/powervision/natives/callback/PositionCallback$GpsRawIntListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getGpsRawIntListener()Lcom/powervision/natives/callback/PositionCallback$GpsRawIntListener;

    move-result-object v1

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p4

    move v6, p3

    invoke-interface/range {v1 .. v6}, Lcom/powervision/natives/callback/PositionCallback$GpsRawIntListener;->onGPSRawIntChanged(IIIII)V

    :cond_0
    return-void
.end method

.method static W4SetLightCallBackFromJni(I)V
    .locals 0

    return-void
.end method

.method static W4onElectricQuantityDisplayCallBackFromJni(IIB)V
    .locals 1

    .line 184
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getOnElectricQuantityDisplayListener()Lcom/powervision/natives/callback/SystemStatusCallback$onElectricQuantityDisplayListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getOnElectricQuantityDisplayListener()Lcom/powervision/natives/callback/SystemStatusCallback$onElectricQuantityDisplayListener;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/powervision/natives/callback/SystemStatusCallback$onElectricQuantityDisplayListener;->onElectric(IIB)V

    :cond_0
    return-void
.end method

.method static W4onSailModeCallBackFromJni(I)V
    .locals 2

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "W4onSailModeCallBackFromJni: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqMission"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getOnSailModeListener()Lcom/powervision/natives/callback/DophinCallback$onSailModeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getOnSailModeListener()Lcom/powervision/natives/callback/DophinCallback$onSailModeListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/callback/DophinCallback$onSailModeListener;->onSailModeChanged(I)V

    :cond_0
    return-void
.end method

.method static W4onSpeedModeCallBackFromJni(I)V
    .locals 2

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "W4onSpeedModeCallBackFromJni: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqMission"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getRayConstantSpeedModeListener()Lcom/powervision/natives/callback/DophinCallback$RayConstantSpeedModeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getRayConstantSpeedModeListener()Lcom/powervision/natives/callback/DophinCallback$RayConstantSpeedModeListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/callback/DophinCallback$RayConstantSpeedModeListener;->constantSpeedMode(I)V

    :cond_0
    return-void
.end method

.method public static native alterBodyIp(Ljava/lang/String;I)V
.end method

.method public static native bodyUpgrade(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native cancelMagCalibration()I
.end method

.method public static native connectDevice()I
.end method

.method public static native connectLink()I
.end method

.method public static native controlLight(I)I
.end method

.method public static native controlRocker(Lcom/powervision/natives/model/Rocker;)I
.end method

.method public static native disConnectLink()I
.end method

.method public static native disconnectDevice()V
.end method

.method public static native downloadParameter(Ljava/lang/String;)I
.end method

.method public static native downloadWaypoint()I
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 3

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    mul-int/lit8 v2, v1, 0x8

    ushr-int v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    .line 375
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 377
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static native mappingWayPoint(Lcom/powervision/natives/param/MapWayPoint;)Ljava/lang/Object;
.end method

.method static onArmStatusCallBackFromJni(I)V
    .locals 2

    .line 236
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getArmStatusListener()Lcom/powervision/natives/callback/DophinCallback$RayArmStatusListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u52a0\u89e3\u9501\u62ff\u5230\u7684\u72b6\u6001 \uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqShip"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    .line 240
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getArmStatusListener()Lcom/powervision/natives/callback/DophinCallback$RayArmStatusListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/DophinCallback$RayArmStatusListener;->rayArm()V

    goto :goto_0

    .line 243
    :cond_0
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getArmStatusListener()Lcom/powervision/natives/callback/DophinCallback$RayArmStatusListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/DophinCallback$RayArmStatusListener;->rayDisarm()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static onAttitudeCallBack(FFF)V
    .locals 1

    .line 108
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getAttitudeAndGroundspeedChangedListener()Lcom/powervision/natives/callback/PositionCallback$AttitudeAndGroundspeedChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getAttitudeAndGroundspeedChangedListener()Lcom/powervision/natives/callback/PositionCallback$AttitudeAndGroundspeedChangedListener;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/powervision/natives/callback/PositionCallback$AttitudeAndGroundspeedChangedListener;->onAttitudeAndGroundSpeedChanged(FFF)V

    .line 111
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "yaw:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "lzqyaw"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static onBattaryDetailCallBackFromJni(SB[I)V
    .locals 1

    .line 279
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getBatteryStatusListener()Lcom/powervision/natives/callback/SystemStatusCallback$BatteryStatusListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 280
    new-instance v0, Lcom/powervision/natives/param/BatteryStatusNotifyParam;

    invoke-direct {v0}, Lcom/powervision/natives/param/BatteryStatusNotifyParam;-><init>()V

    .line 281
    iput p1, v0, Lcom/powervision/natives/param/BatteryStatusNotifyParam;->battery_remaining:I

    .line 282
    iput p0, v0, Lcom/powervision/natives/param/BatteryStatusNotifyParam;->temperature:I

    .line 283
    array-length p0, p2

    const/16 p1, 0xa

    if-ne p0, p1, :cond_0

    .line 284
    iput-object p2, v0, Lcom/powervision/natives/param/BatteryStatusNotifyParam;->voltages:[I

    .line 286
    :cond_0
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getBatteryStatusListener()Lcom/powervision/natives/callback/SystemStatusCallback$BatteryStatusListener;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/powervision/natives/callback/SystemStatusCallback$BatteryStatusListener;->onBatteryStatus(Lcom/powervision/natives/param/BatteryStatusNotifyParam;)V

    :cond_1
    return-void
.end method

.method public static onBodyUpgradeCallBack(IILjava/lang/String;)V
    .locals 2

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", info "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , filename: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqup"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getBodyUpgradCallBack()Lcom/powervision/natives/callback/W4UpgradeCallBack$BodyUpgradCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getBodyUpgradCallBack()Lcom/powervision/natives/callback/W4UpgradeCallBack$BodyUpgradCallBack;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/powervision/natives/callback/W4UpgradeCallBack$BodyUpgradCallBack;->onUpgradeBody(IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method static onDownloadWaypointResultCallBackFromJni(Ljava/lang/Object;S)V
    .locals 2

    .line 439
    check-cast p0, Ljava/util/ArrayList;

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0b\u8f7d\u822a\u70b9:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqMission"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getMissionDownLoadListener()Lcom/powervision/natives/callback/MissionCallback$MissionDownLoadListener;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 452
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/natives/PVSDK_W4_API;->getMissionDownLoadListener()Lcom/powervision/natives/callback/MissionCallback$MissionDownLoadListener;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/powervision/natives/callback/MissionCallback$MissionDownLoadListener;->onMissionSuccessAndDownLoadWayPoints(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 454
    :cond_0
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getMissionDownLoadListener()Lcom/powervision/natives/callback/MissionCallback$MissionDownLoadListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/MissionCallback$MissionDownLoadListener;->onMissionFailed()V

    :cond_1
    :goto_0
    return-void
.end method

.method static onExecuteReturnOverCallBackFromJni()V
    .locals 2

    const-string v0, "lzqJava"

    const-string v1, " onExecuteReturnOver in java"

    .line 483
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static onFixedSpeedCallBack(I)V
    .locals 1

    .line 136
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getFixedSpeedCruiseListener()Lcom/powervision/natives/callback/DophinCallback$DolphinFixedSpeedCruiseListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getFixedSpeedCruiseListener()Lcom/powervision/natives/callback/DophinCallback$DolphinFixedSpeedCruiseListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/callback/DophinCallback$DolphinFixedSpeedCruiseListener;->dolphinFixedSpeedCruise(I)V

    :cond_0
    return-void
.end method

.method public static onHomeCallBack(II)V
    .locals 1

    .line 116
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getHomePositionListener()Lcom/powervision/natives/callback/PositionCallback$HomePositionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    new-instance v0, Lcom/powervision/natives/param/HomePositionNotifyParam;

    invoke-direct {v0}, Lcom/powervision/natives/param/HomePositionNotifyParam;-><init>()V

    .line 118
    iput p0, v0, Lcom/powervision/natives/param/HomePositionNotifyParam;->lat:I

    .line 119
    iput p1, v0, Lcom/powervision/natives/param/HomePositionNotifyParam;->lon:I

    .line 120
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getHomePositionListener()Lcom/powervision/natives/callback/PositionCallback$HomePositionListener;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/powervision/natives/callback/PositionCallback$HomePositionListener;->onHomePosition(Lcom/powervision/natives/param/HomePositionNotifyParam;)V

    :cond_0
    return-void
.end method

.method static onMagCalibrationStatusCallBackFromJni(I)V
    .locals 1

    .line 292
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getMagnetometerCalibrateListener()Lcom/powervision/natives/callback/SensorCallback$MagnetometerCalibrateListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 352
    :pswitch_1
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getMagnetometerCalibrateListener()Lcom/powervision/natives/callback/SensorCallback$MagnetometerCalibrateListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/SensorCallback$MagnetometerCalibrateListener;->onMagnetometerCalibrateTimeOut()V

    goto/16 :goto_0

    .line 349
    :pswitch_2
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getMagnetometerCalibrateListener()Lcom/powervision/natives/callback/SensorCallback$MagnetometerCalibrateListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/SensorCallback$MagnetometerCalibrateListener;->onMagnetometerCalibrateNeedsRotation()V

    goto/16 :goto_0

    .line 346
    :pswitch_3
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getMagnetometerCalibrateListener()Lcom/powervision/natives/callback/SensorCallback$MagnetometerCalibrateListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/SensorCallback$MagnetometerCalibrateListener;->onMagnetometerCalibrateTooFast()V

    goto/16 :goto_0

    .line 343
    :pswitch_4
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getMagnetometerCalibrateListener()Lcom/powervision/natives/callback/SensorCallback$MagnetometerCalibrateListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/SensorCallback$MagnetometerCalibrateListener;->onMagnetometerCalibrateCancelled()V

    goto/16 :goto_0

    .line 340
    :pswitch_5
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getMagnetometerCalibrateListener()Lcom/powervision/natives/callback/SensorCallback$MagnetometerCalibrateListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/SensorCallback$MagnetometerCalibrateListener;->onMagnetometerCalibrateFailed()V

    goto/16 :goto_0

    .line 337
    :pswitch_6
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getMagnetometerCalibrateListener()Lcom/powervision/natives/callback/SensorCallback$MagnetometerCalibrateListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/SensorCallback$MagnetometerCalibrateListener;->onMagnetometerCalibrateDone()V

    goto/16 :goto_0

    .line 334
    :pswitch_7
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getMagnetometerCalibrateListener()Lcom/powervision/natives/callback/SensorCallback$MagnetometerCalibrateListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/SensorCallback$MagnetometerCalibrateListener;->onMagnetometerCalibrateBackSideDone()V

    goto/16 :goto_0

    .line 331
    :pswitch_8
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getMagnetometerCalibrateListener()Lcom/powervision/natives/callback/SensorCallback$MagnetometerCalibrateListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/SensorCallback$MagnetometerCalibrateListener;->onMagnetometerCalibrateBackOrientationDetected()V

    goto/16 :goto_0

    .line 328
    :pswitch_9
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getMagnetometerCalibrateListener()Lcom/powervision/natives/callback/SensorCallback$MagnetometerCalibrateListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/SensorCallback$MagnetometerCalibrateListener;->onMagnetometerCalibrateFrontSideDone()V

    goto/16 :goto_0

    .line 325
    :pswitch_a
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getMagnetometerCalibrateListener()Lcom/powervision/natives/callback/SensorCallback$MagnetometerCalibrateListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/SensorCallback$MagnetometerCalibrateListener;->onMagnetometerCalibrateFrontOrientationDetected()V

    goto :goto_0

    .line 322
    :pswitch_b
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getMagnetometerCalibrateListener()Lcom/powervision/natives/callback/SensorCallback$MagnetometerCalibrateListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/SensorCallback$MagnetometerCalibrateListener;->onMagnetometerCalibrateDownSideDone()V

    goto :goto_0

    .line 319
    :pswitch_c
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getMagnetometerCalibrateListener()Lcom/powervision/natives/callback/SensorCallback$MagnetometerCalibrateListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/SensorCallback$MagnetometerCalibrateListener;->onMagnetometerCalibrateDownOrientationDetected()V

    goto :goto_0

    .line 316
    :pswitch_d
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getMagnetometerCalibrateListener()Lcom/powervision/natives/callback/SensorCallback$MagnetometerCalibrateListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/SensorCallback$MagnetometerCalibrateListener;->onMagnetometerCalibrateUpSideDone()V

    goto :goto_0

    .line 313
    :pswitch_e
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getMagnetometerCalibrateListener()Lcom/powervision/natives/callback/SensorCallback$MagnetometerCalibrateListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/SensorCallback$MagnetometerCalibrateListener;->onMagnetometerCalibrateUpOrientationDetected()V

    goto :goto_0

    .line 310
    :pswitch_f
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getMagnetometerCalibrateListener()Lcom/powervision/natives/callback/SensorCallback$MagnetometerCalibrateListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/SensorCallback$MagnetometerCalibrateListener;->onMagnetometerCalibrateRightSideDone()V

    goto :goto_0

    .line 307
    :pswitch_10
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getMagnetometerCalibrateListener()Lcom/powervision/natives/callback/SensorCallback$MagnetometerCalibrateListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/SensorCallback$MagnetometerCalibrateListener;->onMagnetometerCalibrateRightOrientationDetected()V

    goto :goto_0

    .line 304
    :pswitch_11
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getMagnetometerCalibrateListener()Lcom/powervision/natives/callback/SensorCallback$MagnetometerCalibrateListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/SensorCallback$MagnetometerCalibrateListener;->onMagnetometerCalibrateLeftSideDone()V

    goto :goto_0

    .line 301
    :pswitch_12
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getMagnetometerCalibrateListener()Lcom/powervision/natives/callback/SensorCallback$MagnetometerCalibrateListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/SensorCallback$MagnetometerCalibrateListener;->onMagnetometerCalibrateLeftOrientationDetected()V

    goto :goto_0

    .line 298
    :pswitch_13
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getMagnetometerCalibrateListener()Lcom/powervision/natives/callback/SensorCallback$MagnetometerCalibrateListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/SensorCallback$MagnetometerCalibrateListener;->onMagnetometerCalibrateInvalid()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static onMissionRunStatusCallBackFromJni(IS)V
    .locals 1

    .line 464
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getMissionRunListener()Lcom/powervision/natives/callback/MissionCallback$MissionRunListener;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 470
    :cond_0
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getMissionRunListener()Lcom/powervision/natives/callback/MissionCallback$MissionRunListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/powervision/natives/callback/MissionCallback$MissionRunListener;->onMissionRunReached(I)V

    goto :goto_0

    .line 467
    :cond_1
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getMissionRunListener()Lcom/powervision/natives/callback/MissionCallback$MissionRunListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/powervision/natives/callback/MissionCallback$MissionRunListener;->onMissionRunCurrent(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method static onModeErrorCallBackFromJni(Ljava/lang/String;)V
    .locals 2

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModeError :   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqWarnning"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getDolphinChangeModeErrorListener()Lcom/powervision/natives/callback/DophinCallback$DolphinChangeModeErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 399
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getDolphinChangeModeErrorListener()Lcom/powervision/natives/callback/DophinCallback$DolphinChangeModeErrorListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/callback/DophinCallback$DolphinChangeModeErrorListener;->DolphinChangeModeError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static onNestOpenerStatusCallBackFromJni(I)V
    .locals 1

    .line 267
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getNestOpenerStatusListener()Lcom/powervision/natives/callback/DophinCallback$NestOpenerStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 268
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getNestOpenerStatusListener()Lcom/powervision/natives/callback/DophinCallback$NestOpenerStatusListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/callback/DophinCallback$NestOpenerStatusListener;->nestOpener(I)V

    :cond_0
    return-void
.end method

.method static onParameterResultCallBackFromJni(Ljava/lang/String;SSF)V
    .locals 1

    .line 392
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/powervision/natives/PVSDK_W4_API;->notifyParameterResult(Ljava/lang/String;SSLjava/lang/Object;)V

    return-void
.end method

.method static onParameterResultCallBackFromJni(Ljava/lang/String;SSI)V
    .locals 2

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " int  value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqW4_body"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/powervision/natives/PVSDK_W4_API;->notifyParameterResult(Ljava/lang/String;SSLjava/lang/Object;)V

    return-void
.end method

.method static onParameterResultCallBackFromJni(Ljava/lang/String;SSJ)V
    .locals 1

    .line 384
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/powervision/natives/PVSDK_W4_API;->notifyParameterResult(Ljava/lang/String;SSLjava/lang/Object;)V

    return-void
.end method

.method static onSelfErrorResultCallBackFromJni(Ljava/lang/String;)V
    .locals 2

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selfEroor :   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqWarnning"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getDolphinSelfErrorListener()Lcom/powervision/natives/callback/DophinCallback$DolphinSelfErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 434
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getDolphinSelfErrorListener()Lcom/powervision/natives/callback/DophinCallback$DolphinSelfErrorListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/callback/DophinCallback$DolphinSelfErrorListener;->DolphinSelfError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static onSetArmResultCallBackFromJni(I)V
    .locals 2

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bbe\u7f6e\u52a0\u89e3\u9501\u62ff\u5230\u7684\u72b6\u6001 \uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqmission"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getSetArmListener()Lcom/powervision/natives/callback/DophinCallback$setArmListener;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p0, :cond_0

    .line 252
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getSetArmListener()Lcom/powervision/natives/callback/DophinCallback$setArmListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/DophinCallback$setArmListener;->setArmSuccess()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 254
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getSetArmListener()Lcom/powervision/natives/callback/DophinCallback$setArmListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/DophinCallback$setArmListener;->setArmFailed()V

    goto :goto_0

    .line 256
    :cond_1
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getSetArmListener()Lcom/powervision/natives/callback/DophinCallback$setArmListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/DophinCallback$setArmListener;->setArmTimeOut()V

    :cond_2
    :goto_0
    return-void
.end method

.method static onSetNestOpenerResultCallBackFromJni(I)V
    .locals 0

    return-void
.end method

.method static onSetSailModeResultCallBackFromJni(I)V
    .locals 2

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetSailModeResultCallBackFromJni: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "lzqMission"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static onSetSpeedModeResultCallBackFromJni(I)V
    .locals 0

    return-void
.end method

.method static onStatusErrorResultCallBackFromJni(Ljava/lang/String;)V
    .locals 2

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusError :   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqWarnning"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getDolphinStatusErrorListener()Lcom/powervision/natives/callback/DophinCallback$DolphinStatusErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 414
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getDolphinStatusErrorListener()Lcom/powervision/natives/callback/DophinCallback$DolphinStatusErrorListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/callback/DophinCallback$DolphinStatusErrorListener;->DolphinStatusError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static onSysErrorResultCallBackFromJni(Ljava/lang/String;)V
    .locals 2

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SysError :   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqWarnning"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getDolphinSysErrorListener()Lcom/powervision/natives/callback/DophinCallback$DolphinSysErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 407
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getDolphinSysErrorListener()Lcom/powervision/natives/callback/DophinCallback$DolphinSysErrorListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/callback/DophinCallback$DolphinSysErrorListener;->DolphinSysError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static onUploadWaypointResultCallBackFromJni(I)V
    .locals 2

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUploadWaypointResultCallBackFromJni:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqmission"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getMissionUploadListener()Lcom/powervision/natives/callback/MissionCallback$MissionUploadListener;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p0, :cond_0

    .line 422
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getMissionUploadListener()Lcom/powervision/natives/callback/MissionCallback$MissionUploadListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/MissionCallback$MissionUploadListener;->uploadSuccess()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 424
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getMissionUploadListener()Lcom/powervision/natives/callback/MissionCallback$MissionUploadListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/MissionCallback$MissionUploadListener;->uploadFailed()V

    goto :goto_0

    .line 426
    :cond_1
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getMissionUploadListener()Lcom/powervision/natives/callback/MissionCallback$MissionUploadListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/MissionCallback$MissionUploadListener;->uploadTimeOut()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static native reSet()V
.end method

.method public static native registerW4Callbacks()I
.end method

.method public static native setArmStatus(I)I
.end method

.method public static native setGimbalPitch(S)V
.end method

.method public static native setNestOpenerStatus(I)I
.end method

.method public static native setSailMode(I)I
.end method

.method public static native setSpeedMode(I)I
.end method

.method public static native startMagCalibration()I
.end method

.method public static native test()V
.end method

.method public static native uploadParameter(Ljava/lang/String;F)I
.end method

.method public static native uploadParameter(Ljava/lang/String;J)I
.end method

.method public static native uploadWaypoint([Lcom/powervision/natives/model/WayPointParameter;)I
.end method
