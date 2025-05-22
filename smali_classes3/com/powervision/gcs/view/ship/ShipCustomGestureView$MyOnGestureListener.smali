.class public Lcom/powervision/gcs/view/ship/ShipCustomGestureView$MyOnGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ShipCustomGestureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/ship/ShipCustomGestureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyOnGestureListener"
.end annotation


# instance fields
.field private listenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/gcs/view/ship/ShipCustomGestureView$GestrueControlListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 573
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 575
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$MyOnGestureListener;->listenerList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addGestrueControlListener(Lcom/powervision/gcs/view/ship/ShipCustomGestureView$GestrueControlListener;)V
    .locals 1

    .line 578
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$MyOnGestureListener;->listenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$MyOnGestureListener;->listenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 637
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$MyOnGestureListener;->listenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$GestrueControlListener;

    .line 638
    invoke-interface {v1, p1}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$GestrueControlListener;->onDoubleTap(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 629
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$MyOnGestureListener;->listenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$GestrueControlListener;

    .line 630
    invoke-interface {v1, p1}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$GestrueControlListener;->onDown(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .line 611
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$MyOnGestureListener;->listenerList:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$MyOnGestureListener;->listenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$GestrueControlListener;

    .line 613
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$GestrueControlListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    goto :goto_0

    :cond_0
    return v1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    .line 590
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$MyOnGestureListener;->listenerList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$MyOnGestureListener;->listenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$GestrueControlListener;

    .line 592
    invoke-interface {v1, p1}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$GestrueControlListener;->onLongPress(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .line 599
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$MyOnGestureListener;->listenerList:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$MyOnGestureListener;->listenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$GestrueControlListener;

    .line 601
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$GestrueControlListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    goto :goto_0

    :cond_0
    return v1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 651
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$MyOnGestureListener;->listenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$GestrueControlListener;

    .line 652
    invoke-interface {v1, p1}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$GestrueControlListener;->OnSingleTapUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
