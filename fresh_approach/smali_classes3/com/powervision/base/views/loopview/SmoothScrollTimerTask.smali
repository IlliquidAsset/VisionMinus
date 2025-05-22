.class final Lcom/powervision/base/views/loopview/SmoothScrollTimerTask;
.super Ljava/lang/Object;
.source "SmoothScrollTimerTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final loopView:Lcom/powervision/base/views/loopview/LoopView;

.field offset:I

.field realOffset:I

.field realTotalOffset:I


# direct methods
.method constructor <init>(Lcom/powervision/base/views/loopview/LoopView;I)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/powervision/base/views/loopview/SmoothScrollTimerTask;->loopView:Lcom/powervision/base/views/loopview/LoopView;

    .line 16
    iput p2, p0, Lcom/powervision/base/views/loopview/SmoothScrollTimerTask;->offset:I

    const p1, 0x7fffffff

    .line 17
    iput p1, p0, Lcom/powervision/base/views/loopview/SmoothScrollTimerTask;->realTotalOffset:I

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/powervision/base/views/loopview/SmoothScrollTimerTask;->realOffset:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 23
    iget v0, p0, Lcom/powervision/base/views/loopview/SmoothScrollTimerTask;->realTotalOffset:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 24
    iget v0, p0, Lcom/powervision/base/views/loopview/SmoothScrollTimerTask;->offset:I

    iput v0, p0, Lcom/powervision/base/views/loopview/SmoothScrollTimerTask;->realTotalOffset:I

    .line 26
    :cond_0
    iget v0, p0, Lcom/powervision/base/views/loopview/SmoothScrollTimerTask;->realTotalOffset:I

    int-to-float v1, v0

    const v2, 0x3dcccccd    # 0.1f

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/powervision/base/views/loopview/SmoothScrollTimerTask;->realOffset:I

    if-nez v1, :cond_2

    if-gez v0, :cond_1

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lcom/powervision/base/views/loopview/SmoothScrollTimerTask;->realOffset:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 32
    iput v0, p0, Lcom/powervision/base/views/loopview/SmoothScrollTimerTask;->realOffset:I

    .line 35
    :cond_2
    :goto_0
    iget v0, p0, Lcom/powervision/base/views/loopview/SmoothScrollTimerTask;->realTotalOffset:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gtz v0, :cond_3

    .line 36
    iget-object v0, p0, Lcom/powervision/base/views/loopview/SmoothScrollTimerTask;->loopView:Lcom/powervision/base/views/loopview/LoopView;

    invoke-virtual {v0}, Lcom/powervision/base/views/loopview/LoopView;->cancelFuture()V

    .line 37
    iget-object v0, p0, Lcom/powervision/base/views/loopview/SmoothScrollTimerTask;->loopView:Lcom/powervision/base/views/loopview/LoopView;

    iget-object v0, v0, Lcom/powervision/base/views/loopview/LoopView;->handler:Landroid/os/Handler;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 39
    :cond_3
    iget-object v0, p0, Lcom/powervision/base/views/loopview/SmoothScrollTimerTask;->loopView:Lcom/powervision/base/views/loopview/LoopView;

    iget v1, v0, Lcom/powervision/base/views/loopview/LoopView;->totalScrollY:I

    iget v2, p0, Lcom/powervision/base/views/loopview/SmoothScrollTimerTask;->realOffset:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/powervision/base/views/loopview/LoopView;->totalScrollY:I

    .line 40
    iget-object v0, p0, Lcom/powervision/base/views/loopview/SmoothScrollTimerTask;->loopView:Lcom/powervision/base/views/loopview/LoopView;

    iget-object v0, v0, Lcom/powervision/base/views/loopview/LoopView;->handler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 41
    iget v0, p0, Lcom/powervision/base/views/loopview/SmoothScrollTimerTask;->realTotalOffset:I

    iget v1, p0, Lcom/powervision/base/views/loopview/SmoothScrollTimerTask;->realOffset:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/powervision/base/views/loopview/SmoothScrollTimerTask;->realTotalOffset:I

    :goto_1
    return-void
.end method
