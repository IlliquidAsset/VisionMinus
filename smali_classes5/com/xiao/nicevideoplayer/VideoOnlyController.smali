.class public Lcom/xiao/nicevideoplayer/VideoOnlyController;
.super Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;
.source "VideoOnlyController.java"

# interfaces
.implements Lcom/xiao/nicevideoplayer/ChangeClarityDialog$OnClarityChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiao/nicevideoplayer/VideoOnlyController$OnVideoChangedListener;,
        Lcom/xiao/nicevideoplayer/VideoOnlyController$OnButtonClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private clarities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiao/nicevideoplayer/Clarity;",
            ">;"
        }
    .end annotation
.end field

.field private defaultClarityIndex:I

.field private mBatterReceiver:Landroid/content/BroadcastReceiver;

.field private mClarityDialog:Lcom/xiao/nicevideoplayer/ChangeClarityDialog;

.field private mContext:Landroid/content/Context;

.field private mDismissTopBottomCountDownTimer:Landroid/os/CountDownTimer;

.field private mImage:Landroid/widget/ImageView;

.field public onVideoChangedListener:Lcom/xiao/nicevideoplayer/VideoOnlyController$OnVideoChangedListener;

.field private topBottomVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/xiao/nicevideoplayer/VideoOnlyController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiao/nicevideoplayer/VideoOnlyController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 82
    invoke-direct {p0, p1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;-><init>(Landroid/content/Context;)V

    .line 314
    new-instance v0, Lcom/xiao/nicevideoplayer/VideoOnlyController$1;

    invoke-direct {v0, p0}, Lcom/xiao/nicevideoplayer/VideoOnlyController$1;-><init>(Lcom/xiao/nicevideoplayer/VideoOnlyController;)V

    iput-object v0, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController;->mBatterReceiver:Landroid/content/BroadcastReceiver;

    .line 83
    iput-object p1, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController;->mContext:Landroid/content/Context;

    .line 84
    invoke-direct {p0}, Lcom/xiao/nicevideoplayer/VideoOnlyController;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiao/nicevideoplayer/VideoOnlyController;Z)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/xiao/nicevideoplayer/VideoOnlyController;->setTopBottomVisible(Z)V

    return-void
.end method

.method private cancelDismissTopBottomTimer()V
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController;->mDismissTopBottomCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 478
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void
.end method

.method private init()V
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiao/nicevideoplayer/R$layout;->video_only_controller:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 101
    sget v0, Lcom/xiao/nicevideoplayer/R$id;->image:I

    invoke-virtual {p0, v0}, Lcom/xiao/nicevideoplayer/VideoOnlyController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController;->mImage:Landroid/widget/ImageView;

    return-void
.end method

.method private setTopBottomVisible(Z)V
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {v0}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->isFullScreen()Z

    .line 434
    iput-boolean p1, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController;->topBottomVisible:Z

    if-eqz p1, :cond_0

    .line 436
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {p1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->isPaused()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {p1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->isBufferingPaused()Z

    move-result p1

    if-nez p1, :cond_1

    .line 437
    invoke-direct {p0}, Lcom/xiao/nicevideoplayer/VideoOnlyController;->startDismissTopBottomTimer()V

    goto :goto_0

    .line 447
    :cond_0
    invoke-direct {p0}, Lcom/xiao/nicevideoplayer/VideoOnlyController;->cancelDismissTopBottomTimer()V

    :cond_1
    :goto_0
    return-void
.end method

.method private startDismissTopBottomTimer()V
    .locals 7

    .line 456
    invoke-direct {p0}, Lcom/xiao/nicevideoplayer/VideoOnlyController;->cancelDismissTopBottomTimer()V

    .line 457
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController;->mDismissTopBottomCountDownTimer:Landroid/os/CountDownTimer;

    if-nez v0, :cond_0

    .line 458
    new-instance v0, Lcom/xiao/nicevideoplayer/VideoOnlyController$2;

    const-wide/16 v3, 0x1f40

    const-wide/16 v5, 0x1f40

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/xiao/nicevideoplayer/VideoOnlyController$2;-><init>(Lcom/xiao/nicevideoplayer/VideoOnlyController;JJ)V

    iput-object v0, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController;->mDismissTopBottomCountDownTimer:Landroid/os/CountDownTimer;

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController;->mDismissTopBottomCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method


# virtual methods
.method protected hideChangeBrightness()V
    .locals 0

    return-void
.end method

.method protected hideChangePosition()V
    .locals 0

    return-void
.end method

.method protected hideChangeVolume()V
    .locals 0

    return-void
.end method

.method public imageView()Landroid/widget/ImageView;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController;->mImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method public onActivityResume()V
    .locals 2

    .line 396
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {v0}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {v0}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->start()V

    :cond_0
    const/4 v0, 0x1

    .line 399
    invoke-direct {p0, v0}, Lcom/xiao/nicevideoplayer/VideoOnlyController;->setTopBottomVisible(Z)V

    .line 400
    sget-object v0, Lcom/xiao/nicevideoplayer/VideoOnlyController;->TAG:Ljava/lang/String;

    const-string v1, "setTopBottomVisible"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onClarityChanged(I)V
    .locals 4

    .line 410
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController;->clarities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiao/nicevideoplayer/Clarity;

    .line 412
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {v0}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->getCurrentPosition()J

    move-result-wide v0

    .line 413
    iget-object v2, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {v2}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->releasePlayer()V

    .line 414
    iget-object v2, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    iget-object p1, p1, Lcom/xiao/nicevideoplayer/Clarity;->videoUrl:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->setUp(Ljava/lang/String;Ljava/util/Map;)V

    .line 415
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {p1, v0, v1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->start(J)V

    return-void
.end method

.method public onClarityNotChanged()V
    .locals 1

    const/4 v0, 0x1

    .line 421
    invoke-direct {p0, v0}, Lcom/xiao/nicevideoplayer/VideoOnlyController;->setTopBottomVisible(Z)V

    return-void
.end method

.method protected onPlayModeChanged(I)V
    .locals 1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 294
    :cond_0
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController;->clarities:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return-void
.end method

.method protected onPlayStateChanged(I)V
    .locals 3

    .line 210
    sget-object v0, Lcom/xiao/nicevideoplayer/VideoOnlyController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 264
    :pswitch_0
    invoke-virtual {p0}, Lcom/xiao/nicevideoplayer/VideoOnlyController;->cancelUpdateProgressTimer()V

    .line 266
    invoke-direct {p0, v0}, Lcom/xiao/nicevideoplayer/VideoOnlyController;->setTopBottomVisible(Z)V

    .line 267
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 268
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController;->onVideoChangedListener:Lcom/xiao/nicevideoplayer/VideoOnlyController$OnVideoChangedListener;

    if-eqz p1, :cond_0

    .line 269
    invoke-interface {p1}, Lcom/xiao/nicevideoplayer/VideoOnlyController$OnVideoChangedListener;->onCompletion()V

    goto :goto_0

    .line 254
    :pswitch_1
    invoke-direct {p0}, Lcom/xiao/nicevideoplayer/VideoOnlyController;->cancelDismissTopBottomTimer()V

    goto :goto_0

    .line 247
    :pswitch_2
    invoke-direct {p0}, Lcom/xiao/nicevideoplayer/VideoOnlyController;->startDismissTopBottomTimer()V

    goto :goto_0

    .line 240
    :pswitch_3
    invoke-direct {p0}, Lcom/xiao/nicevideoplayer/VideoOnlyController;->cancelDismissTopBottomTimer()V

    goto :goto_0

    .line 234
    :pswitch_4
    invoke-direct {p0, v0}, Lcom/xiao/nicevideoplayer/VideoOnlyController;->setTopBottomVisible(Z)V

    .line 235
    invoke-direct {p0}, Lcom/xiao/nicevideoplayer/VideoOnlyController;->startDismissTopBottomTimer()V

    goto :goto_0

    .line 228
    :pswitch_5
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController;->mImage:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    invoke-virtual {p0}, Lcom/xiao/nicevideoplayer/VideoOnlyController;->startUpdateProgressTimer()V

    goto :goto_0

    .line 216
    :pswitch_6
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 213
    :pswitch_7
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 257
    :pswitch_8
    invoke-virtual {p0}, Lcom/xiao/nicevideoplayer/VideoOnlyController;->cancelUpdateProgressTimer()V

    .line 258
    invoke-direct {p0, v1}, Lcom/xiao/nicevideoplayer/VideoOnlyController;->setTopBottomVisible(Z)V

    .line 259
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
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

.method protected reset()V
    .locals 2

    const/4 v0, 0x0

    .line 346
    iput-boolean v0, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController;->topBottomVisible:Z

    .line 347
    invoke-virtual {p0}, Lcom/xiao/nicevideoplayer/VideoOnlyController;->cancelUpdateProgressTimer()V

    .line 348
    invoke-direct {p0}, Lcom/xiao/nicevideoplayer/VideoOnlyController;->cancelDismissTopBottomTimer()V

    .line 353
    iget-object v1, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setClarity(Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiao/nicevideoplayer/Clarity;",
            ">;I)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 188
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 189
    iput-object p1, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController;->clarities:Ljava/util/List;

    .line 190
    iput p2, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController;->defaultClarityIndex:I

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 193
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiao/nicevideoplayer/Clarity;

    .line 194
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/xiao/nicevideoplayer/Clarity;->grade:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/xiao/nicevideoplayer/Clarity;->p:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 198
    :cond_0
    new-instance v1, Lcom/xiao/nicevideoplayer/ChangeClarityDialog;

    iget-object v2, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/xiao/nicevideoplayer/ChangeClarityDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController;->mClarityDialog:Lcom/xiao/nicevideoplayer/ChangeClarityDialog;

    .line 199
    invoke-virtual {v1, v0, p2}, Lcom/xiao/nicevideoplayer/ChangeClarityDialog;->setClarityGrade(Ljava/util/List;I)V

    .line 200
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController;->mClarityDialog:Lcom/xiao/nicevideoplayer/ChangeClarityDialog;

    invoke-virtual {v0, p0}, Lcom/xiao/nicevideoplayer/ChangeClarityDialog;->setOnClarityCheckedListener(Lcom/xiao/nicevideoplayer/ChangeClarityDialog$OnClarityChangedListener;)V

    .line 202
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiao/nicevideoplayer/Clarity;

    iget-object p1, p1, Lcom/xiao/nicevideoplayer/Clarity;->videoUrl:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-interface {v0, p1, p2}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->setUp(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public setImage(I)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setLenght(J)V
    .locals 0

    return-void
.end method

.method public setNiceVideoPlayer(Lcom/xiao/nicevideoplayer/INiceVideoPlayer;)V
    .locals 2

    .line 175
    invoke-super {p0, p1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->setNiceVideoPlayer(Lcom/xiao/nicevideoplayer/INiceVideoPlayer;)V

    .line 177
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController;->clarities:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 178
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    iget-object v0, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController;->clarities:Ljava/util/List;

    iget v1, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController;->defaultClarityIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiao/nicevideoplayer/Clarity;

    iget-object v0, v0, Lcom/xiao/nicevideoplayer/Clarity;->videoUrl:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->setUp(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public setOnVideoChangedListener(Lcom/xiao/nicevideoplayer/VideoOnlyController$OnVideoChangedListener;)V
    .locals 0

    .line 586
    iput-object p1, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController;->onVideoChangedListener:Lcom/xiao/nicevideoplayer/VideoOnlyController$OnVideoChangedListener;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected showChangeBrightness(I)V
    .locals 0

    return-void
.end method

.method protected showChangePosition(JI)V
    .locals 0

    return-void
.end method

.method protected showChangeVolume(I)V
    .locals 0

    return-void
.end method

.method protected updateProgress()V
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {v0}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->getCurrentPosition()J

    .line 505
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {v0}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->getDuration()J

    .line 506
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {v0}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->getBufferPercentage()I

    return-void
.end method
