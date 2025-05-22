.class public Lcom/powervision/media/widgets/player/VideoMediaController;
.super Landroid/widget/RelativeLayout;
.source "VideoMediaController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/media/widgets/player/VideoMediaController$SimpleAnimationListener;,
        Lcom/powervision/media/widgets/player/VideoMediaController$VideoHandler;
    }
.end annotation


# static fields
.field private static final MSG_HIDE_CONTROLLER:I = 0x2

.field private static final MSG_HIDE_TITLE:I = 0x0

.field private static final MSG_UPDATE_TIME_PROGRESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VideoMediaController"


# instance fields
.field private adapter:Lcom/powervision/media/ui/adapter/MediaLibListAdapter;

.field private hasPause:Z

.field mAllTime:Landroid/widget/TextView;

.field private mHandler:Lcom/powervision/media/widgets/player/VideoMediaController$VideoHandler;

.field private mOnPlayListener:Lcom/powervision/media/callback/OnPlayListener;

.field mPlayIcon:Landroid/widget/ImageView;

.field private mPreview:Landroid/widget/ImageView;

.field mProgressBar:Landroid/widget/ProgressBar;

.field mSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

.field mTimeLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field mTimeProgress:Landroid/widget/TextView;

.field private mVideoPlayer:Lcom/powervision/media/widgets/player/VideoPlayer;

.field private onSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private onTouchListener:Landroid/view/View$OnTouchListener;

.field private position:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, p1, v0}, Lcom/powervision/media/widgets/player/VideoMediaController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/media/widgets/player/VideoMediaController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    new-instance p1, Lcom/powervision/media/widgets/player/VideoMediaController$VideoHandler;

    invoke-direct {p1, p0}, Lcom/powervision/media/widgets/player/VideoMediaController$VideoHandler;-><init>(Lcom/powervision/media/widgets/player/VideoMediaController;)V

    iput-object p1, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->mHandler:Lcom/powervision/media/widgets/player/VideoMediaController$VideoHandler;

    .line 118
    new-instance p1, Lcom/powervision/media/widgets/player/VideoMediaController$1;

    invoke-direct {p1, p0}, Lcom/powervision/media/widgets/player/VideoMediaController$1;-><init>(Lcom/powervision/media/widgets/player/VideoMediaController;)V

    iput-object p1, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->onSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 150
    new-instance p1, Lcom/powervision/media/widgets/player/VideoMediaController$2;

    invoke-direct {p1, p0}, Lcom/powervision/media/widgets/player/VideoMediaController$2;-><init>(Lcom/powervision/media/widgets/player/VideoMediaController;)V

    iput-object p1, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->onTouchListener:Landroid/view/View$OnTouchListener;

    .line 96
    invoke-direct {p0}, Lcom/powervision/media/widgets/player/VideoMediaController;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/media/widgets/player/VideoMediaController;)Lcom/powervision/media/widgets/player/VideoMediaController$VideoHandler;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->mHandler:Lcom/powervision/media/widgets/player/VideoMediaController$VideoHandler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/media/widgets/player/VideoMediaController;)Lcom/powervision/media/widgets/player/VideoPlayer;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->mVideoPlayer:Lcom/powervision/media/widgets/player/VideoPlayer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/media/widgets/player/VideoMediaController;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/powervision/media/widgets/player/VideoMediaController;->showOrHideVideoController()V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 101
    invoke-virtual {p0}, Lcom/powervision/media/widgets/player/VideoMediaController;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/powervision/media/R$layout;->media_video_controller:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 102
    sget v1, Lcom/powervision/media/R$id;->pb_loading:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->mProgressBar:Landroid/widget/ProgressBar;

    .line 103
    sget v1, Lcom/powervision/media/R$id;->iv_play:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->mPlayIcon:Landroid/widget/ImageView;

    .line 104
    sget v1, Lcom/powervision/media/R$id;->time_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->mTimeProgress:Landroid/widget/TextView;

    .line 105
    sget v1, Lcom/powervision/media/R$id;->media_seekbar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatSeekBar;

    iput-object v1, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->mSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 106
    sget v1, Lcom/powervision/media/R$id;->time_total:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->mAllTime:Landroid/widget/TextView;

    .line 107
    sget v1, Lcom/powervision/media/R$id;->time_seek:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v1, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->mTimeLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 108
    sget v1, Lcom/powervision/media/R$id;->image_preview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->mPreview:Landroid/widget/ImageView;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "media---VideoMediaController initView"

    .line 109
    invoke-static {v1, v0}, Lcom/orhanobut/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    invoke-virtual {p0}, Lcom/powervision/media/widgets/player/VideoMediaController;->initViewDisplay()V

    .line 112
    iget-object v0, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v0}, Lcom/powervision/media/widgets/player/VideoMediaController;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 114
    iget-object v0, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->mSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    iget-object v1, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->onSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 115
    iget-object v0, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->mPlayIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showOrHideVideoController()V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->mTimeLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 166
    iget-object v0, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->mPlayIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 168
    invoke-virtual {p0}, Lcom/powervision/media/widgets/player/VideoMediaController;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/powervision/media/R$anim;->anim_bottom_in:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 169
    new-instance v1, Lcom/powervision/media/widgets/player/VideoMediaController$3;

    invoke-direct {v1, p0}, Lcom/powervision/media/widgets/player/VideoMediaController$3;-><init>(Lcom/powervision/media/widgets/player/VideoMediaController;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 179
    iget-object v1, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->mTimeLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->mPlayIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 184
    invoke-virtual {p0}, Lcom/powervision/media/widgets/player/VideoMediaController;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/powervision/media/R$anim;->anim_bottom_out:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 185
    new-instance v1, Lcom/powervision/media/widgets/player/VideoMediaController$4;

    invoke-direct {v1, p0}, Lcom/powervision/media/widgets/player/VideoMediaController$4;-><init>(Lcom/powervision/media/widgets/player/VideoMediaController;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 193
    iget-object v1, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->mTimeLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public delayHideTitle()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->mHandler:Lcom/powervision/media/widgets/player/VideoMediaController$VideoHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/media/widgets/player/VideoMediaController$VideoHandler;->removeMessages(I)V

    .line 83
    iget-object v0, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->mHandler:Lcom/powervision/media/widgets/player/VideoMediaController$VideoHandler;

    invoke-virtual {v0, v1}, Lcom/powervision/media/widgets/player/VideoMediaController$VideoHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public formatDuration(I)Ljava/lang/String;
    .locals 4

    .line 209
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 210
    new-instance v1, Ljava/util/Date;

    int-to-long v2, p1

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 66
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    invoke-direct {p0}, Lcom/powervision/media/widgets/player/VideoMediaController;->showOrHideVideoController()V

    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {p0}, Lcom/powervision/media/widgets/player/VideoMediaController;->updatePlayTimeAndProgress()V

    goto :goto_0

    .line 68
    :cond_2
    iget-object p1, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->mPreview:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public initViewDisplay()V
    .locals 3

    .line 298
    iget-object v0, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->mPlayIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->mPlayIcon:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/media/R$mipmap;->media_icon_play:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 300
    iget-object v0, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->mTimeLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->mTimeProgress:Landroid/widget/TextView;

    const-string v2, "00:00"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    iget-object v0, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->mSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setProgress(I)V

    .line 304
    iget-object v0, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->mSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setSecondaryProgress(I)V

    return-void
.end method

.method public loadPreview(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "media---loadPreview"

    .line 269
    invoke-static {v2, v1}, Lcom/orhanobut/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    iget-object v1, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 271
    invoke-virtual {v1, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 272
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    iget-object v1, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->mPreview:Landroid/widget/ImageView;

    .line 273
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 274
    iget-object p1, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 309
    iget-object p1, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->mPlayIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 310
    iget-object p1, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->mTimeProgress:Landroid/widget/TextView;

    const-string v2, "00:00"

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object p1, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->mSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setProgress(I)V

    .line 314
    invoke-static {}, Lcom/powervision/media/utils/MediaHelper;->getInstance()Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 316
    invoke-static {}, Lcom/powervision/media/utils/MediaHelper;->play()V

    const-string p1, "1"

    .line 317
    invoke-virtual {p0, p1}, Lcom/powervision/media/widgets/player/VideoMediaController;->setPlayIconTag(Ljava/lang/String;)V

    .line 318
    iget-object p1, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->mPlayIcon:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/media/R$mipmap;->media_icon_pause:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 319
    iget-object p1, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->mPlayIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 321
    invoke-virtual {p0}, Lcom/powervision/media/widgets/player/VideoMediaController;->delayHideTitle()V

    return-void

    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    const-string v2, "media---onClick"

    .line 324
    invoke-static {v2, p1}, Lcom/orhanobut/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 345
    invoke-static {}, Lcom/powervision/media/utils/MediaHelper;->getInstance()Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    const/4 v2, 0x2

    if-eqz p1, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "media---onClick22222222222"

    .line 346
    invoke-static {v0, p1}, Lcom/orhanobut/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 348
    invoke-static {}, Lcom/powervision/media/utils/MediaHelper;->pause()V

    .line 350
    iget-object p1, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->mHandler:Lcom/powervision/media/widgets/player/VideoMediaController$VideoHandler;

    invoke-virtual {p1, v2}, Lcom/powervision/media/widgets/player/VideoMediaController$VideoHandler;->removeMessages(I)V

    .line 352
    iget-object p1, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->mHandler:Lcom/powervision/media/widgets/player/VideoMediaController$VideoHandler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/powervision/media/widgets/player/VideoMediaController$VideoHandler;->removeMessages(I)V

    .line 353
    iget-object p1, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->mPlayIcon:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/media/R$mipmap;->media_icon_play:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 354
    iput-boolean v0, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->hasPause:Z

    goto :goto_1

    .line 356
    :cond_1
    iget-boolean p1, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->hasPause:Z

    if-eqz p1, :cond_2

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "media---onClick3333333333333"

    .line 357
    invoke-static {v0, p1}, Lcom/orhanobut/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    invoke-static {}, Lcom/powervision/media/utils/MediaHelper;->play()V

    .line 360
    iget-object p1, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->mHandler:Lcom/powervision/media/widgets/player/VideoMediaController$VideoHandler;

    const-wide/16 v3, 0x7d0

    invoke-virtual {p1, v2, v3, v4}, Lcom/powervision/media/widgets/player/VideoMediaController$VideoHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 361
    invoke-virtual {p0}, Lcom/powervision/media/widgets/player/VideoMediaController;->updatePlayTimeAndProgress()V

    .line 362
    iput-boolean v1, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->hasPause:Z

    goto :goto_0

    :cond_2
    new-array p1, v1, [Ljava/lang/Object;

    const-string v2, "media---onClick5555555555555"

    .line 365
    invoke-static {v2, p1}, Lcom/orhanobut/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 367
    iget-object p1, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->mPlayIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 368
    iget-object p1, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->mPlayIcon:Landroid/widget/ImageView;

    const-string v0, "0"

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 369
    iget-object p1, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 371
    iget-object p1, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->mVideoPlayer:Lcom/powervision/media/widgets/player/VideoPlayer;

    invoke-virtual {p1, v1}, Lcom/powervision/media/widgets/player/VideoPlayer;->setVideoViewVisible(I)V

    .line 373
    iget-object p1, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->adapter:Lcom/powervision/media/ui/adapter/MediaLibListAdapter;

    iget v0, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->position:I

    invoke-virtual {p1, v0}, Lcom/powervision/media/ui/adapter/MediaLibListAdapter;->setPlayPosition(I)V

    .line 375
    :goto_0
    iget-object p1, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->mPlayIcon:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/media/R$mipmap;->media_icon_pause:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-void
.end method

.method public removeAllMessage()V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->mHandler:Lcom/powervision/media/widgets/player/VideoMediaController$VideoHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/media/widgets/player/VideoMediaController$VideoHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public setAdapter(Lcom/powervision/media/ui/adapter/MediaLibListAdapter;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->adapter:Lcom/powervision/media/ui/adapter/MediaLibListAdapter;

    return-void
.end method

.method public setDuration(I)V
    .locals 1

    .line 202
    invoke-virtual {p0, p1}, Lcom/powervision/media/widgets/player/VideoMediaController;->formatDuration(I)Ljava/lang/String;

    move-result-object p1

    .line 203
    iget-object v0, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->mAllTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object p1, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->mTimeProgress:Landroid/widget/TextView;

    const-string v0, "00:00"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnPlayListener(Lcom/powervision/media/callback/OnPlayListener;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->mOnPlayListener:Lcom/powervision/media/callback/OnPlayListener;

    return-void
.end method

.method public setPbLoadingVisiable(I)V
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public setPlayIconTag(Ljava/lang/String;)V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->mPlayIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 254
    iput p1, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->position:I

    return-void
.end method

.method public setVideoPlayer(Lcom/powervision/media/widgets/player/VideoPlayer;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->mVideoPlayer:Lcom/powervision/media/widgets/player/VideoPlayer;

    return-void
.end method

.method public showPlayFinishView()V
    .locals 1

    .line 238
    invoke-virtual {p0}, Lcom/powervision/media/widgets/player/VideoMediaController;->initViewDisplay()V

    const-string v0, "2"

    .line 239
    invoke-virtual {p0, v0}, Lcom/powervision/media/widgets/player/VideoMediaController;->setPlayIconTag(Ljava/lang/String;)V

    return-void
.end method

.method public updatePlayTimeAndProgress()V
    .locals 4

    .line 216
    invoke-static {}, Lcom/powervision/media/utils/MediaHelper;->getInstance()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 218
    invoke-virtual {p0, v0}, Lcom/powervision/media/widgets/player/VideoMediaController;->formatDuration(I)Ljava/lang/String;

    move-result-object v1

    .line 219
    iget-object v2, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->mTimeProgress:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    invoke-static {}, Lcom/powervision/media/utils/MediaHelper;->getInstance()Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    mul-int/lit8 v0, v0, 0x64

    .line 225
    div-int/2addr v0, v1

    .line 226
    iget-object v1, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->mSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatSeekBar;->setProgress(I)V

    .line 228
    iget-object v0, p0, Lcom/powervision/media/widgets/player/VideoMediaController;->mHandler:Lcom/powervision/media/widgets/player/VideoMediaController$VideoHandler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/media/widgets/player/VideoMediaController$VideoHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
