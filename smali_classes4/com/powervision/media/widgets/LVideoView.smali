.class public Lcom/powervision/media/widgets/LVideoView;
.super Landroid/view/SurfaceView;
.source "LVideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnTimedTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/media/widgets/LVideoView$VideoStatusListener;
    }
.end annotation


# instance fields
.field private isPlayBeforeBack:Z

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mMediaState:I

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mStatusListener:Lcom/powervision/media/widgets/LVideoView$VideoStatusListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/powervision/media/widgets/LVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/media/widgets/LVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lcom/powervision/media/widgets/LVideoView;->mMediaState:I

    return-void
.end method

.method private init()V
    .locals 1

    .line 61
    invoke-virtual {p0}, Lcom/powervision/media/widgets/LVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/media/widgets/LVideoView;->mHolder:Landroid/view/SurfaceHolder;

    .line 62
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method


# virtual methods
.method public continuePlay()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/powervision/media/widgets/LVideoView;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/powervision/media/widgets/LVideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x1

    .line 135
    iput v0, p0, Lcom/powervision/media/widgets/LVideoView;->mMediaState:I

    :cond_0
    return-void
.end method

.method public getMediaState()I
    .locals 1

    .line 187
    iget v0, p0, Lcom/powervision/media/widgets/LVideoView;->mMediaState:I

    return v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 157
    iget-object p1, p0, Lcom/powervision/media/widgets/LVideoView;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    .line 158
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    .line 159
    iget-object p1, p0, Lcom/powervision/media/widgets/LVideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    const/4 p1, 0x0

    .line 160
    iput-object p1, p0, Lcom/powervision/media/widgets/LVideoView;->mPlayer:Landroid/media/MediaPlayer;

    const/4 p1, 0x0

    .line 161
    iput p1, p0, Lcom/powervision/media/widgets/LVideoView;->mMediaState:I

    .line 162
    iget-object p1, p0, Lcom/powervision/media/widgets/LVideoView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 163
    iget-object p1, p0, Lcom/powervision/media/widgets/LVideoView;->mStatusListener:Lcom/powervision/media/widgets/LVideoView$VideoStatusListener;

    if-eqz p1, :cond_0

    .line 164
    invoke-interface {p1}, Lcom/powervision/media/widgets/LVideoView$VideoStatusListener;->onComplete()V

    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 177
    iget-object p1, p0, Lcom/powervision/media/widgets/LVideoView;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    .line 178
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    const/4 p1, 0x1

    .line 179
    iput p1, p0, Lcom/powervision/media/widgets/LVideoView;->mMediaState:I

    .line 180
    iget-object p1, p0, Lcom/powervision/media/widgets/LVideoView;->mStatusListener:Lcom/powervision/media/widgets/LVideoView$VideoStatusListener;

    if-eqz p1, :cond_0

    .line 181
    iget-object v0, p0, Lcom/powervision/media/widgets/LVideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-interface {p1, v0}, Lcom/powervision/media/widgets/LVideoView$VideoStatusListener;->onStart(Landroid/media/MediaPlayer;)V

    :cond_0
    return-void
.end method

.method public onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V
    .locals 1

    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "time ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/media/TimedText;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public pausePlay()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/powervision/media/widgets/LVideoView;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/powervision/media/widgets/LVideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    const/4 v0, 0x2

    .line 125
    iput v0, p0, Lcom/powervision/media/widgets/LVideoView;->mMediaState:I

    :cond_0
    return-void
.end method

.method public setSeek(I)V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/powervision/media/widgets/LVideoView;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public setVideoStatusListener(Lcom/powervision/media/widgets/LVideoView$VideoStatusListener;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/powervision/media/widgets/LVideoView;->mStatusListener:Lcom/powervision/media/widgets/LVideoView$VideoStatusListener;

    return-void
.end method

.method public startPlay(Ljava/lang/String;)V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/powervision/media/widgets/LVideoView;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/powervision/media/widgets/LVideoView;->mPlayer:Landroid/media/MediaPlayer;

    .line 101
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/powervision/media/widgets/LVideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 102
    invoke-direct {p0}, Lcom/powervision/media/widgets/LVideoView;->init()V

    .line 104
    iget-object v0, p0, Lcom/powervision/media/widgets/LVideoView;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 106
    iget-object v0, p0, Lcom/powervision/media/widgets/LVideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 107
    iget-object p1, p0, Lcom/powervision/media/widgets/LVideoView;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 109
    iget-object p1, p0, Lcom/powervision/media/widgets/LVideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 110
    iget-object p1, p0, Lcom/powervision/media/widgets/LVideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 111
    iget-object p1, p0, Lcom/powervision/media/widgets/LVideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 112
    iget-object p1, p0, Lcom/powervision/media/widgets/LVideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 113
    iget-object p1, p0, Lcom/powervision/media/widgets/LVideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnTimedTextListener(Landroid/media/MediaPlayer$OnTimedTextListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 115
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public stopPlay()V
    .locals 1

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/powervision/media/widgets/LVideoView;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/powervision/media/widgets/LVideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 146
    iget-object v0, p0, Lcom/powervision/media/widgets/LVideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 147
    iget-object v0, p0, Lcom/powervision/media/widgets/LVideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 148
    iput-object v0, p0, Lcom/powervision/media/widgets/LVideoView;->mPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 79
    iget-object p2, p0, Lcom/powervision/media/widgets/LVideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p2, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/powervision/media/widgets/LVideoView;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 69
    iget-boolean p1, p0, Lcom/powervision/media/widgets/LVideoView;->isPlayBeforeBack:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/powervision/media/widgets/LVideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_0

    .line 70
    iget-object p1, p0, Lcom/powervision/media/widgets/LVideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    const/4 p1, 0x1

    .line 71
    iput p1, p0, Lcom/powervision/media/widgets/LVideoView;->mMediaState:I

    const/4 p1, 0x0

    .line 72
    iput-boolean p1, p0, Lcom/powervision/media/widgets/LVideoView;->isPlayBeforeBack:Z

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 84
    iget-object p1, p0, Lcom/powervision/media/widgets/LVideoView;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 85
    iget-object p1, p0, Lcom/powervision/media/widgets/LVideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    const/4 p1, 0x2

    .line 86
    iput p1, p0, Lcom/powervision/media/widgets/LVideoView;->mMediaState:I

    const/4 p1, 0x1

    .line 87
    iput-boolean p1, p0, Lcom/powervision/media/widgets/LVideoView;->isPlayBeforeBack:Z

    :cond_0
    return-void
.end method
