.class final Lcom/powervision/base/views/loopview/InertiaTimerTask;
.super Ljava/lang/Object;
.source "InertiaTimerTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:F

.field final loopView:Lcom/powervision/base/views/loopview/LoopView;

.field final velocityY:F


# direct methods
.method constructor <init>(Lcom/powervision/base/views/loopview/LoopView;F)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/powervision/base/views/loopview/InertiaTimerTask;->loopView:Lcom/powervision/base/views/loopview/LoopView;

    .line 21
    iput p2, p0, Lcom/powervision/base/views/loopview/InertiaTimerTask;->velocityY:F

    const/high16 p1, 0x4f000000

    .line 22
    iput p1, p0, Lcom/powervision/base/views/loopview/InertiaTimerTask;->a:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 27
    iget v0, p0, Lcom/powervision/base/views/loopview/InertiaTimerTask;->a:F

    const/4 v1, 0x0

    const/high16 v2, 0x4f000000

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    .line 28
    iget v0, p0, Lcom/powervision/base/views/loopview/InertiaTimerTask;->velocityY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x44fa0000    # 2000.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 29
    iget v0, p0, Lcom/powervision/base/views/loopview/InertiaTimerTask;->velocityY:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 30
    iput v2, p0, Lcom/powervision/base/views/loopview/InertiaTimerTask;->a:F

    goto :goto_0

    :cond_0
    const/high16 v0, -0x3b060000    # -2000.0f

    .line 32
    iput v0, p0, Lcom/powervision/base/views/loopview/InertiaTimerTask;->a:F

    goto :goto_0

    .line 35
    :cond_1
    iget v0, p0, Lcom/powervision/base/views/loopview/InertiaTimerTask;->velocityY:F

    iput v0, p0, Lcom/powervision/base/views/loopview/InertiaTimerTask;->a:F

    .line 38
    :cond_2
    :goto_0
    iget v0, p0, Lcom/powervision/base/views/loopview/InertiaTimerTask;->a:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x41a00000    # 20.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/powervision/base/views/loopview/InertiaTimerTask;->a:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_3

    const-string v0, "gy"

    const-string v1, "WHAT_SMOOTH_SCROLL_INERTIA"

    .line 39
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v0, p0, Lcom/powervision/base/views/loopview/InertiaTimerTask;->loopView:Lcom/powervision/base/views/loopview/LoopView;

    iget-object v0, v0, Lcom/powervision/base/views/loopview/LoopView;->handler:Landroid/os/Handler;

    const/16 v1, 0x7d1

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 41
    iget-object v0, p0, Lcom/powervision/base/views/loopview/InertiaTimerTask;->loopView:Lcom/powervision/base/views/loopview/LoopView;

    invoke-virtual {v0}, Lcom/powervision/base/views/loopview/LoopView;->cancelFuture()V

    .line 42
    iget-object v0, p0, Lcom/powervision/base/views/loopview/InertiaTimerTask;->loopView:Lcom/powervision/base/views/loopview/LoopView;

    iget-object v0, v0, Lcom/powervision/base/views/loopview/LoopView;->handler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 45
    :cond_3
    iget v0, p0, Lcom/powervision/base/views/loopview/InertiaTimerTask;->a:F

    const/high16 v3, 0x41200000    # 10.0f

    mul-float v0, v0, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v0, v3

    float-to-int v0, v0

    .line 46
    iget-object v3, p0, Lcom/powervision/base/views/loopview/InertiaTimerTask;->loopView:Lcom/powervision/base/views/loopview/LoopView;

    .line 47
    iget v4, v3, Lcom/powervision/base/views/loopview/LoopView;->totalScrollY:I

    sub-int/2addr v4, v0

    iput v4, v3, Lcom/powervision/base/views/loopview/LoopView;->totalScrollY:I

    .line 48
    iget-object v0, p0, Lcom/powervision/base/views/loopview/InertiaTimerTask;->loopView:Lcom/powervision/base/views/loopview/LoopView;

    iget-boolean v0, v0, Lcom/powervision/base/views/loopview/LoopView;->isLoop:Z

    if-nez v0, :cond_5

    .line 49
    iget-object v0, p0, Lcom/powervision/base/views/loopview/InertiaTimerTask;->loopView:Lcom/powervision/base/views/loopview/LoopView;

    iget v0, v0, Lcom/powervision/base/views/loopview/LoopView;->lineSpacingMultiplier:F

    iget-object v3, p0, Lcom/powervision/base/views/loopview/InertiaTimerTask;->loopView:Lcom/powervision/base/views/loopview/LoopView;

    iget v3, v3, Lcom/powervision/base/views/loopview/LoopView;->itemTextHeight:I

    int-to-float v3, v3

    mul-float v0, v0, v3

    .line 50
    iget-object v3, p0, Lcom/powervision/base/views/loopview/InertiaTimerTask;->loopView:Lcom/powervision/base/views/loopview/LoopView;

    iget v3, v3, Lcom/powervision/base/views/loopview/LoopView;->totalScrollY:I

    iget-object v4, p0, Lcom/powervision/base/views/loopview/InertiaTimerTask;->loopView:Lcom/powervision/base/views/loopview/LoopView;

    iget v4, v4, Lcom/powervision/base/views/loopview/LoopView;->initPosition:I

    neg-int v4, v4

    int-to-float v4, v4

    mul-float v4, v4, v0

    float-to-int v4, v4

    if-gt v3, v4, :cond_4

    const/high16 v3, 0x42200000    # 40.0f

    .line 51
    iput v3, p0, Lcom/powervision/base/views/loopview/InertiaTimerTask;->a:F

    .line 52
    iget-object v3, p0, Lcom/powervision/base/views/loopview/InertiaTimerTask;->loopView:Lcom/powervision/base/views/loopview/LoopView;

    iget v4, v3, Lcom/powervision/base/views/loopview/LoopView;->initPosition:I

    neg-int v4, v4

    int-to-float v4, v4

    mul-float v4, v4, v0

    float-to-int v0, v4

    iput v0, v3, Lcom/powervision/base/views/loopview/LoopView;->totalScrollY:I

    goto :goto_1

    .line 53
    :cond_4
    iget-object v3, p0, Lcom/powervision/base/views/loopview/InertiaTimerTask;->loopView:Lcom/powervision/base/views/loopview/LoopView;

    iget v3, v3, Lcom/powervision/base/views/loopview/LoopView;->totalScrollY:I

    iget-object v4, p0, Lcom/powervision/base/views/loopview/InertiaTimerTask;->loopView:Lcom/powervision/base/views/loopview/LoopView;

    iget-object v4, v4, Lcom/powervision/base/views/loopview/LoopView;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lcom/powervision/base/views/loopview/InertiaTimerTask;->loopView:Lcom/powervision/base/views/loopview/LoopView;

    iget v5, v5, Lcom/powervision/base/views/loopview/LoopView;->initPosition:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float v4, v4, v0

    float-to-int v4, v4

    if-lt v3, v4, :cond_5

    .line 54
    iget-object v3, p0, Lcom/powervision/base/views/loopview/InertiaTimerTask;->loopView:Lcom/powervision/base/views/loopview/LoopView;

    iget-object v4, v3, Lcom/powervision/base/views/loopview/LoopView;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lcom/powervision/base/views/loopview/InertiaTimerTask;->loopView:Lcom/powervision/base/views/loopview/LoopView;

    iget v5, v5, Lcom/powervision/base/views/loopview/LoopView;->initPosition:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float v4, v4, v0

    float-to-int v0, v4

    iput v0, v3, Lcom/powervision/base/views/loopview/LoopView;->totalScrollY:I

    const/high16 v0, -0x3de00000    # -40.0f

    .line 55
    iput v0, p0, Lcom/powervision/base/views/loopview/InertiaTimerTask;->a:F

    .line 58
    :cond_5
    :goto_1
    iget v0, p0, Lcom/powervision/base/views/loopview/InertiaTimerTask;->a:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_6

    add-float/2addr v0, v2

    .line 59
    iput v0, p0, Lcom/powervision/base/views/loopview/InertiaTimerTask;->a:F

    goto :goto_2

    :cond_6
    sub-float/2addr v0, v2

    .line 61
    iput v0, p0, Lcom/powervision/base/views/loopview/InertiaTimerTask;->a:F

    .line 63
    :goto_2
    iget-object v0, p0, Lcom/powervision/base/views/loopview/InertiaTimerTask;->loopView:Lcom/powervision/base/views/loopview/LoopView;

    iget-object v0, v0, Lcom/powervision/base/views/loopview/LoopView;->handler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
