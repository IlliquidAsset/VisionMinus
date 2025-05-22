.class Lcom/powervision/base/views/LongTouchStickPointView$MyGestureDetectorListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "LongTouchStickPointView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/base/views/LongTouchStickPointView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyGestureDetectorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/base/views/LongTouchStickPointView;


# direct methods
.method public constructor <init>(Lcom/powervision/base/views/LongTouchStickPointView;)V
    .locals 0

    .line 435
    iput-object p1, p0, Lcom/powervision/base/views/LongTouchStickPointView$MyGestureDetectorListener;->this$0:Lcom/powervision/base/views/LongTouchStickPointView;

    .line 436
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/powervision/base/views/LongTouchStickPointView$MyGestureDetectorListener;->this$0:Lcom/powervision/base/views/LongTouchStickPointView;

    invoke-static {v0}, Lcom/powervision/base/views/LongTouchStickPointView;->access$100(Lcom/powervision/base/views/LongTouchStickPointView;)Lcom/powervision/base/views/LongTouchStickPointView$OnStickPointChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/powervision/base/views/LongTouchStickPointView$MyGestureDetectorListener;->this$0:Lcom/powervision/base/views/LongTouchStickPointView;

    invoke-static {v0}, Lcom/powervision/base/views/LongTouchStickPointView;->access$100(Lcom/powervision/base/views/LongTouchStickPointView;)Lcom/powervision/base/views/LongTouchStickPointView$OnStickPointChangeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/base/views/LongTouchStickPointView$OnStickPointChangeListener;->onSticViewkDoubleClick()V

    .line 450
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 489
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    .line 455
    iget-object v0, p0, Lcom/powervision/base/views/LongTouchStickPointView$MyGestureDetectorListener;->this$0:Lcom/powervision/base/views/LongTouchStickPointView;

    invoke-static {v0}, Lcom/powervision/base/views/LongTouchStickPointView;->access$200(Lcom/powervision/base/views/LongTouchStickPointView;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/powervision/base/views/LongTouchStickPointView$MyGestureDetectorListener;->this$0:Lcom/powervision/base/views/LongTouchStickPointView;

    iget-boolean v0, v0, Lcom/powervision/base/views/LongTouchStickPointView;->isTouchUp:Z

    if-nez v0, :cond_1

    return-void

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/powervision/base/views/LongTouchStickPointView$MyGestureDetectorListener;->this$0:Lcom/powervision/base/views/LongTouchStickPointView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/powervision/base/views/LongTouchStickPointView;->access$302(Lcom/powervision/base/views/LongTouchStickPointView;F)F

    .line 462
    iget-object v0, p0, Lcom/powervision/base/views/LongTouchStickPointView$MyGestureDetectorListener;->this$0:Lcom/powervision/base/views/LongTouchStickPointView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {v0, p1}, Lcom/powervision/base/views/LongTouchStickPointView;->access$402(Lcom/powervision/base/views/LongTouchStickPointView;F)F

    .line 463
    iget-object p1, p0, Lcom/powervision/base/views/LongTouchStickPointView$MyGestureDetectorListener;->this$0:Lcom/powervision/base/views/LongTouchStickPointView;

    invoke-static {p1}, Lcom/powervision/base/views/LongTouchStickPointView;->access$600(Lcom/powervision/base/views/LongTouchStickPointView;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x14

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/powervision/base/views/LongTouchStickPointView;->access$502(Lcom/powervision/base/views/LongTouchStickPointView;F)F

    .line 464
    iget-object p1, p0, Lcom/powervision/base/views/LongTouchStickPointView$MyGestureDetectorListener;->this$0:Lcom/powervision/base/views/LongTouchStickPointView;

    invoke-static {p1}, Lcom/powervision/base/views/LongTouchStickPointView;->access$500(Lcom/powervision/base/views/LongTouchStickPointView;)F

    move-result v0

    invoke-static {p1, v0}, Lcom/powervision/base/views/LongTouchStickPointView;->access$702(Lcom/powervision/base/views/LongTouchStickPointView;F)F

    .line 466
    iget-object p1, p0, Lcom/powervision/base/views/LongTouchStickPointView$MyGestureDetectorListener;->this$0:Lcom/powervision/base/views/LongTouchStickPointView;

    invoke-static {p1}, Lcom/powervision/base/views/LongTouchStickPointView;->access$300(Lcom/powervision/base/views/LongTouchStickPointView;)F

    move-result v0

    invoke-static {p1, v0}, Lcom/powervision/base/views/LongTouchStickPointView;->access$802(Lcom/powervision/base/views/LongTouchStickPointView;F)F

    .line 467
    iget-object p1, p0, Lcom/powervision/base/views/LongTouchStickPointView$MyGestureDetectorListener;->this$0:Lcom/powervision/base/views/LongTouchStickPointView;

    invoke-static {p1}, Lcom/powervision/base/views/LongTouchStickPointView;->access$400(Lcom/powervision/base/views/LongTouchStickPointView;)F

    move-result v0

    invoke-static {p1, v0}, Lcom/powervision/base/views/LongTouchStickPointView;->access$902(Lcom/powervision/base/views/LongTouchStickPointView;F)F

    .line 468
    iget-object p1, p0, Lcom/powervision/base/views/LongTouchStickPointView$MyGestureDetectorListener;->this$0:Lcom/powervision/base/views/LongTouchStickPointView;

    invoke-static {p1}, Lcom/powervision/base/views/LongTouchStickPointView;->access$500(Lcom/powervision/base/views/LongTouchStickPointView;)F

    move-result v0

    invoke-static {p1, v0}, Lcom/powervision/base/views/LongTouchStickPointView;->access$1002(Lcom/powervision/base/views/LongTouchStickPointView;F)F

    .line 469
    iget-object p1, p0, Lcom/powervision/base/views/LongTouchStickPointView$MyGestureDetectorListener;->this$0:Lcom/powervision/base/views/LongTouchStickPointView;

    const/high16 v0, 0x40e00000    # 7.0f

    invoke-static {p1}, Lcom/powervision/base/views/LongTouchStickPointView;->access$500(Lcom/powervision/base/views/LongTouchStickPointView;)F

    move-result v1

    mul-float v1, v1, v0

    invoke-static {p1, v1}, Lcom/powervision/base/views/LongTouchStickPointView;->access$1102(Lcom/powervision/base/views/LongTouchStickPointView;F)F

    .line 470
    iget-object p1, p0, Lcom/powervision/base/views/LongTouchStickPointView$MyGestureDetectorListener;->this$0:Lcom/powervision/base/views/LongTouchStickPointView;

    invoke-static {p1}, Lcom/powervision/base/views/LongTouchStickPointView;->access$1200(Lcom/powervision/base/views/LongTouchStickPointView;)V

    .line 472
    iget-object p1, p0, Lcom/powervision/base/views/LongTouchStickPointView$MyGestureDetectorListener;->this$0:Lcom/powervision/base/views/LongTouchStickPointView;

    invoke-static {p1}, Lcom/powervision/base/views/LongTouchStickPointView;->access$1300(Lcom/powervision/base/views/LongTouchStickPointView;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/base/views/LongTouchStickPointView$MyGestureDetectorListener;->this$0:Lcom/powervision/base/views/LongTouchStickPointView;

    invoke-static {v0}, Lcom/powervision/base/views/LongTouchStickPointView;->access$1300(Lcom/powervision/base/views/LongTouchStickPointView;)Landroid/content/Context;

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    const-wide/16 v0, 0x64

    .line 473
    invoke-virtual {p1, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    .line 475
    iget-object p1, p0, Lcom/powervision/base/views/LongTouchStickPointView$MyGestureDetectorListener;->this$0:Lcom/powervision/base/views/LongTouchStickPointView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/powervision/base/views/LongTouchStickPointView;->access$002(Lcom/powervision/base/views/LongTouchStickPointView;Z)Z

    .line 476
    iget-object p1, p0, Lcom/powervision/base/views/LongTouchStickPointView$MyGestureDetectorListener;->this$0:Lcom/powervision/base/views/LongTouchStickPointView;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/powervision/base/views/LongTouchStickPointView;->isTouchUp:Z

    .line 477
    iget-object p1, p0, Lcom/powervision/base/views/LongTouchStickPointView$MyGestureDetectorListener;->this$0:Lcom/powervision/base/views/LongTouchStickPointView;

    invoke-virtual {p1}, Lcom/powervision/base/views/LongTouchStickPointView;->invalidate()V

    return-void
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    .line 483
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 495
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 441
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
