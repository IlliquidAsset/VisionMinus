.class Lcom/powervision/gcs/view/MatrixImageView$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MatrixImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/MatrixImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field private final listener:Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;

.field final synthetic this$0:Lcom/powervision/gcs/view/MatrixImageView;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/view/MatrixImageView;Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;)V
    .locals 0

    .line 460
    iput-object p1, p0, Lcom/powervision/gcs/view/MatrixImageView$GestureListener;->this$0:Lcom/powervision/gcs/view/MatrixImageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 461
    iput-object p2, p0, Lcom/powervision/gcs/view/MatrixImageView$GestureListener;->listener:Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 473
    iget-object p1, p0, Lcom/powervision/gcs/view/MatrixImageView$GestureListener;->listener:Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/MatrixImageView$MatrixTouchListener;->onDoubleClick()V

    const/4 p1, 0x1

    return p1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 510
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 498
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    .line 486
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 492
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    .line 504
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/powervision/gcs/view/MatrixImageView$GestureListener;->this$0:Lcom/powervision/gcs/view/MatrixImageView;

    invoke-static {v0}, Lcom/powervision/gcs/view/MatrixImageView;->access$700(Lcom/powervision/gcs/view/MatrixImageView;)Lcom/powervision/gcs/view/MatrixImageView$OnSingleTapListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/gcs/view/MatrixImageView$GestureListener;->this$0:Lcom/powervision/gcs/view/MatrixImageView;

    invoke-static {v0}, Lcom/powervision/gcs/view/MatrixImageView;->access$700(Lcom/powervision/gcs/view/MatrixImageView;)Lcom/powervision/gcs/view/MatrixImageView$OnSingleTapListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/gcs/view/MatrixImageView$OnSingleTapListener;->onSingleTap()V

    .line 516
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 480
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
