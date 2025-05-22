.class public Lcom/powervision/gcs/view/wheelview/WheelHorizontalScroller;
.super Lcom/powervision/gcs/view/wheelview/WheelScroller;
.source "WheelHorizontalScroller.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/powervision/gcs/view/wheelview/WheelScroller$ScrollingListener;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/powervision/gcs/view/wheelview/WheelScroller;-><init>(Landroid/content/Context;Lcom/powervision/gcs/view/wheelview/WheelScroller$ScrollingListener;)V

    return-void
.end method


# virtual methods
.method protected getCurrentScrollerPosition()I
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalScroller;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    return v0
.end method

.method protected getFinalScrollerPosition()I
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalScroller;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    return v0
.end method

.method protected getMotionEventPosition(Landroid/view/MotionEvent;)F
    .locals 0

    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    return p1
.end method

.method protected scrollerFling(III)V
    .locals 9

    .line 66
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalScroller;->scroller:Landroid/widget/Scroller;

    neg-int v3, p2

    const/4 v2, 0x0

    const/4 v4, 0x0

    const v5, -0x7fffffff

    const v6, 0x7fffffff

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v1, p1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    return-void
.end method

.method protected scrollerStartScroll(II)V
    .locals 6

    .line 59
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalScroller;->scroller:Landroid/widget/Scroller;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move v3, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method
