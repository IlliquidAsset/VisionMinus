.class public abstract Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;
.super Landroid/widget/FrameLayout;
.source "NiceVideoPlayerController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final THRESHOLD:I = 0x50


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDownX:F

.field private mDownY:F

.field private mGestureDownBrightness:F

.field private mGestureDownPosition:J

.field private mGestureDownVolume:I

.field private mNeedChangeBrightness:Z

.field private mNeedChangePosition:Z

.field private mNeedChangeVolume:Z

.field private mNewPosition:J

.field protected mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

.field private mUpdateProgressTimer:Ljava/util/Timer;

.field private mUpdateProgressTimerTask:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 41
    iput-object p1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->mContext:Landroid/content/Context;

    .line 42
    invoke-virtual {p0, p0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method protected cancelUpdateProgressTimer()V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->mUpdateProgressTimer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 140
    iput-object v1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->mUpdateProgressTimer:Ljava/util/Timer;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->mUpdateProgressTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 143
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 144
    iput-object v1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->mUpdateProgressTimerTask:Ljava/util/TimerTask;

    :cond_1
    return-void
.end method

.method protected abstract hideChangeBrightness()V
.end method

.method protected abstract hideChangePosition()V
.end method

.method protected abstract hideChangeVolume()V
.end method

.method public abstract imageView()Landroid/widget/ImageView;
.end method

.method protected abstract onPlayModeChanged(I)V
.end method

.method protected abstract onPlayStateChanged(I)V
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 156
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {p1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->isFullScreen()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 160
    :cond_0
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {p1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->isIdle()Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    .line 161
    invoke-interface {p1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->isError()Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    .line 162
    invoke-interface {p1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->isPreparing()Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    .line 163
    invoke-interface {p1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->isPrepared()Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    .line 164
    invoke-interface {p1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->isCompleted()Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_2

    .line 170
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 171
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 172
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-eqz p2, :cond_b

    const/4 v2, 0x1

    if-eq p2, v2, :cond_8

    const/4 v3, 0x2

    if-eq p2, v3, :cond_2

    const/4 p1, 0x3

    if-eq p2, p1, :cond_8

    goto/16 :goto_1

    .line 181
    :cond_2
    iget p2, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->mDownX:F

    sub-float/2addr p1, p2

    .line 182
    iget p2, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->mDownY:F

    sub-float/2addr v1, p2

    .line 183
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 184
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 185
    iget-boolean v4, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->mNeedChangePosition:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->mNeedChangeVolume:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->mNeedChangeBrightness:Z

    if-nez v4, :cond_5

    const/high16 v4, 0x42a00000    # 80.0f

    cmpl-float p2, p2, v4

    if-ltz p2, :cond_3

    .line 188
    invoke-virtual {p0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->cancelUpdateProgressTimer()V

    .line 189
    iput-boolean v2, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->mNeedChangePosition:Z

    .line 190
    iget-object p2, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {p2}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->getCurrentPosition()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->mGestureDownPosition:J

    goto :goto_0

    :cond_3
    cmpl-float p2, v3, v4

    if-ltz p2, :cond_5

    .line 192
    iget p2, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->mDownX:F

    invoke-virtual {p0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v3, v3, v4

    cmpg-float p2, p2, v3

    if-gez p2, :cond_4

    .line 194
    iput-boolean v2, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->mNeedChangeBrightness:Z

    .line 195
    iget-object p2, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/xiao/nicevideoplayer/NiceUtil;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p2

    .line 196
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iput p2, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->mGestureDownBrightness:F

    goto :goto_0

    .line 199
    :cond_4
    iput-boolean v2, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->mNeedChangeVolume:Z

    .line 200
    iget-object p2, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {p2}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->getVolume()I

    move-result p2

    iput p2, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->mGestureDownVolume:I

    .line 204
    :cond_5
    :goto_0
    iget-boolean p2, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->mNeedChangePosition:Z

    const/high16 v2, 0x42c80000    # 100.0f

    if-eqz p2, :cond_6

    .line 205
    iget-object p2, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {p2}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->getDuration()J

    move-result-wide v3

    .line 206
    iget-wide v5, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->mGestureDownPosition:J

    long-to-float p2, v5

    long-to-float v5, v3

    mul-float p1, p1, v5

    invoke-virtual {p0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr p1, v6

    add-float/2addr p2, p1

    float-to-long p1, p2

    const-wide/16 v6, 0x0

    .line 207
    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-static {v6, v7, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->mNewPosition:J

    long-to-float p1, p1

    mul-float p1, p1, v2

    div-float/2addr p1, v5

    float-to-int p1, p1

    .line 209
    invoke-virtual {p0, v3, v4, p1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->showChangePosition(JI)V

    .line 211
    :cond_6
    iget-boolean p1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->mNeedChangeBrightness:Z

    const/high16 p2, 0x40400000    # 3.0f

    if-eqz p1, :cond_7

    neg-float v1, v1

    mul-float p1, v1, p2

    .line 213
    invoke-virtual {p0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p1, v3

    .line 214
    iget v3, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->mGestureDownBrightness:F

    add-float/2addr v3, p1

    const/4 p1, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 215
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {p1, v3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 217
    iget-object v3, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiao/nicevideoplayer/NiceUtil;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v3

    .line 218
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 219
    iput p1, v3, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 220
    iget-object v4, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiao/nicevideoplayer/NiceUtil;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    mul-float p1, p1, v2

    float-to-int p1, p1

    .line 222
    invoke-virtual {p0, p1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->showChangeBrightness(I)V

    .line 224
    :cond_7
    iget-boolean p1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->mNeedChangeVolume:Z

    if-eqz p1, :cond_c

    neg-float p1, v1

    .line 226
    iget-object v1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {v1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->getMaxVolume()I

    move-result v1

    int-to-float v3, v1

    mul-float p1, p1, v3

    mul-float p1, p1, p2

    .line 227
    invoke-virtual {p0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    float-to-int p1, p1

    .line 228
    iget p2, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->mGestureDownVolume:I

    add-int/2addr p2, p1

    .line 229
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 230
    iget-object p2, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    invoke-interface {p2, p1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->setVolume(I)V

    int-to-float p1, p1

    mul-float p1, p1, v2

    div-float/2addr p1, v3

    float-to-int p1, p1

    .line 232
    invoke-virtual {p0, p1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->showChangeVolume(I)V

    goto :goto_1

    .line 237
    :cond_8
    iget-boolean p1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->mNeedChangePosition:Z

    if-eqz p1, :cond_9

    .line 238
    iget-object p1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    iget-wide v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->mNewPosition:J

    invoke-interface {p1, v0, v1}, Lcom/xiao/nicevideoplayer/INiceVideoPlayer;->seekTo(J)V

    .line 239
    invoke-virtual {p0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->hideChangePosition()V

    .line 240
    invoke-virtual {p0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->startUpdateProgressTimer()V

    return v2

    .line 243
    :cond_9
    iget-boolean p1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->mNeedChangeBrightness:Z

    if-eqz p1, :cond_a

    .line 244
    invoke-virtual {p0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->hideChangeBrightness()V

    return v2

    .line 247
    :cond_a
    iget-boolean p1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->mNeedChangeVolume:Z

    if-eqz p1, :cond_c

    .line 248
    invoke-virtual {p0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->hideChangeVolume()V

    return v2

    .line 174
    :cond_b
    iput p1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->mDownX:F

    .line 175
    iput v1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->mDownY:F

    .line 176
    iput-boolean v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->mNeedChangePosition:Z

    .line 177
    iput-boolean v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->mNeedChangeVolume:Z

    .line 178
    iput-boolean v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->mNeedChangeBrightness:Z

    :cond_c
    :goto_1
    return v0

    .line 165
    :cond_d
    :goto_2
    invoke-virtual {p0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->hideChangePosition()V

    .line 166
    invoke-virtual {p0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->hideChangeBrightness()V

    .line 167
    invoke-virtual {p0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->hideChangeVolume()V

    return v0
.end method

.method protected abstract reset()V
.end method

.method public abstract setImage(I)V
.end method

.method public abstract setLenght(J)V
.end method

.method public setNiceVideoPlayer(Lcom/xiao/nicevideoplayer/INiceVideoPlayer;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->mNiceVideoPlayer:Lcom/xiao/nicevideoplayer/INiceVideoPlayer;

    return-void
.end method

.method public abstract setTitle(Ljava/lang/String;)V
.end method

.method protected abstract showChangeBrightness(I)V
.end method

.method protected abstract showChangePosition(JI)V
.end method

.method protected abstract showChangeVolume(I)V
.end method

.method protected startUpdateProgressTimer()V
    .locals 7

    .line 114
    invoke-virtual {p0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->cancelUpdateProgressTimer()V

    .line 115
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->mUpdateProgressTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->mUpdateProgressTimer:Ljava/util/Timer;

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->mUpdateProgressTimerTask:Ljava/util/TimerTask;

    if-nez v0, :cond_1

    .line 119
    new-instance v0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController$1;

    invoke-direct {v0, p0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController$1;-><init>(Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;)V

    iput-object v0, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->mUpdateProgressTimerTask:Ljava/util/TimerTask;

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->mUpdateProgressTimer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;->mUpdateProgressTimerTask:Ljava/util/TimerTask;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method protected abstract updateProgress()V
.end method
