.class public Lcom/powervision/natives/JniAp03Native;
.super Ljava/lang/Object;
.source "JniAp03Native.java"


# static fields
.field public static volatile ele:F = -1.0f


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static Ap03NotifyConnectDeviceListener(I)V
    .locals 2

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JNI Ap03NotifyConnect Device Listener = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqAp03"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getConnectionDevicceListener()Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionDevicceListener;

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

    .line 178
    :cond_0
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getConnectionDevicceListener()Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionDevicceListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionDevicceListener;->onHeartbeatTimeOut()V

    goto :goto_0

    .line 175
    :cond_1
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getConnectionDevicceListener()Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionDevicceListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionDevicceListener;->onHeartbeatRecovered()V

    goto :goto_0

    .line 172
    :cond_2
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getConnectionDevicceListener()Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionDevicceListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionDevicceListener;->onDeviceConnectTimeOut()V

    goto :goto_0

    .line 169
    :cond_3
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getConnectionDevicceListener()Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionDevicceListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionDevicceListener;->onDeviceDisConnected()V

    goto :goto_0

    .line 166
    :cond_4
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getConnectionDevicceListener()Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionDevicceListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionDevicceListener;->onDeviceConnectFailed()V

    goto :goto_0

    .line 163
    :cond_5
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getConnectionDevicceListener()Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionDevicceListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionDevicceListener;->onDeviceConnectSuccess()V

    :cond_6
    :goto_0
    return-void
.end method

.method static Ap03NotifyConnectLinkListener(I)V
    .locals 2

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JNI Ap03NotifyConnect Link Listener = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqAp03"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getConnectionLinkListener()Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionLinkListener;

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

    .line 151
    :cond_0
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getConnectionLinkListener()Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionLinkListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionLinkListener;->onConnectTimeOut()V

    goto :goto_0

    .line 148
    :cond_1
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getConnectionLinkListener()Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionLinkListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionLinkListener;->onDisConnected()V

    goto :goto_0

    .line 145
    :cond_2
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getConnectionLinkListener()Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionLinkListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionLinkListener;->onConnectFailed()V

    goto :goto_0

    .line 142
    :cond_3
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getConnectionLinkListener()Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionLinkListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionLinkListener;->onConnectSuccess()V

    :cond_4
    :goto_0
    return-void
.end method

.method static Ap03NotifyOnAccCalibrationStatusListener(II)V
    .locals 1

    .line 598
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnAccCalibrationStatusListener()Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnAccCalibrationStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_0

    .line 628
    :pswitch_0
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnAccCalibrationStatusListener()Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnAccCalibrationStatusListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnAccCalibrationStatusListener;->setAccCalibrationStatusCalibrationTimeout()V

    goto :goto_0

    .line 625
    :pswitch_1
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnAccCalibrationStatusListener()Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnAccCalibrationStatusListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnAccCalibrationStatusListener;->setAccCalibrationStatusCalibrationSuccess()V

    goto :goto_0

    .line 622
    :pswitch_2
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnAccCalibrationStatusListener()Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnAccCalibrationStatusListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnAccCalibrationStatusListener;->setAccCalibrationStatusCalibrationFailed()V

    goto :goto_0

    .line 619
    :pswitch_3
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnAccCalibrationStatusListener()Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnAccCalibrationStatusListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnAccCalibrationStatusListener;->setAccCalibrationStatusAlreadyCompleted(I)V

    goto :goto_0

    .line 616
    :pswitch_4
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnAccCalibrationStatusListener()Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnAccCalibrationStatusListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnAccCalibrationStatusListener;->setAccCalibrationStatusPending(I)V

    goto :goto_0

    .line 613
    :pswitch_5
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnAccCalibrationStatusListener()Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnAccCalibrationStatusListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnAccCalibrationStatusListener;->setAccCalibrationStatusSideDone(I)V

    goto :goto_0

    .line 610
    :pswitch_6
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnAccCalibrationStatusListener()Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnAccCalibrationStatusListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnAccCalibrationStatusListener;->setAccCalibrationStatusOrientationDetected(I)V

    goto :goto_0

    .line 607
    :pswitch_7
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnAccCalibrationStatusListener()Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnAccCalibrationStatusListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnAccCalibrationStatusListener;->setAccCalibrationStatusCalibration(I)V

    goto :goto_0

    .line 604
    :pswitch_8
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnAccCalibrationStatusListener()Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnAccCalibrationStatusListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnAccCalibrationStatusListener;->setAccCalibrationStatusStartFailed()V

    goto :goto_0

    .line 601
    :pswitch_9
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnAccCalibrationStatusListener()Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnAccCalibrationStatusListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnAccCalibrationStatusListener;->setAccCalibrationStatusStartSuccess()V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
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

.method static Ap03NotifyOnAllowNoFlyZoneArmResultListener(I)V
    .locals 1

    .line 1014
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnAllowNoFlyZoneArmResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnAllowNoFlyZoneArmResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1015
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnAllowNoFlyZoneArmResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnAllowNoFlyZoneArmResultListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnAllowNoFlyZoneArmResultListener;->onAllowNoFlyZoneArmResult(I)V

    :cond_0
    return-void
.end method

.method static Ap03NotifyOnArmStatusWarningListener(Ljava/lang/String;)V
    .locals 1

    .line 316
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_AP03_API;->notifyOnArmStatusWarningListeners(Ljava/lang/String;)V

    return-void
.end method

.method static Ap03NotifyOnAttitudeListener(FFF)V
    .locals 1

    .line 205
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnAttitudeListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnAttitudeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnAttitudeListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnAttitudeListener;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnAttitudeListener;->attitude(FFF)V

    :cond_0
    return-void
.end method

.method static Ap03NotifyOnBatteryStatusListener(III[IIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v4, p3

    .line 335
    array-length v0, v4

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    .line 336
    aget v0, v4, v1

    int-to-double v0, v0

    const/4 v2, 0x5

    aget v3, v4, v2

    int-to-double v5, v3

    const-wide v7, 0x3fa999999999999aL    # 0.05

    mul-double v5, v5, v7

    sub-double/2addr v0, v5

    double-to-float v0, v0

    float-to-double v0, v0

    aget v3, v4, v2

    int-to-double v5, v3

    aget v2, v4, v2

    int-to-double v2, v2

    mul-double v2, v2, v7

    sub-double/2addr v5, v2

    div-double/2addr v0, v5

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    double-to-float v0, v0

    sput v0, Lcom/powervision/natives/JniAp03Native;->ele:F

    .line 339
    :cond_0
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnBatteryStatusListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryStatusListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 340
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnBatteryStatusListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryStatusListener;

    move-result-object v0

    move/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    invoke-interface/range {v0 .. v17}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryStatusListener;->getBatteryStatus(III[IIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static Ap03NotifyOnBatteryUpgradeResultListener(II)V
    .locals 2

    .line 953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqAp03"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_0

    .line 991
    :pswitch_0
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnBatteryUpgradeResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryUpgradeResultListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 992
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnBatteryUpgradeResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryUpgradeResultListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryUpgradeResultListener;->setBatteryUpgradeResultCodeTriggerTimeout(I)V

    goto/16 :goto_0

    .line 1004
    :pswitch_1
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnBatteryUpgradeResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryUpgradeResultListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1005
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnBatteryUpgradeResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryUpgradeResultListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryUpgradeResultListener;->setBatteryUpgradeResultCodeTriggerPercent(I)V

    goto/16 :goto_0

    .line 987
    :pswitch_2
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnBatteryUpgradeResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryUpgradeResultListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 988
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnBatteryUpgradeResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryUpgradeResultListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryUpgradeResultListener;->setBatteryUpgradeResultCodeTriggerFailed(I)V

    goto :goto_0

    .line 983
    :pswitch_3
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnBatteryUpgradeResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryUpgradeResultListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 984
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnBatteryUpgradeResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryUpgradeResultListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryUpgradeResultListener;->setBatteryUpgradeResultCodeTriggerSuccess(I)V

    goto :goto_0

    .line 1000
    :pswitch_4
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnBatteryUpgradeResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryUpgradeResultListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1001
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnBatteryUpgradeResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryUpgradeResultListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryUpgradeResultListener;->setBatteryUpgradeResultCodeQueryTimeout(I)V

    goto :goto_0

    .line 979
    :pswitch_5
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnBatteryUpgradeResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryUpgradeResultListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 980
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnBatteryUpgradeResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryUpgradeResultListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryUpgradeResultListener;->setBatteryUpgradeResultCodeAutoFailed(I)V

    goto :goto_0

    .line 995
    :pswitch_6
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnBatteryUpgradeResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryUpgradeResultListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 996
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnBatteryUpgradeResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryUpgradeResultListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryUpgradeResultListener;->setBatteryUpgradeResultCodeAutoInprogress(I)V

    goto :goto_0

    .line 975
    :pswitch_7
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnBatteryUpgradeResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryUpgradeResultListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 976
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnBatteryUpgradeResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryUpgradeResultListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryUpgradeResultListener;->setBatteryUpgradeResultCodeAutoSuccess(I)V

    :cond_0
    :goto_0
    return-void

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

.method static Ap03NotifyOnBatteryWarningListener(Ljava/lang/String;)V
    .locals 1

    .line 302
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnBatteryWarningListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryWarningListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 303
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnBatteryWarningListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryWarningListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryWarningListener;->getBatteryWarningInfo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static Ap03NotifyOnCalibrationOffsetListener(FF)V
    .locals 1

    .line 715
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnCalibrationOffsetListener()Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnCalibrationOffsetListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 716
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnCalibrationOffsetListener()Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnCalibrationOffsetListener;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnCalibrationOffsetListener;->getCalibrationOffset(FF)V

    :cond_0
    return-void
.end method

.method static Ap03NotifyOnCancelCalibrationResultListener(I)V
    .locals 1

    .line 721
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnCancelCalibrationResultListener()Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnCancelCalibrationResultListener;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 730
    :cond_0
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnCancelCalibrationResultListener()Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnCancelCalibrationResultListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnCancelCalibrationResultListener;->setCancelCalibrationFailed()V

    goto :goto_0

    .line 727
    :cond_1
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnCancelCalibrationResultListener()Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnCancelCalibrationResultListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnCancelCalibrationResultListener;->setCancelCalibrationTimeOut()V

    goto :goto_0

    .line 724
    :cond_2
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnCancelCalibrationResultListener()Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnCancelCalibrationResultListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnCancelCalibrationResultListener;->setCancelCalibrationSuccess()V

    :cond_3
    :goto_0
    return-void
.end method

.method static Ap03NotifyOnConfirmDisarmResultListener(I)V
    .locals 1

    .line 903
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnConfirmDisarmResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnConfirmDisarmResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 904
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnConfirmDisarmResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnConfirmDisarmResultListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnConfirmDisarmResultListener;->onConfirmDisarmStatus(I)V

    :cond_0
    return-void
.end method

.method static Ap03NotifyOnConnectActivationResultListener(I)V
    .locals 1

    .line 737
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnConnectActivationResultListener()Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnConnectActivationResultListener;

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

    .line 749
    :cond_0
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnConnectActivationResultListener()Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnConnectActivationResultListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnConnectActivationResultListener;->setConnectActivationLinkDisconnect()V

    goto :goto_0

    .line 746
    :cond_1
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnConnectActivationResultListener()Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnConnectActivationResultListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnConnectActivationResultListener;->setConnectActivationLinkTimeout()V

    goto :goto_0

    .line 743
    :cond_2
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnConnectActivationResultListener()Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnConnectActivationResultListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnConnectActivationResultListener;->setConnectActivationLinkFailed()V

    goto :goto_0

    .line 740
    :cond_3
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnConnectActivationResultListener()Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnConnectActivationResultListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnConnectActivationResultListener;->setConnectActivationLinkSuccess()V

    :cond_4
    :goto_0
    return-void
.end method

.method static Ap03NotifyOnCurrentModeListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 233
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnCurrentModeListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnCurrentModeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 234
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnCurrentModeListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnCurrentModeListener;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnCurrentModeListener;->getMode(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static Ap03NotifyOnCurrentSysStatusListener(IIIIII)V
    .locals 8

    .line 275
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnCurrentSysStatusListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnCurrentSysStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 276
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnCurrentSysStatusListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnCurrentSysStatusListener;

    move-result-object v1

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnCurrentSysStatusListener;->getBatteryState(IIIIII)V

    :cond_0
    return-void
.end method

.method static Ap03NotifyOnDistanceSensorStatusListener(I)V
    .locals 1

    .line 896
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnDistanceSensorStatusListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnDistanceSensorStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 897
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnDistanceSensorStatusListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnDistanceSensorStatusListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnDistanceSensorStatusListener;->onDistanceSensorStatus(I)V

    :cond_0
    return-void
.end method

.method static Ap03NotifyOnEnableActivationListener(I)V
    .locals 1

    .line 772
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnEnableActivationListener()Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnEnableActivationListener;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 781
    :cond_0
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnEnableActivationListener()Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnEnableActivationListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnEnableActivationListener;->setEnableActivationResultTimeout()V

    goto :goto_0

    .line 778
    :cond_1
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnEnableActivationListener()Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnEnableActivationListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnEnableActivationListener;->setEnableActivationResultFailed()V

    goto :goto_0

    .line 775
    :cond_2
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnEnableActivationListener()Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnEnableActivationListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnEnableActivationListener;->setEnableActivationResultSuccess()V

    :cond_3
    :goto_0
    return-void
.end method

.method static Ap03NotifyOnFlyWarningListener(Ljava/lang/String;)V
    .locals 1

    .line 295
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnFlyWarningListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnFlyWarningListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 296
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnFlyWarningListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnFlyWarningListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnFlyWarningListener;->getFlyWarningInfo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static Ap03NotifyOnFollowCurrentListener(FF)V
    .locals 1

    .line 367
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnFollowCurrentListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnFollowCurrentListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 368
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnFollowCurrentListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnFollowCurrentListener;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnFollowCurrentListener;->getCurrentFollow(FF)V

    :cond_0
    return-void
.end method

.method static Ap03NotifyOnFrontDistanceListener([F)V
    .locals 1

    .line 321
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnFrontDistanceListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnFrontDistanceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 322
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnFrontDistanceListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnFrontDistanceListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnFrontDistanceListener;->getFrontDistance([F)V

    :cond_0
    return-void
.end method

.method static Ap03NotifyOnGetActivationCodeListener(ILjava/lang/String;)V
    .locals 1

    .line 788
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnGetActivationCodeListener()Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnGetActivationCodeListener;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    goto :goto_0

    .line 794
    :cond_0
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnGetActivationCodeListener()Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnGetActivationCodeListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnGetActivationCodeListener;->setGetActivationCodeResultTimeout()V

    goto :goto_0

    .line 791
    :cond_1
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnGetActivationCodeListener()Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnGetActivationCodeListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnGetActivationCodeListener;->setGetActivationCodeResultSuccess(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static Ap03NotifyOnGetActivationSnCodeListener(ILjava/lang/String;)V
    .locals 1

    .line 801
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnGetActivationSnCodeListener()Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnGetActivationSnCodeListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_2

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    goto :goto_0

    .line 809
    :cond_1
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnGetActivationSnCodeListener()Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnGetActivationSnCodeListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnGetActivationSnCodeListener;->setGetPSNCodeResultTimeout()V

    goto :goto_0

    .line 806
    :cond_2
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnGetActivationSnCodeListener()Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnGetActivationSnCodeListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnGetActivationSnCodeListener;->setGetPSNCodeResultSuccess(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static Ap03NotifyOnGetDroneVertionListener(Ljava/lang/String;I)V
    .locals 1

    .line 403
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnGetDroneVertionListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetDroneVertionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 404
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnGetDroneVertionListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetDroneVertionListener;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetDroneVertionListener;->getDroneVertion(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method static Ap03NotifyOnGetHomePositionResultListener(IIII)V
    .locals 1

    .line 917
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnGetHomePositionResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetHomePositionResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 918
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnGetHomePositionResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetHomePositionResultListener;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetHomePositionResultListener;->getHomePositionResult(IIII)V

    :cond_0
    return-void
.end method

.method static Ap03NotifyOnGetRemainingRtlTimeResultListener(II)V
    .locals 1

    .line 871
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnGetRemainingRtlTimeResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetRemainingRtlTimeResultListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_3

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    goto :goto_0

    .line 882
    :cond_1
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnGetRemainingRtlTimeResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetRemainingRtlTimeResultListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetRemainingRtlTimeResultListener;->setCommonResultFailed()V

    goto :goto_0

    .line 879
    :cond_2
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnGetRemainingRtlTimeResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetRemainingRtlTimeResultListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetRemainingRtlTimeResultListener;->setCommonResultTimeout()V

    goto :goto_0

    .line 876
    :cond_3
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnGetRemainingRtlTimeResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetRemainingRtlTimeResultListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetRemainingRtlTimeResultListener;->setCommonResultSuccess(I)V

    :goto_0
    return-void
.end method

.method static Ap03NotifyOnGetTakeoffPointResultListener(III)V
    .locals 1

    .line 910
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnGetTakeoffPointResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetTakeoffPointResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 911
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnGetTakeoffPointResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetTakeoffPointResultListener;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetTakeoffPointResultListener;->getTakeoffPointResult(III)V

    :cond_0
    return-void
.end method

.method static Ap03NotifyOnGpsRawIntListener(IIIIIIIIIIIIII)V
    .locals 16

    .line 189
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnGpsRawIntListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGpsRawIntListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnGpsRawIntListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGpsRawIntListener;

    move-result-object v1

    move/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    invoke-interface/range {v1 .. v15}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGpsRawIntListener;->getGpsRawIntData(IIIIIIIIIIIIII)V

    :cond_0
    return-void
.end method

.method static Ap03NotifyOnGyroCalibrationStatusListener(II)V
    .locals 1

    .line 527
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnGyroCalibrationStatusListener()Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnGyroCalibrationStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 554
    :pswitch_0
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnGyroCalibrationStatusListener()Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnGyroCalibrationStatusListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnGyroCalibrationStatusListener;->setGyroCalibrationStatusCalibrationTimeout()V

    goto :goto_0

    .line 551
    :pswitch_1
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnGyroCalibrationStatusListener()Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnGyroCalibrationStatusListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnGyroCalibrationStatusListener;->setGyroCalibrationStatusCalibrationSuccess()V

    goto :goto_0

    .line 548
    :pswitch_2
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnGyroCalibrationStatusListener()Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnGyroCalibrationStatusListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnGyroCalibrationStatusListener;->setGyroCalibrationStatusCalibrationFailed()V

    goto :goto_0

    .line 545
    :pswitch_3
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnGyroCalibrationStatusListener()Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnGyroCalibrationStatusListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnGyroCalibrationStatusListener;->setGyroCalibrationStatusFailedToSetParams()V

    goto :goto_0

    .line 542
    :pswitch_4
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnGyroCalibrationStatusListener()Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnGyroCalibrationStatusListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnGyroCalibrationStatusListener;->setGyroCalibrationStatusMotionDuringCalibration()V

    goto :goto_0

    .line 539
    :pswitch_5
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnGyroCalibrationStatusListener()Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnGyroCalibrationStatusListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnGyroCalibrationStatusListener;->setGyroCalibrationStatusMotionRetrying(I)V

    goto :goto_0

    .line 536
    :pswitch_6
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnGyroCalibrationStatusListener()Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnGyroCalibrationStatusListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnGyroCalibrationStatusListener;->setGyroCalibrationStatusCalibration(I)V

    goto :goto_0

    .line 533
    :pswitch_7
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnGyroCalibrationStatusListener()Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnGyroCalibrationStatusListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnGyroCalibrationStatusListener;->setGyroCalibrationStatusStartFailed()V

    goto :goto_0

    .line 530
    :pswitch_8
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnGyroCalibrationStatusListener()Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnGyroCalibrationStatusListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnGyroCalibrationStatusListener;->setGyroCalibrationStatusStartSuccess()V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
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

.method static Ap03NotifyOnHighresImuListener(IIIIIIIIIIIII)V
    .locals 1

    .line 285
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnHighresImuListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnHighresImuListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 286
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnHighresImuListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnHighresImuListener;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnHighresImuListener;->getPressureData(IIII)V

    .line 287
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnHighresImuListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnHighresImuListener;

    move-result-object p0

    invoke-interface {p0, p4, p5, p6}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnHighresImuListener;->getAccelerometerData(III)V

    .line 288
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnHighresImuListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnHighresImuListener;

    move-result-object p0

    invoke-interface {p0, p7, p8, p9}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnHighresImuListener;->getGyroscopeData(III)V

    .line 289
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnHighresImuListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnHighresImuListener;

    move-result-object p0

    invoke-interface {p0, p10, p11, p12}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnHighresImuListener;->getMagnetometerData(III)V

    :cond_0
    return-void
.end method

.method static Ap03NotifyOnHornStatusWarningListener(Ljava/lang/String;)V
    .locals 1

    .line 309
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnHornStatusWarningListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnHornStatusWarningListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 310
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnHornStatusWarningListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnHornStatusWarningListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnHornStatusWarningListener;->getHornStatusInfo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static Ap03NotifyOnIntegrationUpgradeGetUpgradeStatusListener(I)V
    .locals 1

    .line 1021
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnIntegrationUpgradeGetUpgradeStatusListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnIntegrationUpgradeGetUpgradeStatusListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    goto :goto_0

    .line 1035
    :cond_1
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnIntegrationUpgradeGetUpgradeStatusListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnIntegrationUpgradeGetUpgradeStatusListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnIntegrationUpgradeGetUpgradeStatusListener;->setIntegrationUpgradeGetUpgradeStatusTimeout()V

    goto :goto_0

    .line 1032
    :cond_2
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnIntegrationUpgradeGetUpgradeStatusListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnIntegrationUpgradeGetUpgradeStatusListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnIntegrationUpgradeGetUpgradeStatusListener;->setIntegrationUpgradeGetUpgradeStatusFailed()V

    goto :goto_0

    .line 1029
    :cond_3
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnIntegrationUpgradeGetUpgradeStatusListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnIntegrationUpgradeGetUpgradeStatusListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnIntegrationUpgradeGetUpgradeStatusListener;->setIntegrationUpgradeGetUpgradeStatusUpgrading()V

    goto :goto_0

    .line 1026
    :cond_4
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnIntegrationUpgradeGetUpgradeStatusListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnIntegrationUpgradeGetUpgradeStatusListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnIntegrationUpgradeGetUpgradeStatusListener;->setIntegrationUpgradeGetUpgradeStatusIdle()V

    :goto_0
    return-void
.end method

.method static Ap03NotifyOnIntegrationUpgradeStatusListener(II)V
    .locals 2

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5347\u7ea7\u56de\u8c03 : status  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  info "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqFirm"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnIntegrationUpgradeStatusListener()Lcom/powervision/natives/callback/UpgradeCallback$Ap03NotifyOnIntegrationUpgradeStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_0

    .line 519
    :pswitch_0
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnIntegrationUpgradeStatusListener()Lcom/powervision/natives/callback/UpgradeCallback$Ap03NotifyOnIntegrationUpgradeStatusListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/UpgradeCallback$Ap03NotifyOnIntegrationUpgradeStatusListener;->setIntegrationUpgradeStatusDeviceInstallComplete()V

    goto :goto_0

    .line 516
    :pswitch_1
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnIntegrationUpgradeStatusListener()Lcom/powervision/natives/callback/UpgradeCallback$Ap03NotifyOnIntegrationUpgradeStatusListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/UpgradeCallback$Ap03NotifyOnIntegrationUpgradeStatusListener;->setIntegrationUpgradeStatusDeviceRebooting()V

    goto :goto_0

    .line 513
    :pswitch_2
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnIntegrationUpgradeStatusListener()Lcom/powervision/natives/callback/UpgradeCallback$Ap03NotifyOnIntegrationUpgradeStatusListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/powervision/natives/callback/UpgradeCallback$Ap03NotifyOnIntegrationUpgradeStatusListener;->setIntegrationUpgradeStatusDeviceInstalling(I)V

    goto :goto_0

    .line 510
    :pswitch_3
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnIntegrationUpgradeStatusListener()Lcom/powervision/natives/callback/UpgradeCallback$Ap03NotifyOnIntegrationUpgradeStatusListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/UpgradeCallback$Ap03NotifyOnIntegrationUpgradeStatusListener;->setIntegrationUpgradeStatusCheckMd5Failed()V

    goto :goto_0

    .line 507
    :pswitch_4
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnIntegrationUpgradeStatusListener()Lcom/powervision/natives/callback/UpgradeCallback$Ap03NotifyOnIntegrationUpgradeStatusListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/UpgradeCallback$Ap03NotifyOnIntegrationUpgradeStatusListener;->setIntegrationUpgradeStatusCheckMd5Success()V

    goto :goto_0

    .line 504
    :pswitch_5
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnIntegrationUpgradeStatusListener()Lcom/powervision/natives/callback/UpgradeCallback$Ap03NotifyOnIntegrationUpgradeStatusListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/powervision/natives/callback/UpgradeCallback$Ap03NotifyOnIntegrationUpgradeStatusListener;->setIntegrationUpgradeStatusSendingData(I)V

    goto :goto_0

    .line 501
    :pswitch_6
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnIntegrationUpgradeStatusListener()Lcom/powervision/natives/callback/UpgradeCallback$Ap03NotifyOnIntegrationUpgradeStatusListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/UpgradeCallback$Ap03NotifyOnIntegrationUpgradeStatusListener;->setIntegrationUpgradeStatusSendDataFailed()V

    goto :goto_0

    .line 498
    :pswitch_7
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnIntegrationUpgradeStatusListener()Lcom/powervision/natives/callback/UpgradeCallback$Ap03NotifyOnIntegrationUpgradeStatusListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/UpgradeCallback$Ap03NotifyOnIntegrationUpgradeStatusListener;->setIntegrationUpgradeStatusSendDataSuccess()V

    goto :goto_0

    .line 495
    :pswitch_8
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnIntegrationUpgradeStatusListener()Lcom/powervision/natives/callback/UpgradeCallback$Ap03NotifyOnIntegrationUpgradeStatusListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/powervision/natives/callback/UpgradeCallback$Ap03NotifyOnIntegrationUpgradeStatusListener;->setIntegrationUpgradeStatusCommandFailed(I)V

    goto :goto_0

    .line 492
    :pswitch_9
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnIntegrationUpgradeStatusListener()Lcom/powervision/natives/callback/UpgradeCallback$Ap03NotifyOnIntegrationUpgradeStatusListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/UpgradeCallback$Ap03NotifyOnIntegrationUpgradeStatusListener;->setIntegrationUpgradeStatusCommandSuccess()V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
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

.method static Ap03NotifyOnLandListener(Ljava/lang/String;)V
    .locals 1

    .line 219
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnLandListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnLandListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnLandListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnLandListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnLandListener;->landState(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static Ap03NotifyOnLandProtectStatusListener(I)V
    .locals 1

    .line 815
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnLandProtectStatusListener()Lcom/powervision/natives/callback/LandProtectCallback$Ap03NotifyOnLandProtectStatusListener;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 824
    :cond_0
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnLandProtectStatusListener()Lcom/powervision/natives/callback/LandProtectCallback$Ap03NotifyOnLandProtectStatusListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/LandProtectCallback$Ap03NotifyOnLandProtectStatusListener;->setLandProtectStatusInfoJudgeGood()V

    goto :goto_0

    .line 821
    :cond_1
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnLandProtectStatusListener()Lcom/powervision/natives/callback/LandProtectCallback$Ap03NotifyOnLandProtectStatusListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/LandProtectCallback$Ap03NotifyOnLandProtectStatusListener;->setLandProtectStatusInfoJudgeNotGood()V

    goto :goto_0

    .line 818
    :cond_2
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnLandProtectStatusListener()Lcom/powervision/natives/callback/LandProtectCallback$Ap03NotifyOnLandProtectStatusListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/LandProtectCallback$Ap03NotifyOnLandProtectStatusListener;->setLandProtectStatusInfoJudgeFailed()V

    :cond_3
    :goto_0
    return-void
.end method

.method static Ap03NotifyOnLandProtectUserFeedbackResultListener(I)V
    .locals 1

    .line 831
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnLandProtectUserFeedbackResultListener()Lcom/powervision/natives/callback/LandProtectCallback$Ap03NotifyOnLandProtectUserFeedbackResultListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    goto :goto_0

    .line 841
    :cond_1
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnLandProtectUserFeedbackResultListener()Lcom/powervision/natives/callback/LandProtectCallback$Ap03NotifyOnLandProtectUserFeedbackResultListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/LandProtectCallback$Ap03NotifyOnLandProtectUserFeedbackResultListener;->setCommonResultFailed()V

    goto :goto_0

    .line 838
    :cond_2
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnLandProtectUserFeedbackResultListener()Lcom/powervision/natives/callback/LandProtectCallback$Ap03NotifyOnLandProtectUserFeedbackResultListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/LandProtectCallback$Ap03NotifyOnLandProtectUserFeedbackResultListener;->setCommonResultTimeout()V

    goto :goto_0

    .line 835
    :cond_3
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnLandProtectUserFeedbackResultListener()Lcom/powervision/natives/callback/LandProtectCallback$Ap03NotifyOnLandProtectUserFeedbackResultListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/LandProtectCallback$Ap03NotifyOnLandProtectUserFeedbackResultListener;->setCommonResultSuccess()V

    :goto_0
    return-void
.end method

.method static Ap03NotifyOnLocalPositionNedListener(FFFFFF)V
    .locals 8

    .line 198
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnLocalPositionNedListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnLocalPositionNedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 199
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnLocalPositionNedListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnLocalPositionNedListener;

    move-result-object v1

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnLocalPositionNedListener;->getLocalPositionNed(FFFFFF)V

    :cond_0
    return-void
.end method

.method static Ap03NotifyOnMagCalibrationStatusListener(II)V
    .locals 1

    .line 561
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnMagCalibrationStatusListener()Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnMagCalibrationStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_0

    .line 591
    :pswitch_0
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnMagCalibrationStatusListener()Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnMagCalibrationStatusListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnMagCalibrationStatusListener;->setMagCalibrationStatusCalibrationTimeout()V

    goto :goto_0

    .line 588
    :pswitch_1
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnMagCalibrationStatusListener()Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnMagCalibrationStatusListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnMagCalibrationStatusListener;->setMagCalibrationStatusCalibrationSuccess()V

    goto :goto_0

    .line 585
    :pswitch_2
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnMagCalibrationStatusListener()Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnMagCalibrationStatusListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnMagCalibrationStatusListener;->setMagCalibrationStatusCalibrationFailed()V

    goto :goto_0

    .line 582
    :pswitch_3
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnMagCalibrationStatusListener()Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnMagCalibrationStatusListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnMagCalibrationStatusListener;->setMagCalibrationStatusAlreadyCompleted(I)V

    goto :goto_0

    .line 579
    :pswitch_4
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnMagCalibrationStatusListener()Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnMagCalibrationStatusListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnMagCalibrationStatusListener;->setMagCalibrationStatusPending(I)V

    goto :goto_0

    .line 576
    :pswitch_5
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnMagCalibrationStatusListener()Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnMagCalibrationStatusListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnMagCalibrationStatusListener;->setMagCalibrationStatusSideDone(I)V

    goto :goto_0

    .line 573
    :pswitch_6
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnMagCalibrationStatusListener()Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnMagCalibrationStatusListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnMagCalibrationStatusListener;->setMagCalibrationStatusOrientationDetected(I)V

    goto :goto_0

    .line 570
    :pswitch_7
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnMagCalibrationStatusListener()Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnMagCalibrationStatusListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnMagCalibrationStatusListener;->setMagCalibrationStatusCalibration(I)V

    goto :goto_0

    .line 567
    :pswitch_8
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnMagCalibrationStatusListener()Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnMagCalibrationStatusListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnMagCalibrationStatusListener;->setMagCalibrationStatusStartFailed()V

    goto :goto_0

    .line 564
    :pswitch_9
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnMagCalibrationStatusListener()Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnMagCalibrationStatusListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnMagCalibrationStatusListener;->setMagCalibrationStatusStartSuccess()V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
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

.method static Ap03NotifyOnNoFlyZoneOperateResultListener(ILjava/lang/String;I)V
    .locals 1

    .line 635
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnNoFlyZoneOperateResultListener()Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnNoFlyZoneOperateResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_0

    .line 680
    :pswitch_0
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnNoFlyZoneOperateResultListener()Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnNoFlyZoneOperateResultListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnNoFlyZoneOperateResultListener;->setNoflyZoneOperateStatusFactorySqliteSuccess()V

    goto/16 :goto_0

    .line 677
    :pswitch_1
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnNoFlyZoneOperateResultListener()Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnNoFlyZoneOperateResultListener;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnNoFlyZoneOperateResultListener;->setNoflyZoneOperateStatusFactorySqliteProgress(I)V

    goto/16 :goto_0

    .line 674
    :pswitch_2
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnNoFlyZoneOperateResultListener()Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnNoFlyZoneOperateResultListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnNoFlyZoneOperateResultListener;->setNoflyZoneOperateStatusFactorySqliteTimeout()V

    goto/16 :goto_0

    .line 671
    :pswitch_3
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnNoFlyZoneOperateResultListener()Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnNoFlyZoneOperateResultListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnNoFlyZoneOperateResultListener;->setNoflyZoneOperateStatusFactorySqliteFailed()V

    goto/16 :goto_0

    .line 668
    :pswitch_4
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnNoFlyZoneOperateResultListener()Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnNoFlyZoneOperateResultListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnNoFlyZoneOperateResultListener;->setNoflyZoneOperateStatusVersionSuccess(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 665
    :pswitch_5
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnNoFlyZoneOperateResultListener()Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnNoFlyZoneOperateResultListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnNoFlyZoneOperateResultListener;->setNoflyZoneOperateStatusVersionTimeout()V

    goto :goto_0

    .line 662
    :pswitch_6
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnNoFlyZoneOperateResultListener()Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnNoFlyZoneOperateResultListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnNoFlyZoneOperateResultListener;->setNoflyZoneOperateStatusVersionFailed()V

    goto :goto_0

    .line 659
    :pswitch_7
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnNoFlyZoneOperateResultListener()Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnNoFlyZoneOperateResultListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnNoFlyZoneOperateResultListener;->setNoflyZoneOperateStatusFactorySuccess()V

    goto :goto_0

    .line 656
    :pswitch_8
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnNoFlyZoneOperateResultListener()Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnNoFlyZoneOperateResultListener;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnNoFlyZoneOperateResultListener;->setNoflyZoneOperateStatusFactoryProgress(I)V

    goto :goto_0

    .line 653
    :pswitch_9
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnNoFlyZoneOperateResultListener()Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnNoFlyZoneOperateResultListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnNoFlyZoneOperateResultListener;->setNoflyZoneOperateStatusFactoryTimeout()V

    goto :goto_0

    .line 650
    :pswitch_a
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnNoFlyZoneOperateResultListener()Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnNoFlyZoneOperateResultListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnNoFlyZoneOperateResultListener;->setNoflyZoneOperateStatusFactoryFailed()V

    goto :goto_0

    .line 647
    :pswitch_b
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnNoFlyZoneOperateResultListener()Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnNoFlyZoneOperateResultListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnNoFlyZoneOperateResultListener;->setNoflyZoneOperateStatusRealtimeSuccess()V

    goto :goto_0

    .line 644
    :pswitch_c
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnNoFlyZoneOperateResultListener()Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnNoFlyZoneOperateResultListener;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnNoFlyZoneOperateResultListener;->setNoflyZoneOperateStatusRealtimeProgress(I)V

    goto :goto_0

    .line 641
    :pswitch_d
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnNoFlyZoneOperateResultListener()Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnNoFlyZoneOperateResultListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnNoFlyZoneOperateResultListener;->setNoflyZoneOperateStatusRealtimeTimeout()V

    goto :goto_0

    .line 638
    :pswitch_e
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnNoFlyZoneOperateResultListener()Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnNoFlyZoneOperateResultListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnNoFlyZoneOperateResultListener;->setNoflyZoneOperateStatusRealtimeFailed()V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static Ap03NotifyOnPauseFollowListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 436
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnPauseFollowListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnPauseFollowListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 437
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnPauseFollowListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnPauseFollowListener;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnPauseFollowListener;->pauseFollow(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static Ap03NotifyOnQueryActivationStatusListener(I)V
    .locals 1

    .line 756
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnQueryActivationStatusListener()Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnQueryActivationStatusListener;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 765
    :cond_0
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnQueryActivationStatusListener()Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnQueryActivationStatusListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnQueryActivationStatusListener;->setQueryActivationResultTimeout()V

    goto :goto_0

    .line 762
    :cond_1
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnQueryActivationStatusListener()Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnQueryActivationStatusListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnQueryActivationStatusListener;->setQueryActivationResultDisable()V

    goto :goto_0

    .line 759
    :cond_2
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnQueryActivationStatusListener()Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnQueryActivationStatusListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnQueryActivationStatusListener;->setQueryActivationResultEnable()V

    :cond_3
    :goto_0
    return-void
.end method

.method static Ap03NotifyOnROISetParamResultListener(Ljava/lang/String;II)V
    .locals 1

    .line 454
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnROISetParamResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnROISetParamResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 455
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnROISetParamResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnROISetParamResultListener;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnROISetParamResultListener;->getROIParamResult(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method static Ap03NotifyOnRTLListener(Ljava/lang/String;)V
    .locals 1

    .line 226
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnRTLListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnRTLListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 227
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnRTLListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnRTLListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnRTLListener;->rtlState(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static Ap03NotifyOnReceiveTimeLapsePhotoStatusListener(II)V
    .locals 1

    .line 1056
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnReceiveTimeLapsePhotoStatusListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnReceiveTimeLapsePhotoStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1057
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnReceiveTimeLapsePhotoStatusListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnReceiveTimeLapsePhotoStatusListener;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnReceiveTimeLapsePhotoStatusListener;->onReceiveTimeLapsePhotoStatus(II)V

    :cond_0
    return-void
.end method

.method static Ap03NotifyOnSendNoFlyZoneFileStatusListener(II)V
    .locals 1

    .line 687
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnSendNoFlyZoneFileStatusListener()Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnSendNoFlyZoneFileStatusListener;

    move-result-object v0

    if-eqz v0, :cond_5

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 p1, 0x3

    if-eq p0, p1, :cond_1

    const/4 p1, 0x4

    if-eq p0, p1, :cond_0

    goto :goto_0

    .line 702
    :cond_0
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnSendNoFlyZoneFileStatusListener()Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnSendNoFlyZoneFileStatusListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnSendNoFlyZoneFileStatusListener;->setNoflyzoneStatusCheckMd5Failed()V

    goto :goto_0

    .line 699
    :cond_1
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnSendNoFlyZoneFileStatusListener()Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnSendNoFlyZoneFileStatusListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnSendNoFlyZoneFileStatusListener;->setNoflyzoneStatusCheckMd5Success()V

    goto :goto_0

    .line 696
    :cond_2
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnSendNoFlyZoneFileStatusListener()Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnSendNoFlyZoneFileStatusListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnSendNoFlyZoneFileStatusListener;->setNoflyzoneStatusSendingData(I)V

    goto :goto_0

    .line 693
    :cond_3
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnSendNoFlyZoneFileStatusListener()Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnSendNoFlyZoneFileStatusListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnSendNoFlyZoneFileStatusListener;->setNoflyzoneStatusSendDataFailed(I)V

    goto :goto_0

    .line 690
    :cond_4
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnSendNoFlyZoneFileStatusListener()Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnSendNoFlyZoneFileStatusListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/NoFlyZoneCallback$Ap03NotifyOnSendNoFlyZoneFileStatusListener;->setNoflyzoneStatusSendDataSuccess()V

    :cond_5
    :goto_0
    return-void
.end method

.method static Ap03NotifyOnSetFollowModeListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 442
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnSetFollowModeListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetFollowModeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 443
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnSetFollowModeListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetFollowModeListener;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetFollowModeListener;->getFollowMode(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static Ap03NotifyOnSetFollowParamListener(Ljava/lang/String;II)V
    .locals 1

    .line 448
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnSetFollowParamListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetFollowParamListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 449
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnSetFollowParamListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetFollowParamListener;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetFollowParamListener;->getFollowParam(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method static Ap03NotifyOnSetRainproofModeResultListener(I)V
    .locals 1

    .line 1042
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnSetRainproofModeResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetRainproofModeResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1043
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnSetRainproofModeResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetRainproofModeResultListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetRainproofModeResultListener;->onSetRainproofModeResult(I)V

    :cond_0
    return-void
.end method

.method static Ap03NotifyOnSetRefuseLowPowerReturnResultListener(Ljava/lang/String;)V
    .locals 1

    .line 460
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnSetRefuseLowPowerReturnResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetRefuseLowPowerReturnResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 461
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnSetRefuseLowPowerReturnResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetRefuseLowPowerReturnResultListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetRefuseLowPowerReturnResultListener;->getSetRefuseLowPowerReturnResult(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static Ap03NotifyOnSetReturnPointListener(Ljava/lang/String;I)V
    .locals 1

    .line 374
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnSetReturnPointListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetReturnPointListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 375
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnSetReturnPointListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetReturnPointListener;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetReturnPointListener;->getReturnPointStatus(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method static Ap03NotifyOnSetSubModeOneKeyVideoResultListener(II)V
    .locals 1

    .line 847
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnSetSubModeOneKeyVideoResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetSubModeOneKeyVideoResultListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_3

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    goto :goto_0

    .line 857
    :cond_1
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnSetSubModeOneKeyVideoResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetSubModeOneKeyVideoResultListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetSubModeOneKeyVideoResultListener;->setCommonResultFailed()V

    goto :goto_0

    .line 854
    :cond_2
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnSetSubModeOneKeyVideoResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetSubModeOneKeyVideoResultListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetSubModeOneKeyVideoResultListener;->setCommonResultTimeout()V

    goto :goto_0

    .line 851
    :cond_3
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnSetSubModeOneKeyVideoResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetSubModeOneKeyVideoResultListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetSubModeOneKeyVideoResultListener;->setCommonResultSuccess(I)V

    :goto_0
    return-void
.end method

.method static Ap03NotifyOnSetTimeLapsePhotoMaxSpeedResultListener(I)V
    .locals 1

    .line 1049
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnSetTimeLapsePhotoMaxSpeedResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetTimeLapsePhotoMaxSpeedResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1050
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnSetTimeLapsePhotoMaxSpeedResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetTimeLapsePhotoMaxSpeedResultListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetTimeLapsePhotoMaxSpeedResultListener;->OnSetTimeLapsePhotoMaxSpeedResult(I)V

    :cond_0
    return-void
.end method

.method static Ap03NotifyOnSetWaterproofCaseStatusResultListener(I)V
    .locals 1

    .line 889
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnSetWaterproofCaseStatusResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetWaterproofCaseStatusResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 890
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnSetWaterproofCaseStatusResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetWaterproofCaseStatusResultListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetWaterproofCaseStatusResultListener;->waterProofcaseStatusResult(I)V

    :cond_0
    return-void
.end method

.method static Ap03NotifyOnSmartFunctionCurrentListener(FFFFI)V
    .locals 7

    .line 359
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnSmartFunctionCurrentListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSmartFunctionCurrentListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 360
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnSmartFunctionCurrentListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSmartFunctionCurrentListener;

    move-result-object v1

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSmartFunctionCurrentListener;->getSmartFunctionCurrent(FFFFI)V

    :cond_0
    return-void
.end method

.method static Ap03NotifyOnStartFollowAndSetFollowModeListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 381
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnStartFollowAndSetFollowModeListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnStartFollowAndSetFollowModeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 382
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnStartFollowAndSetFollowModeListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnStartFollowAndSetFollowModeListener;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnStartFollowAndSetFollowModeListener;->getStartFollowAndSetFollowMode(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static Ap03NotifyOnStartFollowListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 430
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnStartFollowListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnStartFollowListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 431
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnStartFollowListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnStartFollowListener;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnStartFollowListener;->startFollow(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static Ap03NotifyOnStatusReportingListener(Ljava/lang/String;)V
    .locals 1

    .line 864
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnStatusReportingListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnStatusReportingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 865
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnStatusReportingListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnStatusReportingListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnStatusReportingListener;->getStatusReportInfo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static Ap03NotifyOnStatusTextNotifyListener(I)V
    .locals 1

    .line 924
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnStatusTextNotifyListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnStatusTextNotifyListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_1

    goto :goto_0

    .line 929
    :cond_1
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnStatusTextNotifyListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnStatusTextNotifyListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnStatusTextNotifyListener;->getStatusText()V

    :goto_0
    return-void
.end method

.method static Ap03NotifyOnSubModeExecuteStatusListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 240
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnSubModeExecuteStatusListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSubModeExecuteStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnSubModeExecuteStatusListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSubModeExecuteStatusListener;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSubModeExecuteStatusListener;->subModeResult(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static Ap03NotifyOnSubModeTrajDataResultListener(Ljava/lang/String;)V
    .locals 1

    .line 709
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnSubModeTrajDataResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSubModeTrajDataResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 710
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnSubModeTrajDataResultListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSubModeTrajDataResultListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSubModeTrajDataResultListener;->getSubModeTrajDataResult(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static Ap03NotifyOnTakeoffListener(Ljava/lang/String;)V
    .locals 1

    .line 212
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnTakeoffListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnTakeoffListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnTakeoffListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnTakeoffListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnTakeoffListener;->takeoffState(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static Ap03NotifyOnVisionDetectListener(J[F[F[F[F[F[SI)V
    .locals 11

    .line 395
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnVisionDetectListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnVisionDetectListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 396
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnVisionDetectListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnVisionDetectListener;

    move-result-object v1

    move-wide v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-interface/range {v1 .. v10}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnVisionDetectListener;->getVisionDetect(J[F[F[F[F[F[SI)V

    :cond_0
    return-void
.end method

.method static Ap03NotifyOnVisionTrackListener(FFFFFII)V
    .locals 9

    .line 350
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnVisionTrackListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnVisionTrackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 351
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyOnVisionTrackListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnVisionTrackListener;

    move-result-object v1

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-interface/range {v1 .. v8}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnVisionTrackListener;->getVisionTrack(FFFFFII)V

    :cond_0
    return-void
.end method

.method static Ap03NotifySmartFunctionStatusListener(I)V
    .locals 1

    .line 467
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifySmartFunctionStatusListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifySmartFunctionStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 468
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifySmartFunctionStatusListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifySmartFunctionStatusListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifySmartFunctionStatusListener;->getSmartFunctionStatus(I)V

    :cond_0
    return-void
.end method

.method static Ap03NotifyonGetActivationHwCodeListener(ILjava/lang/String;)V
    .locals 1

    .line 936
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyonGetActivationHwCodeListener()Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyonGetActivationHwCodeListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_2

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    goto :goto_0

    .line 944
    :cond_1
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyonGetActivationHwCodeListener()Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyonGetActivationHwCodeListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyonGetActivationHwCodeListener;->setGetHwCodeResultTimeout()V

    goto :goto_0

    .line 941
    :cond_2
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyonGetActivationHwCodeListener()Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyonGetActivationHwCodeListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyonGetActivationHwCodeListener;->setGetHwCodeResultSuccess(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static Ap03NotifyonParameterResultFloatListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V
    .locals 1

    .line 417
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyonParameterResultFloatListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyonParameterResultFloatListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 418
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyonParameterResultFloatListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyonParameterResultFloatListener;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyonParameterResultFloatListener;->setGetParameterResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V

    :cond_0
    return-void
.end method

.method static Ap03NotifyonParameterResultIntListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 410
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyonParameterResultIntListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyonParameterResultIntListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 411
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyonParameterResultIntListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyonParameterResultIntListener;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyonParameterResultIntListener;->setGetParameterResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method static Ap03NotifyonParameterResultLongListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    .line 424
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyonParameterResultLongListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyonParameterResultLongListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 425
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyonParameterResultLongListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyonParameterResultLongListener;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-interface/range {v1 .. v6}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyonParameterResultLongListener;->setGetParameterResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method static Ap03NotifyonPauseFollowAndSetFollowModeListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 388
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyonPauseFollowAndSetFollowModeListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyonPauseFollowAndSetFollowModeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 389
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03NotifyonPauseFollowAndSetFollowModeListener()Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyonPauseFollowAndSetFollowModeListener;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyonPauseFollowAndSetFollowModeListener;->getPauseFollowAndSetFollowMode(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static Ap03OnIntegrationUpgradeGetVersionStatusListener(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 474
    :goto_0
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03OnIntegrationUpgradeGetVersionStatusListenerList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    goto :goto_1

    .line 480
    :cond_0
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03OnIntegrationUpgradeGetVersionStatusListenerList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/natives/callback/UpgradeCallback$Ap03OnIntegrationUpgradeGetVersionStatusListener;

    invoke-interface {v1}, Lcom/powervision/natives/callback/UpgradeCallback$Ap03OnIntegrationUpgradeGetVersionStatusListener;->setIntegrationUpgradeGetVersionTimeout()V

    goto :goto_1

    .line 477
    :cond_1
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/natives/PVSDK_AP03_API;->getAp03OnIntegrationUpgradeGetVersionStatusListenerList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/natives/callback/UpgradeCallback$Ap03OnIntegrationUpgradeGetVersionStatusListener;

    invoke-interface {v1, p1}, Lcom/powervision/natives/callback/UpgradeCallback$Ap03OnIntegrationUpgradeGetVersionStatusListener;->onIntegrationUpgradeGetVersionSuccess(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method static Ap03OnSubModeSubAttributesStatusListener(I)V
    .locals 1

    .line 246
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getSubAttributesStatus()Lcom/powervision/natives/callback/SystemStatusCallback$SubAttributesStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 267
    :pswitch_0
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getSubAttributesStatus()Lcom/powervision/natives/callback/SystemStatusCallback$SubAttributesStatus;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/SystemStatusCallback$SubAttributesStatus;->setSubattributesStatusTimeout()V

    goto :goto_0

    .line 264
    :pswitch_1
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getSubAttributesStatus()Lcom/powervision/natives/callback/SystemStatusCallback$SubAttributesStatus;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/SystemStatusCallback$SubAttributesStatus;->setSubattributesStatusReceiveTrajDataFailed()V

    goto :goto_0

    .line 261
    :pswitch_2
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getSubAttributesStatus()Lcom/powervision/natives/callback/SystemStatusCallback$SubAttributesStatus;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/SystemStatusCallback$SubAttributesStatus;->setSubattributesStatusStartCameraRecordFailed()V

    goto :goto_0

    .line 258
    :pswitch_3
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getSubAttributesStatus()Lcom/powervision/natives/callback/SystemStatusCallback$SubAttributesStatus;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/SystemStatusCallback$SubAttributesStatus;->setSubattributesStatusStartCameraShootFailed()V

    goto :goto_0

    .line 255
    :pswitch_4
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getSubAttributesStatus()Lcom/powervision/natives/callback/SystemStatusCallback$SubAttributesStatus;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/SystemStatusCallback$SubAttributesStatus;->setSubattributesStatusReceiveTrajDataSuccess()V

    goto :goto_0

    .line 252
    :pswitch_5
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getSubAttributesStatus()Lcom/powervision/natives/callback/SystemStatusCallback$SubAttributesStatus;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/SystemStatusCallback$SubAttributesStatus;->setSubattributesStatusStartCameraRecordSuccess()V

    goto :goto_0

    .line 249
    :pswitch_6
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_AP03_API;->getSubAttributesStatus()Lcom/powervision/natives/callback/SystemStatusCallback$SubAttributesStatus;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/SystemStatusCallback$SubAttributesStatus;->setSubattributesStatusStartCameraShootSuccess()V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static native allowNoFlyZoneArm(I)I
.end method

.method public static native batteryUpgrade()I
.end method

.method public static native cancelCalibration()I
.end method

.method public static native confirmDisarm(I)I
.end method

.method public static native connectActivationLink()I
.end method

.method public static native connectDevice()I
.end method

.method public static native connectLink()I
.end method

.method public static native disConnectLink()I
.end method

.method public static native disconnectActivationLink()I
.end method

.method public static native disconnectDevice()I
.end method

.method public static native downloadParameter(Ljava/lang/String;)I
.end method

.method public static native enableActivation()I
.end method

.method public static native getActivationCode()I
.end method

.method public static native getActivationSnCode()I
.end method

.method public static native getDroneVer()I
.end method

.method public static native getDroneVersion()I
.end method

.method public static native getHardwareVersionCode()I
.end method

.method public static native getHomePoint()I
.end method

.method public static native getParameter(Ljava/lang/String;)I
.end method

.method public static native getRemainingRtlTime()I
.end method

.method public static native getTakeoffPoint()I
.end method

.method public static native integrationUpgrade(Ljava/lang/String;)I
.end method

.method public static native intergrationUpgradeGetUpgradeStatus()I
.end method

.method public static native intergrationUpgradeGetVersion()I
.end method

.method public static native land()I
.end method

.method public static native landProtectUserFeedback(I)I
.end method

.method public static native noFlyZoneOperate(I)I
.end method

.method public static native nowLowPowerReturn()I
.end method

.method public static native pauseFollow()I
.end method

.method public static native queryActivationStatus()I
.end method

.method public static native queryBatteryUpgradeStatus()I
.end method

.method public static native refuseLowPowerReturn()I
.end method

.method public static native registerAp03Callbacks()I
.end method

.method public static native rtl()I
.end method

.method public static native sendNoFlyZoneFile(Ljava/lang/String;)I
.end method

.method public static native sendTrajectoryData([F[F[F[F[FIZ)I
.end method

.method public static native setFlightingMode(II)I
.end method

.method public static native setFollowParam(FFFIIII)I
.end method

.method public static native setFollowParameter(FFF)I
.end method

.method public static native setNoviceModeAltitudeLimit(J)I
.end method

.method public static native setRainproofMode(I)I
.end method

.method public static native setReturnPoint(IFFF)I
.end method

.method public static native setRoiParam(FFFFIIIII)I
.end method

.method public static native setSubModeOneKeyVideoROI(FFI)I
.end method

.method public static native setTimeLapsePhotoMaxSpeed(F)I
.end method

.method public static native setUserLocation(II)I
.end method

.method public static native setVisionTrackFrame(FFFFFIJ)I
.end method

.method public static native setWaterproofCaseStatus(I)I
.end method

.method public static native startAccelCalibration()I
.end method

.method public static native startFollow()I
.end method

.method public static native startGyroCalibration()I
.end method

.method public static native startLevelCalibration()I
.end method

.method public static native startMagCalibration()I
.end method

.method public static native takeoff()I
.end method

.method public static native uploadFloatParameter(Ljava/lang/String;F)I
.end method

.method public static native uploadIntParameter(Ljava/lang/String;I)I
.end method

.method public static native uploadLongParameter(Ljava/lang/String;J)I
.end method
