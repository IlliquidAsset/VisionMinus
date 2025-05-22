.class public Lcom/powervision/gcs/view/ForceVideoPlayer;
.super Landroid/widget/FrameLayout;
.source "ForceVideoPlayer.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ForceVideoPlayer"


# instance fields
.field private afd:Landroid/content/res/AssetFileDescriptor;

.field private isHolderCreated:Z

.field private isZOrderOnTop:Z

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private surfaceView:Landroid/view/SurfaceView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/powervision/gcs/view/ForceVideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/gcs/view/ForceVideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/powervision/gcs/view/ForceVideoPlayer;->isHolderCreated:Z

    .line 40
    iput-boolean p1, p0, Lcom/powervision/gcs/view/ForceVideoPlayer;->isZOrderOnTop:Z

    .line 52
    invoke-direct {p0}, Lcom/powervision/gcs/view/ForceVideoPlayer;->initView()V

    return-void
.end method

.method private initMediaPlayer()V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/powervision/gcs/view/ForceVideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 100
    iget-object v0, p0, Lcom/powervision/gcs/view/ForceVideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 101
    iget-object v0, p0, Lcom/powervision/gcs/view/ForceVideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    goto :goto_0

    .line 103
    :cond_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/ForceVideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    .line 104
    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 105
    iget-object v0, p0, Lcom/powervision/gcs/view/ForceVideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/powervision/gcs/view/ForceVideoPlayer;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 106
    iget-object v0, p0, Lcom/powervision/gcs/view/ForceVideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 107
    iget-object v0, p0, Lcom/powervision/gcs/view/ForceVideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 108
    iget-object v0, p0, Lcom/powervision/gcs/view/ForceVideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 109
    iget-object v0, p0, Lcom/powervision/gcs/view/ForceVideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 110
    iget-object v0, p0, Lcom/powervision/gcs/view/ForceVideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    :goto_0
    return-void
.end method

.method private initSurfaceView()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/powervision/gcs/view/ForceVideoPlayer;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x1

    .line 77
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 80
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 64
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ForceVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$layout;->view_video_player_layout:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 65
    sget v0, Lcom/powervision/gcs/R$id;->mn_palyer_surfaceView:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/ForceVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/powervision/gcs/view/ForceVideoPlayer;->surfaceView:Landroid/view/SurfaceView;

    .line 69
    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 70
    invoke-direct {p0}, Lcom/powervision/gcs/view/ForceVideoPlayer;->initSurfaceView()V

    return-void
.end method

.method private loadPath()V
    .locals 6

    .line 181
    invoke-direct {p0}, Lcom/powervision/gcs/view/ForceVideoPlayer;->initMediaPlayer()V

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/powervision/gcs/view/ForceVideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/powervision/gcs/view/ForceVideoPlayer;->afd:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object v2, p0, Lcom/powervision/gcs/view/ForceVideoPlayer;->afd:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    iget-object v4, p0, Lcom/powervision/gcs/view/ForceVideoPlayer;->afd:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 186
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 189
    :goto_0
    iget-object v0, p0, Lcom/powervision/gcs/view/ForceVideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    return-void
.end method

.method private playVideo()V
    .locals 2

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playVideo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/powervision/gcs/view/ForceVideoPlayer;->isZOrderOnTop:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ForceVideoPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-boolean v0, p0, Lcom/powervision/gcs/view/ForceVideoPlayer;->isZOrderOnTop:Z

    if-nez v0, :cond_0

    const-string v0, "playVideo: setZOrderOnTop false"

    .line 127
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/powervision/gcs/view/ForceVideoPlayer;->surfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/ForceVideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method


# virtual methods
.method public cancelZOrder()V
    .locals 0

    return-void
.end method

.method public isHolderCreated()Z
    .locals 1

    .line 202
    iget-boolean v0, p0, Lcom/powervision/gcs/view/ForceVideoPlayer;->isHolderCreated:Z

    return v0
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    const-string p1, "ForceVideoPlayer"

    const-string v0, "onPrepared: "

    .line 152
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-direct {p0}, Lcom/powervision/gcs/view/ForceVideoPlayer;->playVideo()V

    return-void
.end method

.method public release()V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/powervision/gcs/view/ForceVideoPlayer;->surfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 194
    iget-object v0, p0, Lcom/powervision/gcs/view/ForceVideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 196
    iget-object v0, p0, Lcom/powervision/gcs/view/ForceVideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 197
    iput-object v0, p0, Lcom/powervision/gcs/view/ForceVideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method

.method public setVideoPath(Landroid/content/res/AssetFileDescriptor;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/powervision/gcs/view/ForceVideoPlayer;->afd:Landroid/content/res/AssetFileDescriptor;

    .line 89
    iget-boolean p1, p0, Lcom/powervision/gcs/view/ForceVideoPlayer;->isHolderCreated:Z

    if-eqz p1, :cond_0

    .line 90
    invoke-direct {p0}, Lcom/powervision/gcs/view/ForceVideoPlayer;->loadPath()V

    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string p1, "ForceVideoPlayer"

    const-string v0, "surfaceCreated: "

    .line 158
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 159
    iput-boolean p1, p0, Lcom/powervision/gcs/view/ForceVideoPlayer;->isHolderCreated:Z

    .line 160
    iget-object p1, p0, Lcom/powervision/gcs/view/ForceVideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez p1, :cond_0

    .line 161
    invoke-direct {p0}, Lcom/powervision/gcs/view/ForceVideoPlayer;->loadPath()V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method
