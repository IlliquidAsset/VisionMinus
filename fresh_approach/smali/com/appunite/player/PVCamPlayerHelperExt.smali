.class public Lcom/appunite/player/PVCamPlayerHelperExt;
.super Ljava/lang/Object;
.source "PVCamPlayerHelperExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appunite/player/PVCamPlayerHelperExt$OnDesListener;,
        Lcom/appunite/player/PVCamPlayerHelperExt$OnSurfaceSizeChangeListener;,
        Lcom/appunite/player/PVCamPlayerHelperExt$OnShowUpListener;,
        Lcom/appunite/player/PVCamPlayerHelperExt$PVCamPlayerHolder;
    }
.end annotation


# static fields
.field private static final HARD_DECODER:I = 0x70

.field private static final INIT:I = 0x0

.field private static final PLAYER_ASR_CHANGE:I = 0x1

.field private static final PREPARE:I = 0x64

.field private static final RECONNECT:I = 0x4

.field private static final RELEASE:I = 0x3

.field private static final SOFT_DECODER:I = 0x6f

.field private static final SWITCH:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static final base_url2_hard:Ljava/lang/String; = "rtsp://192.168.1.10:554/ap03:"

.field private static final base_url_soft:Ljava/lang/String; = "rtsp://192.168.1.10:554/ap03_720p:"


# instance fields
.field MODE_SCREEN_4_3:Z

.field private canInActivity:Z

.field private groupHeight:I

.field private groupWidth:I

.field private mCurDecoder:I

.field private mFrom:I

.field private mHandlerThread:Lcom/appunite/player/PVCamPlayerHandlerThread;

.field private mOnShowUpListener:Lcom/appunite/player/PVCamPlayerHelperExt$OnShowUpListener;

.field private mOnSurfaceSizeChangeListener:Lcom/appunite/player/PVCamPlayerHelperExt$OnSurfaceSizeChangeListener;

.field private mPlayerListener:Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerStateListener;

.field private mTextureView:Landroid/view/TextureView;

.field private mUsbDataManager:Lcom/hisilicon/camplayer/HiCamPlayer$PvUsbDataManage;

.field onDesListener:Lcom/appunite/player/PVCamPlayerHelperExt$OnDesListener;

.field private player:Lcom/hisilicon/camplayer/HiCamPlayer;

.field public running:Z

.field private surface:Landroid/graphics/SurfaceTexture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/appunite/player/PVCamPlayerHelperExt;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    const-string v0, "ffmpeg"

    .line 57
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "hi_camplayer_mediacodec"

    .line 58
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->canInActivity:Z

    const/4 v0, -0x1

    .line 43
    iput v0, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->mFrom:I

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->surface:Landroid/graphics/SurfaceTexture;

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->running:Z

    .line 50
    iput v0, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->groupHeight:I

    .line 51
    iput v0, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->groupWidth:I

    const/16 v1, 0x6f

    .line 53
    iput v1, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->mCurDecoder:I

    .line 497
    new-instance v1, Lcom/appunite/player/PVCamPlayerHelperExt$1;

    invoke-direct {v1, p0}, Lcom/appunite/player/PVCamPlayerHelperExt$1;-><init>(Lcom/appunite/player/PVCamPlayerHelperExt;)V

    iput-object v1, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->mUsbDataManager:Lcom/hisilicon/camplayer/HiCamPlayer$PvUsbDataManage;

    .line 524
    new-instance v1, Lcom/appunite/player/PVCamPlayerHelperExt$2;

    invoke-direct {v1, p0}, Lcom/appunite/player/PVCamPlayerHelperExt$2;-><init>(Lcom/appunite/player/PVCamPlayerHelperExt;)V

    iput-object v1, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->mPlayerListener:Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerStateListener;

    .line 597
    iput-boolean v0, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->MODE_SCREEN_4_3:Z

    .line 78
    new-instance v0, Lcom/appunite/player/PVCamPlayerHandlerThread;

    const-string v1, "PVCamPlayerHandlerThread"

    invoke-direct {v0, v1}, Lcom/appunite/player/PVCamPlayerHandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->mHandlerThread:Lcom/appunite/player/PVCamPlayerHandlerThread;

    .line 79
    invoke-virtual {v0}, Lcom/appunite/player/PVCamPlayerHandlerThread;->start()V

    .line 80
    iget-object v0, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->mHandlerThread:Lcom/appunite/player/PVCamPlayerHandlerThread;

    invoke-virtual {v0}, Lcom/appunite/player/PVCamPlayerHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/appunite/player/PVCamPlayerHelperExt;->setCustomerHandler(Landroid/os/Looper;)V

    .line 81
    invoke-direct {p0}, Lcom/appunite/player/PVCamPlayerHelperExt;->setRtspUsbManagerStartLister()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appunite/player/PVCamPlayerHelperExt$1;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/appunite/player/PVCamPlayerHelperExt;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/appunite/player/PVCamPlayerHelperExt;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/appunite/player/PVCamPlayerHelperExt;->init()V

    return-void
.end method

.method static synthetic access$1100(Lcom/appunite/player/PVCamPlayerHelperExt;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/appunite/player/PVCamPlayerHelperExt;->release()V

    return-void
.end method

.method static synthetic access$1200(Lcom/appunite/player/PVCamPlayerHelperExt;)Z
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/appunite/player/PVCamPlayerHelperExt;->reconnect()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/appunite/player/PVCamPlayerHelperExt;)Lcom/hisilicon/camplayer/HiCamPlayer;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/appunite/player/PVCamPlayerHelperExt;)Lcom/appunite/player/PVCamPlayerHelperExt$OnShowUpListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->mOnShowUpListener:Lcom/appunite/player/PVCamPlayerHelperExt$OnShowUpListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/appunite/player/PVCamPlayerHelperExt;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/appunite/player/PVCamPlayerHelperExt;->sendReconnect(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/appunite/player/PVCamPlayerHelperExt;)Lcom/appunite/player/PVCamPlayerHandlerThread;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->mHandlerThread:Lcom/appunite/player/PVCamPlayerHandlerThread;

    return-object p0
.end method

.method static synthetic access$602(Lcom/appunite/player/PVCamPlayerHelperExt;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->mCurDecoder:I

    return p1
.end method

.method static synthetic access$700(Lcom/appunite/player/PVCamPlayerHelperExt;)Landroid/view/TextureView;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->mTextureView:Landroid/view/TextureView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/appunite/player/PVCamPlayerHelperExt;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/appunite/player/PVCamPlayerHelperExt;->updateSurfaceView()V

    return-void
.end method

.method static synthetic access$900(Lcom/appunite/player/PVCamPlayerHelperExt;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/appunite/player/PVCamPlayerHelperExt;->prepare()V

    return-void
.end method

.method private changeVideoViewSize(ZIIII)V
    .locals 8

    .line 193
    sget-object v0, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    const-string v1, "==================== changeVideoViewSize \u6539\u53d8\u89c6\u9891\u5c3a\u5bf8"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v2, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->mOnSurfaceSizeChangeListener:Lcom/appunite/player/PVCamPlayerHelperExt$OnSurfaceSizeChangeListener;

    if-eqz v2, :cond_0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 195
    invoke-interface/range {v2 .. v7}, Lcom/appunite/player/PVCamPlayerHelperExt$OnSurfaceSizeChangeListener;->onSurfaceSizeChange(ZIIII)V

    :cond_0
    return-void
.end method

.method public static getHelper()Lcom/appunite/player/PVCamPlayerHelperExt;
    .locals 1

    .line 70
    invoke-static {}, Lcom/appunite/player/PVCamPlayerHelperExt$PVCamPlayerHolder;->access$100()Lcom/appunite/player/PVCamPlayerHelperExt;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 4

    const/4 v0, 0x0

    .line 218
    iput-boolean v0, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->canInActivity:Z

    const/4 v0, 0x1

    .line 219
    iput-boolean v0, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->running:Z

    .line 220
    sget-object v1, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "================== init current thread = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v1, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    if-nez v1, :cond_0

    .line 222
    new-instance v1, Lcom/hisilicon/camplayer/HiCamPlayer;

    invoke-direct {v1}, Lcom/hisilicon/camplayer/HiCamPlayer;-><init>()V

    iput-object v1, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    .line 224
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/NewVisionPlus/data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".h265"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hisilicon/camplayer/HiCamPlayer;->setSaveUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 227
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 230
    :cond_0
    sget-object v1, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    const-string v2, "================== reset"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v1, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    invoke-virtual {v1}, Lcom/hisilicon/camplayer/HiCamPlayer;->reset()V

    .line 232
    sget-object v1, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    const-string v2, "================== reset over"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :goto_0
    iget-object v1, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    invoke-virtual {v1, v0}, Lcom/hisilicon/camplayer/HiCamPlayer;->setScreenOnWhilePlaying(Z)V

    .line 235
    invoke-static {}, Lcom/powervision/gcs/usb2/RtspUsbManager;->get()Lcom/powervision/gcs/usb2/RtspUsbManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/gcs/usb2/RtspUsbManager;->clearBuffer()V

    .line 236
    sput-boolean v0, Lcom/powervision/gcs/usb2/RtspUsbManager;->receiveable:Z

    .line 237
    iget-object v0, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    new-instance v1, Landroid/view/Surface;

    iget-object v2, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->surface:Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Lcom/hisilicon/camplayer/HiCamPlayer;->setSurface(Landroid/view/Surface;)V

    .line 238
    sget-object v0, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    const-string v1, "================== setDisplay"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-direct {p0}, Lcom/appunite/player/PVCamPlayerHelperExt;->updateRtspListener()V

    return-void
.end method

.method private onPlayerSizeChange(II)V
    .locals 12

    const/16 v0, 0x3c0

    const/16 v1, 0x500

    const-string v2, "  screenHeight= "

    const/4 v3, 0x1

    if-ne v1, p1, :cond_0

    if-ne v0, p2, :cond_0

    .line 141
    iput-boolean v3, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->MODE_SCREEN_4_3:Z

    .line 142
    sget-object v0, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    const-string v1, "<<<4\uff1a3>>>..1111111.height= "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget v0, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->groupHeight:I

    if-eqz v0, :cond_4

    iget v1, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->groupWidth:I

    if-eqz v1, :cond_4

    .line 144
    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v5, v0, 0x4

    .line 145
    sget-object v0, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<<4\uff1a3>>>..11111.\u8ba1\u7b97\u540e=  targetWidth= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->groupHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-boolean v4, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->MODE_SCREEN_4_3:Z

    iget v6, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->groupHeight:I

    move-object v3, p0

    move v7, p1

    move v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/appunite/player/PVCamPlayerHelperExt;->changeVideoViewSize(ZIIII)V

    goto/16 :goto_0

    :cond_0
    const/16 v4, 0x5a0

    const-string v5, "<<<4\uff1a3>>>..222222.\u8ba1\u7b97\u540e=  targetWidth= "

    if-ne v4, p1, :cond_1

    const/16 v4, 0x438

    if-ne v4, p2, :cond_1

    .line 150
    iput-boolean v3, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->MODE_SCREEN_4_3:Z

    .line 151
    iget v0, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->groupHeight:I

    if-eqz v0, :cond_4

    iget v1, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->groupWidth:I

    if-eqz v1, :cond_4

    .line 152
    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v8, v0, 0x4

    .line 153
    sget-object v0, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->groupHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-boolean v7, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->MODE_SCREEN_4_3:Z

    iget v9, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->groupHeight:I

    move-object v6, p0

    move v10, p1

    move v11, p2

    invoke-direct/range {v6 .. v11}, Lcom/appunite/player/PVCamPlayerHelperExt;->changeVideoViewSize(ZIIII)V

    goto/16 :goto_0

    :cond_1
    const/4 v4, 0x0

    const/16 v6, 0x2d0

    if-ne v1, p1, :cond_2

    if-ne v6, p2, :cond_2

    .line 159
    iput-boolean v4, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->MODE_SCREEN_4_3:Z

    .line 160
    iget v0, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->groupHeight:I

    if-eqz v0, :cond_4

    iget v1, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->groupWidth:I

    if-eqz v1, :cond_4

    .line 161
    div-int/lit8 v0, v0, 0x9

    mul-int/lit8 v3, v0, 0x10

    .line 162
    sget-object v0, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adaptation AP03 16:9 display  4444444   screenHeight= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->groupHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-boolean v2, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->MODE_SCREEN_4_3:Z

    iget v4, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->groupHeight:I

    move-object v1, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/appunite/player/PVCamPlayerHelperExt;->changeVideoViewSize(ZIIII)V

    goto/16 :goto_0

    :cond_2
    if-ne v0, p1, :cond_3

    if-ne v6, p2, :cond_3

    .line 166
    iput-boolean v3, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->MODE_SCREEN_4_3:Z

    .line 167
    iget v0, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->groupHeight:I

    if-eqz v0, :cond_4

    iget v1, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->groupWidth:I

    if-eqz v1, :cond_4

    .line 168
    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v8, v0, 0x4

    .line 169
    sget-object v0, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->groupHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-boolean v7, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->MODE_SCREEN_4_3:Z

    iget v9, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->groupHeight:I

    move-object v6, p0

    move v10, p1

    move v11, p2

    invoke-direct/range {v6 .. v11}, Lcom/appunite/player/PVCamPlayerHelperExt;->changeVideoViewSize(ZIIII)V

    goto :goto_0

    .line 174
    :cond_3
    iput-boolean v4, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->MODE_SCREEN_4_3:Z

    .line 175
    iget v0, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->groupHeight:I

    if-eqz v0, :cond_4

    iget v1, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->groupWidth:I

    if-eqz v1, :cond_4

    .line 176
    div-int/lit8 v0, v0, 0x9

    mul-int/lit8 v3, v0, 0x10

    .line 177
    sget-object v0, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<<16\uff1a9>>>..333333.\u8ba1\u7b97\u540e=  targetWidth= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "screenHeight= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->groupHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-boolean v2, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->MODE_SCREEN_4_3:Z

    iget v4, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->groupHeight:I

    move-object v1, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/appunite/player/PVCamPlayerHelperExt;->changeVideoViewSize(ZIIII)V

    :cond_4
    :goto_0
    return-void
.end method

.method private prepare()V
    .locals 2

    .line 204
    sget-object v0, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    const-string v1, " ====================== prepare start \u51c6\u5907\u64ad\u653e"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0}, Lcom/hisilicon/camplayer/HiCamPlayer;->reset()V

    .line 207
    invoke-static {}, Lcom/powervision/gcs/usb2/RtspUsbManager;->get()Lcom/powervision/gcs/usb2/RtspUsbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/RtspUsbManager;->clearBuffer()V

    .line 209
    :cond_0
    invoke-static {}, Lcom/powervision/gcs/usb2/RtspUsbManager;->get()Lcom/powervision/gcs/usb2/RtspUsbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/RtspUsbManager;->startAOAConnect()V

    .line 210
    sget-object v0, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    const-string v1, " ====================== prepare end \u51c6\u5907\u64ad\u653e"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private reconnect()Z
    .locals 6

    const-string v0, "================== \u7ebf\u7a0b\u6536\u5230restart IOException"

    .line 249
    iget-object v1, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    .line 250
    sget-object v1, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    const-string v4, "================== reconnect  "

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-static {}, Lcom/powervision/gcs/usb2/RtspUsbManager;->get()Lcom/powervision/gcs/usb2/RtspUsbManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/gcs/usb2/RtspUsbManager;->clearBuffer()V

    .line 252
    iget-object v1, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    invoke-virtual {v1}, Lcom/hisilicon/camplayer/HiCamPlayer;->reset()V

    .line 253
    sget-object v1, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    const-string v4, "================== \u91cd\u8fde\u6e05\u7a7a handler messageQueue  "

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v1, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->mHandlerThread:Lcom/appunite/player/PVCamPlayerHandlerThread;

    invoke-virtual {v1}, Lcom/appunite/player/PVCamPlayerHandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v4, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->mHandlerThread:Lcom/appunite/player/PVCamPlayerHandlerThread;

    invoke-virtual {v4}, Lcom/appunite/player/PVCamPlayerHandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 256
    :try_start_0
    sget-object v1, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    const-string v4, " ================== \u6ce8\u518c\u63a5\u53e3 0"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v1, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    iget-object v4, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->mPlayerListener:Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerStateListener;

    invoke-virtual {v1, v4}, Lcom/hisilicon/camplayer/HiCamPlayer;->setHiCamPlayerListener(Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerStateListener;)V

    .line 259
    iget-object v1, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    iget-object v4, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->mUsbDataManager:Lcom/hisilicon/camplayer/HiCamPlayer$PvUsbDataManage;

    invoke-virtual {v1, v4}, Lcom/hisilicon/camplayer/HiCamPlayer;->setUsDataManager(Lcom/hisilicon/camplayer/HiCamPlayer$PvUsbDataManage;)V

    .line 260
    sget-object v1, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    const-string v4, "================== \u7ebf\u7a0b\u6536\u5230restart 22222222"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget v1, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->mFrom:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "rtsp://192.168.42.10:554/livestream/12:trans=wifi"

    const/4 v5, 0x2

    if-ne v1, v5, :cond_4

    .line 262
    :try_start_1
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 263
    iget-object v1, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    invoke-virtual {v1, v4}, Lcom/hisilicon/camplayer/HiCamPlayer;->setDataSource(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 264
    :cond_0
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result v1

    const/16 v4, 0x6f

    if-ne v1, v5, :cond_2

    .line 266
    iget v1, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->mCurDecoder:I

    if-ne v1, v4, :cond_1

    const-string v1, "rtsp://192.168.1.10:554/ap03_720p:trans=usb"

    .line 268
    sget-object v4, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    const-string v5, "================== init AP03 USB2  soft"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "rtsp://192.168.1.10:554/ap03:trans=usb"

    .line 271
    sget-object v4, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    const-string v5, "================== init AP03 USB2  hard"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :goto_0
    iget-object v4, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    invoke-virtual {v4, v1}, Lcom/hisilicon/camplayer/HiCamPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_2

    .line 278
    :cond_2
    iget v1, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->mCurDecoder:I

    if-ne v1, v4, :cond_3

    const-string v1, "rtsp://192.168.1.10:554/ap03_720p:trans=wifi"

    .line 280
    sget-object v4, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    const-string v5, "================== init AP03 wifi  soft"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string v1, "rtsp://192.168.1.10:554/ap03:trans=wifi"

    .line 283
    sget-object v4, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    const-string v5, "================== init AP03 wifi  hard"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :goto_1
    iget-object v4, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    invoke-virtual {v4, v1}, Lcom/hisilicon/camplayer/HiCamPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_2

    .line 291
    :cond_4
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result v1

    if-ne v1, v2, :cond_5

    .line 292
    sget-object v1, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    const-string v5, "================== \u521d\u59cb\u5316USB1"

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v1, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    invoke-virtual {v1, v4}, Lcom/hisilicon/camplayer/HiCamPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_2

    .line 294
    :cond_5
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result v1

    if-ne v1, v5, :cond_6

    .line 295
    iget-object v1, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    const-string v4, "rtsp://192.168.1.10:554/livestream/12:trans=usb"

    invoke-virtual {v1, v4}, Lcom/hisilicon/camplayer/HiCamPlayer;->setDataSource(Ljava/lang/String;)V

    .line 296
    sget-object v1, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    const-string v4, "================== \u521d\u59cb\u5316 W4 USB2"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 298
    :cond_6
    sget-object v1, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    const-string v4, "================== \u521d\u59cb\u5316 W4 wifi"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v1, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    const-string v4, "rtsp://192.168.1.10:554/livestream/12:trans=wifi"

    invoke-virtual {v1, v4}, Lcom/hisilicon/camplayer/HiCamPlayer;->setDataSource(Ljava/lang/String;)V

    .line 302
    :goto_2
    sget-object v1, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    const-string v4, "================== \u7ebf\u7a0b\u6536\u5230restart 33333333"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v1, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    iget v4, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->mCurDecoder:I

    invoke-virtual {v1, v4}, Lcom/hisilicon/camplayer/HiCamPlayer;->prepare(I)V

    .line 304
    iget-object v1, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    invoke-virtual {v1}, Lcom/hisilicon/camplayer/HiCamPlayer;->start()V

    .line 306
    sget-object v1, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    const-string v4, "================== \u7ebf\u7a0b\u6536\u5230restart 4444444"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    .line 323
    sget-object v2, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception v0

    .line 316
    sget-object v1, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    const-string v2, "================== \u7ebf\u7a0b\u6536\u5230restart IllegalStateException"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_3

    :catch_2
    move-exception v1

    .line 309
    sget-object v2, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 329
    :cond_7
    sget-object v0, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    const-string v1, " ================== player == null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const/4 v2, 0x0

    :goto_4
    return v2
.end method

.method private release()V
    .locals 4

    .line 361
    sget-object v0, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    const-string v1, "==================   release \u6e05\u7a7ahandler messageQueue! "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v0, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->mHandlerThread:Lcom/appunite/player/PVCamPlayerHandlerThread;

    invoke-virtual {v0}, Lcom/appunite/player/PVCamPlayerHandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->mHandlerThread:Lcom/appunite/player/PVCamPlayerHandlerThread;

    invoke-virtual {v1}, Lcom/appunite/player/PVCamPlayerHandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 363
    iget-object v0, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    if-eqz v0, :cond_0

    .line 364
    sget-object v0, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    const-string v1, "==================  \u56de\u6536player \u5e72\u6389\u63a5\u53e3"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v0, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hisilicon/camplayer/HiCamPlayer;->setHiCamPlayerListener(Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerStateListener;)V

    .line 366
    iget-object v0, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    invoke-virtual {v0, v1}, Lcom/hisilicon/camplayer/HiCamPlayer;->setUsDataManager(Lcom/hisilicon/camplayer/HiCamPlayer$PvUsbDataManage;)V

    .line 367
    sget-object v0, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    const-string v2, "================== \u56de\u6536player reset"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v0, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    invoke-virtual {v0}, Lcom/hisilicon/camplayer/HiCamPlayer;->reset()V

    .line 369
    sget-object v0, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    const-string v2, "================== \u56de\u6536player release"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x64

    .line 371
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 373
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 375
    :goto_0
    iget-object v0, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    invoke-virtual {v0}, Lcom/hisilicon/camplayer/HiCamPlayer;->release()V

    .line 376
    iput-object v1, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    :cond_0
    const/4 v0, 0x1

    .line 378
    iput-boolean v0, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->canInActivity:Z

    .line 379
    sget-object v0, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    const-string v1, "==================  \u56de\u6536player \u5b8c\u6210"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v0, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->onDesListener:Lcom/appunite/player/PVCamPlayerHelperExt$OnDesListener;

    if-eqz v0, :cond_1

    .line 381
    invoke-interface {v0}, Lcom/appunite/player/PVCamPlayerHelperExt$OnDesListener;->DesComplete()V

    :cond_1
    return-void
.end method

.method private sendReconnect(I)V
    .locals 3

    .line 342
    sget-object p1, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "================== \u53d1\u9001\u91cd\u8fderestart running:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->running:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-boolean p1, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->running:Z

    if-nez p1, :cond_0

    return-void

    .line 348
    :cond_0
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->isUSB2_CONFIRM()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x4

    goto :goto_0

    :cond_1
    const/16 p1, 0x64

    .line 353
    :goto_0
    sget-object v0, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "================== \u53d1\u9001\u91cd\u8fde msgWhat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v0, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->mHandlerThread:Lcom/appunite/player/PVCamPlayerHandlerThread;

    invoke-virtual {v0}, Lcom/appunite/player/PVCamPlayerHandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private setCustomerHandler(Landroid/os/Looper;)V
    .locals 2

    .line 626
    iget-object v0, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->mHandlerThread:Lcom/appunite/player/PVCamPlayerHandlerThread;

    new-instance v1, Lcom/appunite/player/PVCamPlayerHelperExt$3;

    invoke-direct {v1, p0, p1}, Lcom/appunite/player/PVCamPlayerHelperExt$3;-><init>(Lcom/appunite/player/PVCamPlayerHelperExt;Landroid/os/Looper;)V

    invoke-virtual {v0, v1}, Lcom/appunite/player/PVCamPlayerHandlerThread;->setCustomerHandler(Landroid/os/Handler;)V

    return-void
.end method

.method private setRtspUsbManagerStartLister()V
    .locals 2

    .line 688
    invoke-static {}, Lcom/powervision/gcs/usb2/RtspUsbManager;->get()Lcom/powervision/gcs/usb2/RtspUsbManager;

    move-result-object v0

    new-instance v1, Lcom/appunite/player/PVCamPlayerHelperExt$4;

    invoke-direct {v1, p0}, Lcom/appunite/player/PVCamPlayerHelperExt$4;-><init>(Lcom/appunite/player/PVCamPlayerHelperExt;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/RtspUsbManager;->setStartListener(Lcom/powervision/gcs/usb2/RtspUsbManager$OnStartCallBack;)V

    return-void
.end method

.method private updateRtspListener()V
    .locals 8

    const-wide/16 v0, 0x1f4

    .line 390
    :try_start_0
    sget-object v2, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    const-string v3, "================== \u6ce8\u518c\u63a5\u53e3"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v2, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    iget-object v3, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->mPlayerListener:Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerStateListener;

    invoke-virtual {v2, v3}, Lcom/hisilicon/camplayer/HiCamPlayer;->setHiCamPlayerListener(Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerStateListener;)V

    .line 394
    iget-object v2, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    iget-object v3, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->mUsbDataManager:Lcom/hisilicon/camplayer/HiCamPlayer$PvUsbDataManage;

    invoke-virtual {v2, v3}, Lcom/hisilicon/camplayer/HiCamPlayer;->setUsDataManager(Lcom/hisilicon/camplayer/HiCamPlayer$PvUsbDataManage;)V

    .line 395
    sget-object v2, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "================== \u5efa\u7acbRTSP\u8fde\u63a5 from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->mFrom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget v2, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->mFrom:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "rtsp://192.168.42.10:554/livestream/12:trans=wifi"

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne v2, v5, :cond_4

    .line 397
    :try_start_1
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 398
    sget-object v2, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    const-string v4, "==================  \u521d\u59cb\u5316 AP03 USB1"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v2, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    invoke-virtual {v2, v3}, Lcom/hisilicon/camplayer/HiCamPlayer;->setDataSource(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 400
    :cond_0
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result v2

    const/16 v3, 0x6f

    if-ne v2, v5, :cond_2

    .line 401
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 404
    iget v2, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->mCurDecoder:I

    if-ne v2, v3, :cond_1

    const-string v2, "rtsp://192.168.1.10:554/ap03_720p:trans=usb"

    .line 406
    sget-object v3, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    const-string v6, "==================  \u521d\u59cb\u5316 AP03 USB2 \u8f6f\u89e3 "

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v2, "rtsp://192.168.1.10:554/ap03:trans=usb"

    .line 409
    sget-object v3, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    const-string v6, "==================  \u521d\u59cb\u5316 AP03 USB2 \u786c\u89e3  "

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :goto_0
    iget-object v3, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    invoke-virtual {v3, v2}, Lcom/hisilicon/camplayer/HiCamPlayer;->setDataSource(Ljava/lang/String;)V

    .line 413
    sget-object v2, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "================== \u521d\u59cb\u5316 AP03 USB2  \u65f6\u957f: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 415
    :cond_2
    sget-object v2, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    const-string v4, "================== \u521d\u59cb\u5316 AP03 wifi"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget v2, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->mCurDecoder:I

    if-ne v2, v3, :cond_3

    const-string v2, "rtsp://192.168.1.10:554/ap03_720p:trans=wifi"

    .line 419
    sget-object v3, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    const-string v4, "==================  \u521d\u59cb\u5316 AP03 wifi \u8f6f\u89e3 "

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string v2, "rtsp://192.168.1.10:554/ap03:trans=wifi"

    .line 422
    sget-object v3, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    const-string v4, "==================  \u521d\u59cb\u5316 AP03 wifi \u786c\u89e3 "

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :goto_1
    iget-object v3, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    invoke-virtual {v3, v2}, Lcom/hisilicon/camplayer/HiCamPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_2

    .line 428
    :cond_4
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result v2

    if-ne v2, v4, :cond_5

    .line 429
    sget-object v2, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    const-string v4, "==================  \u521d\u59cb\u5316 W4 USB1"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v2, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    invoke-virtual {v2, v3}, Lcom/hisilicon/camplayer/HiCamPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_2

    .line 431
    :cond_5
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result v2

    if-ne v2, v5, :cond_6

    .line 432
    iget-object v2, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    const-string v3, "rtsp://192.168.1.10:554/livestream/12:trans=usb"

    invoke-virtual {v2, v3}, Lcom/hisilicon/camplayer/HiCamPlayer;->setDataSource(Ljava/lang/String;)V

    .line 433
    sget-object v2, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    const-string v3, "================== \u521d\u59cb\u5316 W4 USB2"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 435
    :cond_6
    sget-object v2, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    const-string v3, "================== \u521d\u59cb\u5316 W4 wifi"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v2, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    const-string v3, "rtsp://192.168.1.10:554/livestream/12:trans=wifi"

    invoke-virtual {v2, v3}, Lcom/hisilicon/camplayer/HiCamPlayer;->setDataSource(Ljava/lang/String;)V

    .line 440
    :goto_2
    sget-object v2, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    const-string v3, "================== befroe prepare"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v2, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    iget v3, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->mCurDecoder:I

    invoke-virtual {v2, v3}, Lcom/hisilicon/camplayer/HiCamPlayer;->prepare(I)V

    .line 442
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 443
    sget-object v4, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    const-string v5, "================== start  "

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v4, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    invoke-virtual {v4}, Lcom/hisilicon/camplayer/HiCamPlayer;->start()V

    .line 445
    sget-object v4, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "================== start over time "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_6

    :catch_0
    move-exception v2

    .line 465
    sget-object v3, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "================== setDataSourceError 44444 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 468
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 470
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_3
    const/4 v0, 0x4

    .line 472
    invoke-direct {p0, v0}, Lcom/appunite/player/PVCamPlayerHelperExt;->sendReconnect(I)V

    goto :goto_6

    :catch_2
    move-exception v2

    .line 456
    sget-object v3, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "================== setDataSourceError 333333 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 459
    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    .line 461
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_4
    const/4 v0, 0x6

    .line 463
    invoke-direct {p0, v0}, Lcom/appunite/player/PVCamPlayerHelperExt;->sendReconnect(I)V

    goto :goto_6

    :catch_4
    move-exception v2

    .line 447
    sget-object v3, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "================== setDataSourceError 22222 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 450
    :try_start_4
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    .line 452
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_5
    const/4 v0, 0x3

    .line 454
    invoke-direct {p0, v0}, Lcom/appunite/player/PVCamPlayerHelperExt;->sendReconnect(I)V

    :goto_6
    return-void
.end method

.method private updateSurfaceView()V
    .locals 5

    .line 128
    iget-object v0, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0}, Lcom/hisilicon/camplayer/HiCamPlayer;->getCurrentVideoWidth()I

    move-result v0

    .line 130
    iget-object v1, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    invoke-virtual {v1}, Lcom/hisilicon/camplayer/HiCamPlayer;->getCurrentVideoHeight()I

    move-result v1

    .line 131
    sget-object v2, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<<000000>>>..videoWidth= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "   videoHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 133
    invoke-direct {p0, v0, v1}, Lcom/appunite/player/PVCamPlayerHelperExt;->onPlayerSizeChange(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getPlayer()Lcom/hisilicon/camplayer/HiCamPlayer;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->player:Lcom/hisilicon/camplayer/HiCamPlayer;

    return-object v0
.end method

.method public initCamPlayer(Landroid/view/TextureView;Landroid/graphics/SurfaceTexture;III)V
    .locals 3

    .line 104
    sget-object v0, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=================initCamPlayer()===screenHeight= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  screenWidth= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iput p3, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->mFrom:I

    .line 107
    iput p4, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->groupHeight:I

    .line 108
    iput p5, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->groupWidth:I

    .line 109
    iput-object p1, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->mTextureView:Landroid/view/TextureView;

    .line 110
    iput-object p2, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->surface:Landroid/graphics/SurfaceTexture;

    const/16 p1, 0x70

    .line 111
    iput p1, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->mCurDecoder:I

    .line 114
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 115
    sget-object p1, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    const-string p2, " =================initCamPlayer()  ADD PREPARE"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x64

    goto :goto_0

    .line 118
    :cond_0
    sget-object p1, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    const-string p2, " =================initCamPlayer()   ADD INIT"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 121
    :goto_0
    iget-object p2, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->mHandlerThread:Lcom/appunite/player/PVCamPlayerHandlerThread;

    invoke-virtual {p2}, Lcom/appunite/player/PVCamPlayerHandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public isCanInActivity()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->canInActivity:Z

    return v0
.end method

.method public prepareToDes()V
    .locals 3

    .line 480
    sget-object v0, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    const-string v1, "========== prepareToDes"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v0, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->onDesListener:Lcom/appunite/player/PVCamPlayerHelperExt$OnDesListener;

    if-eqz v0, :cond_0

    .line 482
    invoke-interface {v0}, Lcom/appunite/player/PVCamPlayerHelperExt$OnDesListener;->startDes()V

    :cond_0
    const/4 v0, 0x0

    .line 484
    iput-boolean v0, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->running:Z

    .line 485
    sput-boolean v0, Lcom/powervision/gcs/usb2/RtspUsbManager;->receiveable:Z

    .line 487
    sget-object v0, Lcom/appunite/player/PVCamPlayerHelperExt;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "============= prepareToDes SEND RELEASE running :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->running:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v0, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->mHandlerThread:Lcom/appunite/player/PVCamPlayerHandlerThread;

    invoke-virtual {v0}, Lcom/appunite/player/PVCamPlayerHandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->mHandlerThread:Lcom/appunite/player/PVCamPlayerHandlerThread;

    invoke-virtual {v1}, Lcom/appunite/player/PVCamPlayerHandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 489
    iget-object v0, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->mHandlerThread:Lcom/appunite/player/PVCamPlayerHandlerThread;

    invoke-virtual {v0}, Lcom/appunite/player/PVCamPlayerHandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x0

    .line 491
    iput-object v0, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->mTextureView:Landroid/view/TextureView;

    return-void
.end method

.method public setOnDesListener(Lcom/appunite/player/PVCamPlayerHelperExt$OnDesListener;)V
    .locals 0

    .line 611
    iput-object p1, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->onDesListener:Lcom/appunite/player/PVCamPlayerHelperExt$OnDesListener;

    return-void
.end method

.method public setOnShowUpListener(Lcom/appunite/player/PVCamPlayerHelperExt$OnShowUpListener;)V
    .locals 0

    .line 588
    iput-object p1, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->mOnShowUpListener:Lcom/appunite/player/PVCamPlayerHelperExt$OnShowUpListener;

    return-void
.end method

.method public setOnSurfaceSizeChangeListener(Lcom/appunite/player/PVCamPlayerHelperExt$OnSurfaceSizeChangeListener;)V
    .locals 0

    .line 601
    iput-object p1, p0, Lcom/appunite/player/PVCamPlayerHelperExt;->mOnSurfaceSizeChangeListener:Lcom/appunite/player/PVCamPlayerHelperExt$OnSurfaceSizeChangeListener;

    return-void
.end method
