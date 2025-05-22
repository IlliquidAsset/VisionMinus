.class public Lcom/powervision/media/widgets/LVideoViewWithSeekBar;
.super Landroid/widget/FrameLayout;
.source "LVideoViewWithSeekBar.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnTimedTextListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/media/widgets/LVideoViewWithSeekBar$VideoStatusListener;,
        Lcom/powervision/media/widgets/LVideoViewWithSeekBar$SeekTask;
    }
.end annotation


# instance fields
.field private isPlayBeforeBack:Z

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mMediaState:I

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mProgress:Lcom/powervision/base/views/LoadingProgressBar;

.field private mSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

.field private mStatusListener:Lcom/powervision/media/widgets/LVideoViewWithSeekBar$VideoStatusListener;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mTimeLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mTimeProgress:Landroid/widget/Chronometer;

.field private mTimeTotal:Landroid/widget/Chronometer;

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Lcom/powervision/media/widgets/LVideoViewWithSeekBar$SeekTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 51
    iput p2, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mMediaState:I

    .line 69
    invoke-direct {p0, p1}, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->initView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/media/widgets/LVideoViewWithSeekBar;)Landroid/media/MediaPlayer;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/media/widgets/LVideoViewWithSeekBar;)Landroidx/appcompat/widget/AppCompatSeekBar;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    return-object p0
.end method

.method private initCallback()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mHolder:Landroid/view/SurfaceHolder;

    .line 94
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 3

    .line 73
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 74
    sget v1, Lcom/powervision/media/R$layout;->media_video_seek_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 75
    sget v1, Lcom/powervision/media/R$id;->surfaceview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    iput-object v1, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mSurfaceView:Landroid/view/SurfaceView;

    .line 76
    sget v1, Lcom/powervision/media/R$id;->time_seek:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v1, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mTimeLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 77
    sget v1, Lcom/powervision/media/R$id;->time_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Chronometer;

    iput-object v1, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mTimeProgress:Landroid/widget/Chronometer;

    .line 78
    sget v1, Lcom/powervision/media/R$id;->time_total:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Chronometer;

    iput-object v1, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mTimeTotal:Landroid/widget/Chronometer;

    .line 79
    sget v1, Lcom/powervision/media/R$id;->media_seekbar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatSeekBar;

    iput-object v0, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 80
    iget-object v0, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mTimeLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 82
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_0
    const/high16 v1, 0x42340000    # 45.0f

    .line 84
    invoke-static {v1}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 86
    :goto_0
    iget-object v1, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mTimeLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mTimer:Ljava/util/Timer;

    .line 88
    new-instance v0, Lcom/powervision/base/views/LoadingProgressBar;

    invoke-direct {v0, p1}, Lcom/powervision/base/views/LoadingProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mProgress:Lcom/powervision/base/views/LoadingProgressBar;

    .line 89
    invoke-direct {p0}, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->initCallback()V

    return-void
.end method

.method private updateSeekBar(Landroid/media/MediaPlayer;)V
    .locals 7

    .line 266
    iget-object v0, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mProgress:Lcom/powervision/base/views/LoadingProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mProgress:Lcom/powervision/base/views/LoadingProgressBar;

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->dismiss()V

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mTimeTotal:Landroid/widget/Chronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/Chronometer;->setBase(J)V

    .line 270
    iget-object v0, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setMax(I)V

    .line 271
    iget-object p1, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatSeekBar;->setProgress(I)V

    .line 273
    new-instance v2, Lcom/powervision/media/widgets/LVideoViewWithSeekBar$SeekTask;

    const/4 p1, 0x0

    invoke-direct {v2, p0, p1}, Lcom/powervision/media/widgets/LVideoViewWithSeekBar$SeekTask;-><init>(Lcom/powervision/media/widgets/LVideoViewWithSeekBar;Lcom/powervision/media/widgets/LVideoViewWithSeekBar$1;)V

    iput-object v2, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mTimerTask:Lcom/powervision/media/widgets/LVideoViewWithSeekBar$SeekTask;

    .line 274
    iget-object v1, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mTimer:Ljava/util/Timer;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method


# virtual methods
.method public continuePlay()V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x1

    .line 144
    iput v0, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mMediaState:I

    :cond_0
    return-void
.end method

.method public getMediaState()I
    .locals 1

    .line 283
    iget v0, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mMediaState:I

    return v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 233
    iget-object p1, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mTimerTask:Lcom/powervision/media/widgets/LVideoViewWithSeekBar$SeekTask;

    if-eqz p1, :cond_0

    .line 234
    invoke-virtual {p1}, Lcom/powervision/media/widgets/LVideoViewWithSeekBar$SeekTask;->cancel()Z

    .line 237
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->stopPlay()V

    const/4 p1, 0x0

    .line 238
    iput p1, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mMediaState:I

    .line 239
    iget-object p1, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 240
    iget-object p1, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mStatusListener:Lcom/powervision/media/widgets/LVideoViewWithSeekBar$VideoStatusListener;

    if-eqz p1, :cond_1

    .line 241
    invoke-interface {p1}, Lcom/powervision/media/widgets/LVideoViewWithSeekBar$VideoStatusListener;->onComplete()V

    :cond_1
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 253
    iget-object p1, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    .line 254
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    const/4 p1, 0x1

    .line 255
    iput p1, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mMediaState:I

    .line 257
    iget-object p1, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0, p1}, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->updateSeekBar(Landroid/media/MediaPlayer;)V

    .line 259
    iget-object p1, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mStatusListener:Lcom/powervision/media/widgets/LVideoViewWithSeekBar$VideoStatusListener;

    if-eqz p1, :cond_0

    .line 260
    invoke-interface {p1}, Lcom/powervision/media/widgets/LVideoViewWithSeekBar$VideoStatusListener;->onStart()V

    :cond_0
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    .line 173
    iget-object p2, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mTimeProgress:Landroid/widget/Chronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    int-to-long v2, p1

    sub-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Landroid/widget/Chronometer;->setBase(J)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 183
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->setSeek(I)V

    return-void
.end method

.method public onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V
    .locals 1

    .line 279
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

    .line 132
    iget-object v0, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    const/4 v0, 0x2

    .line 134
    iput v0, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mMediaState:I

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 163
    invoke-virtual {p0}, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->stopPlay()V

    .line 164
    iget-object v0, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mTimerTask:Lcom/powervision/media/widgets/LVideoViewWithSeekBar$SeekTask;

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0}, Lcom/powervision/media/widgets/LVideoViewWithSeekBar$SeekTask;->cancel()Z

    .line 166
    iget-object v0, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 167
    iput-object v0, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mTimer:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method public setSeek(I)V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public setSeekShowHide(Z)V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mTimeLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    return-void
.end method

.method public setVideoStatusListener(Lcom/powervision/media/widgets/LVideoViewWithSeekBar$VideoStatusListener;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mStatusListener:Lcom/powervision/media/widgets/LVideoViewWithSeekBar$VideoStatusListener;

    return-void
.end method

.method public startPlay(Ljava/lang/String;)V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mProgress:Lcom/powervision/base/views/LoadingProgressBar;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->show()V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    .line 107
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mPlayer:Landroid/media/MediaPlayer;

    .line 110
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 113
    iget-object v0, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 115
    iget-object v0, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 116
    iget-object p1, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 118
    iget-object p1, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 119
    iget-object p1, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 120
    iget-object p1, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 121
    iget-object p1, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 122
    iget-object p1, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnTimedTextListener(Landroid/media/MediaPlayer$OnTimedTextListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 124
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public stopPlay()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 154
    iget-object v0, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mPlayer:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 219
    iget-object p1, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mPlayer:Landroid/media/MediaPlayer;

    iget-object p2, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 207
    iget-object p1, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 209
    iget-boolean p1, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->isPlayBeforeBack:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_0

    .line 210
    iget-object p1, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    const/4 p1, 0x1

    .line 211
    iput p1, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mMediaState:I

    const/4 p1, 0x0

    .line 212
    iput-boolean p1, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->isPlayBeforeBack:Z

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 224
    iget-object p1, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 225
    iget-object p1, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    const/4 p1, 0x2

    .line 226
    iput p1, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->mMediaState:I

    const/4 p1, 0x1

    .line 227
    iput-boolean p1, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->isPlayBeforeBack:Z

    :cond_0
    return-void
.end method
