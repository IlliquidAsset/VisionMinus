.class public Lcom/powervision/gcs/view/wheelview/WheelVerticalScroller;
.super Lcom/powervision/gcs/view/wheelview/WheelScroller;
.source "WheelVerticalScroller.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/powervision/gcs/view/wheelview/WheelScroller$ScrollingListener;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/powervision/gcs/view/wheelview/WheelScroller;-><init>(Landroid/content/Context;Lcom/powervision/gcs/view/wheelview/WheelScroller$ScrollingListener;)V

    return-void
.end method


# virtual methods
.method protected getCurrentScrollerPosition()I
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalScroller;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    return v0
.end method

.method protected getFinalScrollerPosition()I
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalScroller;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    return v0
.end method

.method protected getMotionEventPosition(Landroid/view/MotionEvent;)F
    .locals 0

    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    return p1
.end method

.method protected scrollerFling(III)V
    .locals 9

    .line 69
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalScroller;->scroller:Landroid/widget/Scroller;

    neg-int v4, p3

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, -0x7fffffff

    const v8, 0x7fffffff

    move v2, p1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    return-void
.end method

.method protected scrollerStartScroll(II)V
    .locals 6

    .line 62
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalScroller;->scroller:Landroid/widget/Scroller;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method
