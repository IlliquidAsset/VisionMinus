.class public Lcom/powervision/media/widgets/player/VideoPlayer;
.super Landroid/widget/LinearLayout;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field public hasPlay:Z

.field private mInfo:Lcom/powervision/localhttp/entity/MediaLib;

.field public mMediaController:Lcom/powervision/media/widgets/player/VideoMediaController;

.field private mPlayView:Landroid/view/TextureView;

.field public mPlayer:Landroid/media/MediaPlayer;

.field private mSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/powervision/media/widgets/player/VideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/media/widgets/player/VideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    invoke-direct {p0}, Lcom/powervision/media/widgets/player/VideoPlayer;->initView()V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 52
    invoke-virtual {p0}, Lcom/powervision/media/widgets/player/VideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/powervision/media/R$layout;->media_custom_video_play:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 53
    sget v1, Lcom/powervision/media/R$id;->video_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    iput-object v1, p0, Lcom/powervision/media/widgets/player/VideoPlayer;->mPlayView:Landroid/view/TextureView;

    .line 54
    sget v1, Lcom/powervision/media/R$id;->controller:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/powervision/media/widgets/player/VideoMediaController;

    iput-object v0, p0, Lcom/powervision/media/widgets/player/VideoPlayer;->mMediaController:Lcom/powervision/media/widgets/player/VideoMediaController;

    .line 56
    invoke-virtual {p0}, Lcom/powervision/media/widgets/player/VideoPlayer;->initViewDisplay()V

    .line 58
    iget-object v0, p0, Lcom/powervision/media/widgets/player/VideoPlayer;->mMediaController:Lcom/powervision/media/widgets/player/VideoMediaController;

    invoke-virtual {v0, p0}, Lcom/powervision/media/widgets/player/VideoMediaController;->setVideoPlayer(Lcom/powervision/media/widgets/player/VideoPlayer;)V

    .line 61
    iget-object v0, p0, Lcom/powervision/media/widgets/player/VideoPlayer;->mPlayView:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method private startPlay(Ljava/lang/String;)V
    .locals 1

    .line 83
    :try_start_0
    invoke-static {}, Lcom/powervision/media/utils/MediaHelper;->getInstance()Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/media/widgets/player/VideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    .line 84
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 85
    iget-object v0, p0, Lcom/powervision/media/widgets/player/VideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 87
    iget-object p1, p0, Lcom/powervision/media/widgets/player/VideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/powervision/media/widgets/player/VideoPlayer;->mSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 89
    iget-object p1, p0, Lcom/powervision/media/widgets/player/VideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 90
    iget-object p1, p0, Lcom/powervision/media/widgets/player/VideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 91
    iget-object p1, p0, Lcom/powervision/media/widgets/player/VideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 92
    iget-object p1, p0, Lcom/powervision/media/widgets/player/VideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 94
    iget-object p1, p0, Lcom/powervision/media/widgets/player/VideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 96
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public initViewDisplay()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/powervision/media/widgets/player/VideoPlayer;->mPlayView:Landroid/view/TextureView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/powervision/media/widgets/player/VideoPlayer;->mMediaController:Lcom/powervision/media/widgets/player/VideoMediaController;

    invoke-virtual {v0}, Lcom/powervision/media/widgets/player/VideoMediaController;->initViewDisplay()V

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "media---onCompletion"

    .line 134
    invoke-static {v0, p1}, Lcom/orhanobut/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iget-object p1, p0, Lcom/powervision/media/widgets/player/VideoPlayer;->mMediaController:Lcom/powervision/media/widgets/player/VideoMediaController;

    invoke-virtual {p1}, Lcom/powervision/media/widgets/player/VideoMediaController;->showPlayFinishView()V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "media---onPrepared"

    .line 151
    invoke-static {v0, p1}, Lcom/orhanobut/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    iget-object p1, p0, Lcom/powervision/media/widgets/player/VideoPlayer;->mMediaController:Lcom/powervision/media/widgets/player/VideoMediaController;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/powervision/media/widgets/player/VideoMediaController;->setPbLoadingVisiable(I)V

    .line 155
    invoke-static {}, Lcom/powervision/media/utils/MediaHelper;->play()V

    const/4 p1, 0x1

    .line 156
    iput-boolean p1, p0, Lcom/powervision/media/widgets/player/VideoPlayer;->hasPlay:Z

    .line 158
    iget-object p1, p0, Lcom/powervision/media/widgets/player/VideoPlayer;->mMediaController:Lcom/powervision/media/widgets/player/VideoMediaController;

    invoke-virtual {p1}, Lcom/powervision/media/widgets/player/VideoMediaController;->delayHideTitle()V

    .line 160
    iget-object p1, p0, Lcom/powervision/media/widgets/player/VideoPlayer;->mMediaController:Lcom/powervision/media/widgets/player/VideoMediaController;

    iget-object v0, p0, Lcom/powervision/media/widgets/player/VideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/powervision/media/widgets/player/VideoMediaController;->setDuration(I)V

    .line 162
    iget-object p1, p0, Lcom/powervision/media/widgets/player/VideoPlayer;->mMediaController:Lcom/powervision/media/widgets/player/VideoMediaController;

    invoke-virtual {p1}, Lcom/powervision/media/widgets/player/VideoMediaController;->updatePlayTimeAndProgress()V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "media---onSurfaceTextureAvailable"

    .line 107
    invoke-static {p3, p2}, Lcom/orhanobut/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p2, p0, Lcom/powervision/media/widgets/player/VideoPlayer;->mSurface:Landroid/view/Surface;

    .line 109
    iget-object p1, p0, Lcom/powervision/media/widgets/player/VideoPlayer;->mInfo:Lcom/powervision/localhttp/entity/MediaLib;

    invoke-virtual {p1}, Lcom/powervision/localhttp/entity/MediaLib;->getPreVideoPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/powervision/media/widgets/player/VideoPlayer;->startPlay(Ljava/lang/String;)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "media---onSurfaceTextureDestroyed"

    .line 119
    invoke-static {v1, v0}, Lcom/orhanobut/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    invoke-static {}, Lcom/powervision/media/utils/MediaHelper;->release()V

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

.method public setPlayInfo(Lcom/powervision/localhttp/entity/MediaLib;)V
    .locals 1

    .line 74
    iput-object p1, p0, Lcom/powervision/media/widgets/player/VideoPlayer;->mInfo:Lcom/powervision/localhttp/entity/MediaLib;

    .line 75
    iget-object v0, p0, Lcom/powervision/media/widgets/player/VideoPlayer;->mMediaController:Lcom/powervision/media/widgets/player/VideoMediaController;

    invoke-virtual {p1}, Lcom/powervision/localhttp/entity/MediaLib;->getThumbPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/powervision/media/widgets/player/VideoMediaController;->loadPreview(Ljava/lang/String;)V

    return-void
.end method

.method public setVideoViewVisible(I)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/powervision/media/widgets/player/VideoPlayer;->mPlayView:Landroid/view/TextureView;

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setVisibility(I)V

    return-void
.end method
