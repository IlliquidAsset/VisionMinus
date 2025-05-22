.class public Lcom/powervision/base/views/LiveStatusView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "LiveStatusView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/base/views/LiveStatusView$LiveViewCallback;
    }
.end annotation


# instance fields
.field private animation:Landroid/view/animation/Animation;

.field private context:Landroid/content/Context;

.field private liveViewCallback:Lcom/powervision/base/views/LiveStatusView$LiveViewCallback;

.field private mLiveStatusImg:Landroid/widget/ImageView;

.field private mLiveStatusText:Landroid/widget/TextView;

.field private mLiveTimeText:Landroid/widget/TextView;

.field private mLiveVoiceImge:Landroid/widget/ImageView;

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;

.field private recordingTime:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 119
    iput p1, p0, Lcom/powervision/base/views/LiveStatusView;->recordingTime:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 119
    iput p2, p0, Lcom/powervision/base/views/LiveStatusView;->recordingTime:I

    .line 44
    iput-object p1, p0, Lcom/powervision/base/views/LiveStatusView;->context:Landroid/content/Context;

    .line 45
    invoke-direct {p0, p1}, Lcom/powervision/base/views/LiveStatusView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/base/views/LiveStatusView;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/powervision/base/views/LiveStatusView;->recordingTime:I

    return p0
.end method

.method static synthetic access$004(Lcom/powervision/base/views/LiveStatusView;)I
    .locals 1

    .line 29
    iget v0, p0, Lcom/powervision/base/views/LiveStatusView;->recordingTime:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/powervision/base/views/LiveStatusView;->recordingTime:I

    return v0
.end method

.method static synthetic access$100(Lcom/powervision/base/views/LiveStatusView;)Landroid/widget/TextView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/powervision/base/views/LiveStatusView;->mLiveTimeText:Landroid/widget/TextView;

    return-object p0
.end method

.method private initView(Landroid/content/Context;)V
    .locals 2

    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/powervision/base/R$layout;->live_stream_status_bg_layout:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 50
    sget v0, Lcom/powervision/base/R$id;->live_stream_bg_btn_img:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/base/views/LiveStatusView;->mLiveStatusImg:Landroid/widget/ImageView;

    .line 51
    sget v0, Lcom/powervision/base/R$id;->live_stream_voice_img:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/base/views/LiveStatusView;->mLiveVoiceImge:Landroid/widget/ImageView;

    .line 52
    sget v0, Lcom/powervision/base/R$id;->live_streaming_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/base/views/LiveStatusView;->mLiveStatusText:Landroid/widget/TextView;

    .line 53
    sget v0, Lcom/powervision/base/R$id;->live_stream_time_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/base/views/LiveStatusView;->mLiveTimeText:Landroid/widget/TextView;

    .line 54
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object p1

    const-string v0, "AP03_STREAM_AUDIO_STATUS"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/powervision/base/views/LiveStatusView;->isOpenVoice(Z)V

    .line 55
    iget-object p1, p0, Lcom/powervision/base/views/LiveStatusView;->mLiveStatusImg:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public isOpenVoice(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 67
    iget-object p1, p0, Lcom/powervision/base/views/LiveStatusView;->mLiveVoiceImge:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/base/R$mipmap;->icon_live_stream_voice5:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 68
    iget-object p1, p0, Lcom/powervision/base/views/LiveStatusView;->mLiveStatusText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/base/views/LiveStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/base/R$color;->live_red_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    iget-object p1, p0, Lcom/powervision/base/views/LiveStatusView;->mLiveTimeText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/base/views/LiveStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/base/R$color;->black:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 71
    :cond_0
    iget-object p1, p0, Lcom/powervision/base/views/LiveStatusView;->mLiveVoiceImge:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/base/R$mipmap;->icon_live_stream_voice_close:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    iget-object p1, p0, Lcom/powervision/base/views/LiveStatusView;->mLiveStatusText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/base/views/LiveStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/base/R$color;->live_red_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    iget-object p1, p0, Lcom/powervision/base/views/LiveStatusView;->mLiveTimeText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/base/views/LiveStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/base/R$color;->gray_color_live_time:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/powervision/base/R$id;->live_stream_bg_btn_img:I

    if-ne p1, v0, :cond_0

    .line 61
    iget-object p1, p0, Lcom/powervision/base/views/LiveStatusView;->liveViewCallback:Lcom/powervision/base/views/LiveStatusView$LiveViewCallback;

    invoke-interface {p1}, Lcom/powervision/base/views/LiveStatusView$LiveViewCallback;->onClickLiveStatus()V

    :cond_0
    return-void
.end method

.method public onStopLiveStreamTimer()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/powervision/base/views/LiveStatusView;->mTimer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 149
    iput-object v1, p0, Lcom/powervision/base/views/LiveStatusView;->mTimer:Ljava/util/Timer;

    const/4 v0, 0x0

    .line 150
    iput v0, p0, Lcom/powervision/base/views/LiveStatusView;->recordingTime:I

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/powervision/base/views/LiveStatusView;->mTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 153
    iput-object v1, p0, Lcom/powervision/base/views/LiveStatusView;->mTimerTask:Ljava/util/TimerTask;

    :cond_1
    return-void
.end method

.method public setCallback(Lcom/powervision/base/views/LiveStatusView$LiveViewCallback;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/powervision/base/views/LiveStatusView;->liveViewCallback:Lcom/powervision/base/views/LiveStatusView$LiveViewCallback;

    return-void
.end method

.method public setDecibelChange(D)V
    .locals 3

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    .line 79
    iget-object p1, p0, Lcom/powervision/base/views/LiveStatusView;->mLiveVoiceImge:Landroid/widget/ImageView;

    sget p2, Lcom/powervision/base/R$mipmap;->icon_live_stream_voice1:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_1

    .line 81
    iget-object p1, p0, Lcom/powervision/base/views/LiveStatusView;->mLiveVoiceImge:Landroid/widget/ImageView;

    sget p2, Lcom/powervision/base/R$mipmap;->icon_live_stream_voice2:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_2

    .line 83
    iget-object p1, p0, Lcom/powervision/base/views/LiveStatusView;->mLiveVoiceImge:Landroid/widget/ImageView;

    sget p2, Lcom/powervision/base/R$mipmap;->icon_live_stream_voice3:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_3

    .line 85
    iget-object p1, p0, Lcom/powervision/base/views/LiveStatusView;->mLiveVoiceImge:Landroid/widget/ImageView;

    sget p2, Lcom/powervision/base/R$mipmap;->icon_live_stream_voice4:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    const-wide v0, 0x4056800000000000L    # 90.0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_4

    .line 87
    iget-object p1, p0, Lcom/powervision/base/views/LiveStatusView;->mLiveVoiceImge:Landroid/widget/ImageView;

    sget p2, Lcom/powervision/base/R$mipmap;->icon_live_stream_voice5:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 89
    :cond_4
    iget-object p1, p0, Lcom/powervision/base/views/LiveStatusView;->mLiveVoiceImge:Landroid/widget/ImageView;

    sget p2, Lcom/powervision/base/R$mipmap;->icon_live_stream_voice5:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public setFlickerAnimation()V
    .locals 3

    .line 97
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/powervision/base/views/LiveStatusView;->animation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x3e8

    .line 99
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 100
    iget-object v0, p0, Lcom/powervision/base/views/LiveStatusView;->animation:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 101
    iget-object v0, p0, Lcom/powervision/base/views/LiveStatusView;->animation:Landroid/view/animation/Animation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 102
    iget-object v0, p0, Lcom/powervision/base/views/LiveStatusView;->animation:Landroid/view/animation/Animation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 103
    iget-object v0, p0, Lcom/powervision/base/views/LiveStatusView;->mLiveStatusText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/base/views/LiveStatusView;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public startTimerTask()V
    .locals 7

    .line 122
    iget v0, p0, Lcom/powervision/base/views/LiveStatusView;->recordingTime:I

    invoke-static {v0}, Lcom/powervision/base/utils/TimeUtils;->formatRecordVideoTime(I)Ljava/lang/String;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/powervision/base/views/LiveStatusView;->mLiveTimeText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/powervision/base/views/LiveStatusView;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/base/views/LiveStatusView;->mTimerTask:Ljava/util/TimerTask;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/powervision/base/views/LiveStatusView;->mTimer:Ljava/util/Timer;

    .line 126
    new-instance v2, Lcom/powervision/base/views/LiveStatusView$1;

    invoke-direct {v2, p0}, Lcom/powervision/base/views/LiveStatusView$1;-><init>(Lcom/powervision/base/views/LiveStatusView;)V

    iput-object v2, p0, Lcom/powervision/base/views/LiveStatusView;->mTimerTask:Ljava/util/TimerTask;

    .line 139
    iget-object v1, p0, Lcom/powervision/base/views/LiveStatusView;->mTimer:Ljava/util/Timer;

    const-wide/16 v3, 0x3e8

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method

.method public stopFlickerAnimation()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/powervision/base/views/LiveStatusView;->animation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    :cond_0
    return-void
.end method
