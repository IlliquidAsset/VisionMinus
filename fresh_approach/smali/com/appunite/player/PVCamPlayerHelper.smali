.class public Lcom/appunite/player/PVCamPlayerHelper;
.super Ljava/lang/Object;
.source "PVCamPlayerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appunite/player/PVCamPlayerHelper$OnDesListener;,
        Lcom/appunite/player/PVCamPlayerHelper$OnSurfaceSizeChangeListener;,
        Lcom/appunite/player/PVCamPlayerHelper$OnShowUpListener;,
        Lcom/appunite/player/PVCamPlayerHelper$PVCamPlayerHolder;
    }
.end annotation


# static fields
.field private static final HARD_DECODER:I = 0x70

.field private static final INIT:I = 0x0

.field private static final PLAYER_ASR_CHANGE:I = 0x1

.field private static final PREPARE:I = 0x64

.field private static final PREPARE_CODEC:I = 0x65

.field private static final RECONNECT:I = 0x4

.field private static final RECONNECT_CODEC:I = 0x5

.field private static final RELEASE:I = 0x3

.field private static final SOFT_DECODER:I = 0x6f

.field private static final SWITCH:I = 0x2

.field private static final TAG:Ljava/lang/String; = "lzqrtsp"

.field private static final base_url2_hard:Ljava/lang/String; = "rtsp://192.168.1.10:554/ap03:"

.field private static final base_url_soft:Ljava/lang/String; = "rtsp://192.168.1.10:554/ap03_720p:"


# instance fields
.field private canInActivity:Z

.field private groupHeight:I

.field private groupWidth:I

.field private mCurDecoder:I

.field private mFrom:I

.field private mOnShowUpListener:Lcom/appunite/player/PVCamPlayerHelper$OnShowUpListener;

.field private mOnSurfaceSizeChangeListener:Lcom/appunite/player/PVCamPlayerHelper$OnSurfaceSizeChangeListener;

.field private mPlayerListener:Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerStateListener;

.field private mTextureView:Landroid/view/TextureView;

.field private mUsbDataManager:Lcom/hisilicon/camplayer/HiCamPlayer$PvUsbDataManage;

.field private msgHandle:Lcom/powervision/gcs/usb2/MsgHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/powervision/gcs/usb2/MsgHandle<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field normalScreen:Z

.field onDesListener:Lcom/appunite/player/PVCamPlayerHelper$OnDesListener;

.field private player:Lcom/hisilicon/camplayer/HiCamPlayer;

.field private rtspTask:Lcom/powervision/gcs/usb2/MsgTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/powervision/gcs/usb2/MsgTask<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public running:Z

.field private surface:Landroid/graphics/SurfaceTexture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ffmpeg"

    .line 26
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "hi_camplayer_mediacodec"

    .line 27
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/appunite/player/PVCamPlayerHelper;->canInActivity:Z

    const/4 v0, -0x1

    .line 63
    iput v0, p0, Lcom/appunite/player/PVCamPlayerHelper;->mFrom:I

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/appunite/player/PVCamPlayerHelper;->rtspTask:Lcom/powervision/gcs/usb2/MsgTask;

    .line 67
    iput-object v0, p0, Lcom/appunite/player/PVCamPlayerHelper;->surface:Landroid/graphics/SurfaceTexture;

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/appunite/player/PVCamPlayerHelper;->running:Z

    .line 71
    iput v0, p0, Lcom/appunite/player/PVCamPlayerHelper;->groupHeight:I

    .line 72
    iput v0, p0, Lcom/appunite/player/PVCamPlayerHelper;->groupWidth:I

    const/16 v1, 0x6f

    .line 74
    iput v1, p0, Lcom/appunite/player/PVCamPlayerHelper;->mCurDecoder:I

    .line 168
    new-instance v1, Lcom/appunite/player/PVCamPlayerHelper$1;

    invoke-direct {v1, p0}, Lcom/appunite/player/PVCamPlayerHelper$1;-><init>(Lcom/appunite/player/PVCamPlayerHelper;)V

    iput-object v1, p0, Lcom/appunite/player/PVCamPlayerHelper;->msgHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    .line 693
    new-instance v1, Lcom/appunite/player/PVCamPlayerHelper$5;

    invoke-direct {v1, p0}, Lcom/appunite/player/PVCamPlayerHelper$5;-><init>(Lcom/appunite/player/PVCamPlayerHelper;)V

    iput-object v1, p0, Lcom/appunite/player/PVCamPlayerHelper;->mUsbDataManager:Lcom/hisilicon/camplayer/HiCamPlayer$PvUsbDataManage;

    .line 720
    new-instance v1, Lcom/appunite/player/PVCamPlayerHelper$6;

    invoke-direct {v1, p0}, Lcom/appunite/player/PVCamPlayerHelper$6;-><init>(Lcom/appunite/player/PVCamPlayerHelper;)V

    iput-object v1, p0, Lcom/appunite/player/PVCamPlayerHelper;->mPlayerListener:Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerStateListener;

    .line 792
    iput-boolean v0, p0, Lcom/appunite/player/PVCamPlayerHelper;->normalScreen:Z

    .line 81
    invoke-direct {p0}, Lcom/appunite/player/PVCamPlayerHelper;->startLinkRtsp()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appunite/player/PVCamPlayerHelper$1;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/appunite/player/PVCamPlayerHelper;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/appunite/player/PVCamPlayerHelper;)Lcom/powervision/gcs/usb2/MsgTask;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/appunite/player/PVCamPlayerHelper;->rtspTask:Lcom/powervision/gcs/usb2/MsgTask;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/appunite/player/PVCamPlayerHelper;)Lcom/hisilicon/camplayer/HiCamPlayer;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/appunite/player/PVCamPlayerHelper;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/appunite/player/PVCamPlayerHelper;)Lcom/appunite/player/PVCamPlayerHelper$OnShowUpListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/appunite/player/PVCamPlayerHelper;->mOnShowUpListener:Lcom/appunite/player/PVCamPlayerHelper$OnShowUpListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/appunite/player/PVCamPlayerHelper;)Landroid/view/TextureView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/appunite/player/PVCamPlayerHelper;->mTextureView:Landroid/view/TextureView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/appunite/player/PVCamPlayerHelper;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/appunite/player/PVCamPlayerHelper;->prepare()V

    return-void
.end method

.method static synthetic access$400(Lcom/appunite/player/PVCamPlayerHelper;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/appunite/player/PVCamPlayerHelper;->preparecodec()V

    return-void
.end method

.method static synthetic access$500(Lcom/appunite/player/PVCamPlayerHelper;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/appunite/player/PVCamPlayerHelper;->init()V

    return-void
.end method

.method static synthetic access$600(Lcom/appunite/player/PVCamPlayerHelper;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/appunite/player/PVCamPlayerHelper;->release()V

    return-void
.end method

.method static synthetic access$700(Lcom/appunite/player/PVCamPlayerHelper;)Z
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/appunite/player/PVCamPlayerHelper;->reconnect()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/appunite/player/PVCamPlayerHelper;)Lcom/powervision/gcs/usb2/MsgHandle;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/appunite/player/PVCamPlayerHelper;->msgHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    return-object p0
.end method

.method static synthetic access$902(Lcom/appunite/player/PVCamPlayerHelper;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/appunite/player/PVCamPlayerHelper;->mCurDecoder:I

    return p1
.end method

.method private changeVideoViewSize(ZII)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/appunite/player/PVCamPlayerHelper;->mOnSurfaceSizeChangeListener:Lcom/appunite/player/PVCamPlayerHelper$OnSurfaceSizeChangeListener;

    if-eqz v0, :cond_0

    .line 161
    invoke-interface {v0, p1, p2, p3}, Lcom/appunite/player/PVCamPlayerHelper$OnSurfaceSizeChangeListener;->onSurfaceSizeChange(ZII)V

    :cond_0
    return-void
.end method

.method public static getHelper()Lcom/appunite/player/PVCamPlayerHelper;
    .locals 1

    .line 38
    invoke-static {}, Lcom/appunite/player/PVCamPlayerHelper$PVCamPlayerHolder;->access$100()Lcom/appunite/player/PVCamPlayerHelper;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 4

    const/4 v0, 0x0

    .line 368
    iput-boolean v0, p0, Lcom/appunite/player/PVCamPlayerHelper;->canInActivity:Z

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqrtsp"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v0, p0, Lcom/appunite/player/PVCamPlayerHelper;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    if-nez v0, :cond_0

    .line 371
    new-instance v0, Lcom/hisilicon/camplayer/HiCamPlayer;

    invoke-direct {v0}, Lcom/hisilicon/camplayer/HiCamPlayer;-><init>()V

    iput-object v0, p0, Lcom/appunite/player/PVCamPlayerHelper;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    .line 373
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/NewVisionPlus/data.h265"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hisilicon/camplayer/HiCamPlayer;->setSaveUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 375
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v0, " reset"

    .line 378
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v0, p0, Lcom/appunite/player/PVCamPlayerHelper;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    invoke-virtual {v0}, Lcom/hisilicon/camplayer/HiCamPlayer;->reset()V

    const-string v0, " reset over"

    .line 380
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :goto_0
    iget-object v0, p0, Lcom/appunite/player/PVCamPlayerHelper;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/hisilicon/camplayer/HiCamPlayer;->setScreenOnWhilePlaying(Z)V

    .line 383
    invoke-static {}, Lcom/powervision/gcs/usb2/RtspUsbManager;->get()Lcom/powervision/gcs/usb2/RtspUsbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/RtspUsbManager;->clearBuffer()V

    .line 384
    sput-boolean v2, Lcom/powervision/gcs/usb2/RtspUsbManager;->receiveable:Z

    .line 385
    iget-object v0, p0, Lcom/appunite/player/PVCamPlayerHelper;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    new-instance v2, Landroid/view/Surface;

    iget-object v3, p0, Lcom/appunite/player/PVCamPlayerHelper;->surface:Landroid/graphics/SurfaceTexture;

    invoke-direct {v2, v3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v2}, Lcom/hisilicon/camplayer/HiCamPlayer;->setSurface(Landroid/view/Surface;)V

    const-string v0, "setDisplay"

    .line 386
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-direct {p0}, Lcom/appunite/player/PVCamPlayerHelper;->updateRtspListener()V

    return-void
.end method

.method private prepare()V
    .locals 3

    const-string v0, "lzqrtsp"

    const-string v1, " ====== msgqueue====   DO PREPARE"

    .line 330
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-static {}, Lcom/powervision/gcs/usb2/RtspUsbManager;->get()Lcom/powervision/gcs/usb2/RtspUsbManager;

    move-result-object v1

    new-instance v2, Lcom/appunite/player/PVCamPlayerHelper$3;

    invoke-direct {v2, p0}, Lcom/appunite/player/PVCamPlayerHelper$3;-><init>(Lcom/appunite/player/PVCamPlayerHelper;)V

    invoke-virtual {v1, v2}, Lcom/powervision/gcs/usb2/RtspUsbManager;->setStartListener(Lcom/powervision/gcs/usb2/RtspUsbManager$OnStartCallBack;)V

    const-string v1, " \u5148\u6e05\u7406\u4e86"

    .line 354
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v1, p0, Lcom/appunite/player/PVCamPlayerHelper;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    if-eqz v1, :cond_0

    .line 356
    invoke-virtual {v1}, Lcom/hisilicon/camplayer/HiCamPlayer;->reset()V

    .line 357
    invoke-static {}, Lcom/powervision/gcs/usb2/RtspUsbManager;->get()Lcom/powervision/gcs/usb2/RtspUsbManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/gcs/usb2/RtspUsbManager;->clearBuffer()V

    .line 359
    :cond_0
    invoke-static {}, Lcom/powervision/gcs/usb2/RtspUsbManager;->get()Lcom/powervision/gcs/usb2/RtspUsbManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/gcs/usb2/RtspUsbManager;->startAOAConnect()V

    const-string v1, " ====== msgqueue====    PREPARE END"

    .line 360
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private preparecodec()V
    .locals 3

    const-string v0, "lzqrtsp"

    const-string v1, " ====== msgqueue====   DO PREPARE"

    .line 286
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-static {}, Lcom/powervision/gcs/usb2/RtspUsbManager;->get()Lcom/powervision/gcs/usb2/RtspUsbManager;

    move-result-object v1

    new-instance v2, Lcom/appunite/player/PVCamPlayerHelper$2;

    invoke-direct {v2, p0}, Lcom/appunite/player/PVCamPlayerHelper$2;-><init>(Lcom/appunite/player/PVCamPlayerHelper;)V

    invoke-virtual {v1, v2}, Lcom/powervision/gcs/usb2/RtspUsbManager;->setStartListener(Lcom/powervision/gcs/usb2/RtspUsbManager$OnStartCallBack;)V

    const-string v1, " \u5148\u6e05\u7406\u4e86 codec"

    .line 319
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v1, p0, Lcom/appunite/player/PVCamPlayerHelper;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    if-eqz v1, :cond_0

    .line 321
    invoke-virtual {v1}, Lcom/hisilicon/camplayer/HiCamPlayer;->reset()V

    .line 322
    invoke-static {}, Lcom/powervision/gcs/usb2/RtspUsbManager;->get()Lcom/powervision/gcs/usb2/RtspUsbManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/gcs/usb2/RtspUsbManager;->clearBuffer()V

    .line 325
    :cond_0
    invoke-static {}, Lcom/powervision/gcs/usb2/RtspUsbManager;->get()Lcom/powervision/gcs/usb2/RtspUsbManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/gcs/usb2/RtspUsbManager;->startAOAConnect()V

    const-string v1, " ====== msgqueue====    PREPARE END"

    .line 326
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private reconnect()Z
    .locals 7

    const-string v0, "\u7ebf\u7a0b\u6536\u5230restart IOException"

    .line 393
    iget-object v1, p0, Lcom/appunite/player/PVCamPlayerHelper;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "lzqrtsp"

    if-eqz v1, :cond_7

    const-string v1, "   reconnect  "

    .line 394
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-static {}, Lcom/powervision/gcs/usb2/RtspUsbManager;->get()Lcom/powervision/gcs/usb2/RtspUsbManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/gcs/usb2/RtspUsbManager;->clearBuffer()V

    .line 396
    iget-object v1, p0, Lcom/appunite/player/PVCamPlayerHelper;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    invoke-virtual {v1}, Lcom/hisilicon/camplayer/HiCamPlayer;->reset()V

    const-string v1, "  reconnect clearBuffer 0  "

    .line 397
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v1, p0, Lcom/appunite/player/PVCamPlayerHelper;->msgHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    iget-object v1, v1, Lcom/powervision/gcs/usb2/MsgHandle;->queue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    const-string v1, "  reconnect clearBuffer 1  "

    .line 399
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v1, " \u6ce8\u518c\u63a5\u53e3 0"

    .line 401
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v1, p0, Lcom/appunite/player/PVCamPlayerHelper;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    iget-object v5, p0, Lcom/appunite/player/PVCamPlayerHelper;->mPlayerListener:Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerStateListener;

    invoke-virtual {v1, v5}, Lcom/hisilicon/camplayer/HiCamPlayer;->setHiCamPlayerListener(Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerStateListener;)V

    .line 407
    iget-object v1, p0, Lcom/appunite/player/PVCamPlayerHelper;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    iget-object v5, p0, Lcom/appunite/player/PVCamPlayerHelper;->mUsbDataManager:Lcom/hisilicon/camplayer/HiCamPlayer$PvUsbDataManage;

    invoke-virtual {v1, v5}, Lcom/hisilicon/camplayer/HiCamPlayer;->setUsDataManager(Lcom/hisilicon/camplayer/HiCamPlayer$PvUsbDataManage;)V

    const-string v1, "\u7ebf\u7a0b\u6536\u5230restart 22222222"

    .line 408
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget v1, p0, Lcom/appunite/player/PVCamPlayerHelper;->mFrom:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "rtsp://192.168.42.10:554/livestream/12:trans=wifi"

    const/4 v6, 0x2

    if-ne v1, v6, :cond_4

    .line 410
    :try_start_1
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 412
    iget-object v1, p0, Lcom/appunite/player/PVCamPlayerHelper;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    invoke-virtual {v1, v5}, Lcom/hisilicon/camplayer/HiCamPlayer;->setDataSource(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 413
    :cond_0
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result v1

    const/16 v5, 0x6f

    if-ne v1, v6, :cond_2

    .line 414
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 417
    iget v1, p0, Lcom/appunite/player/PVCamPlayerHelper;->mCurDecoder:I

    if-ne v1, v5, :cond_1

    const-string v1, "rtsp://192.168.1.10:554/ap03_720p:trans=usb"

    const-string v5, "init AP03 USB2  soft"

    .line 419
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "rtsp://192.168.1.10:554/ap03:trans=usb"

    const-string v5, "init AP03 USB2  hard"

    .line 422
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :goto_0
    iget-object v5, p0, Lcom/appunite/player/PVCamPlayerHelper;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    invoke-virtual {v5, v1}, Lcom/hisilicon/camplayer/HiCamPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_2

    .line 430
    :cond_2
    iget v1, p0, Lcom/appunite/player/PVCamPlayerHelper;->mCurDecoder:I

    if-ne v1, v5, :cond_3

    const-string v1, "rtsp://192.168.1.10:554/ap03_720p:trans=wifi"

    const-string v5, "init AP03 wifi  soft"

    .line 432
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string v1, "rtsp://192.168.1.10:554/ap03:trans=wifi"

    const-string v5, "init AP03 wifi  hard"

    .line 435
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :goto_1
    iget-object v5, p0, Lcom/appunite/player/PVCamPlayerHelper;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    invoke-virtual {v5, v1}, Lcom/hisilicon/camplayer/HiCamPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_2

    .line 443
    :cond_4
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result v1

    if-ne v1, v2, :cond_5

    const-string v1, "\u521d\u59cb\u5316USB1"

    .line 444
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v1, p0, Lcom/appunite/player/PVCamPlayerHelper;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    invoke-virtual {v1, v5}, Lcom/hisilicon/camplayer/HiCamPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_2

    .line 446
    :cond_5
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result v1

    if-ne v1, v6, :cond_6

    .line 447
    iget-object v1, p0, Lcom/appunite/player/PVCamPlayerHelper;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    const-string v5, "rtsp://192.168.1.10:554/livestream/12:trans=usb"

    invoke-virtual {v1, v5}, Lcom/hisilicon/camplayer/HiCamPlayer;->setDataSource(Ljava/lang/String;)V

    const-string v1, "\u521d\u59cb\u5316 W4 USB2"

    .line 448
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    const-string v1, "\u521d\u59cb\u5316 W4 wifi"

    .line 450
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v1, p0, Lcom/appunite/player/PVCamPlayerHelper;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    const-string v5, "rtsp://192.168.1.10:554/livestream/12:trans=wifi"

    invoke-virtual {v1, v5}, Lcom/hisilicon/camplayer/HiCamPlayer;->setDataSource(Ljava/lang/String;)V

    :goto_2
    const-string v1, "\u7ebf\u7a0b\u6536\u5230restart 33333333"

    .line 454
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v1, p0, Lcom/appunite/player/PVCamPlayerHelper;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    iget v5, p0, Lcom/appunite/player/PVCamPlayerHelper;->mCurDecoder:I

    invoke-virtual {v1, v5}, Lcom/hisilicon/camplayer/HiCamPlayer;->prepare(I)V

    .line 456
    iget-object v1, p0, Lcom/appunite/player/PVCamPlayerHelper;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    invoke-virtual {v1}, Lcom/hisilicon/camplayer/HiCamPlayer;->start()V

    const-string v1, "\u7ebf\u7a0b\u6536\u5230restart 4444444"

    .line 458
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_5

    .line 475
    :goto_3
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_6

    :goto_4
    const-string v1, "\u7ebf\u7a0b\u6536\u5230restart IllegalStateException"

    .line 468
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_6

    .line 461
    :goto_5
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :cond_7
    const-string v0, " player == null"

    .line 481
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    const/4 v2, 0x0

    :goto_7
    return v2
.end method

.method private release()V
    .locals 5

    const-string v0, "lzqrtsp"

    const-string v1, "  release clearBuffer 0  "

    .line 527
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v1, p0, Lcom/appunite/player/PVCamPlayerHelper;->msgHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    iget-object v1, v1, Lcom/powervision/gcs/usb2/MsgHandle;->queue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    const-string v1, "  release clearBuffer 1  "

    .line 529
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v1, p0, Lcom/appunite/player/PVCamPlayerHelper;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    if-eqz v1, :cond_0

    const-string v1, "\u56de\u6536player \u5e72\u6389\u63a5\u53e3"

    .line 531
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v1, p0, Lcom/appunite/player/PVCamPlayerHelper;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/hisilicon/camplayer/HiCamPlayer;->setHiCamPlayerListener(Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerStateListener;)V

    const-string v1, "\u56de\u6536player reset"

    .line 538
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v1, p0, Lcom/appunite/player/PVCamPlayerHelper;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    invoke-virtual {v1}, Lcom/hisilicon/camplayer/HiCamPlayer;->reset()V

    const-string v1, "\u56de\u6536player release"

    .line 540
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x64

    .line 542
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 544
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 546
    :goto_0
    iget-object v1, p0, Lcom/appunite/player/PVCamPlayerHelper;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    invoke-virtual {v1}, Lcom/hisilicon/camplayer/HiCamPlayer;->release()V

    .line 547
    iput-object v2, p0, Lcom/appunite/player/PVCamPlayerHelper;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    :cond_0
    const/4 v1, 0x1

    .line 549
    iput-boolean v1, p0, Lcom/appunite/player/PVCamPlayerHelper;->canInActivity:Z

    const-string v1, "\u56de\u6536player \u5b8c\u6210"

    .line 550
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object v0, p0, Lcom/appunite/player/PVCamPlayerHelper;->onDesListener:Lcom/appunite/player/PVCamPlayerHelper$OnDesListener;

    if-eqz v0, :cond_1

    .line 552
    invoke-interface {v0}, Lcom/appunite/player/PVCamPlayerHelper$OnDesListener;->DesComplete()V

    :cond_1
    return-void
.end method

.method private startLinkRtsp()V
    .locals 3

    const-string v0, "lzqrtsp"

    const-string v1, "startLinkRtsp"

    .line 560
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v1, p0, Lcom/appunite/player/PVCamPlayerHelper;->rtspTask:Lcom/powervision/gcs/usb2/MsgTask;

    if-nez v1, :cond_0

    .line 562
    new-instance v1, Lcom/powervision/gcs/usb2/MsgTask;

    invoke-direct {v1}, Lcom/powervision/gcs/usb2/MsgTask;-><init>()V

    iput-object v1, p0, Lcom/appunite/player/PVCamPlayerHelper;->rtspTask:Lcom/powervision/gcs/usb2/MsgTask;

    .line 564
    iget-object v1, p0, Lcom/appunite/player/PVCamPlayerHelper;->msgHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/powervision/gcs/usb2/MsgHandle;->setQueueOrStack(I)V

    .line 565
    iget-object v1, p0, Lcom/appunite/player/PVCamPlayerHelper;->rtspTask:Lcom/powervision/gcs/usb2/MsgTask;

    iget-object v2, p0, Lcom/appunite/player/PVCamPlayerHelper;->msgHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    invoke-virtual {v1, v2}, Lcom/powervision/gcs/usb2/MsgTask;->setConnectHandle(Lcom/powervision/gcs/usb2/MsgHandle;)V

    const-string v1, "\u5f00\u542f\u7ebf\u7a0b"

    .line 566
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v0, p0, Lcom/appunite/player/PVCamPlayerHelper;->rtspTask:Lcom/powervision/gcs/usb2/MsgTask;

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/MsgTask;->start()V

    :cond_0
    return-void
.end method

.method private switchDecoder()V
    .locals 2

    const-string v0, "lzqrtsp"

    const-string v1, "switchDecoder\u5207\u6362\u8f6f\u89e3"

    .line 275
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v0, p0, Lcom/appunite/player/PVCamPlayerHelper;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    if-eqz v0, :cond_0

    .line 278
    :try_start_0
    invoke-virtual {v0}, Lcom/hisilicon/camplayer/HiCamPlayer;->switchdecoder()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 280
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private updateRtspListener()V
    .locals 9

    const-string v0, "lzqrtsp"

    const-wide/16 v1, 0x1f4

    :try_start_0
    const-string v3, " \u6ce8\u518c\u63a5\u53e3 1"

    .line 573
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object v3, p0, Lcom/appunite/player/PVCamPlayerHelper;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    iget-object v4, p0, Lcom/appunite/player/PVCamPlayerHelper;->mPlayerListener:Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerStateListener;

    invoke-virtual {v3, v4}, Lcom/hisilicon/camplayer/HiCamPlayer;->setHiCamPlayerListener(Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerStateListener;)V

    .line 579
    iget-object v3, p0, Lcom/appunite/player/PVCamPlayerHelper;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    iget-object v4, p0, Lcom/appunite/player/PVCamPlayerHelper;->mUsbDataManager:Lcom/hisilicon/camplayer/HiCamPlayer$PvUsbDataManage;

    invoke-virtual {v3, v4}, Lcom/hisilicon/camplayer/HiCamPlayer;->setUsDataManager(Lcom/hisilicon/camplayer/HiCamPlayer$PvUsbDataManage;)V

    .line 580
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5efa\u7acbRTSP\u8fde\u63a5 from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/appunite/player/PVCamPlayerHelper;->mFrom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget v3, p0, Lcom/appunite/player/PVCamPlayerHelper;->mFrom:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "rtsp://192.168.42.10:554/livestream/12:trans=wifi"

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-ne v3, v6, :cond_4

    .line 582
    :try_start_1
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 584
    iget-object v3, p0, Lcom/appunite/player/PVCamPlayerHelper;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    invoke-virtual {v3, v4}, Lcom/hisilicon/camplayer/HiCamPlayer;->setDataSource(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 585
    :cond_0
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result v3

    const/16 v4, 0x6f

    if-ne v3, v6, :cond_2

    .line 586
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 589
    iget v3, p0, Lcom/appunite/player/PVCamPlayerHelper;->mCurDecoder:I

    if-ne v3, v4, :cond_1

    const-string v3, "rtsp://192.168.1.10:554/ap03_720p:trans=usb"

    const-string v4, "init AP03 USB2 soft "

    .line 591
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v3, "rtsp://192.168.1.10:554/ap03:trans=usb"

    const-string v4, "\u521d\u59cb\u5316 AP03 USB2 hard  "

    .line 594
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :goto_0
    iget-object v4, p0, Lcom/appunite/player/PVCamPlayerHelper;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    invoke-virtual {v4, v3}, Lcom/hisilicon/camplayer/HiCamPlayer;->setDataSource(Ljava/lang/String;)V

    .line 599
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u521d\u59cb\u5316 AP03 USB2  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    const-string v3, "\u521d\u59cb\u5316 AP03 wifi"

    .line 602
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    iget v3, p0, Lcom/appunite/player/PVCamPlayerHelper;->mCurDecoder:I

    if-ne v3, v4, :cond_3

    const-string v3, "rtsp://192.168.1.10:554/ap03_720p:trans=wifi"

    const-string v4, "\u521d\u59cb\u5316 AP03 wifi soft  "

    .line 606
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string v3, "rtsp://192.168.1.10:554/ap03:trans=wifi"

    const-string v4, "\u521d\u59cb\u5316 AP03 wifi hard  "

    .line 609
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :goto_1
    iget-object v4, p0, Lcom/appunite/player/PVCamPlayerHelper;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    invoke-virtual {v4, v3}, Lcom/hisilicon/camplayer/HiCamPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_2

    .line 616
    :cond_4
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result v3

    if-ne v3, v5, :cond_5

    .line 618
    iget-object v3, p0, Lcom/appunite/player/PVCamPlayerHelper;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    invoke-virtual {v3, v4}, Lcom/hisilicon/camplayer/HiCamPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_2

    .line 619
    :cond_5
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result v3

    if-ne v3, v6, :cond_6

    .line 620
    iget-object v3, p0, Lcom/appunite/player/PVCamPlayerHelper;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    const-string v4, "rtsp://192.168.1.10:554/livestream/12:trans=usb"

    invoke-virtual {v3, v4}, Lcom/hisilicon/camplayer/HiCamPlayer;->setDataSource(Ljava/lang/String;)V

    const-string v3, "\u521d\u59cb\u5316 W4 USB2"

    .line 621
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    const-string v3, "\u521d\u59cb\u5316 W4 wifi"

    .line 623
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object v3, p0, Lcom/appunite/player/PVCamPlayerHelper;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    const-string v4, "rtsp://192.168.1.10:554/livestream/12:trans=wifi"

    invoke-virtual {v3, v4}, Lcom/hisilicon/camplayer/HiCamPlayer;->setDataSource(Ljava/lang/String;)V

    :goto_2
    const-string v3, "befroe prepare"

    .line 628
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-object v3, p0, Lcom/appunite/player/PVCamPlayerHelper;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    iget v4, p0, Lcom/appunite/player/PVCamPlayerHelper;->mCurDecoder:I

    invoke-virtual {v3, v4}, Lcom/hisilicon/camplayer/HiCamPlayer;->prepare(I)V

    .line 630
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v5, "start  "

    .line 631
    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    iget-object v5, p0, Lcom/appunite/player/PVCamPlayerHelper;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    invoke-virtual {v5}, Lcom/hisilicon/camplayer/HiCamPlayer;->start()V

    .line 633
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 634
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startover time "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v3, v5

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_9

    :catch_0
    move-exception v3

    goto :goto_3

    :catch_1
    move-exception v3

    goto :goto_5

    :catch_2
    move-exception v3

    goto :goto_7

    .line 654
    :goto_3
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 656
    :try_start_2
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_4

    :catch_3
    move-exception v1

    .line 658
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_4
    const/4 v1, 0x4

    .line 660
    invoke-virtual {p0, v1}, Lcom/appunite/player/PVCamPlayerHelper;->sendReconnect(I)V

    .line 661
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataSourceError 44444 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 645
    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDataSourceError 333333 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    invoke-virtual {v3}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 648
    :try_start_3
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    .line 650
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_6
    const/4 v0, 0x6

    .line 652
    invoke-virtual {p0, v0}, Lcom/appunite/player/PVCamPlayerHelper;->sendReconnect(I)V

    goto :goto_9

    .line 636
    :goto_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDataSourceError 22222 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 639
    :try_start_4
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_8

    :catch_5
    move-exception v0

    .line 641
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_8
    const/4 v0, 0x3

    .line 643
    invoke-virtual {p0, v0}, Lcom/appunite/player/PVCamPlayerHelper;->sendReconnect(I)V

    :goto_9
    return-void
.end method


# virtual methods
.method public getPlayer()Lcom/hisilicon/camplayer/HiCamPlayer;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/appunite/player/PVCamPlayerHelper;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    return-object v0
.end method

.method public initCamPlayer(Landroid/view/TextureView;Landroid/graphics/SurfaceTexture;III)V
    .locals 3

    const-string v0, "lzqrtsp"

    const-string v1, "   ... initCamPlayer()  "

    .line 90
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initCamPlayer...screenHeight= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  screenWidth= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lzq"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 92
    iput-boolean v1, p0, Lcom/appunite/player/PVCamPlayerHelper;->running:Z

    .line 93
    iput p3, p0, Lcom/appunite/player/PVCamPlayerHelper;->mFrom:I

    .line 94
    iput p4, p0, Lcom/appunite/player/PVCamPlayerHelper;->groupHeight:I

    .line 95
    iput p5, p0, Lcom/appunite/player/PVCamPlayerHelper;->groupWidth:I

    .line 96
    iput-object p1, p0, Lcom/appunite/player/PVCamPlayerHelper;->mTextureView:Landroid/view/TextureView;

    .line 97
    iput-object p2, p0, Lcom/appunite/player/PVCamPlayerHelper;->surface:Landroid/graphics/SurfaceTexture;

    const/16 p1, 0x70

    .line 98
    iput p1, p0, Lcom/appunite/player/PVCamPlayerHelper;->mCurDecoder:I

    .line 100
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    const-string p1, " ====== msgqueue====   ADD PREPARE"

    .line 101
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object p1, p0, Lcom/appunite/player/PVCamPlayerHelper;->msgHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    const/16 p2, 0x64

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/usb2/MsgHandle;->addAWork_queue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p1, " ====== msgqueue====   ADD INIT"

    .line 104
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object p1, p0, Lcom/appunite/player/PVCamPlayerHelper;->msgHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/usb2/MsgHandle;->addAWork_queue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public isCanInActivity()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/appunite/player/PVCamPlayerHelper;->canInActivity:Z

    return v0
.end method

.method public prepareToDes()V
    .locals 3

    const-string v0, "lzqrtsp"

    const-string v1, "prepareToDes"

    .line 669
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget-object v1, p0, Lcom/appunite/player/PVCamPlayerHelper;->onDesListener:Lcom/appunite/player/PVCamPlayerHelper$OnDesListener;

    if-eqz v1, :cond_0

    .line 671
    invoke-interface {v1}, Lcom/appunite/player/PVCamPlayerHelper$OnDesListener;->startDes()V

    :cond_0
    const/4 v1, 0x0

    .line 673
    iput-boolean v1, p0, Lcom/appunite/player/PVCamPlayerHelper;->running:Z

    .line 674
    sput-boolean v1, Lcom/powervision/gcs/usb2/RtspUsbManager;->receiveable:Z

    const-string v1, "SEND RELEASE 0"

    .line 678
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/appunite/player/PVCamPlayerHelper$4;

    invoke-direct {v2, p0}, Lcom/appunite/player/PVCamPlayerHelper$4;-><init>(Lcom/appunite/player/PVCamPlayerHelper;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 685
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const-string v1, "SEND RELEASE 1"

    .line 686
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendReconnect(I)V
    .locals 3

    const-string v0, "Base_Camera"

    const-string v1, "  333333333  type  .... ="

    .line 489
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53d1\u9001restart running:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/appunite/player/PVCamPlayerHelper;->running:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqrtsp"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-boolean v0, p0, Lcom/appunite/player/PVCamPlayerHelper;->running:Z

    if-nez v0, :cond_0

    return-void

    .line 495
    :cond_0
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->isUSB2_CONFIRM()Z

    move-result v0

    if-nez v0, :cond_2

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ====== RECONNECT 22222222:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object p1, p0, Lcom/appunite/player/PVCamPlayerHelper;->msgHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/MsgHandle;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/appunite/player/PVCamPlayerHelper;->msgHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/MsgHandle;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 498
    :cond_1
    iget-object p1, p0, Lcom/appunite/player/PVCamPlayerHelper;->msgHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    const-string v0, "1"

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/usb2/MsgHandle;->setTag(Ljava/lang/Object;)V

    .line 499
    iget-object p1, p0, Lcom/appunite/player/PVCamPlayerHelper;->msgHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/usb2/MsgHandle;->addAWork_queue(Ljava/lang/Object;)V

    goto :goto_0

    .line 502
    :cond_2
    iget-object p1, p0, Lcom/appunite/player/PVCamPlayerHelper;->msgHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/usb2/MsgHandle;->addAWork_queue(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public sendReconnectchangecodec()V
    .locals 2

    const-string v0, "Base_Camera"

    const-string v1, "  333333333  type  .... ="

    .line 509
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "lzqrtsp"

    const-string v1, "\u53d1\u9001restart"

    .line 510
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->isUSB2_CONFIRM()Z

    move-result v0

    if-nez v0, :cond_1

    .line 513
    iget-object v0, p0, Lcom/appunite/player/PVCamPlayerHelper;->msgHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/MsgHandle;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appunite/player/PVCamPlayerHelper;->msgHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/MsgHandle;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/appunite/player/PVCamPlayerHelper;->msgHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/MsgHandle;->addAWork_queue(Ljava/lang/Object;)V

    goto :goto_0

    .line 518
    :cond_1
    iget-object v0, p0, Lcom/appunite/player/PVCamPlayerHelper;->msgHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/MsgHandle;->addAWork_queue(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setOnDesListener(Lcom/appunite/player/PVCamPlayerHelper$OnDesListener;)V
    .locals 0

    .line 806
    iput-object p1, p0, Lcom/appunite/player/PVCamPlayerHelper;->onDesListener:Lcom/appunite/player/PVCamPlayerHelper$OnDesListener;

    return-void
.end method

.method public setOnShowUpListener(Lcom/appunite/player/PVCamPlayerHelper$OnShowUpListener;)V
    .locals 0

    .line 783
    iput-object p1, p0, Lcom/appunite/player/PVCamPlayerHelper;->mOnShowUpListener:Lcom/appunite/player/PVCamPlayerHelper$OnShowUpListener;

    return-void
.end method

.method public setOnSurfaceSizeChangeListener(Lcom/appunite/player/PVCamPlayerHelper$OnSurfaceSizeChangeListener;)V
    .locals 0

    .line 796
    iput-object p1, p0, Lcom/appunite/player/PVCamPlayerHelper;->mOnSurfaceSizeChangeListener:Lcom/appunite/player/PVCamPlayerHelper$OnSurfaceSizeChangeListener;

    return-void
.end method

.method public updateSurfaceView()V
    .locals 7

    .line 111
    iget-object v0, p0, Lcom/appunite/player/PVCamPlayerHelper;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    if-eqz v0, :cond_3

    .line 112
    invoke-virtual {v0}, Lcom/hisilicon/camplayer/HiCamPlayer;->getCurrentVideoWidth()I

    move-result v0

    .line 113
    iget-object v1, p0, Lcom/appunite/player/PVCamPlayerHelper;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    invoke-virtual {v1}, Lcom/hisilicon/camplayer/HiCamPlayer;->getCurrentVideoHeight()I

    move-result v1

    .line 116
    iget-object v2, p0, Lcom/appunite/player/PVCamPlayerHelper;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 117
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/appunite/player/PVCamPlayerHelper;->groupWidth:I

    .line 118
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/appunite/player/PVCamPlayerHelper;->groupHeight:I

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    const-string v2, "  screenHeight= "

    const/4 v3, 0x1

    const/16 v4, 0x500

    const-string v5, "lzq"

    if-ne v4, v0, :cond_0

    const/16 v6, 0x3c0

    if-ne v6, v1, :cond_0

    .line 122
    iput-boolean v3, p0, Lcom/appunite/player/PVCamPlayerHelper;->normalScreen:Z

    const-string v0, "<<<4\uff1a3>>>..1111111.height= "

    .line 123
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget v0, p0, Lcom/appunite/player/PVCamPlayerHelper;->groupHeight:I

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/appunite/player/PVCamPlayerHelper;->groupWidth:I

    if-eqz v1, :cond_3

    .line 125
    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<<4\uff1a3>>>..11111.\u8ba1\u7b97\u540e=  targetWidth= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/appunite/player/PVCamPlayerHelper;->groupHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-boolean v1, p0, Lcom/appunite/player/PVCamPlayerHelper;->normalScreen:Z

    iget v2, p0, Lcom/appunite/player/PVCamPlayerHelper;->groupHeight:I

    invoke-direct {p0, v1, v0, v2}, Lcom/appunite/player/PVCamPlayerHelper;->changeVideoViewSize(ZII)V

    goto/16 :goto_0

    :cond_0
    const/16 v6, 0x5a0

    if-ne v6, v0, :cond_1

    const/16 v6, 0x438

    if-ne v6, v1, :cond_1

    .line 131
    iput-boolean v3, p0, Lcom/appunite/player/PVCamPlayerHelper;->normalScreen:Z

    .line 132
    iget v0, p0, Lcom/appunite/player/PVCamPlayerHelper;->groupHeight:I

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/appunite/player/PVCamPlayerHelper;->groupWidth:I

    if-eqz v1, :cond_3

    .line 133
    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<<4\uff1a3>>>..222222.\u8ba1\u7b97\u540e=  targetWidth= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/appunite/player/PVCamPlayerHelper;->groupHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-boolean v1, p0, Lcom/appunite/player/PVCamPlayerHelper;->normalScreen:Z

    iget v2, p0, Lcom/appunite/player/PVCamPlayerHelper;->groupHeight:I

    invoke-direct {p0, v1, v0, v2}, Lcom/appunite/player/PVCamPlayerHelper;->changeVideoViewSize(ZII)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    if-ne v4, v0, :cond_2

    const/16 v0, 0x2d0

    if-ne v0, v1, :cond_2

    .line 140
    iput-boolean v2, p0, Lcom/appunite/player/PVCamPlayerHelper;->normalScreen:Z

    .line 141
    iget v0, p0, Lcom/appunite/player/PVCamPlayerHelper;->groupHeight:I

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/appunite/player/PVCamPlayerHelper;->groupWidth:I

    if-eqz v1, :cond_3

    .line 142
    div-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x10

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adaptation AP03 16:9 display  4444444   screenHeight= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/appunite/player/PVCamPlayerHelper;->groupHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-boolean v1, p0, Lcom/appunite/player/PVCamPlayerHelper;->normalScreen:Z

    iget v2, p0, Lcom/appunite/player/PVCamPlayerHelper;->groupHeight:I

    invoke-direct {p0, v1, v0, v2}, Lcom/appunite/player/PVCamPlayerHelper;->changeVideoViewSize(ZII)V

    goto :goto_0

    .line 147
    :cond_2
    iput-boolean v2, p0, Lcom/appunite/player/PVCamPlayerHelper;->normalScreen:Z

    .line 148
    iget v0, p0, Lcom/appunite/player/PVCamPlayerHelper;->groupHeight:I

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/appunite/player/PVCamPlayerHelper;->groupWidth:I

    if-eqz v1, :cond_3

    .line 149
    div-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x10

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<<16\uff1a9>>>..333333.\u8ba1\u7b97\u540e=  targetWidth= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "screenHeight= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/appunite/player/PVCamPlayerHelper;->groupHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-boolean v1, p0, Lcom/appunite/player/PVCamPlayerHelper;->normalScreen:Z

    iget v2, p0, Lcom/appunite/player/PVCamPlayerHelper;->groupHeight:I

    invoke-direct {p0, v1, v0, v2}, Lcom/appunite/player/PVCamPlayerHelper;->changeVideoViewSize(ZII)V

    :cond_3
    :goto_0
    return-void
.end method
