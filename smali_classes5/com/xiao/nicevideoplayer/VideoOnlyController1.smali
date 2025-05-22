.class public Lcom/xiao/nicevideoplayer/VideoOnlyController1;
.super Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;
.source "VideoOnlyController1.java"

# interfaces
.implements Lcom/xiao/nicevideoplayer/ChangeClarityDialog$OnClarityChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiao/nicevideoplayer/VideoOnlyController1$OnButtonClickListener;
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

.field private topBottomVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/xiao/nicevideoplayer/VideoOnlyController1;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 82
    invoke-direct {p0, p1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;-><init>(Landroid/content/Context;)V

    .line 323
    new-instance v0, Lcom/xiao/nicevideoplayer/VideoOnlyController1$1;

    invoke-direct {v0, p0}, Lcom/xiao/nicevideoplayer/VideoOnlyController1$1;-><init>(Lcom/xiao/nicevideoplayer/VideoOnlyController1;)V

    iput-object v0, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->mBatterReceiver:Landroid/content/BroadcastReceiver;

    .line 83
    iput-object p1, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->mContext:Landroid/content/Context;

    .line 84
    invoke-direct {p0}, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiao/nicevideoplayer/VideoOnlyController1;Z)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->setTopBottomVisible(Z)V

    return-void
.end method

.method private cancelDismissTopBottomTimer()V
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->mDismissTopBottomCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 487
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void
.end method

.method private init()V
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiao/nicevideoplayer/R$layout;->video_only_controller:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 101
    sget v0, Lcom/xiao/nicevideoplayer/R$id;->image:I

    invoke-virtual {p0, v0}, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->mImage:Landroid/widget/ImageView;

    return-void
.end method

.method private setTopBottomVisible(Z)V
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {v0}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->isFullScreen()Z

    .line 443
    iput-boolean p1, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->topBottomVisible:Z

    if-eqz p1, :cond_0

    .line 445
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {p1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->isPaused()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {p1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->isBufferingPaused()Z

    move-result p1

    if-nez p1, :cond_1

    .line 446
    invoke-direct {p0}, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->startDismissTopBottomTimer()V

    goto :goto_0

    .line 456
    :cond_0
    invoke-direct {p0}, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->cancelDismissTopBottomTimer()V

    :cond_1
    :goto_0
    return-void
.end method

.method private startDismissTopBottomTimer()V
    .locals 7

    .line 465
    invoke-direct {p0}, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->cancelDismissTopBottomTimer()V

    .line 466
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->mDismissTopBottomCountDownTimer:Landroid/os/CountDownTimer;

    if-nez v0, :cond_0

    .line 467
    new-instance v0, Lcom/xiao/nicevideoplayer/VideoOnlyController1$2;

    const-wide/16 v3, 0x1f40

    const-wide/16 v5, 0x1f40

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/xiao/nicevideoplayer/VideoOnlyController1$2;-><init>(Lcom/xiao/nicevideoplayer/VideoOnlyController1;JJ)V

    iput-object v0, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->mDismissTopBottomCountDownTimer:Landroid/os/CountDownTimer;

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->mDismissTopBottomCountDownTimer:Landroid/os/CountDownTimer;

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
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->mImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method public onActivityResume()V
    .locals 2

    .line 405
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {v0}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {v0}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->start()V

    :cond_0
    const/4 v0, 0x1

    .line 408
    invoke-direct {p0, v0}, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->setTopBottomVisible(Z)V

    .line 409
    sget-object v0, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->TAG:Ljava/lang/String;

    const-string v1, "setTopBottomVisible"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onClarityChanged(I)V
    .locals 4

    .line 419
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->clarities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiao/nicevideoplayer/Clarity;

    .line 421
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {v0}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->getCurrentPosition()J

    move-result-wide v0

    .line 422
    iget-object v2, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {v2}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->releasePlayer()V

    .line 423
    iget-object v2, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    iget-object p1, p1, Lcom/xiao/nicevideoplayer/Clarity;->videoUrl:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->setUp(Ljava/lang/String;Ljava/util/Map;)V

    .line 424
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {p1, v0, v1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->start(J)V

    return-void
.end method

.method public onClarityNotChanged()V
    .locals 1

    const/4 v0, 0x1

    .line 430
    invoke-direct {p0, v0}, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->setTopBottomVisible(Z)V

    return-void
.end method

.method protected onPlayModeChanged(I)V
    .locals 1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 303
    :cond_0
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->clarities:Ljava/util/List;

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

    .line 222
    sget-object v0, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->TAG:Ljava/lang/String;

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

    .line 276
    :pswitch_0
    invoke-virtual {p0}, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->cancelUpdateProgressTimer()V

    .line 278
    invoke-direct {p0, v0}, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->setTopBottomVisible(Z)V

    goto :goto_0

    .line 266
    :pswitch_1
    invoke-direct {p0}, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->cancelDismissTopBottomTimer()V

    goto :goto_0

    .line 259
    :pswitch_2
    invoke-direct {p0}, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->startDismissTopBottomTimer()V

    goto :goto_0

    .line 252
    :pswitch_3
    invoke-direct {p0}, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->cancelDismissTopBottomTimer()V

    goto :goto_0

    .line 246
    :pswitch_4
    invoke-direct {p0, v0}, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->setTopBottomVisible(Z)V

    .line 247
    invoke-direct {p0}, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->startDismissTopBottomTimer()V

    goto :goto_0

    .line 240
    :pswitch_5
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->mImage:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 241
    invoke-virtual {p0}, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->startUpdateProgressTimer()V

    goto :goto_0

    .line 228
    :pswitch_6
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 225
    :pswitch_7
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 269
    :pswitch_8
    invoke-virtual {p0}, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->cancelUpdateProgressTimer()V

    .line 270
    invoke-direct {p0, v1}, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->setTopBottomVisible(Z)V

    .line 271
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

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

    .line 355
    iput-boolean v0, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->topBottomVisible:Z

    .line 356
    invoke-virtual {p0}, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->cancelUpdateProgressTimer()V

    .line 357
    invoke-direct {p0}, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->cancelDismissTopBottomTimer()V

    .line 362
    iget-object v1, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->mImage:Landroid/widget/ImageView;

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

    .line 200
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 201
    iput-object p1, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->clarities:Ljava/util/List;

    .line 202
    iput p2, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->defaultClarityIndex:I

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 205
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiao/nicevideoplayer/Clarity;

    .line 206
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

    .line 210
    :cond_0
    new-instance v1, Lcom/xiao/nicevideoplayer/ChangeClarityDialog;

    iget-object v2, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/xiao/nicevideoplayer/ChangeClarityDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->mClarityDialog:Lcom/xiao/nicevideoplayer/ChangeClarityDialog;

    .line 211
    invoke-virtual {v1, v0, p2}, Lcom/xiao/nicevideoplayer/ChangeClarityDialog;->setClarityGrade(Ljava/util/List;I)V

    .line 212
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->mClarityDialog:Lcom/xiao/nicevideoplayer/ChangeClarityDialog;

    invoke-virtual {v0, p0}, Lcom/xiao/nicevideoplayer/ChangeClarityDialog;->setOnClarityCheckedListener(Lcom/xiao/nicevideoplayer/ChangeClarityDialog$OnClarityChangedListener;)V

    .line 214
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiao/nicevideoplayer/Clarity;

    iget-object p1, p1, Lcom/xiao/nicevideoplayer/Clarity;->videoUrl:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-interface {v0, p1, p2}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->setUp(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public setDeleteImage(I)V
    .locals 0

    return-void
.end method

.method public setDownloadEnable(Z)V
    .locals 0

    return-void
.end method

.method public setDownloadImage(I)V
    .locals 0

    return-void
.end method

.method public setImage(I)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setLenght(J)V
    .locals 0

    return-void
.end method

.method public setNiceVideoPlayer(Lcom/xiao/nicevideoplayer/INiceVideoPlayer;)V
    .locals 2

    .line 187
    invoke-super {p0, p1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->setNiceVideoPlayer(Lcom/xiao/nicevideoplayer/INiceVideoPlayer;)V

    .line 189
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->clarities:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 190
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    iget-object v0, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->clarities:Ljava/util/List;

    iget v1, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->defaultClarityIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiao/nicevideoplayer/Clarity;

    iget-object v0, v0, Lcom/xiao/nicevideoplayer/Clarity;->videoUrl:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->setUp(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
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

    .line 513
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {v0}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->getCurrentPosition()J

    .line 514
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {v0}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->getDuration()J

    .line 515
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/VideoOnlyController1;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {v0}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->getBufferPercentage()I

    return-void
.end method
