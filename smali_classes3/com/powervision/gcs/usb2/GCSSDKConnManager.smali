.class public Lcom/powervision/gcs/usb2/GCSSDKConnManager;
.super Ljava/lang/Object;
.source "GCSSDKConnManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/usb2/GCSSDKConnManager$PingThread;,
        Lcom/powervision/gcs/usb2/GCSSDKConnManager$PingListener;,
        Lcom/powervision/gcs/usb2/GCSSDKConnManager$OldConnCallback;
    }
.end annotation


# static fields
.field private static final DELAY_0:I = 0x0

.field private static final DELAY_3:I = 0xbb8

.field private static GCSSDKConnManager:Lcom/powervision/gcs/usb2/GCSSDKConnManager;


# instance fields
.field private SSID:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private final Tag:Ljava/lang/String;

.field airConnectListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;

.field ap03BodyConnListener:Lcom/powervision/natives/connect/PVConnectHelper$ConnectListener;

.field ap03NotifyOnConnectActivationResultListener:Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnConnectActivationResultListener;

.field bodyConnListener:Lcom/powervision/natives/connect/PVConnectHelper$ConnectListener;

.field cameraNotifyConnectionListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyConnectionListener;

.field cameraNotifyStatusConnection:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyStatusConnectionListener;

.field connenctRemoteListener:Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;

.field grondConnectListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;

.field public isAp03Connected:Z

.field public isDl01AirConnected:Z

.field private isDl01GrondConnected:Z

.field public isDl01GroundConnected:Z

.field public isRemoteConnected:Z

.field public isShipConnected:Z

.field private listener:Lcom/powervision/gcs/usb2/GCSSDKConnManager$OldConnCallback;

.field pingListener:Lcom/powervision/gcs/usb2/GCSSDKConnManager$PingListener;

.field pingThread:Lcom/powervision/gcs/usb2/GCSSDKConnManager$PingThread;

.field private powerSdkHadInitConnect:Z

.field private ssidLock:Ljava/lang/Object;

.field private wifiSsidCallBack:Lcom/powervision/base/utils/WifiSsidutil$WifiSsidCallBack;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "lzqOld"

    .line 29
    iput-object v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->TAG:Ljava/lang/String;

    const-string v0, "GCSSDKConnManager"

    .line 30
    iput-object v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->Tag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->isDl01GrondConnected:Z

    .line 80
    iput-boolean v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->isShipConnected:Z

    .line 81
    iput-boolean v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->isRemoteConnected:Z

    .line 82
    iput-boolean v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->isDl01GroundConnected:Z

    .line 83
    iput-boolean v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->isDl01AirConnected:Z

    .line 84
    iput-boolean v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->isAp03Connected:Z

    const-string v1, ""

    .line 99
    iput-object v1, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->SSID:Ljava/lang/String;

    .line 100
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->ssidLock:Ljava/lang/Object;

    .line 137
    new-instance v1, Lcom/powervision/gcs/usb2/GCSSDKConnManager$1;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/usb2/GCSSDKConnManager$1;-><init>(Lcom/powervision/gcs/usb2/GCSSDKConnManager;)V

    iput-object v1, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->wifiSsidCallBack:Lcom/powervision/base/utils/WifiSsidutil$WifiSsidCallBack;

    .line 221
    iput-boolean v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->powerSdkHadInitConnect:Z

    .line 321
    new-instance v0, Lcom/powervision/gcs/usb2/GCSSDKConnManager$2;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/usb2/GCSSDKConnManager$2;-><init>(Lcom/powervision/gcs/usb2/GCSSDKConnManager;)V

    iput-object v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->cameraNotifyStatusConnection:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyStatusConnectionListener;

    .line 330
    new-instance v0, Lcom/powervision/gcs/usb2/GCSSDKConnManager$3;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/usb2/GCSSDKConnManager$3;-><init>(Lcom/powervision/gcs/usb2/GCSSDKConnManager;)V

    iput-object v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->cameraNotifyConnectionListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyConnectionListener;

    .line 338
    new-instance v0, Lcom/powervision/gcs/usb2/GCSSDKConnManager$4;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/usb2/GCSSDKConnManager$4;-><init>(Lcom/powervision/gcs/usb2/GCSSDKConnManager;)V

    iput-object v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->ap03NotifyOnConnectActivationResultListener:Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnConnectActivationResultListener;

    .line 360
    new-instance v0, Lcom/powervision/gcs/usb2/GCSSDKConnManager$5;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/usb2/GCSSDKConnManager$5;-><init>(Lcom/powervision/gcs/usb2/GCSSDKConnManager;)V

    iput-object v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->airConnectListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;

    .line 392
    new-instance v0, Lcom/powervision/gcs/usb2/GCSSDKConnManager$6;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/usb2/GCSSDKConnManager$6;-><init>(Lcom/powervision/gcs/usb2/GCSSDKConnManager;)V

    iput-object v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->grondConnectListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;

    .line 438
    new-instance v0, Lcom/powervision/gcs/usb2/GCSSDKConnManager$7;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/usb2/GCSSDKConnManager$7;-><init>(Lcom/powervision/gcs/usb2/GCSSDKConnManager;)V

    iput-object v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->connenctRemoteListener:Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;

    .line 529
    new-instance v0, Lcom/powervision/gcs/usb2/GCSSDKConnManager$8;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/usb2/GCSSDKConnManager$8;-><init>(Lcom/powervision/gcs/usb2/GCSSDKConnManager;)V

    iput-object v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->ap03BodyConnListener:Lcom/powervision/natives/connect/PVConnectHelper$ConnectListener;

    .line 618
    new-instance v0, Lcom/powervision/gcs/usb2/GCSSDKConnManager$9;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/usb2/GCSSDKConnManager$9;-><init>(Lcom/powervision/gcs/usb2/GCSSDKConnManager;)V

    iput-object v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->bodyConnListener:Lcom/powervision/natives/connect/PVConnectHelper$ConnectListener;

    const/4 v0, 0x0

    .line 745
    iput-object v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->pingThread:Lcom/powervision/gcs/usb2/GCSSDKConnManager$PingThread;

    .line 765
    new-instance v0, Lcom/powervision/gcs/usb2/GCSSDKConnManager$10;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/usb2/GCSSDKConnManager$10;-><init>(Lcom/powervision/gcs/usb2/GCSSDKConnManager;)V

    iput-object v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->pingListener:Lcom/powervision/gcs/usb2/GCSSDKConnManager$PingListener;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/usb2/GCSSDKConnManager;)Lcom/powervision/gcs/usb2/GCSSDKConnManager$OldConnCallback;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->listener:Lcom/powervision/gcs/usb2/GCSSDKConnManager$OldConnCallback;

    return-object p0
.end method

.method static synthetic access$102(Lcom/powervision/gcs/usb2/GCSSDKConnManager;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->isDl01GrondConnected:Z

    return p1
.end method

.method static synthetic access$300(Lcom/powervision/gcs/usb2/GCSSDKConnManager;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->stopPingUsbIp()V

    return-void
.end method

.method static synthetic access$400(Lcom/powervision/gcs/usb2/GCSSDKConnManager;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->startUsb1Connect()V

    return-void
.end method

.method public static get()Lcom/powervision/gcs/usb2/GCSSDKConnManager;
    .locals 1

    .line 113
    sget-object v0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->GCSSDKConnManager:Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    invoke-direct {v0}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;-><init>()V

    sput-object v0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->GCSSDKConnManager:Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    .line 116
    :cond_0
    sget-object v0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->GCSSDKConnManager:Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    return-object v0
.end method

.method private getSsidSuccess(Ljava/lang/String;)V
    .locals 0

    .line 189
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 192
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->listener:Lcom/powervision/gcs/usb2/GCSSDKConnManager$OldConnCallback;

    if-eqz p1, :cond_1

    .line 193
    invoke-interface {p1}, Lcom/powervision/gcs/usb2/GCSSDKConnManager$OldConnCallback;->getSSidSuccess()V

    :cond_1
    return-void
.end method

.method private getWifiSSID()V
    .locals 0

    return-void
.end method

.method public static pingRemtote()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private declared-synchronized startPingUsbIP(I)V
    .locals 1

    monitor-enter p0

    .line 755
    :try_start_0
    iget-object p1, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->pingThread:Lcom/powervision/gcs/usb2/GCSSDKConnManager$PingThread;

    if-eqz p1, :cond_0

    .line 756
    iget-object p1, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->pingThread:Lcom/powervision/gcs/usb2/GCSSDKConnManager$PingThread;

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GCSSDKConnManager$PingThread;->interrupt()V

    .line 758
    :cond_0
    new-instance p1, Lcom/powervision/gcs/usb2/GCSSDKConnManager$PingThread;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/powervision/gcs/usb2/GCSSDKConnManager$PingThread;-><init>(Lcom/powervision/gcs/usb2/GCSSDKConnManager$1;)V

    iput-object p1, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->pingThread:Lcom/powervision/gcs/usb2/GCSSDKConnManager$PingThread;

    .line 759
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->pingListener:Lcom/powervision/gcs/usb2/GCSSDKConnManager$PingListener;

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/usb2/GCSSDKConnManager$PingThread;->setPingListener(Lcom/powervision/gcs/usb2/GCSSDKConnManager$PingListener;)V

    .line 760
    iget-object p1, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->pingThread:Lcom/powervision/gcs/usb2/GCSSDKConnManager$PingThread;

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GCSSDKConnManager$PingThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 762
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private startUsb1Connect()V
    .locals 0

    return-void
.end method

.method private declared-synchronized stopPingUsbIp()V
    .locals 2

    monitor-enter p0

    .line 738
    :try_start_0
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->pingThread:Lcom/powervision/gcs/usb2/GCSSDKConnManager$PingThread;

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->pingThread:Lcom/powervision/gcs/usb2/GCSSDKConnManager$PingThread;

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GCSSDKConnManager$PingThread;->interrupt()V

    .line 740
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->pingThread:Lcom/powervision/gcs/usb2/GCSSDKConnManager$PingThread;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GCSSDKConnManager$PingThread;->setPingListener(Lcom/powervision/gcs/usb2/GCSSDKConnManager$PingListener;)V

    .line 741
    iput-object v1, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->pingThread:Lcom/powervision/gcs/usb2/GCSSDKConnManager$PingThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 742
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getDl01GrondConnectStatus()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->isDl01GrondConnected:Z

    return v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->ssidLock:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->SSID:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 90
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isAp03Connected()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->isAp03Connected:Z

    return v0
.end method

.method public isDl01AirConnected()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->isDl01AirConnected:Z

    return v0
.end method

.method public isDl01GroundConnected()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->isDl01GroundConnected:Z

    return v0
.end method

.method public isRemoteConnected()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->isRemoteConnected:Z

    return v0
.end method

.method public isShipConnected()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->isShipConnected:Z

    return v0
.end method

.method public releaseAll()V
    .locals 1

    .line 307
    invoke-static {}, Lcom/powervision/natives/connect/W4ConnectSdk;->instance()Lcom/powervision/natives/connect/W4ConnectSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/W4ConnectSdk;->removeCallBack()V

    .line 308
    invoke-static {}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->get()Lcom/powervision/natives/connect/ConnectRemoteSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->removeCallBack()V

    .line 309
    invoke-static {}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->get()Lcom/powervision/natives/connect/Dl01ConnectSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->removeGroundCallBack()V

    .line 310
    invoke-static {}, Lcom/powervision/natives/connect/W49342ConnectSdk;->get()Lcom/powervision/natives/connect/W49342ConnectSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/W49342ConnectSdk;->removeCallBack()V

    .line 311
    invoke-static {}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->getInstance()Lcom/powervision/natives/connect/Ap03ConnectSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->removeCallBack()V

    .line 313
    invoke-static {}, Lcom/powervision/natives/connect/CameraConnectSDK;->get()Lcom/powervision/natives/connect/CameraConnectSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/CameraConnectSDK;->removeCommandCallBack()V

    .line 314
    invoke-static {}, Lcom/powervision/natives/connect/CameraConnectSDK;->get()Lcom/powervision/natives/connect/CameraConnectSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/CameraConnectSDK;->removeStatusCallBack()V

    .line 315
    invoke-static {}, Lcom/powervision/natives/connect/ConnectActivationSDK;->getInstance()Lcom/powervision/natives/connect/ConnectActivationSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectActivationSDK;->removeCallBack()V

    .line 316
    invoke-static {}, Lcom/powervision/natives/connect/AudioConnectSDK;->getInstance()Lcom/powervision/natives/connect/AudioConnectSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/AudioConnectSDK;->removeCallBack()V

    return-void
.end method

.method public releaseAp03()V
    .locals 4

    const-string v0, "lzqCam_c"

    const-string v1, "releaseAp03"

    .line 290
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-static {}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->getInstance()Lcom/powervision/natives/connect/Ap03ConnectSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->removeCallBack()V

    .line 292
    invoke-static {}, Lcom/powervision/natives/connect/CameraConnectSDK;->get()Lcom/powervision/natives/connect/CameraConnectSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/CameraConnectSDK;->removeCommandCallBack()V

    .line 293
    invoke-static {}, Lcom/powervision/natives/connect/CameraConnectSDK;->get()Lcom/powervision/natives/connect/CameraConnectSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/CameraConnectSDK;->removeStatusCallBack()V

    .line 294
    invoke-static {}, Lcom/powervision/natives/connect/ConnectActivationSDK;->getInstance()Lcom/powervision/natives/connect/ConnectActivationSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectActivationSDK;->removeCallBack()V

    .line 295
    invoke-static {}, Lcom/powervision/natives/connect/AudioConnectSDK;->getInstance()Lcom/powervision/natives/connect/AudioConnectSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/AudioConnectSDK;->removeCallBack()V

    .line 297
    invoke-static {}, Lcom/powervision/natives/connect/CameraConnectSDK;->get()Lcom/powervision/natives/connect/CameraConnectSDK;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Lcom/powervision/natives/connect/CameraConnectSDK;->postStatusTask(II)V

    .line 298
    invoke-static {}, Lcom/powervision/natives/connect/CameraConnectSDK;->get()Lcom/powervision/natives/connect/CameraConnectSDK;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/powervision/natives/connect/CameraConnectSDK;->postCommandTask(II)V

    .line 299
    invoke-static {}, Lcom/powervision/natives/connect/ConnectActivationSDK;->getInstance()Lcom/powervision/natives/connect/ConnectActivationSDK;

    move-result-object v0

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v3}, Lcom/powervision/natives/connect/ConnectActivationSDK;->postCommandTask(II)V

    .line 300
    invoke-static {}, Lcom/powervision/natives/connect/AudioConnectSDK;->getInstance()Lcom/powervision/natives/connect/AudioConnectSDK;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Lcom/powervision/natives/connect/AudioConnectSDK;->postTask(II)V

    .line 301
    invoke-static {}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->getInstance()Lcom/powervision/natives/connect/Ap03ConnectSdk;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v1}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->postStatus(IIZ)V

    return-void
.end method

.method public releaseW4()V
    .locals 3

    const-string v0, "lzqW4_body_"

    const-string v1, "releaseW4"

    .line 279
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-static {}, Lcom/powervision/natives/connect/W49342ConnectSdk;->get()Lcom/powervision/natives/connect/W49342ConnectSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/W49342ConnectSdk;->removeCallback()V

    .line 281
    invoke-static {}, Lcom/powervision/natives/connect/W4ConnectSdk;->instance()Lcom/powervision/natives/connect/W4ConnectSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/W4ConnectSdk;->removeCallBack()V

    .line 282
    invoke-static {}, Lcom/powervision/natives/connect/W4ConnectSdk;->instance()Lcom/powervision/natives/connect/W4ConnectSdk;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Lcom/powervision/natives/connect/W4ConnectSdk;->postStatus(II)V

    .line 283
    invoke-static {}, Lcom/powervision/natives/connect/W49342ConnectSdk;->get()Lcom/powervision/natives/connect/W49342ConnectSdk;

    move-result-object v0

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/powervision/natives/connect/W49342ConnectSdk;->postStatus(II)V

    return-void
.end method

.method public requestWifiSSid()V
    .locals 2

    .line 131
    invoke-static {}, Lcom/powervision/base/utils/WifiSsidutil;->getInstance()Lcom/powervision/base/utils/WifiSsidutil;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->wifiSsidCallBack:Lcom/powervision/base/utils/WifiSsidutil$WifiSsidCallBack;

    invoke-virtual {v0, v1}, Lcom/powervision/base/utils/WifiSsidutil;->addRegister(Lcom/powervision/base/utils/WifiSsidutil$WifiSsidCallBack;)V

    return-void
.end method

.method public setAp03Connected(Z)V
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->isAp03Connected:Z

    return-void
.end method

.method public setDl01AirConnected(Z)V
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->isDl01AirConnected:Z

    return-void
.end method

.method public setDl01GroundConnected(Z)V
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->isDl01GroundConnected:Z

    return-void
.end method

.method public setListener(Lcom/powervision/gcs/usb2/GCSSDKConnManager$OldConnCallback;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->listener:Lcom/powervision/gcs/usb2/GCSSDKConnManager$OldConnCallback;

    return-void
.end method

.method public setRemoteConnected(Z)V
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->isRemoteConnected:Z

    return-void
.end method

.method public setSSID(Ljava/lang/String;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->ssidLock:Ljava/lang/Object;

    monitor-enter v0

    .line 95
    :try_start_0
    iput-object p1, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->SSID:Ljava/lang/String;

    .line 96
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setShipConnected(Z)V
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setShipConnected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqBody"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iput-boolean p1, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->isShipConnected:Z

    return-void
.end method

.method public startSDKConnect(I)V
    .locals 2

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startSDKConnect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqCam_c"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-static {}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->get()Lcom/powervision/natives/connect/ConnectRemoteSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->connenctRemoteListener:Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->setmConnectListener(Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;)V

    .line 233
    invoke-static {}, Lcom/powervision/natives/connect/W4ConnectSdk;->instance()Lcom/powervision/natives/connect/W4ConnectSdk;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->bodyConnListener:Lcom/powervision/natives/connect/PVConnectHelper$ConnectListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/connect/W4ConnectSdk;->setConnectListener(Lcom/powervision/natives/connect/PVConnectHelper$ConnectListener;)V

    .line 234
    invoke-static {}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->get()Lcom/powervision/natives/connect/Dl01ConnectSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->airConnectListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->setAirConnectionListener(Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;)V

    .line 235
    invoke-static {}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->get()Lcom/powervision/natives/connect/Dl01ConnectSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->grondConnectListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->setGroundConnectionListener(Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;)V

    .line 236
    invoke-static {}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->getInstance()Lcom/powervision/natives/connect/Ap03ConnectSdk;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->ap03BodyConnListener:Lcom/powervision/natives/connect/PVConnectHelper$ConnectListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->addConnectListener(Lcom/powervision/natives/connect/PVConnectHelper$ConnectListener;)V

    .line 237
    invoke-static {}, Lcom/powervision/natives/connect/CameraConnectSDK;->get()Lcom/powervision/natives/connect/CameraConnectSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->cameraNotifyConnectionListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyConnectionListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/connect/CameraConnectSDK;->setCameraNotifyConnectionListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyConnectionListener;)V

    .line 238
    invoke-static {}, Lcom/powervision/natives/connect/CameraConnectSDK;->get()Lcom/powervision/natives/connect/CameraConnectSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->cameraNotifyStatusConnection:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyStatusConnectionListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/connect/CameraConnectSDK;->setCameraNotifyStatusConnection(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyStatusConnectionListener;)V

    .line 239
    invoke-static {}, Lcom/powervision/natives/connect/ConnectActivationSDK;->getInstance()Lcom/powervision/natives/connect/ConnectActivationSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->ap03NotifyOnConnectActivationResultListener:Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnConnectActivationResultListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/connect/ConnectActivationSDK;->setAp03NotifyOnConnectActivationResultListener(Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnConnectActivationResultListener;)V

    if-nez p1, :cond_0

    .line 243
    invoke-static {}, Lcom/powervision/natives/connect/W4ConnectSdk;->instance()Lcom/powervision/natives/connect/W4ConnectSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/W4ConnectSdk;->initConnect()V

    .line 244
    invoke-static {}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->getInstance()Lcom/powervision/natives/connect/Ap03ConnectSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->initConnect()V

    .line 246
    invoke-static {}, Lcom/powervision/natives/connect/CameraConnectSDK;->get()Lcom/powervision/natives/connect/CameraConnectSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/CameraConnectSDK;->initCommandConnect()V

    .line 247
    invoke-static {}, Lcom/powervision/natives/connect/CameraConnectSDK;->get()Lcom/powervision/natives/connect/CameraConnectSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/CameraConnectSDK;->initStatusConnect()V

    .line 248
    invoke-static {}, Lcom/powervision/natives/connect/ConnectActivationSDK;->getInstance()Lcom/powervision/natives/connect/ConnectActivationSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectActivationSDK;->initActivationConnect()V

    .line 249
    invoke-static {}, Lcom/powervision/natives/connect/AudioConnectSDK;->getInstance()Lcom/powervision/natives/connect/AudioConnectSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/AudioConnectSDK;->initAudioConnect()V

    .line 250
    invoke-static {}, Lcom/powervision/natives/connect/W49342ConnectSdk;->get()Lcom/powervision/natives/connect/W49342ConnectSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/W49342ConnectSdk;->initConnect()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 252
    invoke-static {}, Lcom/powervision/natives/connect/W4ConnectSdk;->instance()Lcom/powervision/natives/connect/W4ConnectSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/W4ConnectSdk;->initConnect()V

    .line 253
    invoke-static {}, Lcom/powervision/natives/connect/W49342ConnectSdk;->get()Lcom/powervision/natives/connect/W49342ConnectSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/W49342ConnectSdk;->initConnect()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 256
    invoke-static {}, Lcom/powervision/natives/connect/W4ConnectSdk;->instance()Lcom/powervision/natives/connect/W4ConnectSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/W4ConnectSdk;->initConnect()V

    goto :goto_0

    .line 260
    :cond_2
    invoke-static {}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->getInstance()Lcom/powervision/natives/connect/Ap03ConnectSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->initConnect()V

    .line 261
    invoke-static {}, Lcom/powervision/natives/connect/CameraConnectSDK;->get()Lcom/powervision/natives/connect/CameraConnectSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/CameraConnectSDK;->initCommandConnect()V

    .line 262
    invoke-static {}, Lcom/powervision/natives/connect/CameraConnectSDK;->get()Lcom/powervision/natives/connect/CameraConnectSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/CameraConnectSDK;->initStatusConnect()V

    .line 263
    invoke-static {}, Lcom/powervision/natives/connect/ConnectActivationSDK;->getInstance()Lcom/powervision/natives/connect/ConnectActivationSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectActivationSDK;->initActivationConnect()V

    .line 264
    invoke-static {}, Lcom/powervision/natives/connect/AudioConnectSDK;->getInstance()Lcom/powervision/natives/connect/AudioConnectSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/AudioConnectSDK;->initAudioConnect()V

    :goto_0
    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    .line 268
    invoke-static {}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->get()Lcom/powervision/natives/connect/ConnectRemoteSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->initConnect()V

    .line 269
    invoke-static {}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->get()Lcom/powervision/natives/connect/Dl01ConnectSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->initGroundConnect()V

    :cond_3
    return-void
.end method

.method public switchIp(Z)V
    .locals 0

    return-void
.end method

.method tryToConnWithUsb1()V
    .locals 1

    const/4 v0, 0x0

    .line 723
    invoke-direct {p0, v0}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->startPingUsbIP(I)V

    return-void
.end method
