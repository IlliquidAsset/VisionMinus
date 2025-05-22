.class public Lcom/xiao/nicevideoplayer/NiceVideoPlayer;
.super Landroid/widget/FrameLayout;
.source "NiceVideoPlayer.java"

# interfaces
.implements Lcom/xiao/nicevideoplayer/INiceVideoPlayer;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# static fields
.field public static final MODE_FULL_SCREEN:I = 0xb

.field public static final MODE_NORMAL:I = 0xa

.field public static final MODE_TINY_WINDOW:I = 0xc

.field public static final STATE_BUFFERING_PAUSED:I = 0x6

.field public static final STATE_BUFFERING_PLAYING:I = 0x5

.field public static final STATE_COMPLETED:I = 0x7

.field public static final STATE_ERROR:I = -0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_PAUSED:I = 0x4

.field public static final STATE_PLAYING:I = 0x3

.field public static final STATE_PREPARED:I = 0x2

.field public static final STATE_PREPARING:I = 0x1

.field public static final TYPE_IJK:I = 0x6f

.field public static final TYPE_NATIVE:I = 0xde


# instance fields
.field private continueFromLastPosition:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBufferPercentage:I

.field private mContainer:Landroid/widget/FrameLayout;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;

.field private mCurrentMode:I

.field private mCurrentState:I

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLooping:Z

.field private mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

.field private mOnBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

.field private mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

.field private mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

.field private mOnVideoSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

.field private mPlayerType:I

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTextureView:Lcom/xiao/nicevideoplayer/NiceTextureView;

.field private mUrl:Ljava/lang/String;

.field private skipToPosition:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, p1, v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0x6f

    .line 89
    iput p2, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mPlayerType:I

    const/4 p2, 0x0

    .line 90
    iput p2, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mCurrentState:I

    const/16 p2, 0xa

    .line 91
    iput p2, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mCurrentMode:I

    const/4 p2, 0x1

    .line 104
    iput-boolean p2, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->continueFromLastPosition:Z

    .line 461
    new-instance p2, Lcom/xiao/nicevideoplayer/NiceVideoPlayer$1;

    invoke-direct {p2, p0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer$1;-><init>(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;)V

    iput-object p2, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 481
    new-instance p2, Lcom/xiao/nicevideoplayer/NiceVideoPlayer$2;

    invoke-direct {p2, p0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer$2;-><init>(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;)V

    iput-object p2, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mOnVideoSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 490
    new-instance p2, Lcom/xiao/nicevideoplayer/NiceVideoPlayer$3;

    invoke-direct {p2, p0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer$3;-><init>(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;)V

    iput-object p2, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 504
    new-instance p2, Lcom/xiao/nicevideoplayer/NiceVideoPlayer$4;

    invoke-direct {p2, p0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer$4;-><init>(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;)V

    iput-object p2, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 519
    new-instance p2, Lcom/xiao/nicevideoplayer/NiceVideoPlayer$5;

    invoke-direct {p2, p0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer$5;-><init>(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;)V

    iput-object p2, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 565
    new-instance p2, Lcom/xiao/nicevideoplayer/NiceVideoPlayer$6;

    invoke-direct {p2, p0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer$6;-><init>(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;)V

    iput-object p2, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mOnBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 115
    iput-object p1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mContext:Landroid/content/Context;

    .line 116
    invoke-direct {p0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mCurrentState:I

    return p0
.end method

.method static synthetic access$002(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;I)I
    .locals 0

    .line 26
    iput p1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mCurrentState:I

    return p1
.end method

.method static synthetic access$100(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;)Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mController:Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->continueFromLastPosition:Z

    return p0
.end method

.method static synthetic access$300(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;)Landroid/content/Context;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;)J
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->skipToPosition:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;)Lcom/xiao/nicevideoplayer/NiceTextureView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mTextureView:Lcom/xiao/nicevideoplayer/NiceTextureView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;)Landroid/widget/FrameLayout;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$802(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;I)I
    .locals 0

    .line 26
    iput p1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mBufferPercentage:I

    return p1
.end method

.method private addTextureView()V
    .locals 4

    .line 402
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mTextureView:Lcom/xiao/nicevideoplayer/NiceTextureView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 403
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/16 v2, 0x11

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 407
    iget-object v1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mTextureView:Lcom/xiao/nicevideoplayer/NiceTextureView;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private init()V
    .locals 2

    .line 120
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mContainer:Landroid/widget/FrameLayout;

    const/4 v1, -0x1

    .line 121
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 122
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 125
    iget-object v1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initAudioManager()V
    .locals 4

    .line 361
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 362
    invoke-virtual {p0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    .line 363
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    :cond_0
    return-void
.end method

.method private initMediaPlayer()V
    .locals 7

    .line 368
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-nez v0, :cond_3

    .line 369
    iget v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mPlayerType:I

    const/16 v1, 0xde

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    .line 379
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-direct {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 380
    iget-boolean v1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mLooping:Z

    if-eqz v1, :cond_0

    .line 381
    invoke-interface {v0, v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setLooping(Z)V

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const-wide/16 v3, 0x64

    const-string v1, "analyzemaxduration"

    invoke-virtual {v0, v2, v1, v3, v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 384
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const-wide/16 v3, 0x2800

    const-string v1, "probesize"

    invoke-virtual {v0, v2, v1, v3, v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 385
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const-string v1, "flush_packets"

    const-wide/16 v3, 0x1

    invoke-virtual {v0, v2, v1, v3, v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 386
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const-wide/16 v1, 0x0

    const/4 v5, 0x4

    const-string v6, "packet-buffering"

    invoke-virtual {v0, v5, v6, v1, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 387
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const-string v1, "framedrop"

    invoke-virtual {v0, v5, v1, v3, v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    goto :goto_0

    .line 371
    :cond_1
    new-instance v0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-direct {v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 372
    iget-boolean v1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mLooping:Z

    if-eqz v1, :cond_2

    .line 373
    invoke-interface {v0, v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setLooping(Z)V

    .line 390
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setAudioStreamType(I)V

    :cond_3
    return-void
.end method

.method private initTextureView()V
    .locals 2

    .line 395
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mTextureView:Lcom/xiao/nicevideoplayer/NiceTextureView;

    if-nez v0, :cond_0

    .line 396
    new-instance v0, Lcom/xiao/nicevideoplayer/NiceTextureView;

    iget-object v1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xiao/nicevideoplayer/NiceTextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mTextureView:Lcom/xiao/nicevideoplayer/NiceTextureView;

    .line 397
    invoke-virtual {v0, p0}, Lcom/xiao/nicevideoplayer/NiceTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :cond_0
    return-void
.end method

.method private openMediaPlayer()V
    .locals 5

    .line 422
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setKeepScreenOn(Z)V

    .line 424
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v2, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    invoke-interface {v0, v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 425
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v2, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mOnVideoSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    invoke-interface {v0, v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnVideoSizeChangedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V

    .line 426
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v2, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    invoke-interface {v0, v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 427
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v2, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    invoke-interface {v0, v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 428
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v2, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    invoke-interface {v0, v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 429
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v2, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mOnBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    invoke-interface {v0, v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnBufferingUpdateListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STATE_PREPARING: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiao/nicevideoplayer/LogUtil;->d(Ljava/lang/String;)V

    .line 433
    :try_start_0
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v2, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mHeaders:Ljava/util/Map;

    invoke-interface {v0, v2, v3, v4}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 434
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    .line 435
    new-instance v0, Landroid/view/Surface;

    iget-object v2, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mSurface:Landroid/view/Surface;

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v2, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mSurface:Landroid/view/Surface;

    invoke-interface {v0, v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 438
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->prepareAsync()V

    .line 439
    iput v1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mCurrentState:I

    .line 440
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mController:Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;

    invoke-virtual {v0, v1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->onPlayStateChanged(I)V

    const-string v0, "STATE_PREPARING"

    .line 441
    invoke-static {v0}, Lcom/xiao/nicevideoplayer/LogUtil;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 443
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v1, "\u6253\u5f00\u64ad\u653e\u5668\u53d1\u751f\u9519\u8bef"

    .line 444
    invoke-static {v1, v0}, Lcom/xiao/nicevideoplayer/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public continueFromLastPosition(Z)V
    .locals 0

    .line 172
    iput-boolean p1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->continueFromLastPosition:Z

    return-void
.end method

.method public enterFullScreen()V
    .locals 4

    .line 581
    iget v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mCurrentMode:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    return-void

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiao/nicevideoplayer/NiceUtil;->hideActionBar(Landroid/content/Context;)V

    .line 587
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiao/nicevideoplayer/NiceUtil;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const v2, 0x1020002

    .line 588
    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 589
    iget v2, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mCurrentMode:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    .line 590
    iget-object v2, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 592
    :cond_1
    iget-object v2, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->removeView(Landroid/view/View;)V

    .line 594
    :goto_0
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 597
    iget-object v3, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 599
    iput v1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mCurrentMode:I

    .line 600
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mController:Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;

    invoke-virtual {v0, v1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->onPlayModeChanged(I)V

    const-string v0, "MODE_FULL_SCREEN"

    .line 601
    invoke-static {v0}, Lcom/xiao/nicevideoplayer/LogUtil;->d(Ljava/lang/String;)V

    .line 602
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiao/nicevideoplayer/NiceUtil;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public enterTinyWindow()V
    .locals 6

    .line 641
    iget v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mCurrentMode:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    return-void

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->removeView(Landroid/view/View;)V

    .line 644
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiao/nicevideoplayer/NiceUtil;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const v2, 0x1020002

    .line 645
    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 647
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mContext:Landroid/content/Context;

    .line 648
    invoke-static {v3}, Lcom/xiao/nicevideoplayer/NiceUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f19999a    # 0.6f

    mul-float v3, v3, v4

    float-to-int v3, v3

    iget-object v5, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mContext:Landroid/content/Context;

    .line 649
    invoke-static {v5}, Lcom/xiao/nicevideoplayer/NiceUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v4

    const/high16 v4, 0x41100000    # 9.0f

    mul-float v5, v5, v4

    const/high16 v4, 0x41800000    # 16.0f

    div-float/2addr v5, v4

    float-to-int v4, v5

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v3, 0x800055

    .line 650
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 651
    iget-object v3, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mContext:Landroid/content/Context;

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v3, v4}, Lcom/xiao/nicevideoplayer/NiceUtil;->dp2px(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 652
    iget-object v3, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/xiao/nicevideoplayer/NiceUtil;->dp2px(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 654
    iget-object v3, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 656
    iput v1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mCurrentMode:I

    .line 657
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mController:Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;

    invoke-virtual {v0, v1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->onPlayModeChanged(I)V

    .line 658
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiao/nicevideoplayer/NiceUtil;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    const-string v0, "MODE_TINY_WINDOW"

    .line 659
    invoke-static {v0}, Lcom/xiao/nicevideoplayer/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public exitFullScreen()Z
    .locals 3

    .line 615
    iget v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mCurrentMode:I

    const/4 v1, 0x0

    const/16 v2, 0xb

    if-ne v0, v2, :cond_0

    .line 616
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiao/nicevideoplayer/NiceUtil;->showActionBar(Landroid/content/Context;)V

    .line 619
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiao/nicevideoplayer/NiceUtil;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 620
    iget-object v2, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 621
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 624
    iget-object v2, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2, v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0xa

    .line 626
    iput v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mCurrentMode:I

    .line 627
    iget-object v2, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mController:Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;

    invoke-virtual {v2, v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->onPlayModeChanged(I)V

    const-string v0, "MODE_NORMAL"

    .line 628
    invoke-static {v0}, Lcom/xiao/nicevideoplayer/LogUtil;->d(Ljava/lang/String;)V

    .line 630
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiao/nicevideoplayer/NiceUtil;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public exitTinyWindow()Z
    .locals 2

    .line 667
    iget v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mCurrentMode:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 668
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiao/nicevideoplayer/NiceUtil;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x1020002

    .line 669
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 670
    iget-object v1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 671
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 674
    iget-object v1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0xa

    .line 676
    iput v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mCurrentMode:I

    .line 677
    iget-object v1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mController:Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;

    invoke-virtual {v1, v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->onPlayModeChanged(I)V

    const-string v0, "MODE_NORMAL"

    .line 678
    invoke-static {v0}, Lcom/xiao/nicevideoplayer/LogUtil;->d(Ljava/lang/String;)V

    .line 679
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiao/nicevideoplayer/NiceUtil;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .line 341
    iget v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mBufferPercentage:I

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 331
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getDuration()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getMaxVolume()I
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 316
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSpeed(F)F
    .locals 2

    .line 346
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    instance-of v1, v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v1, :cond_0

    .line 347
    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getSpeed(F)F

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getTcpSpeed()J
    .locals 2

    .line 354
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    instance-of v1, v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v1, :cond_0

    .line 355
    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getTcpSpeed()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getVolume()I
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 324
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public initBlackBackground()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mContainer:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public initWhiteBackground()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mContainer:Landroid/widget/FrameLayout;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public isBufferingPaused()Z
    .locals 2

    .line 275
    iget v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mCurrentState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBufferingPlaying()Z
    .locals 2

    .line 270
    iget v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mCurrentState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCompleted()Z
    .locals 2

    .line 295
    iget v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mCurrentState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isError()Z
    .locals 2

    .line 290
    iget v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mCurrentState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFullScreen()Z
    .locals 2

    .line 300
    iget v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mCurrentMode:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIdle()Z
    .locals 1

    .line 255
    iget v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mCurrentState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNormal()Z
    .locals 2

    .line 310
    iget v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mCurrentMode:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPaused()Z
    .locals 2

    .line 285
    iget v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mCurrentState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPlaying()Z
    .locals 2

    .line 280
    iget v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mCurrentState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPrepared()Z
    .locals 2

    .line 265
    iget v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPreparing()Z
    .locals 2

    .line 260
    iget v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mCurrentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isTinyWindow()Z
    .locals 2

    .line 305
    iget v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mCurrentMode:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 412
    iget-object p2, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez p2, :cond_0

    .line 413
    iput-object p1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 414
    invoke-direct {p0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->openMediaPlayer()V

    goto :goto_0

    .line 416
    :cond_0
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mTextureView:Lcom/xiao/nicevideoplayer/NiceTextureView;

    invoke-virtual {p1, p2}, Lcom/xiao/nicevideoplayer/NiceTextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    :goto_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    .line 454
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 2

    .line 225
    iget v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mCurrentState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 226
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->pause()V

    const/4 v0, 0x4

    .line 227
    iput v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mCurrentState:I

    .line 228
    iget-object v1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mController:Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;

    invoke-virtual {v1, v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->onPlayStateChanged(I)V

    const-string v0, "STATE_PAUSED"

    .line 229
    invoke-static {v0}, Lcom/xiao/nicevideoplayer/LogUtil;->d(Ljava/lang/String;)V

    .line 231
    :cond_0
    iget v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mCurrentState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 232
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->pause()V

    const/4 v0, 0x6

    .line 233
    iput v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mCurrentState:I

    .line 234
    iget-object v1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mController:Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;

    invoke-virtual {v1, v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->onPlayStateChanged(I)V

    const-string v0, "STATE_BUFFERING_PAUSED"

    .line 235
    invoke-static {v0}, Lcom/xiao/nicevideoplayer/LogUtil;->d(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public release()V
    .locals 4

    .line 710
    invoke-virtual {p0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->isBufferingPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->isBufferingPaused()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 712
    :cond_0
    invoke-virtual {p0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 713
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mUrl:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/xiao/nicevideoplayer/NiceUtil;->savePlayPosition(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_1

    .line 711
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mUrl:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->getCurrentPosition()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/xiao/nicevideoplayer/NiceUtil;->savePlayPosition(Landroid/content/Context;Ljava/lang/String;J)V

    .line 716
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 717
    invoke-virtual {p0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->exitFullScreen()Z

    .line 719
    :cond_3
    invoke-virtual {p0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->isTinyWindow()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 720
    invoke-virtual {p0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->exitTinyWindow()Z

    :cond_4
    const/16 v0, 0xa

    .line 722
    iput v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mCurrentMode:I

    .line 725
    invoke-virtual {p0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->releasePlayer()V

    .line 728
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mController:Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;

    if-eqz v0, :cond_5

    .line 729
    invoke-virtual {v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->reset()V

    .line 731
    :cond_5
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    return-void
.end method

.method public releasePlayer()V
    .locals 3

    .line 687
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 688
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 689
    iput-object v1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_1

    .line 692
    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->release()V

    .line 693
    iput-object v1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 695
    :cond_1
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mTextureView:Lcom/xiao/nicevideoplayer/NiceTextureView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 696
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    .line 697
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 698
    iput-object v1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mSurface:Landroid/view/Surface;

    .line 700
    :cond_2
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_3

    .line 701
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 702
    iput-object v1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    :cond_3
    const/4 v0, 0x0

    .line 704
    iput v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mCurrentState:I

    return-void
.end method

.method public restart()V
    .locals 2

    .line 205
    iget v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mCurrentState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 206
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->start()V

    const/4 v0, 0x3

    .line 207
    iput v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mCurrentState:I

    .line 208
    iget-object v1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mController:Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;

    invoke-virtual {v1, v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->onPlayStateChanged(I)V

    const-string v0, "STATE_PLAYING"

    .line 209
    invoke-static {v0}, Lcom/xiao/nicevideoplayer/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 211
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->start()V

    const/4 v0, 0x5

    .line 212
    iput v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mCurrentState:I

    .line 213
    iget-object v1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mController:Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;

    invoke-virtual {v1, v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->onPlayStateChanged(I)V

    const-string v0, "STATE_BUFFERING_PLAYING"

    .line 214
    invoke-static {v0}, Lcom/xiao/nicevideoplayer/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 219
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NiceVideoPlayer\u5728mCurrentState == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mCurrentState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u65f6\u4e0d\u80fd\u8c03\u7528restart()\u65b9\u6cd5."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiao/nicevideoplayer/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 216
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->reset()V

    .line 217
    invoke-direct {p0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->openMediaPlayer()V

    :goto_1
    return-void
.end method

.method public seekTo(J)V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 242
    invoke-interface {v0, p1, p2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->seekTo(J)V

    :cond_0
    return-void
.end method

.method public setController(Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;)V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mController:Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 143
    iput-object p1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mController:Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;

    .line 144
    invoke-virtual {p1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->reset()V

    .line 145
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mController:Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;

    invoke-virtual {p1, p0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->setNiceVideoPlayer(Lcom/xiao/nicevideoplayer/INiceVideoPlayer;)V

    .line 146
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 149
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mController:Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;

    invoke-virtual {v0, v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setLooping(Z)V
    .locals 0

    .line 153
    iput-boolean p1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mLooping:Z

    return-void
.end method

.method public setPlayerType(I)V
    .locals 0

    .line 162
    iput p1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mPlayerType:I

    return-void
.end method

.method public setSpeed(F)V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    instance-of v1, v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v1, :cond_0

    .line 178
    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setSpeed(F)V

    goto :goto_0

    :cond_0
    const-string p1, "\u53ea\u6709IjkPlayer\u624d\u80fd\u8bbe\u7f6e\u64ad\u653e\u901f\u5ea6"

    .line 180
    invoke-static {p1}, Lcom/xiao/nicevideoplayer/LogUtil;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setUp(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 137
    iput-object p1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mUrl:Ljava/lang/String;

    .line 138
    iput-object p2, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mHeaders:Ljava/util/Map;

    return-void
.end method

.method public setVolume(I)V
    .locals 3

    .line 248
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 249
    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .line 186
    iget v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->mCurrentState:I

    if-nez v0, :cond_0

    .line 187
    invoke-static {}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;->instance()Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;->setCurrentNiceVideoPlayer(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;)V

    .line 188
    invoke-direct {p0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->initAudioManager()V

    .line 189
    invoke-direct {p0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->initMediaPlayer()V

    .line 190
    invoke-direct {p0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->initTextureView()V

    .line 191
    invoke-direct {p0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->addTextureView()V

    goto :goto_0

    :cond_0
    const-string v0, "NiceVideoPlayer\u53ea\u6709\u5728mCurrentState == STATE_IDLE\u65f6\u624d\u80fd\u8c03\u7528start\u65b9\u6cd5."

    .line 193
    invoke-static {v0}, Lcom/xiao/nicevideoplayer/LogUtil;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public start(J)V
    .locals 0

    .line 199
    iput-wide p1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->skipToPosition:J

    .line 200
    invoke-virtual {p0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->start()V

    return-void
.end method
