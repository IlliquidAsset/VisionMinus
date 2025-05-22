.class public Lcom/powervision/natives/connect/ConnectRemoteSDK;
.super Ljava/lang/Object;
.source "ConnectRemoteSDK.java"

# interfaces
.implements Lcom/powervision/natives/callback/W4RemoteConnectCallBack$ConnecteRemoteLinkListener;
.implements Lcom/powervision/natives/callback/W4RemoteConnectCallBack$ConnecteRemoteListener;
.implements Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyRemoteConnectLinkListener;
.implements Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyRemoteConnectListener;
.implements Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyonRemoteParameterResultIntListener;
.implements Lcom/powervision/natives/callback/RemoteStatusCallback$RemoteGetBootLoaderStatusListener;


# static fields
.field public static final ALTER_USB1:I = 0xc

.field public static final ALTER_WIFI:I = 0xd

.field public static final AP03:I = 0x1

.field public static final DEVICE_CONNECTED:I = 0x9

.field public static final DIS:I = 0x14

.field public static final GET_BOOTLOADER:I = 0xe

.field public static final HEART_RECOVERY:I = 0xb

.field public static final HEART_TIMEOUT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ConnectRemoteSDK"

.field public static final W4:I = 0x2

.field public static currentDevice:I = -0x1

.field public static isUsb2:Z = false

.field private static sdk:Lcom/powervision/natives/connect/ConnectRemoteSDK;


# instance fields
.field private final CHAIN_CONNECTED:I

.field private final CHAIN_DISCONNECT:I

.field private final CHAIN_FAILED:I

.field private final CHAIN_TIMEOUT:I

.field private final DEVICE_DISCONNECT:I

.field private final DEVICE_FAILED:I

.field private final DEVICE_TIMEOUT:I

.field private final IDEAL:I

.field private ap03RemoteModeResultListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/powervision/sdk/callback/Ap03RemoteModeResultListener;",
            ">;"
        }
    .end annotation
.end field

.field connectRemoteTask:Lcom/powervision/natives/connect/ConnectTask;

.field private connectStatus:I

.field connectTool:Lcom/powervision/natives/connect/ConnectTool;

.field private connenctRemoteListener:Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;

.field private handler:Landroid/os/Handler;

.field private mPreferenceUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

.field onDisConnectLinkListener:Lcom/powervision/natives/callback/OnDisConnectLinkListener;

.field private pv_remote_api:Lcom/powervision/natives/PV_REMOTE_API;

.field private remoteConnectSuccessListener:Lcom/powervision/natives/connect/PVConnectHelper$RemoteConnectSuccessListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->pv_remote_api:Lcom/powervision/natives/PV_REMOTE_API;

    const/4 v1, 0x0

    .line 54
    iput v1, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->IDEAL:I

    .line 55
    iput-object v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->connenctRemoteListener:Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;

    const/4 v2, 0x1

    .line 57
    iput v2, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->CHAIN_FAILED:I

    const/4 v2, 0x2

    .line 59
    iput v2, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->CHAIN_DISCONNECT:I

    const/4 v2, 0x4

    .line 61
    iput v2, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->CHAIN_CONNECTED:I

    const/4 v2, 0x3

    .line 63
    iput v2, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->CHAIN_TIMEOUT:I

    const/4 v2, 0x5

    .line 66
    iput v2, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->DEVICE_FAILED:I

    const/4 v2, 0x6

    .line 70
    iput v2, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->DEVICE_TIMEOUT:I

    const/16 v2, 0x8

    .line 72
    iput v2, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->DEVICE_DISCONNECT:I

    .line 86
    iput v1, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->connectStatus:I

    .line 117
    iput-object v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->connectRemoteTask:Lcom/powervision/natives/connect/ConnectTask;

    .line 208
    new-instance v0, Lcom/powervision/natives/connect/ConnectRemoteSDK$1;

    invoke-direct {v0, p0}, Lcom/powervision/natives/connect/ConnectRemoteSDK$1;-><init>(Lcom/powervision/natives/connect/ConnectRemoteSDK;)V

    iput-object v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    .line 556
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->ap03RemoteModeResultListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->handler:Landroid/os/Handler;

    .line 44
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->mPreferenceUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/natives/connect/ConnectRemoteSDK;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->connectSuccess()V

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/natives/connect/ConnectRemoteSDK;)Lcom/powervision/natives/PV_REMOTE_API;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->pv_remote_api:Lcom/powervision/natives/PV_REMOTE_API;

    return-object p0
.end method

.method private connectSuccess()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->remoteConnectSuccessListener:Lcom/powervision/natives/connect/PVConnectHelper$RemoteConnectSuccessListener;

    if-eqz v0, :cond_0

    .line 113
    invoke-interface {v0}, Lcom/powervision/natives/connect/PVConnectHelper$RemoteConnectSuccessListener;->remoteConnectSuccess()V

    :cond_0
    return-void
.end method

.method public static get()Lcom/powervision/natives/connect/ConnectRemoteSDK;
    .locals 1

    .line 48
    sget-object v0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->sdk:Lcom/powervision/natives/connect/ConnectRemoteSDK;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/powervision/natives/connect/ConnectRemoteSDK;

    invoke-direct {v0}, Lcom/powervision/natives/connect/ConnectRemoteSDK;-><init>()V

    sput-object v0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->sdk:Lcom/powervision/natives/connect/ConnectRemoteSDK;

    .line 51
    :cond_0
    sget-object v0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->sdk:Lcom/powervision/natives/connect/ConnectRemoteSDK;

    return-object v0
.end method

.method public static isIsUsb2()Z
    .locals 1

    .line 96
    sget-boolean v0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->isUsb2:Z

    return v0
.end method

.method public static setDevice(I)V
    .locals 0

    return-void
.end method

.method public static setIsUsb2(Z)V
    .locals 0

    .line 100
    sput-boolean p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->isUsb2:Z

    return-void
.end method


# virtual methods
.method public addAp03RemoteModeResultListener(Lcom/powervision/sdk/callback/Ap03RemoteModeResultListener;)V
    .locals 2

    .line 559
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->ap03RemoteModeResultListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    .line 560
    :try_start_0
    iget-object v1, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->ap03RemoteModeResultListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 561
    iget-object v1, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->ap03RemoteModeResultListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 563
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

.method public alterIp_USB1()V
    .locals 2

    .line 175
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_W4_API;->setConnecteRemoteLinkListener(Lcom/powervision/natives/callback/W4RemoteConnectCallBack$ConnecteRemoteLinkListener;)V

    .line 176
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_W4_API;->setConnecteRemoteListener(Lcom/powervision/natives/callback/W4RemoteConnectCallBack$ConnecteRemoteListener;)V

    .line 177
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->disconnectRemote()V

    .line 178
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->disConnectRemoteLink()I

    const-string v0, "192.168.42.2"

    const/16 v1, 0x3039

    .line 179
    invoke-static {v0, v1}, Lcom/powervision/natives/JniW4RemoteNative;->alterRemoteIp(Ljava/lang/String;I)V

    .line 180
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->connenctRemoteLink()I

    return-void
.end method

.method public alterIp_Wifi()V
    .locals 2

    .line 184
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_W4_API;->setConnecteRemoteLinkListener(Lcom/powervision/natives/callback/W4RemoteConnectCallBack$ConnecteRemoteLinkListener;)V

    .line 185
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_W4_API;->setConnecteRemoteListener(Lcom/powervision/natives/callback/W4RemoteConnectCallBack$ConnecteRemoteListener;)V

    .line 186
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->disconnectRemote()V

    .line 187
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->disConnectRemoteLink()I

    const-string v0, "192.168.1.2"

    const/16 v1, 0x3039

    .line 188
    invoke-static {v0, v1}, Lcom/powervision/natives/JniW4RemoteNative;->alterRemoteIp(Ljava/lang/String;I)V

    .line 189
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->connenctRemoteLink()I

    return-void
.end method

.method public connectRemote()V
    .locals 2

    const-string v0, "lzqRemote"

    const-string v1, "remote \u8fde\u63a5\u8bbe\u5907"

    .line 194
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->pv_remote_api:Lcom/powervision/natives/PV_REMOTE_API;

    invoke-virtual {v0}, Lcom/powervision/natives/PV_REMOTE_API;->connectDevice()V

    return-void
.end method

.method public getConnectState()I
    .locals 1

    .line 531
    iget v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->connectStatus:I

    return v0
.end method

.method public ideal()V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->pv_remote_api:Lcom/powervision/natives/PV_REMOTE_API;

    invoke-virtual {v0}, Lcom/powervision/natives/PV_REMOTE_API;->registerCallBack()V

    .line 144
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->pv_remote_api:Lcom/powervision/natives/PV_REMOTE_API;

    invoke-virtual {v0}, Lcom/powervision/natives/PV_REMOTE_API;->disConnectRemote()V

    .line 145
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->pv_remote_api:Lcom/powervision/natives/PV_REMOTE_API;

    invoke-virtual {v0}, Lcom/powervision/natives/PV_REMOTE_API;->disConnectLink()V

    .line 146
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->pv_remote_api:Lcom/powervision/natives/PV_REMOTE_API;

    invoke-virtual {v0}, Lcom/powervision/natives/PV_REMOTE_API;->connectLink()V

    return-void
.end method

.method public initConnect()V
    .locals 3

    .line 120
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_W4_API;->setConnecteRemoteLinkListener(Lcom/powervision/natives/callback/W4RemoteConnectCallBack$ConnecteRemoteLinkListener;)V

    .line 121
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_W4_API;->setConnecteRemoteListener(Lcom/powervision/natives/callback/W4RemoteConnectCallBack$ConnecteRemoteListener;)V

    .line 122
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyRemoteConnectListener(Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyRemoteConnectListener;)V

    .line 123
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyonRemoteParameterResultIntListener(Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyonRemoteParameterResultIntListener;)V

    .line 124
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_AP03_API;->setRemoteGetBootLoaderStatusListener(Lcom/powervision/natives/callback/RemoteStatusCallback$RemoteGetBootLoaderStatusListener;)V

    .line 125
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->pv_remote_api:Lcom/powervision/natives/PV_REMOTE_API;

    const-string v1, "lzqRemote"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, " initConnect "

    .line 126
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-static {}, Lcom/powervision/natives/PV_REMOTE_API;->getInstance()Lcom/powervision/natives/PV_REMOTE_API;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->pv_remote_api:Lcom/powervision/natives/PV_REMOTE_API;

    .line 128
    new-instance v0, Lcom/powervision/natives/connect/ConnectTask;

    const-string v1, "ConnectActivationSDK"

    invoke-direct {v0, v1}, Lcom/powervision/natives/connect/ConnectTask;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->connectRemoteTask:Lcom/powervision/natives/connect/ConnectTask;

    .line 129
    iget-object v1, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/connect/ConnectTask;->setConnectTool(Lcom/powervision/natives/connect/ConnectTool;)V

    .line 130
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    const/4 v1, 0x2

    iput v1, v0, Lcom/powervision/natives/connect/ConnectTool;->type:I

    .line 131
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/powervision/natives/connect/ConnectTool;->firstAlawys:Z

    .line 132
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    new-instance v1, Lcom/powervision/natives/connect/Ask;

    invoke-direct {v1, v2, v2}, Lcom/powervision/natives/connect/Ask;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/powervision/natives/connect/ConnectTool;->addStack(Lcom/powervision/natives/connect/Ask;)V

    .line 133
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->connectRemoteTask:Lcom/powervision/natives/connect/ConnectTask;

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectTask;->start()V

    goto :goto_0

    :cond_0
    const-string v0, " \u521d\u59cb\u5316else"

    .line 135
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    .line 136
    invoke-virtual {p0, v2, v0}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->postStatus(II)V

    :goto_0
    return-void
.end method

.method public onChainConnectTimeOut()V
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->connenctRemoteListener:Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;

    invoke-interface {v0}, Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;->onRemoteChainConnectTimeout()V

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 353
    invoke-virtual {p0, v0, v1}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->postStatus(II)V

    const-string v0, "lzqRemote"

    const-string v1, "onConnectTimeOut!!!!!!!"

    .line 354
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onChainDisConnected()V
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->connenctRemoteListener:Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;

    invoke-interface {v0}, Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;->onRemoteChainDisconnected()V

    const-string v0, "lzqRemote"

    const-string v1, "onDisConnected"

    .line 346
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 347
    invoke-virtual {p0, v0, v1}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->postStatus(II)V

    return-void
.end method

.method public onConnectChainFailed()V
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->connenctRemoteListener:Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;

    invoke-interface {v0}, Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;->onRemoteChainConnectFailed()V

    const/16 v0, 0x12c

    const/4 v1, 0x1

    .line 339
    invoke-virtual {p0, v0, v1}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->postStatus(II)V

    const-string v0, "lzqRemote"

    const-string v1, "onConnectFailed"

    .line 340
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onConnectChainSuccess()V
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->connenctRemoteListener:Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;

    invoke-interface {v0}, Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;->onRemoteChainConnected()V

    const/4 v0, 0x4

    .line 331
    iput v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->connectStatus:I

    const/4 v1, 0x0

    .line 332
    invoke-virtual {p0, v1, v0}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->postStatus(II)V

    const-string v0, "lzqRemote"

    const-string v1, "onConnectSuccess"

    .line 333
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDeviceConnectFailed()V
    .locals 2

    .line 370
    sget v0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->currentDevice:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 371
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->connenctRemoteListener:Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;

    invoke-interface {v0}, Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;->onW4RemoteConnectFailed()V

    const/16 v0, 0x12c

    const/4 v1, 0x5

    .line 372
    invoke-virtual {p0, v0, v1}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->postStatus(II)V

    const-string v0, "lzqRemote"

    const-string v1, "onDeviceConnectFailed"

    .line 373
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onDeviceConnectSuccess()V
    .locals 2

    .line 361
    sget v0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->currentDevice:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 362
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->connenctRemoteListener:Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;

    invoke-interface {v0}, Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;->onW4RemoteConnected()V

    const/4 v0, 0x0

    const/16 v1, 0x9

    .line 363
    invoke-virtual {p0, v0, v1}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->postStatus(II)V

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "w4 onDeviceConnectSuccess "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/powervision/natives/connect/ConnectRemoteSDK;->currentDevice:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqRemote"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onDeviceConnectTimeOut()V
    .locals 2

    .line 389
    sget v0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->currentDevice:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string v0, "lzqRemote"

    const-string v1, "onDeviceConnectTimeOut"

    .line 390
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->connenctRemoteListener:Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;

    invoke-interface {v0}, Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;->onW4RemoteConnectTimeout()V

    const/4 v0, 0x0

    const/4 v1, 0x6

    .line 392
    invoke-virtual {p0, v0, v1}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->postStatus(II)V

    :cond_0
    return-void
.end method

.method public onDeviceDisConnected()V
    .locals 2

    .line 379
    sget v0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->currentDevice:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string v0, "lzqRemote"

    const-string v1, "onDeviceDisConnected"

    .line 380
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->connenctRemoteListener:Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;

    invoke-interface {v0}, Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;->onW4RemoteDisConnect()V

    const/4 v0, 0x0

    const/16 v1, 0x8

    .line 382
    invoke-virtual {p0, v0, v1}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->postStatus(II)V

    :cond_0
    return-void
.end method

.method public onGetBootLoaderStatusResult(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x6

    .line 642
    invoke-virtual {p0, p1, v0}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->postStatus(II)V

    :cond_0
    return-void
.end method

.method public onHeartbeatRecovered()V
    .locals 2

    .line 399
    sget v0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->currentDevice:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 400
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->connenctRemoteListener:Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;

    invoke-interface {v0}, Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;->onW4HeartbeatRecovery()V

    const/4 v0, 0x0

    const/16 v1, 0xb

    .line 401
    invoke-virtual {p0, v0, v1}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->postStatus(II)V

    const-string v0, "lzqRemote"

    const-string v1, "onHeartbeatRecovered"

    .line 402
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onHeartbeatTimeOut()V
    .locals 2

    .line 408
    sget v0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->currentDevice:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 409
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->connenctRemoteListener:Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;

    invoke-interface {v0}, Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;->onW4HeartbeatTimeout()V

    const/4 v0, 0x0

    const/16 v1, 0xa

    .line 410
    invoke-virtual {p0, v0, v1}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->postStatus(II)V

    const-string v0, "lzqRemote"

    const-string v1, "onHeartbeatTimeOut !!!!!!!"

    .line 411
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onRemoteConnectFailed()V
    .locals 2

    .line 483
    sget v0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->currentDevice:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "lzqRemote"

    const-string v1, "AP03 onW4RemoteConnectFailed"

    .line 484
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->connenctRemoteListener:Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;

    invoke-interface {v0}, Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;->onAp03RemoteConnectFailed()V

    .line 486
    invoke-static {}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->isIsUsb2()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12c

    const/4 v1, 0x5

    .line 487
    invoke-virtual {p0, v0, v1}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->postStatus(II)V

    :cond_0
    return-void
.end method

.method public onRemoteConnectSuccess()V
    .locals 2

    .line 447
    sget v0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->currentDevice:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "lzqRemote"

    const-string v1, "AP03 onRemoteConnectSuccess"

    .line 448
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->connenctRemoteListener:Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;

    invoke-interface {v0}, Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;->onAp03RemoteConnected()V

    .line 450
    invoke-static {}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->isIsUsb2()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12c

    const/16 v1, 0x9

    .line 451
    invoke-virtual {p0, v0, v1}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->postStatus(II)V

    :cond_0
    return-void
.end method

.method public onRemoteConnectTimeOut()V
    .locals 2

    .line 471
    sget v0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->currentDevice:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "lzqRemote"

    const-string v1, "AP03 onRemoteLinkConnectSuccess"

    .line 472
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->connenctRemoteListener:Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;

    invoke-interface {v0}, Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;->onAp03RemoteConnectTimeout()V

    .line 474
    invoke-static {}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->isIsUsb2()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/16 v1, 0xe

    .line 475
    invoke-virtual {p0, v0, v1}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->postStatus(II)V

    :cond_0
    return-void
.end method

.method public onRemoteDisConnected()V
    .locals 2

    .line 459
    sget v0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->currentDevice:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "lzqRemote"

    const-string v1, "AP03 onRemoteConnectTimeOut"

    .line 460
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->connenctRemoteListener:Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;

    invoke-interface {v0}, Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;->onAp03RemoteDisConnect()V

    .line 462
    invoke-static {}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->isIsUsb2()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/16 v1, 0x8

    .line 463
    invoke-virtual {p0, v0, v1}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->postStatus(II)V

    :cond_0
    return-void
.end method

.method public onRemoteHeartbeatReconvered()V
    .locals 2

    .line 507
    sget v0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->currentDevice:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "lzqRemote"

    const-string v1, "AP03 onRemoteHeartbeatReconvered"

    .line 508
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->connenctRemoteListener:Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;

    invoke-interface {v0}, Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;->onAp03HeartbeatRecovery()V

    .line 510
    invoke-static {}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->isIsUsb2()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/16 v1, 0xb

    .line 511
    invoke-virtual {p0, v0, v1}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->postStatus(II)V

    :cond_0
    return-void
.end method

.method public onRemoteHeartbeatTimeOut()V
    .locals 2

    .line 495
    sget v0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->currentDevice:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "lzqRemote"

    const-string v1, "AP03 onRemoteHeartbeatTimeOut"

    .line 496
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->connenctRemoteListener:Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;

    invoke-interface {v0}, Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;->onAp03HeartbeatTimeout()V

    .line 498
    invoke-static {}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->isIsUsb2()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/16 v1, 0xa

    .line 499
    invoke-virtual {p0, v0, v1}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->postStatus(II)V

    :cond_0
    return-void
.end method

.method public onRemoteLinkConnectFailed()V
    .locals 2

    const-string v0, "lzqRemote"

    const-string v1, "AP03 onRemoteLinkConnectFailed"

    .line 439
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x12c

    const/4 v1, 0x1

    .line 440
    invoke-virtual {p0, v0, v1}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->postStatus(II)V

    return-void
.end method

.method public onRemoteLinkConnectSuccess()V
    .locals 2

    const-string v0, "lzqRemote"

    const-string v1, "AP03 onRemoteLinkConnectSuccess"

    .line 421
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 422
    invoke-virtual {p0, v0, v1}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->postStatus(II)V

    return-void
.end method

.method public onRemoteLinkConnectTimeOut()V
    .locals 2

    const-string v0, "lzqRemote"

    const-string v1, "AP03 onRemoteLinkConnectTimeOut"

    .line 433
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 434
    invoke-virtual {p0, v0, v1}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->postStatus(II)V

    return-void
.end method

.method public onRemoteLinkDisConnected()V
    .locals 2

    const-string v0, "lzqRemote"

    const-string v1, "AP03 onRemoteLinkDisConnected"

    .line 427
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 428
    invoke-virtual {p0, v0, v1}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->postStatus(II)V

    return-void
.end method

.method public onRemoteParameterDownloadFailed(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x0

    .line 599
    :goto_0
    iget-object v1, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->ap03RemoteModeResultListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 600
    iget-object v1, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->ap03RemoteModeResultListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/sdk/callback/Ap03RemoteModeResultListener;

    invoke-interface {v1, p1, p2}, Lcom/powervision/sdk/callback/Ap03RemoteModeResultListener;->onRemoteParameterDownloadFailed(Ljava/lang/String;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRemoteParameterDownloadSuccess(Ljava/lang/String;I)V
    .locals 4

    const-string v0, "remote"

    .line 584
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " value= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 585
    :goto_0
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->ap03RemoteModeResultListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->ap03RemoteModeResultListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/sdk/callback/Ap03RemoteModeResultListener;

    invoke-interface {v0, p1, p2}, Lcom/powervision/sdk/callback/Ap03RemoteModeResultListener;->onRemoteParameterDownloadSuccess(Ljava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRemoteParameterDownloadTimeOut()V
    .locals 2

    const/4 v0, 0x0

    .line 613
    :goto_0
    iget-object v1, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->ap03RemoteModeResultListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 614
    iget-object v1, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->ap03RemoteModeResultListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/sdk/callback/Ap03RemoteModeResultListener;

    invoke-interface {v1}, Lcom/powervision/sdk/callback/Ap03RemoteModeResultListener;->onRemoteParameterDownloadTimeOut()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRemoteParameterUploadFailed(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x0

    .line 592
    :goto_0
    iget-object v1, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->ap03RemoteModeResultListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 593
    iget-object v1, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->ap03RemoteModeResultListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/sdk/callback/Ap03RemoteModeResultListener;

    invoke-interface {v1, p1, p2}, Lcom/powervision/sdk/callback/Ap03RemoteModeResultListener;->onRemoteParameterUploadFailed(Ljava/lang/String;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRemoteParameterUploadSuccess(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x0

    .line 577
    :goto_0
    iget-object v1, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->ap03RemoteModeResultListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 578
    iget-object v1, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->ap03RemoteModeResultListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/sdk/callback/Ap03RemoteModeResultListener;

    invoke-interface {v1, p1, p2}, Lcom/powervision/sdk/callback/Ap03RemoteModeResultListener;->onRemoteParameterUploadSuccess(Ljava/lang/String;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRemoteParameterUploadTimeOut()V
    .locals 2

    const/4 v0, 0x0

    .line 606
    :goto_0
    iget-object v1, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->ap03RemoteModeResultListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 607
    iget-object v1, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->ap03RemoteModeResultListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/sdk/callback/Ap03RemoteModeResultListener;

    invoke-interface {v1}, Lcom/powervision/sdk/callback/Ap03RemoteModeResultListener;->onRemoteParameterUploadTimeOut()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public postStatus(II)V
    .locals 2

    .line 201
    iput p2, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->connectStatus:I

    .line 202
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    new-instance v1, Lcom/powervision/natives/connect/Ask;

    invoke-direct {v1, p1, p2}, Lcom/powervision/natives/connect/Ask;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/powervision/natives/connect/ConnectTool;->addStack(Lcom/powervision/natives/connect/Ask;)V

    .line 203
    iget-object p1, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    invoke-virtual {p1}, Lcom/powervision/natives/connect/ConnectTool;->notifyTheMaster()V

    .line 204
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "postStatus: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ConnectRemoteSDK"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reChain()V
    .locals 4

    .line 150
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->connectRemoteTask:Lcom/powervision/natives/connect/ConnectTask;

    if-eqz v0, :cond_0

    .line 151
    monitor-enter v0

    .line 153
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-wide/16 v2, 0x320

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 155
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 157
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 159
    :cond_0
    :goto_2
    iget v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->connectStatus:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    goto :goto_3

    .line 163
    :cond_1
    sget-object v0, Lcom/powervision/natives/JniAOAChannelNative;->isRemoteConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v0, "lzqRemote"

    const-string v1, "remote rechain"

    .line 165
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->pv_remote_api:Lcom/powervision/natives/PV_REMOTE_API;

    invoke-virtual {v0}, Lcom/powervision/natives/PV_REMOTE_API;->disConnectRemote()V

    .line 168
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->pv_remote_api:Lcom/powervision/natives/PV_REMOTE_API;

    invoke-virtual {v0}, Lcom/powervision/natives/PV_REMOTE_API;->disConnectLink()V

    .line 170
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->pv_remote_api:Lcom/powervision/natives/PV_REMOTE_API;

    invoke-virtual {v0}, Lcom/powervision/natives/PV_REMOTE_API;->connectLink()V

    :cond_2
    :goto_3
    return-void
.end method

.method public releaseCallBack()V
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectTool;->stopTheMasterInmedratily()V

    return-void
.end method

.method public removeCallBack()V
    .locals 2

    .line 624
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_W4_API;->setConnecteRemoteLinkListener(Lcom/powervision/natives/callback/W4RemoteConnectCallBack$ConnecteRemoteLinkListener;)V

    .line 625
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_W4_API;->setConnecteRemoteListener(Lcom/powervision/natives/callback/W4RemoteConnectCallBack$ConnecteRemoteListener;)V

    .line 627
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyRemoteConnectListener(Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyRemoteConnectListener;)V

    .line 628
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyonRemoteParameterResultIntListener(Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyonRemoteParameterResultIntListener;)V

    return-void
.end method

.method public removeListener(Lcom/powervision/sdk/callback/Ap03RemoteModeResultListener;)V
    .locals 2

    .line 568
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->ap03RemoteModeResultListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    .line 569
    :try_start_0
    iget-object v1, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->ap03RemoteModeResultListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->ap03RemoteModeResultListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 570
    iget-object v1, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->ap03RemoteModeResultListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 572
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

.method public setOnDisConnectLinkListener(Lcom/powervision/natives/callback/OnDisConnectLinkListener;)V
    .locals 1

    .line 543
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->onDisConnectLinkListener:Lcom/powervision/natives/callback/OnDisConnectLinkListener;

    if-nez v0, :cond_0

    .line 544
    iput-object p1, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->onDisConnectLinkListener:Lcom/powervision/natives/callback/OnDisConnectLinkListener;

    :cond_0
    return-void
.end method

.method public declared-synchronized setRemoteConnectSuccessListener(Lcom/powervision/natives/connect/PVConnectHelper$RemoteConnectSuccessListener;)V
    .locals 0

    monitor-enter p0

    .line 519
    :try_start_0
    iput-object p1, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->remoteConnectSuccessListener:Lcom/powervision/natives/connect/PVConnectHelper$RemoteConnectSuccessListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setmConnectListener(Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;)V
    .locals 0

    monitor-enter p0

    .line 527
    :try_start_0
    iput-object p1, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->connenctRemoteListener:Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
