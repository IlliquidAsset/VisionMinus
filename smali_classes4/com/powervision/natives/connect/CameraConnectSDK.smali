.class public Lcom/powervision/natives/connect/CameraConnectSDK;
.super Ljava/lang/Object;
.source "CameraConnectSDK.java"

# interfaces
.implements Lcom/powervision/natives/PowerCamCallBack$CameraNotifyConnectionListener;
.implements Lcom/powervision/natives/PowerCamCallBack$CameraNotifyStatusConnectionListener;


# static fields
.field public static final ALTERUSB1:I = 0xa

.field public static final ALTERWIFI:I = 0xb

.field public static final CONNECTED:I = 0x6

.field public static final DIS:I = 0x14

.field public static final FAILED:I = 0x4

.field private static sCamConnectSDK:Lcom/powervision/natives/connect/CameraConnectSDK;


# instance fields
.field private final CHECK_ERROR:I

.field private final DISCONNECT:I

.field private final IDEAL:I

.field private final TIMEOUT:I

.field private cameraNotifyConnectionListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyConnectionListener;

.field private cameraNotifyStatusConnection:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyStatusConnectionListener;

.field private commandTask:Lcom/powervision/natives/connect/ConnectTask;

.field commandTool:Lcom/powervision/natives/connect/ConnectTool;

.field private currentCam_C_ConnectState:I

.field public currentCam_S_ConnectState:I

.field private mCamSDK:Lcom/powervision/natives/PowerCamSDK;

.field private mCameraCommandConnectListener:Lcom/powervision/natives/callback/CameraConnectListener;

.field private statusTask:Lcom/powervision/natives/connect/ConnectTask;

.field statusTool:Lcom/powervision/natives/connect/ConnectTool;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->currentCam_C_ConnectState:I

    .line 23
    iput v0, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->currentCam_S_ConnectState:I

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->IDEAL:I

    const/4 v0, 0x3

    .line 30
    iput v0, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->TIMEOUT:I

    const/4 v0, 0x7

    .line 35
    iput v0, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->CHECK_ERROR:I

    const/4 v0, 0x5

    .line 37
    iput v0, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->DISCONNECT:I

    .line 127
    new-instance v0, Lcom/powervision/natives/connect/CameraConnectSDK$1;

    invoke-direct {v0, p0}, Lcom/powervision/natives/connect/CameraConnectSDK$1;-><init>(Lcom/powervision/natives/connect/CameraConnectSDK;)V

    iput-object v0, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->commandTool:Lcom/powervision/natives/connect/ConnectTool;

    .line 186
    new-instance v0, Lcom/powervision/natives/connect/CameraConnectSDK$2;

    invoke-direct {v0, p0}, Lcom/powervision/natives/connect/CameraConnectSDK$2;-><init>(Lcom/powervision/natives/connect/CameraConnectSDK;)V

    iput-object v0, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->statusTool:Lcom/powervision/natives/connect/ConnectTool;

    .line 73
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->mCamSDK:Lcom/powervision/natives/PowerCamSDK;

    .line 74
    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->registerCallBacks()V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/natives/connect/CameraConnectSDK;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/powervision/natives/connect/CameraConnectSDK;->commandConnLink()V

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/natives/connect/CameraConnectSDK;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/powervision/natives/connect/CameraConnectSDK;->reConnCommandLink()V

    return-void
.end method

.method static synthetic access$200(Lcom/powervision/natives/connect/CameraConnectSDK;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/powervision/natives/connect/CameraConnectSDK;->alterCommandWifi()V

    return-void
.end method

.method static synthetic access$300(Lcom/powervision/natives/connect/CameraConnectSDK;)Lcom/powervision/natives/PowerCamSDK;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->mCamSDK:Lcom/powervision/natives/PowerCamSDK;

    return-object p0
.end method

.method static synthetic access$400(Lcom/powervision/natives/connect/CameraConnectSDK;)Lcom/powervision/natives/connect/ConnectTask;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->commandTask:Lcom/powervision/natives/connect/ConnectTask;

    return-object p0
.end method

.method static synthetic access$402(Lcom/powervision/natives/connect/CameraConnectSDK;Lcom/powervision/natives/connect/ConnectTask;)Lcom/powervision/natives/connect/ConnectTask;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->commandTask:Lcom/powervision/natives/connect/ConnectTask;

    return-object p1
.end method

.method static synthetic access$500(Lcom/powervision/natives/connect/CameraConnectSDK;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/powervision/natives/connect/CameraConnectSDK;->statusConnLink()V

    return-void
.end method

.method static synthetic access$600(Lcom/powervision/natives/connect/CameraConnectSDK;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/powervision/natives/connect/CameraConnectSDK;->reConnStatusLink()V

    return-void
.end method

.method static synthetic access$700(Lcom/powervision/natives/connect/CameraConnectSDK;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/powervision/natives/connect/CameraConnectSDK;->alterStatusWifi()V

    return-void
.end method

.method static synthetic access$800(Lcom/powervision/natives/connect/CameraConnectSDK;)Lcom/powervision/natives/connect/ConnectTask;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->statusTask:Lcom/powervision/natives/connect/ConnectTask;

    return-object p0
.end method

.method static synthetic access$802(Lcom/powervision/natives/connect/CameraConnectSDK;Lcom/powervision/natives/connect/ConnectTask;)Lcom/powervision/natives/connect/ConnectTask;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->statusTask:Lcom/powervision/natives/connect/ConnectTask;

    return-object p1
.end method

.method private alterCommandWifi()V
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->mCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->commandDisConnect()I

    .line 247
    iget-object v0, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->mCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->commandConnect()I

    return-void
.end method

.method private alterStatusWifi()V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->mCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->statusDisConnect()I

    .line 252
    iget-object v0, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->mCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->statusConnect()I

    return-void
.end method

.method private commandConnLink()V
    .locals 2

    const-string v0, "lzqCam_c"

    const-string v1, "\u6267\u884c \u3002\u3002\u3002commandConnLink\uff08\uff09"

    .line 260
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->mCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->commandDisConnect()I

    .line 262
    iget-object v0, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->mCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->commandConnect()I

    return-void
.end method

.method private commandConnectSuccess()V
    .locals 0

    return-void
.end method

.method public static get()Lcom/powervision/natives/connect/CameraConnectSDK;
    .locals 2

    .line 62
    sget-object v0, Lcom/powervision/natives/connect/CameraConnectSDK;->sCamConnectSDK:Lcom/powervision/natives/connect/CameraConnectSDK;

    if-nez v0, :cond_1

    .line 63
    const-class v0, Lcom/powervision/natives/connect/CameraConnectSDK;

    monitor-enter v0

    .line 64
    :try_start_0
    sget-object v1, Lcom/powervision/natives/connect/CameraConnectSDK;->sCamConnectSDK:Lcom/powervision/natives/connect/CameraConnectSDK;

    if-nez v1, :cond_0

    .line 65
    new-instance v1, Lcom/powervision/natives/connect/CameraConnectSDK;

    invoke-direct {v1}, Lcom/powervision/natives/connect/CameraConnectSDK;-><init>()V

    sput-object v1, Lcom/powervision/natives/connect/CameraConnectSDK;->sCamConnectSDK:Lcom/powervision/natives/connect/CameraConnectSDK;

    .line 67
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 69
    :cond_1
    :goto_0
    sget-object v0, Lcom/powervision/natives/connect/CameraConnectSDK;->sCamConnectSDK:Lcom/powervision/natives/connect/CameraConnectSDK;

    return-object v0
.end method

.method private reConnCommandLink()V
    .locals 2

    .line 271
    iget v0, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->currentCam_C_ConnectState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const-string v0, "lzqCam_c"

    const-string v1, "reConnCommandLink"

    .line 275
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    sget-object v0, Lcom/powervision/natives/JniAOAChannelNative;->isAp03CameraCommandConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 278
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PowerCamSDK;->setConnectionListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyConnectionListener;)V

    .line 279
    iget-object v0, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->mCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->commandDisConnect()I

    .line 280
    iget-object v0, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->mCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->commandConnect()I

    return-void
.end method

.method private reConnStatusLink()V
    .locals 2

    .line 298
    iget v0, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->currentCam_S_ConnectState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    return-void

    .line 301
    :cond_0
    sget-object v0, Lcom/powervision/natives/JniAOAChannelNative;->isAp03CameraStatusConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 302
    iget-object v0, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->mCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyStatusConnection(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyStatusConnectionListener;)V

    const-string v0, "lzqCam_s"

    const-string v1, "reConnStatusLink"

    .line 303
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->mCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->statusDisConnect()I

    .line 305
    iget-object v0, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->mCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->statusConnect()I

    return-void
.end method

.method private statusConnLink()V
    .locals 2

    const-string v0, "lzqCam_s"

    const-string v1, "\u6267\u884c   statusConnLink\uff08\uff09"

    .line 288
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->mCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->statusDisConnect()I

    .line 290
    iget-object v0, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->mCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->statusConnect()I

    return-void
.end method

.method private statusConnectSuccess()V
    .locals 0

    return-void
.end method


# virtual methods
.method public connection(I)V
    .locals 5

    .line 337
    iput p1, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->currentCam_C_ConnectState:I

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "..........command result..... = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqCam_c"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string v2, "..........command result..... = CONNECTION_SUCCESS"

    .line 340
    invoke-static {v1, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-direct {p0}, Lcom/powervision/natives/connect/CameraConnectSDK;->commandConnectSuccess()V

    const/4 v1, 0x6

    .line 342
    invoke-virtual {p0, v0, v1}, Lcom/powervision/natives/connect/CameraConnectSDK;->postCommandTask(II)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x5

    if-ne p1, v2, :cond_1

    const-string v2, "..........command result..... = CONNECTION_TIMEOUT"

    .line 344
    invoke-static {v1, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0, v0, v3}, Lcom/powervision/natives/connect/CameraConnectSDK;->postCommandTask(II)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    const/4 v4, 0x4

    if-ne p1, v2, :cond_2

    const-string v0, "..........command result..... = CONNECTION_FAIL"

    .line 347
    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x12c

    .line 348
    invoke-virtual {p0, v0, v4}, Lcom/powervision/natives/connect/CameraConnectSDK;->postCommandTask(II)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_4

    const-string v2, "..........command result..... = DISCONNECTION"

    .line 350
    invoke-static {v1, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v1, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->mCameraCommandConnectListener:Lcom/powervision/natives/callback/CameraConnectListener;

    if-eqz v1, :cond_3

    .line 352
    invoke-interface {v1}, Lcom/powervision/natives/callback/CameraConnectListener;->onCamCommandDisconnect()V

    .line 354
    :cond_3
    invoke-virtual {p0, v0, v3}, Lcom/powervision/natives/connect/CameraConnectSDK;->postCommandTask(II)V

    goto :goto_0

    :cond_4
    if-ne p1, v4, :cond_5

    const-string v2, "..........command result..... = HEART_TIMEOUT"

    .line 356
    invoke-static {v1, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0, v0, v4}, Lcom/powervision/natives/connect/CameraConnectSDK;->postCommandTask(II)V

    .line 359
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->cameraNotifyConnectionListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyConnectionListener;

    if-eqz v0, :cond_6

    .line 360
    invoke-interface {v0, p1}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyConnectionListener;->connection(I)V

    :cond_6
    return-void
.end method

.method public getCurrentCam_C_ConnectState()I
    .locals 1

    .line 326
    iget v0, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->currentCam_C_ConnectState:I

    return v0
.end method

.method public getStatusConnect(I)V
    .locals 5

    .line 376
    iput p1, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->currentCam_S_ConnectState:I

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "..........status result.......... = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqCam_s"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 379
    invoke-direct {p0}, Lcom/powervision/natives/connect/CameraConnectSDK;->statusConnectSuccess()V

    const-string v2, "..........status result.......... = CONNECTED"

    .line 380
    invoke-static {v1, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x6

    .line 381
    invoke-virtual {p0, v0, v1}, Lcom/powervision/natives/connect/CameraConnectSDK;->postStatusTask(II)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x5

    if-ne p1, v2, :cond_1

    const-string v2, "..........status result.......... = DISCONNECTED"

    .line 383
    invoke-static {v1, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-virtual {p0, v0, v3}, Lcom/powervision/natives/connect/CameraConnectSDK;->postStatusTask(II)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    const/4 v4, 0x4

    if-ne p1, v2, :cond_2

    const-string v0, "..........status result.......... = FAILED"

    .line 387
    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x12c

    .line 389
    invoke-virtual {p0, v0, v4}, Lcom/powervision/natives/connect/CameraConnectSDK;->postStatusTask(II)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_4

    const-string v2, "..........status result.......... = DISCONNECTION"

    .line 391
    invoke-static {v1, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v1, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->mCameraCommandConnectListener:Lcom/powervision/natives/callback/CameraConnectListener;

    if-eqz v1, :cond_3

    .line 394
    invoke-interface {v1}, Lcom/powervision/natives/callback/CameraConnectListener;->onCamStatusDisconnect()V

    .line 396
    :cond_3
    invoke-virtual {p0, v0, v3}, Lcom/powervision/natives/connect/CameraConnectSDK;->postStatusTask(II)V

    goto :goto_0

    :cond_4
    if-ne p1, v4, :cond_5

    const-string v2, "..........status result.......... = HEART_TIMEOUT"

    .line 398
    invoke-static {v1, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-virtual {p0, v0, v4}, Lcom/powervision/natives/connect/CameraConnectSDK;->postStatusTask(II)V

    .line 403
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->cameraNotifyStatusConnection:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyStatusConnectionListener;

    if-eqz v0, :cond_6

    .line 404
    invoke-interface {v0, p1}, Lcom/powervision/natives/PowerCamCallBack$CameraNotifyStatusConnectionListener;->getStatusConnect(I)V

    :cond_6
    return-void
.end method

.method public initCommandConnect()V
    .locals 3

    const-string v0, "lzqCam_c"

    const-string v1, " initCommandConnect "

    .line 82
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PowerCamSDK;->setConnectionListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyConnectionListener;)V

    .line 84
    iget-object v0, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->commandTask:Lcom/powervision/natives/connect/ConnectTask;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->commandTool:Lcom/powervision/natives/connect/ConnectTool;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/powervision/natives/connect/ConnectTool;->firstAlawys:Z

    .line 90
    iget-object v0, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->commandTool:Lcom/powervision/natives/connect/ConnectTool;

    const/4 v2, 0x2

    iput v2, v0, Lcom/powervision/natives/connect/ConnectTool;->type:I

    .line 91
    iget-object v0, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->commandTool:Lcom/powervision/natives/connect/ConnectTool;

    new-instance v2, Lcom/powervision/natives/connect/Ask;

    invoke-direct {v2, v1, v1}, Lcom/powervision/natives/connect/Ask;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/powervision/natives/connect/ConnectTool;->addStack(Lcom/powervision/natives/connect/Ask;)V

    .line 92
    new-instance v0, Lcom/powervision/natives/connect/ConnectTask;

    const-string v1, "CameraConnectSDK"

    invoke-direct {v0, v1}, Lcom/powervision/natives/connect/ConnectTask;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->commandTask:Lcom/powervision/natives/connect/ConnectTask;

    .line 93
    iget-object v1, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->commandTool:Lcom/powervision/natives/connect/ConnectTool;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/connect/ConnectTask;->setConnectTool(Lcom/powervision/natives/connect/ConnectTool;)V

    .line 94
    iget-object v0, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->commandTask:Lcom/powervision/natives/connect/ConnectTask;

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectTask;->start()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 96
    invoke-virtual {p0, v1, v0}, Lcom/powervision/natives/connect/CameraConnectSDK;->postCommandTask(II)V

    :goto_0
    return-void
.end method

.method public initSdkCallBack()V
    .locals 0

    .line 425
    invoke-static {}, Lcom/powervision/natives/JniCameraNative;->registerCallbacks()I

    return-void
.end method

.method public initStatusConnect()V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->mCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyStatusConnection(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyStatusConnectionListener;)V

    .line 104
    iget-object v0, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->statusTask:Lcom/powervision/natives/connect/ConnectTask;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->statusTool:Lcom/powervision/natives/connect/ConnectTool;

    const/4 v2, 0x2

    iput v2, v0, Lcom/powervision/natives/connect/ConnectTool;->type:I

    .line 106
    iget-object v0, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->statusTool:Lcom/powervision/natives/connect/ConnectTool;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/powervision/natives/connect/ConnectTool;->firstAlawys:Z

    .line 107
    iget-object v0, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->statusTool:Lcom/powervision/natives/connect/ConnectTool;

    new-instance v2, Lcom/powervision/natives/connect/Ask;

    invoke-direct {v2, v1, v1}, Lcom/powervision/natives/connect/Ask;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/powervision/natives/connect/ConnectTool;->addStack(Lcom/powervision/natives/connect/Ask;)V

    .line 108
    new-instance v0, Lcom/powervision/natives/connect/ConnectTask;

    const-string v1, "CameraConnectSDK"

    invoke-direct {v0, v1}, Lcom/powervision/natives/connect/ConnectTask;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->statusTask:Lcom/powervision/natives/connect/ConnectTask;

    .line 109
    iget-object v1, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->statusTool:Lcom/powervision/natives/connect/ConnectTool;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/connect/ConnectTask;->setConnectTool(Lcom/powervision/natives/connect/ConnectTool;)V

    .line 110
    iget-object v0, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->statusTask:Lcom/powervision/natives/connect/ConnectTask;

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectTask;->start()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 112
    invoke-virtual {p0, v1, v0}, Lcom/powervision/natives/connect/CameraConnectSDK;->postStatusTask(II)V

    :goto_0
    return-void
.end method

.method public postCommandTask(II)V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->commandTool:Lcom/powervision/natives/connect/ConnectTool;

    new-instance v1, Lcom/powervision/natives/connect/Ask;

    invoke-direct {v1, p1, p2}, Lcom/powervision/natives/connect/Ask;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/powervision/natives/connect/ConnectTool;->addStack(Lcom/powervision/natives/connect/Ask;)V

    .line 119
    iget-object p1, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->commandTool:Lcom/powervision/natives/connect/ConnectTool;

    invoke-virtual {p1}, Lcom/powervision/natives/connect/ConnectTool;->notifyTheMaster()V

    return-void
.end method

.method public postStatusTask(II)V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->statusTool:Lcom/powervision/natives/connect/ConnectTool;

    new-instance v1, Lcom/powervision/natives/connect/Ask;

    invoke-direct {v1, p1, p2}, Lcom/powervision/natives/connect/Ask;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/powervision/natives/connect/ConnectTool;->addStack(Lcom/powervision/natives/connect/Ask;)V

    .line 124
    iget-object p1, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->statusTool:Lcom/powervision/natives/connect/ConnectTool;

    invoke-virtual {p1}, Lcom/powervision/natives/connect/ConnectTool;->notifyTheMaster()V

    return-void
.end method

.method public removeCommandCallBack()V
    .locals 2

    const-string v0, "lzqCam_c"

    const-string v1, "removeCommandCallBack"

    .line 434
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setConnectionListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyConnectionListener;)V

    return-void
.end method

.method public removeStatusCallBack()V
    .locals 2

    .line 430
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyStatusConnection(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyStatusConnectionListener;)V

    return-void
.end method

.method public setCameraConnectListener(Lcom/powervision/natives/callback/CameraConnectListener;)V
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->mCameraCommandConnectListener:Lcom/powervision/natives/callback/CameraConnectListener;

    if-nez v0, :cond_0

    .line 420
    iput-object p1, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->mCameraCommandConnectListener:Lcom/powervision/natives/callback/CameraConnectListener;

    :cond_0
    return-void
.end method

.method public setCameraNotifyConnectionListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyConnectionListener;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->cameraNotifyConnectionListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyConnectionListener;

    return-void
.end method

.method public setCameraNotifyStatusConnection(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyStatusConnectionListener;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/powervision/natives/connect/CameraConnectSDK;->cameraNotifyStatusConnection:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyStatusConnectionListener;

    return-void
.end method
