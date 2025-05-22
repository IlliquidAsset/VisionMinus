.class public Lcom/powervision/natives/PVSDK_W4_API;
.super Ljava/lang/Object;
.source "PVSDK_W4_API.java"


# static fields
.field public static volatile SDKAVILIBALE:Z = false

.field private static pvsdk_w4:Lcom/powervision/natives/PVSDK_W4_API;


# instance fields
.field private acitviteStatusListener:Lcom/powervision/natives/callback/ActiviteCallBack$AcitviteStatusListener;

.field private airConnectListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;

.field private aoaCallBack:Lcom/powervision/natives/callback/AOACallBack;

.field attitudeAndGroundspeedChangedListener:Lcom/powervision/natives/callback/PositionCallback$AttitudeAndGroundspeedChangedListener;

.field private batteryStatusListener:Lcom/powervision/natives/callback/SystemStatusCallback$BatteryStatusListener;

.field public bodyUpgradCallBack:Lcom/powervision/natives/callback/W4UpgradeCallBack$BodyUpgradCallBack;

.field commonCallback:Lorg/xutils/common/Callback$CommonCallback;

.field connecteRemoteLinkListener:Lcom/powervision/natives/callback/W4RemoteConnectCallBack$ConnecteRemoteLinkListener;

.field connecteRemoteListener:Lcom/powervision/natives/callback/W4RemoteConnectCallBack$ConnecteRemoteListener;

.field connectionDevicceListener:Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionDevicceListener;

.field private connectionLinkListener:Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionLinkListener;

.field public dl01BSOperListener:Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;

.field private dl01GrondConnectListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;

.field dl01UpgradeCallBack:Lcom/powervision/natives/callback/W4UpgradeCallBack$RemoteDl01UpgradeCallBack;

.field dolphinChangeModeErrorListener:Lcom/powervision/natives/callback/DophinCallback$DolphinChangeModeErrorListener;

.field dolphinSelfErrorListener:Lcom/powervision/natives/callback/DophinCallback$DolphinSelfErrorListener;

.field dolphinStatusErrorListener:Lcom/powervision/natives/callback/DophinCallback$DolphinStatusErrorListener;

.field dolphinSysErrorListener:Lcom/powervision/natives/callback/DophinCallback$DolphinSysErrorListener;

.field fixedSpeedCruiseListener:Lcom/powervision/natives/callback/DophinCallback$DolphinFixedSpeedCruiseListener;

.field private gpsRawIntListener:Lcom/powervision/natives/callback/PositionCallback$GpsRawIntListener;

.field homePositionListener:Lcom/powervision/natives/callback/PositionCallback$HomePositionListener;

.field private lightControlListener:Lcom/powervision/natives/callback/DophinCallback$LightControlListener;

.field public magnetometerCalibrateListener:Lcom/powervision/natives/callback/SensorCallback$MagnetometerCalibrateListener;

.field manualControlDataListener:Lcom/powervision/natives/callback/RemoteControlCallback$ManualControlDataListener;

.field mcuUpgradeCallBack:Lcom/powervision/natives/callback/W4UpgradeCallBack$RemoteMcuUpgradeCallBack;

.field mcu_bUpgradeCallBack:Lcom/powervision/natives/callback/W4UpgradeCallBack$RemoteMcu_BUpgradeCallBack;

.field public missionDownLoadListener:Lcom/powervision/natives/callback/MissionCallback$MissionDownLoadListener;

.field private missionRunListener:Lcom/powervision/natives/callback/MissionCallback$MissionRunListener;

.field private missionUploadListener:Lcom/powervision/natives/callback/MissionCallback$MissionUploadListener;

.field mt03RemoteControlBatterySurplusListener:Lcom/powervision/natives/callback/RemoteControlCallback$Mt03RemoteControlBatterySurplusListener;

.field private needLog:I

.field private nestOpenerStatusListener:Lcom/powervision/natives/callback/DophinCallback$NestOpenerStatusListener;

.field private notifyOnAirConnectLinkResultListener:Lcom/powervision/natives/PowerSDKCallback$NotifyOnAirConnectLinkResultListener;

.field private notifyOnAirSetGetDl01OperationResultListener:Lcom/powervision/natives/PowerSDKCallback$NotifyOnAirSetGetDl01OperationResultListener;

.field private onBootloaderListener:Lcom/powervision/natives/callback/RemoteControlCallback$onBootloaderListener;

.field public onElectricQuantityDisplayListener:Lcom/powervision/natives/callback/SystemStatusCallback$onElectricQuantityDisplayListener;

.field public onExcuteReturenListener:Lcom/powervision/natives/callback/DophinCallback$onExcuteReturenListener;

.field public onKey_b_result:Lcom/powervision/natives/callback/RemoteControlCallback$onKey_B_Result;

.field onParameterResultListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/natives/callback/DophinCallback$onParameterResultListener;",
            ">;"
        }
    .end annotation
.end field

.field onSailModeListener:Lcom/powervision/natives/callback/DophinCallback$onSailModeListener;

.field public rayArmStatusListener:Lcom/powervision/natives/callback/DophinCallback$RayArmStatusListener;

.field rayConstantSpeedModeListener:Lcom/powervision/natives/callback/DophinCallback$RayConstantSpeedModeListener;

.field remoteControlParamListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/natives/callback/RemoteControlCallback$RemoteControlParamListener;",
            ">;"
        }
    .end annotation
.end field

.field remoteKeyListener:Lcom/powervision/natives/callback/RemoteControlCallback$RemoteKeyListener;

.field public setArmListener:Lcom/powervision/natives/callback/DophinCallback$setArmListener;

.field w49342LinkCallBack:Lcom/powervision/natives/callback/W49342LinkCallBack;

.field public w49342UpgradeCallBack:Lcom/powervision/natives/callback/W4UpgradeCallBack$W49342UpgradeCallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 560
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/natives/PVSDK_W4_API;->onParameterResultListeners:Ljava/util/ArrayList;

    .line 700
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/natives/PVSDK_W4_API;->remoteControlParamListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 749
    iput-object v0, p0, Lcom/powervision/natives/PVSDK_W4_API;->mcuUpgradeCallBack:Lcom/powervision/natives/callback/W4UpgradeCallBack$RemoteMcuUpgradeCallBack;

    .line 762
    iput-object v0, p0, Lcom/powervision/natives/PVSDK_W4_API;->mcu_bUpgradeCallBack:Lcom/powervision/natives/callback/W4UpgradeCallBack$RemoteMcu_BUpgradeCallBack;

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/powervision/natives/PVSDK_W4_API;->needLog:I

    return-void
.end method

.method public static controlLight(I)V
    .locals 1

    .line 146
    sget-boolean v0, Lcom/powervision/natives/PVSDK_W4_API;->SDKAVILIBALE:Z

    if-eqz v0, :cond_0

    .line 147
    invoke-static {p0}, Lcom/powervision/natives/JniW4Native;->controlLight(I)I

    :cond_0
    return-void
.end method

.method public static controlRocker(Lcom/powervision/natives/model/Rocker;)V
    .locals 1

    .line 122
    sget-boolean v0, Lcom/powervision/natives/PVSDK_W4_API;->SDKAVILIBALE:Z

    if-eqz v0, :cond_0

    .line 123
    invoke-static {p0}, Lcom/powervision/natives/JniW4Native;->controlRocker(Lcom/powervision/natives/model/Rocker;)I

    :cond_0
    return-void
.end method

.method public static declared-synchronized get()Lcom/powervision/natives/PVSDK_W4_API;
    .locals 2

    const-class v0, Lcom/powervision/natives/PVSDK_W4_API;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lcom/powervision/natives/PVSDK_W4_API;->pvsdk_w4:Lcom/powervision/natives/PVSDK_W4_API;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Lcom/powervision/natives/PVSDK_W4_API;

    invoke-direct {v1}, Lcom/powervision/natives/PVSDK_W4_API;-><init>()V

    sput-object v1, Lcom/powervision/natives/PVSDK_W4_API;->pvsdk_w4:Lcom/powervision/natives/PVSDK_W4_API;

    .line 46
    :cond_0
    sget-object v1, Lcom/powervision/natives/PVSDK_W4_API;->pvsdk_w4:Lcom/powervision/natives/PVSDK_W4_API;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setArmStatus(I)V
    .locals 1

    .line 116
    sget-boolean v0, Lcom/powervision/natives/PVSDK_W4_API;->SDKAVILIBALE:Z

    if-eqz v0, :cond_0

    .line 117
    invoke-static {p0}, Lcom/powervision/natives/JniW4Native;->setArmStatus(I)I

    :cond_0
    return-void
.end method

.method public static setGimbalPitch(S)V
    .locals 1

    .line 140
    sget-boolean v0, Lcom/powervision/natives/PVSDK_W4_API;->SDKAVILIBALE:Z

    if-eqz v0, :cond_0

    .line 141
    invoke-static {p0}, Lcom/powervision/natives/JniW4Native;->setGimbalPitch(S)V

    :cond_0
    return-void
.end method

.method public static setSailMode(I)I
    .locals 1

    .line 96
    sget-boolean v0, Lcom/powervision/natives/PVSDK_W4_API;->SDKAVILIBALE:Z

    if-eqz v0, :cond_0

    .line 97
    invoke-static {p0}, Lcom/powervision/natives/JniW4Native;->setSailMode(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static setSpeedMode(I)V
    .locals 2

    .line 103
    sget-boolean v0, Lcom/powervision/natives/PVSDK_W4_API;->SDKAVILIBALE:Z

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53d1\u9001 onChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqSpeedMode"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-static {p0}, Lcom/powervision/natives/JniW4Native;->setSpeedMode(I)I

    :cond_0
    return-void
.end method

.method public static uploadBodyParmter(Ljava/lang/String;F)V
    .locals 1

    .line 128
    sget-boolean v0, Lcom/powervision/natives/PVSDK_W4_API;->SDKAVILIBALE:Z

    if-eqz v0, :cond_0

    .line 129
    invoke-static {p0, p1}, Lcom/powervision/natives/JniW4Native;->uploadParameter(Ljava/lang/String;F)I

    :cond_0
    return-void
.end method

.method public static uploadBodyParmter(Ljava/lang/String;J)V
    .locals 1

    .line 134
    sget-boolean v0, Lcom/powervision/natives/PVSDK_W4_API;->SDKAVILIBALE:Z

    if-eqz v0, :cond_0

    .line 135
    invoke-static {p0, p1, p2}, Lcom/powervision/natives/JniW4Native;->uploadParameter(Ljava/lang/String;J)I

    :cond_0
    return-void
.end method


# virtual methods
.method public addParameterResultListener(Lcom/powervision/natives/callback/DophinCallback$onParameterResultListener;)V
    .locals 2

    .line 563
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_W4_API;->onParameterResultListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 564
    :try_start_0
    iget-object v1, p0, Lcom/powervision/natives/PVSDK_W4_API;->onParameterResultListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 565
    iget-object v1, p0, Lcom/powervision/natives/PVSDK_W4_API;->onParameterResultListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
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

.method public addRemoteControlParamListener(Lcom/powervision/natives/callback/RemoteControlCallback$RemoteControlParamListener;)V
    .locals 2

    .line 703
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_W4_API;->remoteControlParamListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 704
    :try_start_0
    iget-object v1, p0, Lcom/powervision/natives/PVSDK_W4_API;->remoteControlParamListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 705
    iget-object v1, p0, Lcom/powervision/natives/PVSDK_W4_API;->remoteControlParamListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
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

.method public airSetGetOperation(ILjava/lang/String;I)I
    .locals 0

    .line 248
    invoke-static {p1, p2, p3}, Lcom/powervision/natives/JniDl01Native;->airSetGetOperation(ILjava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public connect9342()V
    .locals 0

    .line 202
    invoke-static {}, Lcom/powervision/natives/JniW4RemoteNative;->connect9342Link()V

    return-void
.end method

.method public connectAir()I
    .locals 1

    .line 243
    invoke-static {}, Lcom/powervision/natives/JniDl01Native;->airConnectLink()I

    move-result v0

    return v0
.end method

.method public connectDevice()I
    .locals 2

    const-string v0, "lzqW4_body"

    const-string v1, "connectType \u8c03\u7528JNI \u8c03\u7528 \u5c31\u51fa\u9519"

    .line 275
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-static {}, Lcom/powervision/natives/JniW4Native;->connectDevice()I

    move-result v0

    return v0
.end method

.method public connectLink(I)I
    .locals 3

    .line 255
    invoke-static {}, Lcom/powervision/natives/JniW4Native;->connectLink()I

    move-result v0

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectLink who "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "lzqCheckError"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public connectLinkDl01()I
    .locals 1

    .line 224
    invoke-static {}, Lcom/powervision/natives/JniDl01Native;->connectDl01Link()I

    move-result v0

    return v0
.end method

.method public connectRemote()I
    .locals 1

    .line 196
    invoke-static {}, Lcom/powervision/natives/JniW4RemoteNative;->connectRemote()I

    move-result v0

    return v0
.end method

.method public connenctRemoteLink()I
    .locals 1

    .line 181
    invoke-static {}, Lcom/powervision/natives/JniW4RemoteNative;->connectLink()I

    move-result v0

    return v0
.end method

.method public disConnectLink()I
    .locals 3

    .line 267
    invoke-static {}, Lcom/powervision/natives/JniW4Native;->disConnectLink()I

    move-result v0

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect \u8fd4\u56de\u503c "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lzqCheckError"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public disConnectRemoteLink()I
    .locals 1

    .line 186
    invoke-static {}, Lcom/powervision/natives/JniW4RemoteNative;->disConnectLink()I

    move-result v0

    return v0
.end method

.method public disconncetGround()V
    .locals 0

    .line 228
    invoke-static {}, Lcom/powervision/natives/JniDl01Native;->disconnectGround()V

    return-void
.end method

.method public disconnect9342()V
    .locals 0

    .line 206
    invoke-static {}, Lcom/powervision/natives/JniW4RemoteNative;->disconnect9342Link()V

    return-void
.end method

.method public disconnectAir()V
    .locals 0

    .line 232
    invoke-static {}, Lcom/powervision/natives/JniDl01Native;->disconnectAir()V

    return-void
.end method

.method public disconnectDevice()V
    .locals 0

    .line 261
    invoke-static {}, Lcom/powervision/natives/JniW4Native;->disconnectDevice()V

    return-void
.end method

.method public disconnectRemote()V
    .locals 0

    .line 190
    invoke-static {}, Lcom/powervision/natives/JniW4RemoteNative;->disconnectRemote()V

    return-void
.end method

.method public getAcitviteStatusListener()Lcom/powervision/natives/callback/ActiviteCallBack$AcitviteStatusListener;
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_W4_API;->acitviteStatusListener:Lcom/powervision/natives/callback/ActiviteCallBack$AcitviteStatusListener;

    return-object v0
.end method

.method public getAirConnectListener()Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;
    .locals 1

    .line 668
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_W4_API;->airConnectListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;

    return-object v0
.end method

.method public getAoaCallBack()Lcom/powervision/natives/callback/AOACallBack;
    .locals 1

    .line 851
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_W4_API;->aoaCallBack:Lcom/powervision/natives/callback/AOACallBack;

    return-object v0
.end method

.method public getArmStatusListener()Lcom/powervision/natives/callback/DophinCallback$RayArmStatusListener;
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_W4_API;->rayArmStatusListener:Lcom/powervision/natives/callback/DophinCallback$RayArmStatusListener;

    return-object v0
.end method

.method public getAttitudeAndGroundspeedChangedListener()Lcom/powervision/natives/callback/PositionCallback$AttitudeAndGroundspeedChangedListener;
    .locals 1

    .line 604
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_W4_API;->attitudeAndGroundspeedChangedListener:Lcom/powervision/natives/callback/PositionCallback$AttitudeAndGroundspeedChangedListener;

    return-object v0
.end method

.method public getBatteryStatusListener()Lcom/powervision/natives/callback/SystemStatusCallback$BatteryStatusListener;
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_W4_API;->batteryStatusListener:Lcom/powervision/natives/callback/SystemStatusCallback$BatteryStatusListener;

    return-object v0
.end method

.method public getBodyUpgradCallBack()Lcom/powervision/natives/callback/W4UpgradeCallBack$BodyUpgradCallBack;
    .locals 1

    .line 806
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_W4_API;->bodyUpgradCallBack:Lcom/powervision/natives/callback/W4UpgradeCallBack$BodyUpgradCallBack;

    return-object v0
.end method

.method public getConnecteRemoteLinkListener()Lcom/powervision/natives/callback/W4RemoteConnectCallBack$ConnecteRemoteLinkListener;
    .locals 1

    .line 681
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_W4_API;->connecteRemoteLinkListener:Lcom/powervision/natives/callback/W4RemoteConnectCallBack$ConnecteRemoteLinkListener;

    return-object v0
.end method

.method public getConnecteRemoteListener()Lcom/powervision/natives/callback/W4RemoteConnectCallBack$ConnecteRemoteListener;
    .locals 1

    .line 689
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_W4_API;->connecteRemoteListener:Lcom/powervision/natives/callback/W4RemoteConnectCallBack$ConnecteRemoteListener;

    return-object v0
.end method

.method public getConnectionDevicceListener()Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionDevicceListener;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_W4_API;->connectionDevicceListener:Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionDevicceListener;

    return-object v0
.end method

.method public getConnectionLinkListener()Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionLinkListener;
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_W4_API;->connectionLinkListener:Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionLinkListener;

    return-object v0
.end method

.method public getDl01BSOperListener()Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;
    .locals 1

    .line 653
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_W4_API;->dl01BSOperListener:Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;

    return-object v0
.end method

.method public getDl01GrondConnectListener()Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_W4_API;->dl01GrondConnectListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;

    return-object v0
.end method

.method public getDl01UpgradeCallBack()Lcom/powervision/natives/callback/W4UpgradeCallBack$RemoteDl01UpgradeCallBack;
    .locals 1

    .line 639
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_W4_API;->dl01UpgradeCallBack:Lcom/powervision/natives/callback/W4UpgradeCallBack$RemoteDl01UpgradeCallBack;

    return-object v0
.end method

.method public getDolphinChangeModeErrorListener()Lcom/powervision/natives/callback/DophinCallback$DolphinChangeModeErrorListener;
    .locals 1

    .line 506
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_W4_API;->dolphinChangeModeErrorListener:Lcom/powervision/natives/callback/DophinCallback$DolphinChangeModeErrorListener;

    return-object v0
.end method

.method public getDolphinSelfErrorListener()Lcom/powervision/natives/callback/DophinCallback$DolphinSelfErrorListener;
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_W4_API;->dolphinSelfErrorListener:Lcom/powervision/natives/callback/DophinCallback$DolphinSelfErrorListener;

    return-object v0
.end method

.method public getDolphinStatusErrorListener()Lcom/powervision/natives/callback/DophinCallback$DolphinStatusErrorListener;
    .locals 1

    .line 527
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_W4_API;->dolphinStatusErrorListener:Lcom/powervision/natives/callback/DophinCallback$DolphinStatusErrorListener;

    return-object v0
.end method

.method public getDolphinSysErrorListener()Lcom/powervision/natives/callback/DophinCallback$DolphinSysErrorListener;
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_W4_API;->dolphinSysErrorListener:Lcom/powervision/natives/callback/DophinCallback$DolphinSysErrorListener;

    return-object v0
.end method

.method public getFixedSpeedCruiseListener()Lcom/powervision/natives/callback/DophinCallback$DolphinFixedSpeedCruiseListener;
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_W4_API;->fixedSpeedCruiseListener:Lcom/powervision/natives/callback/DophinCallback$DolphinFixedSpeedCruiseListener;

    return-object v0
.end method

.method public getGpsRawIntListener()Lcom/powervision/natives/callback/PositionCallback$GpsRawIntListener;
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_W4_API;->gpsRawIntListener:Lcom/powervision/natives/callback/PositionCallback$GpsRawIntListener;

    return-object v0
.end method

.method public getHomePositionListener()Lcom/powervision/natives/callback/PositionCallback$HomePositionListener;
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_W4_API;->homePositionListener:Lcom/powervision/natives/callback/PositionCallback$HomePositionListener;

    return-object v0
.end method

.method public getLightControlListener()Lcom/powervision/natives/callback/DophinCallback$LightControlListener;
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_W4_API;->lightControlListener:Lcom/powervision/natives/callback/DophinCallback$LightControlListener;

    return-object v0
.end method

.method public getMagnetometerCalibrateListener()Lcom/powervision/natives/callback/SensorCallback$MagnetometerCalibrateListener;
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_W4_API;->magnetometerCalibrateListener:Lcom/powervision/natives/callback/SensorCallback$MagnetometerCalibrateListener;

    return-object v0
.end method

.method public getManualControlDataListener()Lcom/powervision/natives/callback/RemoteControlCallback$ManualControlDataListener;
    .locals 1

    .line 791
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_W4_API;->manualControlDataListener:Lcom/powervision/natives/callback/RemoteControlCallback$ManualControlDataListener;

    return-object v0
.end method

.method public getMcuUpgradeCallBack()Lcom/powervision/natives/callback/W4UpgradeCallBack$RemoteMcuUpgradeCallBack;
    .locals 1

    .line 752
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_W4_API;->mcuUpgradeCallBack:Lcom/powervision/natives/callback/W4UpgradeCallBack$RemoteMcuUpgradeCallBack;

    return-object v0
.end method

.method public getMcu_bUpgradeCallBack()Lcom/powervision/natives/callback/W4UpgradeCallBack$RemoteMcu_BUpgradeCallBack;
    .locals 1

    .line 765
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_W4_API;->mcu_bUpgradeCallBack:Lcom/powervision/natives/callback/W4UpgradeCallBack$RemoteMcu_BUpgradeCallBack;

    return-object v0
.end method

.method public getMissionDownLoadListener()Lcom/powervision/natives/callback/MissionCallback$MissionDownLoadListener;
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_W4_API;->missionDownLoadListener:Lcom/powervision/natives/callback/MissionCallback$MissionDownLoadListener;

    return-object v0
.end method

.method public getMissionRunListener()Lcom/powervision/natives/callback/MissionCallback$MissionRunListener;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_W4_API;->missionRunListener:Lcom/powervision/natives/callback/MissionCallback$MissionRunListener;

    return-object v0
.end method

.method public getMissionUploadListener()Lcom/powervision/natives/callback/MissionCallback$MissionUploadListener;
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_W4_API;->missionUploadListener:Lcom/powervision/natives/callback/MissionCallback$MissionUploadListener;

    return-object v0
.end method

.method public getMt03RemoteControlBatterySurplusListener()Lcom/powervision/natives/callback/RemoteControlCallback$Mt03RemoteControlBatterySurplusListener;
    .locals 1

    .line 776
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_W4_API;->mt03RemoteControlBatterySurplusListener:Lcom/powervision/natives/callback/RemoteControlCallback$Mt03RemoteControlBatterySurplusListener;

    return-object v0
.end method

.method public getNestOpenerStatusListener()Lcom/powervision/natives/callback/DophinCallback$NestOpenerStatusListener;
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_W4_API;->nestOpenerStatusListener:Lcom/powervision/natives/callback/DophinCallback$NestOpenerStatusListener;

    return-object v0
.end method

.method public getNotifyOnAirConnectLinkResultListener()Lcom/powervision/natives/PowerSDKCallback$NotifyOnAirConnectLinkResultListener;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_W4_API;->notifyOnAirConnectLinkResultListener:Lcom/powervision/natives/PowerSDKCallback$NotifyOnAirConnectLinkResultListener;

    return-object v0
.end method

.method public getNotifyOnAirSetGetDl01OperationResultListener()Lcom/powervision/natives/PowerSDKCallback$NotifyOnAirSetGetDl01OperationResultListener;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_W4_API;->notifyOnAirSetGetDl01OperationResultListener:Lcom/powervision/natives/PowerSDKCallback$NotifyOnAirSetGetDl01OperationResultListener;

    return-object v0
.end method

.method public getOnBootloaderListener()Lcom/powervision/natives/callback/RemoteControlCallback$onBootloaderListener;
    .locals 1

    .line 860
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_W4_API;->onBootloaderListener:Lcom/powervision/natives/callback/RemoteControlCallback$onBootloaderListener;

    return-object v0
.end method

.method public getOnElectricQuantityDisplayListener()Lcom/powervision/natives/callback/SystemStatusCallback$onElectricQuantityDisplayListener;
    .locals 1

    .line 627
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_W4_API;->onElectricQuantityDisplayListener:Lcom/powervision/natives/callback/SystemStatusCallback$onElectricQuantityDisplayListener;

    return-object v0
.end method

.method public getOnExcuteReturenListener()Lcom/powervision/natives/callback/DophinCallback$onExcuteReturenListener;
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_W4_API;->onExcuteReturenListener:Lcom/powervision/natives/callback/DophinCallback$onExcuteReturenListener;

    return-object v0
.end method

.method public getOnKey_b_result()Lcom/powervision/natives/callback/RemoteControlCallback$onKey_B_Result;
    .locals 1

    .line 837
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_W4_API;->onKey_b_result:Lcom/powervision/natives/callback/RemoteControlCallback$onKey_B_Result;

    return-object v0
.end method

.method public getOnSailModeListener()Lcom/powervision/natives/callback/DophinCallback$onSailModeListener;
    .locals 1

    .line 615
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_W4_API;->onSailModeListener:Lcom/powervision/natives/callback/DophinCallback$onSailModeListener;

    return-object v0
.end method

.method public getRayConstantSpeedModeListener()Lcom/powervision/natives/callback/DophinCallback$RayConstantSpeedModeListener;
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_W4_API;->rayConstantSpeedModeListener:Lcom/powervision/natives/callback/DophinCallback$RayConstantSpeedModeListener;

    return-object v0
.end method

.method public getRemoteKeyListener()Lcom/powervision/natives/callback/RemoteControlCallback$RemoteKeyListener;
    .locals 1

    .line 826
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_W4_API;->remoteKeyListener:Lcom/powervision/natives/callback/RemoteControlCallback$RemoteKeyListener;

    return-object v0
.end method

.method public getSetArmListener()Lcom/powervision/natives/callback/DophinCallback$setArmListener;
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_W4_API;->setArmListener:Lcom/powervision/natives/callback/DophinCallback$setArmListener;

    return-object v0
.end method

.method public getW49342LinkCallBack()Lcom/powervision/natives/callback/W49342LinkCallBack;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_W4_API;->w49342LinkCallBack:Lcom/powervision/natives/callback/W49342LinkCallBack;

    return-object v0
.end method

.method public getW49342UpgradeCallBack()Lcom/powervision/natives/callback/W4UpgradeCallBack$W49342UpgradeCallBack;
    .locals 1

    .line 817
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_W4_API;->w49342UpgradeCallBack:Lcom/powervision/natives/callback/W4UpgradeCallBack$W49342UpgradeCallBack;

    return-object v0
.end method

.method public init9342CallBack()V
    .locals 1

    .line 165
    sget-boolean v0, Lcom/powervision/natives/PVSDK_W4_API;->SDKAVILIBALE:Z

    if-eqz v0, :cond_0

    .line 166
    invoke-static {}, Lcom/powervision/natives/JniW4RemoteNative;->regisiter9342CallBack()V

    :cond_0
    return-void
.end method

.method public initAOASdk()V
    .locals 2

    const-string v0, "lzqUsb"

    const-string v1, "initAOASdk"

    .line 73
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget v0, p0, Lcom/powervision/natives/PVSDK_W4_API;->needLog:I

    invoke-static {v0}, Lcom/powervision/natives/JniSdkEngine;->initSdkWithAOA(I)I

    const/4 v0, 0x1

    .line 75
    sput-boolean v0, Lcom/powervision/natives/PVSDK_W4_API;->SDKAVILIBALE:Z

    return-void
.end method

.method public initCallBacks()V
    .locals 1

    .line 53
    sget-boolean v0, Lcom/powervision/natives/PVSDK_W4_API;->SDKAVILIBALE:Z

    if-eqz v0, :cond_0

    .line 54
    invoke-static {}, Lcom/powervision/natives/JniW4Native;->registerW4Callbacks()I

    .line 55
    invoke-static {}, Lcom/powervision/natives/JniDl01Native;->registerDl01Callbacks()I

    :cond_0
    return-void
.end method

.method public initDl01CallBack()V
    .locals 1

    .line 159
    sget-boolean v0, Lcom/powervision/natives/PVSDK_W4_API;->SDKAVILIBALE:Z

    if-eqz v0, :cond_0

    .line 160
    invoke-static {}, Lcom/powervision/natives/JniDl01Native;->registerDl01Callbacks()I

    :cond_0
    return-void
.end method

.method public initRemoteCallBack()V
    .locals 1

    .line 153
    sget-boolean v0, Lcom/powervision/natives/PVSDK_W4_API;->SDKAVILIBALE:Z

    if-eqz v0, :cond_0

    .line 154
    invoke-static {}, Lcom/powervision/natives/JniW4RemoteNative;->registerCallbacks()I

    :cond_0
    return-void
.end method

.method public initUbb1Sdk()V
    .locals 2

    const-string v0, "lzqUsb"

    const-string v1, "initUbb1Sdk"

    .line 67
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget v0, p0, Lcom/powervision/natives/PVSDK_W4_API;->needLog:I

    invoke-static {v0}, Lcom/powervision/natives/JniSdkEngine;->initSdofW4WithUSB1(I)I

    const/4 v0, 0x1

    .line 69
    sput-boolean v0, Lcom/powervision/natives/PVSDK_W4_API;->SDKAVILIBALE:Z

    return-void
.end method

.method public initWifiSdk()V
    .locals 2

    const-string v0, "lzqUsb"

    const-string v1, "initWifiSdk"

    .line 60
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget v0, p0, Lcom/powervision/natives/PVSDK_W4_API;->needLog:I

    invoke-static {v0}, Lcom/powervision/natives/JniSdkEngine;->initSdkWithWIFI(I)I

    const/4 v0, 0x1

    .line 62
    sput-boolean v0, Lcom/powervision/natives/PVSDK_W4_API;->SDKAVILIBALE:Z

    return-void
.end method

.method public notifyParameterResult(Ljava/lang/String;SSLjava/lang/Object;)V
    .locals 3

    .line 580
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_W4_API;->onParameterResultListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 582
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 583
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/natives/callback/DophinCallback$onParameterResultListener;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/powervision/natives/callback/DophinCallback$onParameterResultListener;->onGetParameter(Ljava/lang/String;SSLjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyRemoteParamter(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 5

    .line 719
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_W4_API;->remoteControlParamListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 720
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    const-string v2, "lzqRemote"

    const/4 v3, 0x1

    if-eq p1, v3, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const/4 v2, 0x6

    if-eq p1, v2, :cond_0

    goto :goto_1

    .line 740
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/natives/callback/RemoteControlCallback$RemoteControlParamListener;

    invoke-interface {v2, p2, p3}, Lcom/powervision/natives/callback/RemoteControlCallback$RemoteControlParamListener;->onRemoteControlGetTimeout(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 737
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/natives/callback/RemoteControlCallback$RemoteControlParamListener;

    invoke-interface {v2, p2, p3}, Lcom/powervision/natives/callback/RemoteControlCallback$RemoteControlParamListener;->onRemoteControlSetTimeout(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 727
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4e0b\u8f7d\u53c2\u6570\u6210\u529f name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/natives/callback/RemoteControlCallback$RemoteControlParamListener;

    invoke-interface {v2, p2, p3}, Lcom/powervision/natives/callback/RemoteControlCallback$RemoteControlParamListener;->onRemoteControlGetSuccess(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 723
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8bbe\u7f6e\u53c2\u6570\u6210\u529f name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/natives/callback/RemoteControlCallback$RemoteControlParamListener;

    invoke-interface {v2, p2, p3}, Lcom/powervision/natives/callback/RemoteControlCallback$RemoteControlParamListener;->onRemoteControlSetSuccess(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public reSet_w4()V
    .locals 1

    .line 172
    sget-boolean v0, Lcom/powervision/natives/PVSDK_W4_API;->SDKAVILIBALE:Z

    if-eqz v0, :cond_0

    .line 173
    invoke-static {}, Lcom/powervision/natives/JniW4Native;->reSet()V

    :cond_0
    return-void
.end method

.method public removeParametereListener(Lcom/powervision/natives/callback/DophinCallback$onParameterResultListener;)V
    .locals 2

    .line 571
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_W4_API;->onParameterResultListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 572
    :try_start_0
    iget-object v1, p0, Lcom/powervision/natives/PVSDK_W4_API;->onParameterResultListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 573
    iget-object v1, p0, Lcom/powervision/natives/PVSDK_W4_API;->onParameterResultListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 575
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

.method public removeRemoteControlParamListener(Lcom/powervision/natives/callback/RemoteControlCallback$RemoteControlParamListener;)V
    .locals 2

    .line 711
    iget-object v0, p0, Lcom/powervision/natives/PVSDK_W4_API;->remoteControlParamListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 712
    :try_start_0
    iget-object v1, p0, Lcom/powervision/natives/PVSDK_W4_API;->remoteControlParamListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 713
    iget-object v1, p0, Lcom/powervision/natives/PVSDK_W4_API;->remoteControlParamListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 715
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

.method public setAcitviteStatusListener(Lcom/powervision/natives/callback/ActiviteCallBack$AcitviteStatusListener;)V
    .locals 0

    .line 474
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_W4_API;->acitviteStatusListener:Lcom/powervision/natives/callback/ActiviteCallBack$AcitviteStatusListener;

    return-void
.end method

.method public setAirConnectListener(Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;)V
    .locals 0

    .line 672
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_W4_API;->airConnectListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;

    return-void
.end method

.method public setAoaCallBack(Lcom/powervision/natives/callback/AOACallBack;)V
    .locals 0

    .line 855
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_W4_API;->aoaCallBack:Lcom/powervision/natives/callback/AOACallBack;

    return-void
.end method

.method public setArmStatusListener(Lcom/powervision/natives/callback/DophinCallback$RayArmStatusListener;)V
    .locals 0

    .line 397
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_W4_API;->rayArmStatusListener:Lcom/powervision/natives/callback/DophinCallback$RayArmStatusListener;

    return-void
.end method

.method public setAttitudeAndGroundspeedChangedListener(Lcom/powervision/natives/callback/PositionCallback$AttitudeAndGroundspeedChangedListener;)V
    .locals 0

    .line 608
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_W4_API;->attitudeAndGroundspeedChangedListener:Lcom/powervision/natives/callback/PositionCallback$AttitudeAndGroundspeedChangedListener;

    return-void
.end method

.method public setBatteryStatusListener(Lcom/powervision/natives/callback/SystemStatusCallback$BatteryStatusListener;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_W4_API;->batteryStatusListener:Lcom/powervision/natives/callback/SystemStatusCallback$BatteryStatusListener;

    return-void
.end method

.method public setBodyUpgradCallBack(Lcom/powervision/natives/callback/W4UpgradeCallBack$BodyUpgradCallBack;)V
    .locals 0

    .line 810
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_W4_API;->bodyUpgradCallBack:Lcom/powervision/natives/callback/W4UpgradeCallBack$BodyUpgradCallBack;

    return-void
.end method

.method public setCommonCallback(Lorg/xutils/common/Callback$CommonCallback;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_W4_API;->commonCallback:Lorg/xutils/common/Callback$CommonCallback;

    return-void
.end method

.method public setConnecteRemoteLinkListener(Lcom/powervision/natives/callback/W4RemoteConnectCallBack$ConnecteRemoteLinkListener;)V
    .locals 0

    .line 685
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_W4_API;->connecteRemoteLinkListener:Lcom/powervision/natives/callback/W4RemoteConnectCallBack$ConnecteRemoteLinkListener;

    return-void
.end method

.method public setConnecteRemoteListener(Lcom/powervision/natives/callback/W4RemoteConnectCallBack$ConnecteRemoteListener;)V
    .locals 0

    .line 693
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_W4_API;->connecteRemoteListener:Lcom/powervision/natives/callback/W4RemoteConnectCallBack$ConnecteRemoteListener;

    return-void
.end method

.method public setConnectionDevicceListener(Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionDevicceListener;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_W4_API;->connectionDevicceListener:Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionDevicceListener;

    return-void
.end method

.method public setConnectionLinkListener(Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionLinkListener;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_W4_API;->connectionLinkListener:Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionLinkListener;

    return-void
.end method

.method public setDl01BSOperListener(Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;)V
    .locals 0

    .line 657
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_W4_API;->dl01BSOperListener:Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;

    return-void
.end method

.method public setDl01GrondConnectListener(Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_W4_API;->dl01GrondConnectListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;

    return-void
.end method

.method public setDl01UpgradeCallBack(Lcom/powervision/natives/callback/W4UpgradeCallBack$RemoteDl01UpgradeCallBack;)V
    .locals 0

    .line 643
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_W4_API;->dl01UpgradeCallBack:Lcom/powervision/natives/callback/W4UpgradeCallBack$RemoteDl01UpgradeCallBack;

    return-void
.end method

.method public setDolphinChangeModeErrorListener(Lcom/powervision/natives/callback/DophinCallback$DolphinChangeModeErrorListener;)V
    .locals 0

    .line 510
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_W4_API;->dolphinChangeModeErrorListener:Lcom/powervision/natives/callback/DophinCallback$DolphinChangeModeErrorListener;

    return-void
.end method

.method public setDolphinSelfErrorListener(Lcom/powervision/natives/callback/DophinCallback$DolphinSelfErrorListener;)V
    .locals 0

    .line 499
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_W4_API;->dolphinSelfErrorListener:Lcom/powervision/natives/callback/DophinCallback$DolphinSelfErrorListener;

    return-void
.end method

.method public setDolphinStatusErrorListener(Lcom/powervision/natives/callback/DophinCallback$DolphinStatusErrorListener;)V
    .locals 0

    .line 531
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_W4_API;->dolphinStatusErrorListener:Lcom/powervision/natives/callback/DophinCallback$DolphinStatusErrorListener;

    return-void
.end method

.method public setDolphinSysErrorListener(Lcom/powervision/natives/callback/DophinCallback$DolphinSysErrorListener;)V
    .locals 0

    .line 521
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_W4_API;->dolphinSysErrorListener:Lcom/powervision/natives/callback/DophinCallback$DolphinSysErrorListener;

    return-void
.end method

.method public setFixedSpeedCruiseListener(Lcom/powervision/natives/callback/DophinCallback$DolphinFixedSpeedCruiseListener;)V
    .locals 0

    .line 554
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_W4_API;->fixedSpeedCruiseListener:Lcom/powervision/natives/callback/DophinCallback$DolphinFixedSpeedCruiseListener;

    return-void
.end method

.method public setGetOperation(ILjava/lang/String;I)I
    .locals 0

    .line 238
    invoke-static {p1, p2, p3}, Lcom/powervision/natives/JniDl01Native;->setGetOperation(ILjava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public setGpsRawIntListener(Lcom/powervision/natives/callback/PositionCallback$GpsRawIntListener;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_W4_API;->gpsRawIntListener:Lcom/powervision/natives/callback/PositionCallback$GpsRawIntListener;

    return-void
.end method

.method public setHomePositionListener(Lcom/powervision/natives/callback/PositionCallback$HomePositionListener;)V
    .locals 0

    .line 447
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_W4_API;->homePositionListener:Lcom/powervision/natives/callback/PositionCallback$HomePositionListener;

    return-void
.end method

.method public setLightControlListener(Lcom/powervision/natives/callback/DophinCallback$LightControlListener;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_W4_API;->lightControlListener:Lcom/powervision/natives/callback/DophinCallback$LightControlListener;

    return-void
.end method

.method public setMagnetometerCalibrateListener(Lcom/powervision/natives/callback/SensorCallback$MagnetometerCalibrateListener;)V
    .locals 0

    .line 597
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_W4_API;->magnetometerCalibrateListener:Lcom/powervision/natives/callback/SensorCallback$MagnetometerCalibrateListener;

    return-void
.end method

.method public setManualControlDataListener(Lcom/powervision/natives/callback/RemoteControlCallback$ManualControlDataListener;)V
    .locals 0

    .line 795
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_W4_API;->manualControlDataListener:Lcom/powervision/natives/callback/RemoteControlCallback$ManualControlDataListener;

    return-void
.end method

.method public setMcuUpgradeCallBack(Lcom/powervision/natives/callback/W4UpgradeCallBack$RemoteMcuUpgradeCallBack;)V
    .locals 0

    .line 756
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_W4_API;->mcuUpgradeCallBack:Lcom/powervision/natives/callback/W4UpgradeCallBack$RemoteMcuUpgradeCallBack;

    return-void
.end method

.method public setMcu_bUpgradeCallBack(Lcom/powervision/natives/callback/W4UpgradeCallBack$RemoteMcu_BUpgradeCallBack;)V
    .locals 0

    .line 769
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_W4_API;->mcu_bUpgradeCallBack:Lcom/powervision/natives/callback/W4UpgradeCallBack$RemoteMcu_BUpgradeCallBack;

    return-void
.end method

.method public setMissionDownLoadListener(Lcom/powervision/natives/callback/MissionCallback$MissionDownLoadListener;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_W4_API;->missionDownLoadListener:Lcom/powervision/natives/callback/MissionCallback$MissionDownLoadListener;

    return-void
.end method

.method public setMissionRunListener(Lcom/powervision/natives/callback/MissionCallback$MissionRunListener;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_W4_API;->missionRunListener:Lcom/powervision/natives/callback/MissionCallback$MissionRunListener;

    return-void
.end method

.method public setMissionUploadListener(Lcom/powervision/natives/callback/MissionCallback$MissionUploadListener;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_W4_API;->missionUploadListener:Lcom/powervision/natives/callback/MissionCallback$MissionUploadListener;

    return-void
.end method

.method public setMt03RemoteControlBatterySurplusListener(Lcom/powervision/natives/callback/RemoteControlCallback$Mt03RemoteControlBatterySurplusListener;)V
    .locals 0

    .line 780
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_W4_API;->mt03RemoteControlBatterySurplusListener:Lcom/powervision/natives/callback/RemoteControlCallback$Mt03RemoteControlBatterySurplusListener;

    return-void
.end method

.method public setNestOpenerStatusListener(Lcom/powervision/natives/callback/DophinCallback$NestOpenerStatusListener;)V
    .locals 0

    .line 487
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_W4_API;->nestOpenerStatusListener:Lcom/powervision/natives/callback/DophinCallback$NestOpenerStatusListener;

    return-void
.end method

.method public setNotifyOnAirConnectLinkResultListener(Lcom/powervision/natives/PowerSDKCallback$NotifyOnAirConnectLinkResultListener;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_W4_API;->notifyOnAirConnectLinkResultListener:Lcom/powervision/natives/PowerSDKCallback$NotifyOnAirConnectLinkResultListener;

    return-void
.end method

.method public setNotifyOnAirSetGetDl01OperationResultListener(Lcom/powervision/natives/PowerSDKCallback$NotifyOnAirSetGetDl01OperationResultListener;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_W4_API;->notifyOnAirSetGetDl01OperationResultListener:Lcom/powervision/natives/PowerSDKCallback$NotifyOnAirSetGetDl01OperationResultListener;

    return-void
.end method

.method public setOnBootloaderListener(Lcom/powervision/natives/callback/RemoteControlCallback$onBootloaderListener;)V
    .locals 0

    .line 864
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_W4_API;->onBootloaderListener:Lcom/powervision/natives/callback/RemoteControlCallback$onBootloaderListener;

    return-void
.end method

.method public setOnElectricQuantityDisplayListener(Lcom/powervision/natives/callback/SystemStatusCallback$onElectricQuantityDisplayListener;)V
    .locals 0

    .line 631
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_W4_API;->onElectricQuantityDisplayListener:Lcom/powervision/natives/callback/SystemStatusCallback$onElectricQuantityDisplayListener;

    return-void
.end method

.method public setOnExcuteReturenListener(Lcom/powervision/natives/callback/DophinCallback$onExcuteReturenListener;)V
    .locals 0

    .line 423
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_W4_API;->onExcuteReturenListener:Lcom/powervision/natives/callback/DophinCallback$onExcuteReturenListener;

    return-void
.end method

.method public setOnKey_b_result(Lcom/powervision/natives/callback/RemoteControlCallback$onKey_B_Result;)V
    .locals 0

    .line 841
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_W4_API;->onKey_b_result:Lcom/powervision/natives/callback/RemoteControlCallback$onKey_B_Result;

    return-void
.end method

.method public setOnSailModeListener(Lcom/powervision/natives/callback/DophinCallback$onSailModeListener;)V
    .locals 0

    .line 619
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_W4_API;->onSailModeListener:Lcom/powervision/natives/callback/DophinCallback$onSailModeListener;

    return-void
.end method

.method public setRayConstantSpeedModeListener(Lcom/powervision/natives/callback/DophinCallback$RayConstantSpeedModeListener;)V
    .locals 0

    .line 542
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_W4_API;->rayConstantSpeedModeListener:Lcom/powervision/natives/callback/DophinCallback$RayConstantSpeedModeListener;

    return-void
.end method

.method public setRemoteKeyListener(Lcom/powervision/natives/callback/RemoteControlCallback$RemoteKeyListener;)V
    .locals 0

    .line 830
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_W4_API;->remoteKeyListener:Lcom/powervision/natives/callback/RemoteControlCallback$RemoteKeyListener;

    return-void
.end method

.method public setSetArmListener(Lcom/powervision/natives/callback/DophinCallback$setArmListener;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_W4_API;->setArmListener:Lcom/powervision/natives/callback/DophinCallback$setArmListener;

    return-void
.end method

.method public setW49342LinkCallBack(Lcom/powervision/natives/callback/W49342LinkCallBack;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_W4_API;->w49342LinkCallBack:Lcom/powervision/natives/callback/W49342LinkCallBack;

    return-void
.end method

.method public setW49342UpgradeCallBack(Lcom/powervision/natives/callback/W4UpgradeCallBack$W49342UpgradeCallBack;)V
    .locals 0

    .line 821
    iput-object p1, p0, Lcom/powervision/natives/PVSDK_W4_API;->w49342UpgradeCallBack:Lcom/powervision/natives/callback/W4UpgradeCallBack$W49342UpgradeCallBack;

    return-void
.end method

.method public uninitSdk()V
    .locals 3

    const-string v0, "lzqUsb"

    const-string v1, "uninitSDK"

    .line 85
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/powervision/natives/JniSdkEngine;->uninitSDK()I

    const/4 v0, 0x0

    .line 87
    sput-boolean v0, Lcom/powervision/natives/PVSDK_W4_API;->SDKAVILIBALE:Z

    .line 88
    iget-object v1, p0, Lcom/powervision/natives/PVSDK_W4_API;->commonCallback:Lorg/xutils/common/Callback$CommonCallback;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 89
    invoke-interface {v1, v2, v0}, Lorg/xutils/common/Callback$CommonCallback;->onError(Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method
