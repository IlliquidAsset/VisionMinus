.class public Lcom/powervision/natives/JniW4RemoteNative;
.super Ljava/lang/Object;
.source "JniW4RemoteNative.java"


# static fields
.field public static volatile bootLoaderstatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LinkStatusCallBackFromJni(I)V
    .locals 2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " jnicallback linkStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqW4_remote"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getConnecteRemoteLinkListener()Lcom/powervision/natives/callback/W4RemoteConnectCallBack$ConnecteRemoteLinkListener;

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

    .line 62
    :cond_0
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getConnecteRemoteLinkListener()Lcom/powervision/natives/callback/W4RemoteConnectCallBack$ConnecteRemoteLinkListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/W4RemoteConnectCallBack$ConnecteRemoteLinkListener;->onConnectChainFailed()V

    goto :goto_0

    .line 68
    :cond_1
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getConnecteRemoteLinkListener()Lcom/powervision/natives/callback/W4RemoteConnectCallBack$ConnecteRemoteLinkListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/W4RemoteConnectCallBack$ConnecteRemoteLinkListener;->onChainConnectTimeOut()V

    goto :goto_0

    .line 65
    :cond_2
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getConnecteRemoteLinkListener()Lcom/powervision/natives/callback/W4RemoteConnectCallBack$ConnecteRemoteLinkListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/W4RemoteConnectCallBack$ConnecteRemoteLinkListener;->onChainDisConnected()V

    goto :goto_0

    .line 59
    :cond_3
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getConnecteRemoteLinkListener()Lcom/powervision/natives/callback/W4RemoteConnectCallBack$ConnecteRemoteLinkListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/W4RemoteConnectCallBack$ConnecteRemoteLinkListener;->onConnectChainSuccess()V

    :cond_4
    :goto_0
    return-void
.end method

.method public static native alert9342Ip(Ljava/lang/String;I)V
.end method

.method public static native alterRemoteIp(Ljava/lang/String;I)V
.end method

.method public static native connect9342Link()V
.end method

.method public static native connectLink()I
.end method

.method public static native connectRemote()I
.end method

.method public static connectRemoteCallBackFromJni(I)V
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " jnicallback linkStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqW4_remote"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getConnecteRemoteListener()Lcom/powervision/natives/callback/W4RemoteConnectCallBack$ConnecteRemoteListener;

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

    .line 94
    :cond_0
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getConnecteRemoteListener()Lcom/powervision/natives/callback/W4RemoteConnectCallBack$ConnecteRemoteListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/W4RemoteConnectCallBack$ConnecteRemoteListener;->onHeartbeatRecovered()V

    goto :goto_0

    .line 97
    :cond_1
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getConnecteRemoteListener()Lcom/powervision/natives/callback/W4RemoteConnectCallBack$ConnecteRemoteListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/W4RemoteConnectCallBack$ConnecteRemoteListener;->onHeartbeatTimeOut()V

    goto :goto_0

    .line 85
    :cond_2
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getConnecteRemoteListener()Lcom/powervision/natives/callback/W4RemoteConnectCallBack$ConnecteRemoteListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/W4RemoteConnectCallBack$ConnecteRemoteListener;->onDeviceConnectFailed()V

    goto :goto_0

    .line 91
    :cond_3
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getConnecteRemoteListener()Lcom/powervision/natives/callback/W4RemoteConnectCallBack$ConnecteRemoteListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/W4RemoteConnectCallBack$ConnecteRemoteListener;->onDeviceConnectTimeOut()V

    goto :goto_0

    .line 88
    :cond_4
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getConnecteRemoteListener()Lcom/powervision/natives/callback/W4RemoteConnectCallBack$ConnecteRemoteListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/W4RemoteConnectCallBack$ConnecteRemoteListener;->onDeviceDisConnected()V

    goto :goto_0

    .line 81
    :cond_5
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getConnecteRemoteListener()Lcom/powervision/natives/callback/W4RemoteConnectCallBack$ConnecteRemoteListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/W4RemoteConnectCallBack$ConnecteRemoteListener;->onDeviceConnectSuccess()V

    :cond_6
    :goto_0
    return-void
.end method

.method public static native disConnectLink()I
.end method

.method public static native disconnect9342Link()V
.end method

.method public static native disconnectRemote()V
.end method

.method public static native downLoadParameter(Ljava/lang/String;)I
.end method

.method public static native get9342Version()I
.end method

.method public static get9342VersionCallBackFromJni(Ljava/lang/String;)V
    .locals 1

    .line 212
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getW49342LinkCallBack()Lcom/powervision/natives/callback/W49342LinkCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getW49342LinkCallBack()Lcom/powervision/natives/callback/W49342LinkCallBack;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/callback/W49342LinkCallBack;->onGetVersion(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static native getBooterLoader()V
.end method

.method public static onGetBootLoaderFromJni(I)V
    .locals 2

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "W3 bootloader:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqRemote"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    sput p0, Lcom/powervision/natives/JniW4RemoteNative;->bootLoaderstatus:I

    .line 236
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getOnBootloaderListener()Lcom/powervision/natives/callback/RemoteControlCallback$onBootloaderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getOnBootloaderListener()Lcom/powervision/natives/callback/RemoteControlCallback$onBootloaderListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/callback/RemoteControlCallback$onBootloaderListener;->onGetBootloaderStatus(I)V

    :cond_0
    return-void
.end method

.method public static onKeyResultCallBackFromJni(I)V
    .locals 2

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keyResult : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqRemote"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getRemoteKeyListener()Lcom/powervision/natives/callback/RemoteControlCallback$RemoteKeyListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 221
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getRemoteKeyListener()Lcom/powervision/natives/callback/RemoteControlCallback$RemoteKeyListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/callback/RemoteControlCallback$RemoteKeyListener;->keyResult(I)V

    :cond_0
    return-void
.end method

.method public static onKey_B_ResultCallBackFromJni(I)V
    .locals 2

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyB Result====>: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqRemote"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getOnKey_b_result()Lcom/powervision/natives/callback/RemoteControlCallback$onKey_B_Result;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getOnKey_b_result()Lcom/powervision/natives/callback/RemoteControlCallback$onKey_B_Result;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/callback/RemoteControlCallback$onKey_B_Result;->key_b_result(I)V

    :cond_0
    return-void
.end method

.method public static onPvw4RemoteElectricResultCallBackFromJni(I)V
    .locals 1

    .line 132
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getMt03RemoteControlBatterySurplusListener()Lcom/powervision/natives/callback/RemoteControlCallback$Mt03RemoteControlBatterySurplusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getMt03RemoteControlBatterySurplusListener()Lcom/powervision/natives/callback/RemoteControlCallback$Mt03RemoteControlBatterySurplusListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/callback/RemoteControlCallback$Mt03RemoteControlBatterySurplusListener;->mt03RemoteControlBatterySurplus(I)V

    :cond_0
    return-void
.end method

.method public static onPvw4RemoteManualControlResultCallBackFromJni(IIII)V
    .locals 1

    .line 140
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getManualControlDataListener()Lcom/powervision/natives/callback/RemoteControlCallback$ManualControlDataListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Lcom/powervision/natives/param/ManualControlDateNotifyParam;

    invoke-direct {v0}, Lcom/powervision/natives/param/ManualControlDateNotifyParam;-><init>()V

    .line 142
    iput p0, v0, Lcom/powervision/natives/param/ManualControlDateNotifyParam;->x:I

    .line 143
    iput p1, v0, Lcom/powervision/natives/param/ManualControlDateNotifyParam;->y:I

    .line 144
    iput p2, v0, Lcom/powervision/natives/param/ManualControlDateNotifyParam;->z:I

    .line 145
    iput p3, v0, Lcom/powervision/natives/param/ManualControlDateNotifyParam;->r:I

    .line 146
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getManualControlDataListener()Lcom/powervision/natives/callback/RemoteControlCallback$ManualControlDataListener;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/powervision/natives/callback/RemoteControlCallback$ManualControlDataListener;->onManualControlDataReceived(Lcom/powervision/natives/param/ManualControlDateNotifyParam;)V

    :cond_0
    return-void
.end method

.method public static onPvw4RemoteParameterResultCallBackFromJni(ILjava/lang/String;F)V
    .locals 2

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "float \u63a5\u6536\u7248\u672c\u53f7 name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " restule:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqRemote"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, p0, p1, p2}, Lcom/powervision/natives/PVSDK_W4_API;->notifyRemoteParamter(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static onPvw4RemoteParameterResultCallBackFromJni(ILjava/lang/String;I)V
    .locals 2

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "int \u63a5\u6536\u7248\u672c\u53f7 name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " restule:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqRemote"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p0, p1, p2}, Lcom/powervision/natives/PVSDK_W4_API;->notifyRemoteParamter(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static onPvw4RemoteParameterResultCallBackFromJni(ILjava/lang/String;J)V
    .locals 2

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "long \u63a5\u6536\u7248\u672c\u53f7 name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " restule:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqRemote"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p0, p1, p2}, Lcom/powervision/natives/PVSDK_W4_API;->notifyRemoteParamter(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static onPvw4RemoteThumbwheelResultCallBackFromJni(III)V
    .locals 0

    return-void
.end method

.method public static onW4RemoteMcuBUpgradeCallBckFromJni(II)V
    .locals 2

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "B onW4RemoteMcuBUpgradeCallBckFromJni result "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  progress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqRemote"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getMcu_bUpgradeCallBack()Lcom/powervision/natives/callback/W4UpgradeCallBack$RemoteMcu_BUpgradeCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getMcu_bUpgradeCallBack()Lcom/powervision/natives/callback/W4UpgradeCallBack$RemoteMcu_BUpgradeCallBack;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/powervision/natives/callback/W4UpgradeCallBack$RemoteMcu_BUpgradeCallBack;->onMcu_BUpgradeState(II)V

    :cond_0
    return-void
.end method

.method public static onW4RemoteMcuUpdateCallBackFromJni(II)V
    .locals 2

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A onW4RemoteMcuBUpgradeCallBckFromJni result "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " progress\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqup"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getMcuUpgradeCallBack()Lcom/powervision/natives/callback/W4UpgradeCallBack$RemoteMcuUpgradeCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getMcuUpgradeCallBack()Lcom/powervision/natives/callback/W4UpgradeCallBack$RemoteMcuUpgradeCallBack;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/powervision/natives/callback/W4UpgradeCallBack$RemoteMcuUpgradeCallBack;->onMcuUpGradeState(II)V

    :cond_0
    return-void
.end method

.method public static native regisiter9342CallBack()V
.end method

.method public static native registerCallbacks()I
.end method

.method public static native updateMcu(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public static native upgrade9342(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native uploadParameter(Ljava/lang/String;F)I
.end method

.method public static native uploadParameter(Ljava/lang/String;I)I
.end method

.method public static native uploadParameter(Ljava/lang/String;J)I
.end method

.method public static w49342LinkCallBack(I)V
    .locals 1

    .line 177
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getW49342LinkCallBack()Lcom/powervision/natives/callback/W49342LinkCallBack;

    move-result-object v0

    if-eqz v0, :cond_5

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 189
    :cond_0
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getW49342LinkCallBack()Lcom/powervision/natives/callback/W49342LinkCallBack;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/W49342LinkCallBack;->onFailed()V

    goto :goto_0

    .line 186
    :cond_1
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getW49342LinkCallBack()Lcom/powervision/natives/callback/W49342LinkCallBack;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/W49342LinkCallBack;->onLinkFailed()V

    goto :goto_0

    .line 192
    :cond_2
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getW49342LinkCallBack()Lcom/powervision/natives/callback/W49342LinkCallBack;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/W49342LinkCallBack;->onTimeOut()V

    goto :goto_0

    .line 183
    :cond_3
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getW49342LinkCallBack()Lcom/powervision/natives/callback/W49342LinkCallBack;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/W49342LinkCallBack;->onDisconnect()V

    goto :goto_0

    .line 180
    :cond_4
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/natives/PVSDK_W4_API;->getW49342LinkCallBack()Lcom/powervision/natives/callback/W49342LinkCallBack;

    move-result-object p0

    invoke-interface {p0}, Lcom/powervision/natives/callback/W49342LinkCallBack;->onLinkSuccess()V

    :cond_5
    :goto_0
    return-void
.end method

.method public static w49342UpgrageCallBack(II)V
    .locals 1

    .line 201
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getW49342UpgradeCallBack()Lcom/powervision/natives/callback/W4UpgradeCallBack$W49342UpgradeCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getW49342UpgradeCallBack()Lcom/powervision/natives/callback/W4UpgradeCallBack$W49342UpgradeCallBack;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/powervision/natives/callback/W4UpgradeCallBack$W49342UpgradeCallBack;->on9342UpgradeStatus(II)V

    :cond_0
    return-void
.end method
