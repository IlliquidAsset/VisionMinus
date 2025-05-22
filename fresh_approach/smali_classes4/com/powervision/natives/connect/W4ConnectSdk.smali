.class public Lcom/powervision/natives/connect/W4ConnectSdk;
.super Ljava/lang/Object;
.source "W4ConnectSdk.java"

# interfaces
.implements Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionLinkListener;
.implements Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionDevicceListener;


# static fields
.field public static final ALTERIP_USB1:I = 0xc

.field public static final ALTERIP_WIFI:I = 0xd

.field public static final DEVICE_CONNECTED:I = 0x9

.field public static final DEVICE_FAILED:I = 0x5

.field public static final DIS:I = 0x14

.field public static final HEART_RECOVERY:I = 0xb

.field private static SDK:Lcom/powervision/natives/connect/W4ConnectSdk;


# instance fields
.field private final DEVICE_DISCONNECT:I

.field private final DEVICE_TIMEOUT:I

.field private final HEART_TIMEOUT:I

.field private final IDEAL:I

.field private final LINK_CONNECTED:I

.field private final LINK_DISCONNECT:I

.field private final LINK_FAILED:I

.field private final LINK_TIMEOUT:I

.field connectBodyTask:Lcom/powervision/natives/connect/ConnectTask;

.field private connectListener:Lcom/powervision/natives/connect/PVConnectHelper$ConnectListener;

.field private connectStatus:I

.field connectTool:Lcom/powervision/natives/connect/ConnectTool;

.field device_start:J

.field link_start:J

.field onDisConnectLinkListener:Lcom/powervision/natives/callback/OnDisConnectLinkListener;

.field private w4_api:Lcom/powervision/natives/PVSDK_W4_API;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/powervision/natives/connect/W4ConnectSdk;->IDEAL:I

    const/4 v1, 0x1

    .line 28
    iput v1, p0, Lcom/powervision/natives/connect/W4ConnectSdk;->LINK_FAILED:I

    const/4 v1, 0x2

    .line 30
    iput v1, p0, Lcom/powervision/natives/connect/W4ConnectSdk;->LINK_DISCONNECT:I

    const/4 v1, 0x4

    .line 32
    iput v1, p0, Lcom/powervision/natives/connect/W4ConnectSdk;->LINK_CONNECTED:I

    const/4 v1, 0x3

    .line 34
    iput v1, p0, Lcom/powervision/natives/connect/W4ConnectSdk;->LINK_TIMEOUT:I

    const/4 v1, 0x6

    .line 39
    iput v1, p0, Lcom/powervision/natives/connect/W4ConnectSdk;->DEVICE_TIMEOUT:I

    const/16 v1, 0x8

    .line 41
    iput v1, p0, Lcom/powervision/natives/connect/W4ConnectSdk;->DEVICE_DISCONNECT:I

    const/16 v1, 0xa

    .line 45
    iput v1, p0, Lcom/powervision/natives/connect/W4ConnectSdk;->HEART_TIMEOUT:I

    .line 60
    iput v0, p0, Lcom/powervision/natives/connect/W4ConnectSdk;->connectStatus:I

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/powervision/natives/connect/W4ConnectSdk;->connectListener:Lcom/powervision/natives/connect/PVConnectHelper$ConnectListener;

    .line 76
    iput-object v0, p0, Lcom/powervision/natives/connect/W4ConnectSdk;->connectBodyTask:Lcom/powervision/natives/connect/ConnectTask;

    const-wide/16 v0, 0x0

    .line 98
    iput-wide v0, p0, Lcom/powervision/natives/connect/W4ConnectSdk;->link_start:J

    .line 99
    iput-wide v0, p0, Lcom/powervision/natives/connect/W4ConnectSdk;->device_start:J

    .line 179
    new-instance v0, Lcom/powervision/natives/connect/W4ConnectSdk$1;

    invoke-direct {v0, p0}, Lcom/powervision/natives/connect/W4ConnectSdk$1;-><init>(Lcom/powervision/natives/connect/W4ConnectSdk;)V

    iput-object v0, p0, Lcom/powervision/natives/connect/W4ConnectSdk;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    return-void
.end method

.method public static instance()Lcom/powervision/natives/connect/W4ConnectSdk;
    .locals 1

    .line 69
    sget-object v0, Lcom/powervision/natives/connect/W4ConnectSdk;->SDK:Lcom/powervision/natives/connect/W4ConnectSdk;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/powervision/natives/connect/W4ConnectSdk;

    invoke-direct {v0}, Lcom/powervision/natives/connect/W4ConnectSdk;-><init>()V

    sput-object v0, Lcom/powervision/natives/connect/W4ConnectSdk;->SDK:Lcom/powervision/natives/connect/W4ConnectSdk;

    .line 73
    :cond_0
    sget-object v0, Lcom/powervision/natives/connect/W4ConnectSdk;->SDK:Lcom/powervision/natives/connect/W4ConnectSdk;

    return-object v0
.end method


# virtual methods
.method public alterIp_USB1()V
    .locals 3

    const-string v0, "lzqW4_body_"

    const-string v1, " alterBodyIp 192.168.42.12"

    .line 292
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/powervision/natives/PVSDK_W4_API;->setConnectionDevicceListener(Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionDevicceListener;)V

    .line 294
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/powervision/natives/PVSDK_W4_API;->setConnectionLinkListener(Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionLinkListener;)V

    .line 295
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/natives/PVSDK_W4_API;->disconnectDevice()V

    .line 296
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/natives/PVSDK_W4_API;->disConnectLink()I

    const-string v1, "192.168.42.12"

    const/16 v2, 0x4e22

    .line 297
    invoke-static {v1, v2}, Lcom/powervision/natives/JniW4Native;->alterBodyIp(Ljava/lang/String;I)V

    const-wide/16 v1, 0x12c

    .line 299
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 301
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 303
    :goto_0
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/powervision/natives/PVSDK_W4_API;->connectLink(I)I

    const-string v1, " alterBodyIp done"

    .line 304
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public alterIp_Wifi()V
    .locals 2

    .line 308
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_W4_API;->setConnectionDevicceListener(Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionDevicceListener;)V

    .line 309
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_W4_API;->setConnectionLinkListener(Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionLinkListener;)V

    .line 310
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->disconnectDevice()V

    .line 311
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->disConnectLink()I

    const-string v0, "192.168.1.12"

    const/16 v1, 0x4e22

    .line 312
    invoke-static {v0, v1}, Lcom/powervision/natives/JniW4Native;->alterBodyIp(Ljava/lang/String;I)V

    const-wide/16 v0, 0x12c

    .line 314
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 316
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 318
    :goto_0
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_W4_API;->connectLink(I)I

    return-void
.end method

.method public connectDevice()V
    .locals 2

    const-string v0, "lzqW4_body_"

    const-string v1, "connectType"

    .line 135
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/powervision/natives/connect/W4ConnectSdk;->w4_api:Lcom/powervision/natives/PVSDK_W4_API;

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->connectDevice()I

    return-void
.end method

.method public connectSuccess()V
    .locals 2

    const-string v0, "lzqW4_body_"

    const-string v1, "\u6210\u529f\u8fde\u63a5\u8239\u4f53 before threadID = "

    .line 141
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getConnectStatus()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/powervision/natives/connect/W4ConnectSdk;->connectStatus:I

    return v0
.end method

.method public ideal()V
    .locals 2

    const-string v0, "lzqW4_body_"

    const-string v1, "ideal \u5f00\u59cb\u8fde\u63a5\u94fe\u8def"

    .line 103
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/powervision/natives/connect/W4ConnectSdk;->w4_api:Lcom/powervision/natives/PVSDK_W4_API;

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->disconnectDevice()V

    .line 105
    iget-object v0, p0, Lcom/powervision/natives/connect/W4ConnectSdk;->w4_api:Lcom/powervision/natives/PVSDK_W4_API;

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->disConnectLink()I

    .line 106
    iget-object v0, p0, Lcom/powervision/natives/connect/W4ConnectSdk;->w4_api:Lcom/powervision/natives/PVSDK_W4_API;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_W4_API;->connectLink(I)I

    return-void
.end method

.method public initConnect()V
    .locals 3

    const-string v0, "lzqW4_body_"

    const-string v1, "iniinitCotConnect\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01"

    .line 80
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/powervision/natives/PVSDK_W4_API;->setConnectionDevicceListener(Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionDevicceListener;)V

    .line 82
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/powervision/natives/PVSDK_W4_API;->setConnectionLinkListener(Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionLinkListener;)V

    .line 83
    iget-object v1, p0, Lcom/powervision/natives/connect/W4ConnectSdk;->w4_api:Lcom/powervision/natives/PVSDK_W4_API;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 84
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/natives/connect/W4ConnectSdk;->w4_api:Lcom/powervision/natives/PVSDK_W4_API;

    .line 85
    new-instance v0, Lcom/powervision/natives/connect/ConnectTask;

    const-string v1, "W4ConnectSdk"

    invoke-direct {v0, v1}, Lcom/powervision/natives/connect/ConnectTask;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/powervision/natives/connect/W4ConnectSdk;->connectBodyTask:Lcom/powervision/natives/connect/ConnectTask;

    .line 86
    iget-object v1, p0, Lcom/powervision/natives/connect/W4ConnectSdk;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/connect/ConnectTask;->setConnectTool(Lcom/powervision/natives/connect/ConnectTool;)V

    .line 87
    iget-object v0, p0, Lcom/powervision/natives/connect/W4ConnectSdk;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    const/4 v1, 0x2

    iput v1, v0, Lcom/powervision/natives/connect/ConnectTool;->type:I

    .line 88
    iget-object v0, p0, Lcom/powervision/natives/connect/W4ConnectSdk;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/powervision/natives/connect/ConnectTool;->firstAlawys:Z

    .line 89
    iget-object v0, p0, Lcom/powervision/natives/connect/W4ConnectSdk;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    new-instance v1, Lcom/powervision/natives/connect/Ask;

    invoke-direct {v1, v2, v2}, Lcom/powervision/natives/connect/Ask;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/powervision/natives/connect/ConnectTool;->addStack(Lcom/powervision/natives/connect/Ask;)V

    .line 90
    iget-object v0, p0, Lcom/powervision/natives/connect/W4ConnectSdk;->w4_api:Lcom/powervision/natives/PVSDK_W4_API;

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->initCallBacks()V

    .line 91
    iget-object v0, p0, Lcom/powervision/natives/connect/W4ConnectSdk;->connectBodyTask:Lcom/powervision/natives/connect/ConnectTask;

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectTask;->start()V

    goto :goto_0

    :cond_0
    const-string v1, "\u53c8\u60f3\u8fdb\u6765\u8fde\u63a5\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01"

    .line 93
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    .line 94
    invoke-virtual {p0, v2, v0}, Lcom/powervision/natives/connect/W4ConnectSdk;->postStatus(II)V

    :goto_0
    return-void
.end method

.method public notifyConnectListeners(I)V
    .locals 2

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyConnectListeners "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqW4_body_"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v0, p0, Lcom/powervision/natives/connect/W4ConnectSdk;->connectListener:Lcom/powervision/natives/connect/PVConnectHelper$ConnectListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x64

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 380
    :pswitch_0
    invoke-interface {v0}, Lcom/powervision/natives/connect/PVConnectHelper$ConnectListener;->onHeartbeatTimeout()V

    goto :goto_0

    .line 377
    :pswitch_1
    invoke-interface {v0}, Lcom/powervision/natives/connect/PVConnectHelper$ConnectListener;->onHeartbeatRecovery()V

    goto :goto_0

    .line 374
    :pswitch_2
    invoke-interface {v0}, Lcom/powervision/natives/connect/PVConnectHelper$ConnectListener;->onDeviceConnectTimeout()V

    goto :goto_0

    .line 371
    :pswitch_3
    invoke-interface {v0}, Lcom/powervision/natives/connect/PVConnectHelper$ConnectListener;->onDeviceDisConnect()V

    goto :goto_0

    .line 368
    :pswitch_4
    invoke-interface {v0}, Lcom/powervision/natives/connect/PVConnectHelper$ConnectListener;->onDeviceConnectFailed()V

    goto :goto_0

    .line 365
    :pswitch_5
    invoke-interface {v0}, Lcom/powervision/natives/connect/PVConnectHelper$ConnectListener;->onDeviceConnected()V

    goto :goto_0

    .line 362
    :pswitch_6
    invoke-interface {v0}, Lcom/powervision/natives/connect/PVConnectHelper$ConnectListener;->onChainConnectTimeout()V

    goto :goto_0

    .line 359
    :pswitch_7
    invoke-interface {v0}, Lcom/powervision/natives/connect/PVConnectHelper$ConnectListener;->onChainDisconnected()V

    goto :goto_0

    .line 356
    :pswitch_8
    invoke-interface {v0}, Lcom/powervision/natives/connect/PVConnectHelper$ConnectListener;->onChainConnectFailed()V

    goto :goto_0

    .line 353
    :pswitch_9
    invoke-interface {v0}, Lcom/powervision/natives/connect/PVConnectHelper$ConnectListener;->onChainConnected()V

    goto :goto_0

    .line 383
    :cond_1
    invoke-interface {v0}, Lcom/powervision/natives/connect/PVConnectHelper$ConnectListener;->onSelfDisconnect()V

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

.method public onConnectFailed()V
    .locals 3

    const-string v0, "lzqW4_body_"

    const-string v1, "  111111 connectedStatus: LINK_FAILED"

    .line 404
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 405
    invoke-virtual {p0, v1}, Lcom/powervision/natives/connect/W4ConnectSdk;->notifyConnectListeners(I)V

    const-string v2, "connectedStatus: LINK_FAILED"

    .line 407
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x12c

    .line 408
    invoke-virtual {p0, v0, v1}, Lcom/powervision/natives/connect/W4ConnectSdk;->postStatus(II)V

    return-void
.end method

.method public onConnectSuccess()V
    .locals 3

    const/4 v0, 0x0

    .line 396
    invoke-virtual {p0, v0}, Lcom/powervision/natives/connect/W4ConnectSdk;->notifyConnectListeners(I)V

    const-string v1, "lzqW4_body_"

    const-string v2, "connectedStatus: LINK_CONNECTED"

    .line 398
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x4

    .line 399
    invoke-virtual {p0, v0, v1}, Lcom/powervision/natives/connect/W4ConnectSdk;->postStatus(II)V

    return-void
.end method

.method public onConnectTimeOut()V
    .locals 2

    const-string v0, "lzqW4_body_"

    const-string v1, "connectedStatus: LINK_TIMEOUT"

    .line 422
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    .line 423
    invoke-virtual {p0, v0}, Lcom/powervision/natives/connect/W4ConnectSdk;->notifyConnectListeners(I)V

    const/4 v1, 0x0

    .line 425
    invoke-virtual {p0, v1, v0}, Lcom/powervision/natives/connect/W4ConnectSdk;->postStatus(II)V

    return-void
.end method

.method public onDeviceConnectFailed()V
    .locals 3

    const/4 v0, 0x5

    .line 438
    invoke-virtual {p0, v0}, Lcom/powervision/natives/connect/W4ConnectSdk;->notifyConnectListeners(I)V

    const-string v1, "lzqW4_body_"

    const-string v2, "connectedStatus: onDeviceConnectFailed"

    .line 439
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x12c

    .line 440
    invoke-virtual {p0, v1, v0}, Lcom/powervision/natives/connect/W4ConnectSdk;->postStatus(II)V

    return-void
.end method

.method public onDeviceConnectSuccess()V
    .locals 2

    const/4 v0, 0x4

    .line 431
    invoke-virtual {p0, v0}, Lcom/powervision/natives/connect/W4ConnectSdk;->notifyConnectListeners(I)V

    const-string v0, "lzqW4_body_"

    const-string v1, "connectedStatus: onDeviceConnectSuccess"

    .line 432
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/16 v1, 0x9

    .line 433
    invoke-virtual {p0, v0, v1}, Lcom/powervision/natives/connect/W4ConnectSdk;->postStatus(II)V

    return-void
.end method

.method public onDeviceConnectTimeOut()V
    .locals 2

    const/4 v0, 0x7

    .line 453
    invoke-virtual {p0, v0}, Lcom/powervision/natives/connect/W4ConnectSdk;->notifyConnectListeners(I)V

    const-string v0, "lzqW4_body_"

    const-string v1, "connectedStatus: onDeviceConnectTimeOut"

    .line 454
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x6

    .line 455
    invoke-virtual {p0, v0, v1}, Lcom/powervision/natives/connect/W4ConnectSdk;->postStatus(II)V

    return-void
.end method

.method public onDeviceDisConnected()V
    .locals 2

    const/4 v0, 0x6

    .line 445
    invoke-virtual {p0, v0}, Lcom/powervision/natives/connect/W4ConnectSdk;->notifyConnectListeners(I)V

    .line 446
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/powervision/natives/connect/W4ConnectSdk;->device_start:J

    const-string v0, "lzqW4_body_"

    const-string v1, "connectedStatus: onDeviceDisConnected"

    .line 447
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/16 v1, 0x8

    .line 448
    invoke-virtual {p0, v0, v1}, Lcom/powervision/natives/connect/W4ConnectSdk;->postStatus(II)V

    return-void
.end method

.method public onDisConnected()V
    .locals 3

    const/4 v0, 0x2

    .line 414
    invoke-virtual {p0, v0}, Lcom/powervision/natives/connect/W4ConnectSdk;->notifyConnectListeners(I)V

    .line 415
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/powervision/natives/connect/W4ConnectSdk;->link_start:J

    const-string v1, "lzqW4_body_"

    const-string v2, "connectedStatus: LINK_DISCONNECT"

    .line 416
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 417
    invoke-virtual {p0, v1, v0}, Lcom/powervision/natives/connect/W4ConnectSdk;->postStatus(II)V

    return-void
.end method

.method public onHeartbeatRecovered()V
    .locals 2

    const/16 v0, 0x8

    .line 460
    invoke-virtual {p0, v0}, Lcom/powervision/natives/connect/W4ConnectSdk;->notifyConnectListeners(I)V

    const-string v0, "lzqW4_body_"

    const-string v1, "connectedStatus: onHeartbeatRecovered"

    .line 462
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/16 v1, 0xb

    .line 463
    invoke-virtual {p0, v0, v1}, Lcom/powervision/natives/connect/W4ConnectSdk;->postStatus(II)V

    return-void
.end method

.method public onHeartbeatTimeOut()V
    .locals 2

    const-string v0, "lzqW4_body_"

    const-string v1, "connectedStatus: onHeartbeatTimeOut"

    .line 468
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x9

    .line 469
    invoke-virtual {p0, v0}, Lcom/powervision/natives/connect/W4ConnectSdk;->notifyConnectListeners(I)V

    const/4 v0, 0x0

    const/16 v1, 0xa

    .line 470
    invoke-virtual {p0, v0, v1}, Lcom/powervision/natives/connect/W4ConnectSdk;->postStatus(II)V

    return-void
.end method

.method public onSelfDisConnect()V
    .locals 2

    const-string v0, "lzqW4_body_"

    const-string v1, "connectedStatus: onSelfDisConnect"

    .line 475
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x64

    .line 476
    invoke-virtual {p0, v0}, Lcom/powervision/natives/connect/W4ConnectSdk;->notifyConnectListeners(I)V

    return-void
.end method

.method public postStatus(II)V
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/powervision/natives/connect/W4ConnectSdk;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    new-instance v1, Lcom/powervision/natives/connect/Ask;

    invoke-direct {v1, p1, p2}, Lcom/powervision/natives/connect/Ask;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/powervision/natives/connect/ConnectTool;->addStack(Lcom/powervision/natives/connect/Ask;)V

    .line 324
    iget-object p1, p0, Lcom/powervision/natives/connect/W4ConnectSdk;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    invoke-virtual {p1}, Lcom/powervision/natives/connect/ConnectTool;->notifyTheMaster()V

    .line 325
    iput p2, p0, Lcom/powervision/natives/connect/W4ConnectSdk;->connectStatus:I

    const/16 p1, 0x14

    if-ne p2, p1, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/powervision/natives/connect/W4ConnectSdk;->onSelfDisConnect()V

    :cond_0
    return-void
.end method

.method public relink()V
    .locals 4

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/powervision/natives/connect/W4ConnectSdk;->connectBodyTask:Lcom/powervision/natives/connect/ConnectTask;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/powervision/natives/connect/W4ConnectSdk;->connectBodyTask:Lcom/powervision/natives/connect/ConnectTask;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-wide/16 v2, 0x320

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 116
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 120
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 123
    :cond_0
    :goto_0
    iget v0, p0, Lcom/powervision/natives/connect/W4ConnectSdk;->connectStatus:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 127
    :cond_1
    sget-object v0, Lcom/powervision/natives/JniAOAChannelNative;->isBodyConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 128
    iget-object v0, p0, Lcom/powervision/natives/connect/W4ConnectSdk;->w4_api:Lcom/powervision/natives/PVSDK_W4_API;

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->disconnectDevice()V

    const-string v0, "lzqW4_body_"

    const-string v1, "reLink"

    .line 129
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/powervision/natives/connect/W4ConnectSdk;->w4_api:Lcom/powervision/natives/PVSDK_W4_API;

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->disConnectLink()I

    .line 131
    iget-object v0, p0, Lcom/powervision/natives/connect/W4ConnectSdk;->w4_api:Lcom/powervision/natives/PVSDK_W4_API;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_W4_API;->connectLink(I)I

    :cond_2
    :goto_1
    return-void
.end method

.method public removeCallBack()V
    .locals 2

    const-string v0, "lzqW4_body_"

    const-string v1, "removeCallBack"

    .line 332
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_W4_API;->setConnectionDevicceListener(Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionDevicceListener;)V

    .line 334
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_W4_API;->setConnectionLinkListener(Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionLinkListener;)V

    return-void
.end method

.method public declared-synchronized setConnectListener(Lcom/powervision/natives/connect/PVConnectHelper$ConnectListener;)V
    .locals 0

    monitor-enter p0

    .line 339
    :try_start_0
    iput-object p1, p0, Lcom/powervision/natives/connect/W4ConnectSdk;->connectListener:Lcom/powervision/natives/connect/PVConnectHelper$ConnectListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setOnDisConnectLinkListener(Lcom/powervision/natives/callback/OnDisConnectLinkListener;)V
    .locals 0

    .line 483
    iput-object p1, p0, Lcom/powervision/natives/connect/W4ConnectSdk;->onDisConnectLinkListener:Lcom/powervision/natives/callback/OnDisConnectLinkListener;

    return-void
.end method

.method public swtich_connect_way(I)V
    .locals 1

    const-string p1, "lzqSdk"

    const-string v0, "\u4e3b\u52a8\u8c03\u7528 onConnect body"

    .line 173
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x2ee2

    const/4 v0, 0x1

    .line 174
    invoke-static {p1, v0}, Lcom/powervision/natives/JniAOAChannelNative;->onConnect(II)I

    return-void
.end method
