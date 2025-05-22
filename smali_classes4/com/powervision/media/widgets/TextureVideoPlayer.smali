.class public Lcom/powervision/media/widgets/TextureVideoPlayer;
.super Landroid/view/TextureView;
.source "TextureVideoPlayer.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/media/widgets/TextureVideoPlayer$VideoStatusListener;
    }
.end annotation


# instance fields
.field private mMediaState:I

.field private mPlayUrl:Ljava/lang/String;

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mStatusListener:Lcom/powervision/media/widgets/TextureVideoPlayer$VideoStatusListener;

.field private mSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/powervision/media/widgets/TextureVideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/media/widgets/TextureVideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/powervision/media/widgets/TextureVideoPlayer;->mMediaState:I

    .line 37
    invoke-virtual {p0, p0}, Lcom/powervision/media/widgets/TextureVideoPlayer;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method


# virtual methods
.method public continuePlay()V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/powervision/media/widgets/TextureVideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/powervision/media/widgets/TextureVideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x1

    .line 157
    iput v0, p0, Lcom/powervision/media/widgets/TextureVideoPlayer;->mMediaState:I

    :cond_0
    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/powervision/media/widgets/TextureVideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMediaState()I
    .locals 1

    .line 190
    iget v0, p0, Lcom/powervision/media/widgets/TextureVideoPlayer;->mMediaState:I

    return v0
.end method

.method public isShowSeekState()Z
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/powervision/media/widgets/TextureVideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/powervision/media/widgets/TextureVideoPlayer;->mMediaState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    const-string p1, "media---"

    .line 42
    invoke-static {p1}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "surface completer"

    invoke-interface {p1, v2, v1}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    iget-object p1, p0, Lcom/powervision/media/widgets/TextureVideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Lcom/powervision/media/widgets/TextureVideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    .line 48
    iput v0, p0, Lcom/powervision/media/widgets/TextureVideoPlayer;->mMediaState:I

    .line 49
    iget-object p1, p0, Lcom/powervision/media/widgets/TextureVideoPlayer;->mStatusListener:Lcom/powervision/media/widgets/TextureVideoPlayer$VideoStatusListener;

    if-eqz p1, :cond_0

    .line 50
    invoke-interface {p1}, Lcom/powervision/media/widgets/TextureVideoPlayer$VideoStatusListener;->onComplete()V

    :cond_0
    return-void
.end method

.method public onDestroyVideo()V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/powervision/media/widgets/TextureVideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 180
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/powervision/media/widgets/TextureVideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/widgets/TextureVideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 184
    iput-object v0, p0, Lcom/powervision/media/widgets/TextureVideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    :cond_1
    const/4 v0, 0x0

    .line 186
    iput v0, p0, Lcom/powervision/media/widgets/TextureVideoPlayer;->mMediaState:I

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    const-string p1, "media---"

    .line 57
    invoke-static {p1}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p1

    const/4 p2, 0x0

    new-array p3, p2, [Ljava/lang/Object;

    const-string v0, "surface error"

    invoke-interface {p1, v0, p3}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    iget-object p1, p0, Lcom/powervision/media/widgets/TextureVideoPlayer;->mStatusListener:Lcom/powervision/media/widgets/TextureVideoPlayer$VideoStatusListener;

    if-eqz p1, :cond_0

    .line 59
    iget-object p3, p0, Lcom/powervision/media/widgets/TextureVideoPlayer;->mPlayUrl:Ljava/lang/String;

    invoke-interface {p1, p3}, Lcom/powervision/media/widgets/TextureVideoPlayer$VideoStatusListener;->onError(Ljava/lang/String;)V

    :cond_0
    return p2
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 67
    iget-object p1, p0, Lcom/powervision/media/widgets/TextureVideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    const/4 p1, 0x1

    .line 69
    iput p1, p0, Lcom/powervision/media/widgets/TextureVideoPlayer;->mMediaState:I

    .line 70
    iget-object p1, p0, Lcom/powervision/media/widgets/TextureVideoPlayer;->mStatusListener:Lcom/powervision/media/widgets/TextureVideoPlayer$VideoStatusListener;

    if-eqz p1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/powervision/media/widgets/TextureVideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-interface {p1, v0}, Lcom/powervision/media/widgets/TextureVideoPlayer$VideoStatusListener;->onStart(Landroid/media/MediaPlayer;)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 78
    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p2, p0, Lcom/powervision/media/widgets/TextureVideoPlayer;->mSurface:Landroid/view/Surface;

    .line 79
    iget-object p1, p0, Lcom/powervision/media/widgets/TextureVideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    .line 80
    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    const-string p1, "media---"

    .line 91
    invoke-static {p1}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "surface destroyed"

    invoke-interface {p1, v1, v0}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    invoke-virtual {p0}, Lcom/powervision/media/widgets/TextureVideoPlayer;->stopPlay()V

    const/4 p1, 0x1

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

.method public pausePlay()V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/powervision/media/widgets/TextureVideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/powervision/media/widgets/TextureVideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    const/4 v0, 0x2

    .line 147
    iput v0, p0, Lcom/powervision/media/widgets/TextureVideoPlayer;->mMediaState:I

    :cond_0
    return-void
.end method

.method public setPlayUrl(Ljava/lang/String;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/powervision/media/widgets/TextureVideoPlayer;->mPlayUrl:Ljava/lang/String;

    return-void
.end method

.method public setSeek(I)V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/powervision/media/widgets/TextureVideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public setVideoStatusListener(Lcom/powervision/media/widgets/TextureVideoPlayer$VideoStatusListener;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/powervision/media/widgets/TextureVideoPlayer;->mStatusListener:Lcom/powervision/media/widgets/TextureVideoPlayer$VideoStatusListener;

    return-void
.end method

.method public startPlay(Ljava/lang/String;)V
    .locals 3

    .line 111
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/widgets/TextureVideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    .line 115
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/powervision/media/widgets/TextureVideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    .line 116
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 117
    iget-object v0, p0, Lcom/powervision/media/widgets/TextureVideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 118
    iget-object v0, p0, Lcom/powervision/media/widgets/TextureVideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 119
    iget-object v0, p0, Lcom/powervision/media/widgets/TextureVideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 120
    iget-object v0, p0, Lcom/powervision/media/widgets/TextureVideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 121
    invoke-virtual {p0, p0}, Lcom/powervision/media/widgets/TextureVideoPlayer;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 124
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/powervision/media/widgets/TextureVideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 126
    iget-object v0, p0, Lcom/powervision/media/widgets/TextureVideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 127
    iget-object p1, p0, Lcom/powervision/media/widgets/TextureVideoPlayer;->mSurface:Landroid/view/Surface;

    if-eqz p1, :cond_2

    .line 128
    iget-object p1, p0, Lcom/powervision/media/widgets/TextureVideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/powervision/media/widgets/TextureVideoPlayer;->mSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 131
    :cond_2
    iget-object p1, p0, Lcom/powervision/media/widgets/TextureVideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 133
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "media---"

    .line 134
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surface error---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iget-object p1, p0, Lcom/powervision/media/widgets/TextureVideoPlayer;->mStatusListener:Lcom/powervision/media/widgets/TextureVideoPlayer$VideoStatusListener;

    if-eqz p1, :cond_3

    .line 136
    iget-object v0, p0, Lcom/powervision/media/widgets/TextureVideoPlayer;->mPlayUrl:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/powervision/media/widgets/TextureVideoPlayer$VideoStatusListener;->onError(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public stopPlay()V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/powervision/media/widgets/TextureVideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 166
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/powervision/media/widgets/TextureVideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/widgets/TextureVideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 170
    iput-object v0, p0, Lcom/powervision/media/widgets/TextureVideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    :cond_1
    const/4 v0, 0x0

    .line 172
    iput v0, p0, Lcom/powervision/media/widgets/TextureVideoPlayer;->mMediaState:I

    .line 173
    iget-object v0, p0, Lcom/powervision/media/widgets/TextureVideoPlayer;->mStatusListener:Lcom/powervision/media/widgets/TextureVideoPlayer$VideoStatusListener;

    if-eqz v0, :cond_2

    .line 174
    invoke-interface {v0}, Lcom/powervision/media/widgets/TextureVideoPlayer$VideoStatusListener;->release()V

    :cond_2
    return-void
.end method
