.class Lcom/powervision/handheld/ui/views/TouchRectangleView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TouchRectangleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/handheld/ui/views/TouchRectangleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/handheld/ui/views/TouchRectangleView;


# direct methods
.method constructor <init>(Lcom/powervision/handheld/ui/views/TouchRectangleView;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView$1;->this$0:Lcom/powervision/handheld/ui/views/TouchRectangleView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 454
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView$1;->this$0:Lcom/powervision/handheld/ui/views/TouchRectangleView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/powervision/handheld/ui/views/TouchRectangleView;->access$000(Lcom/powervision/handheld/ui/views/TouchRectangleView;FF)V

    .line 455
    iget-object p1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView$1;->this$0:Lcom/powervision/handheld/ui/views/TouchRectangleView;

    invoke-static {p1}, Lcom/powervision/handheld/ui/views/TouchRectangleView;->access$100(Lcom/powervision/handheld/ui/views/TouchRectangleView;)[F

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView$1;->this$0:Lcom/powervision/handheld/ui/views/TouchRectangleView;

    invoke-static {p1}, Lcom/powervision/handheld/ui/views/TouchRectangleView;->access$200(Lcom/powervision/handheld/ui/views/TouchRectangleView;)Lcom/powervision/handheld/ui/views/TouchRectangleView$TouchGuideListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 456
    iget-object p1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView$1;->this$0:Lcom/powervision/handheld/ui/views/TouchRectangleView;

    invoke-static {p1}, Lcom/powervision/handheld/ui/views/TouchRectangleView;->access$100(Lcom/powervision/handheld/ui/views/TouchRectangleView;)[F

    move-result-object p1

    const/4 v1, 0x0

    aget p1, p1, v1

    .line 457
    iget-object v2, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView$1;->this$0:Lcom/powervision/handheld/ui/views/TouchRectangleView;

    invoke-static {v2}, Lcom/powervision/handheld/ui/views/TouchRectangleView;->access$100(Lcom/powervision/handheld/ui/views/TouchRectangleView;)[F

    move-result-object v2

    aget v2, v2, v0

    .line 458
    iget-object v3, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView$1;->this$0:Lcom/powervision/handheld/ui/views/TouchRectangleView;

    invoke-static {v3}, Lcom/powervision/handheld/ui/views/TouchRectangleView;->access$100(Lcom/powervision/handheld/ui/views/TouchRectangleView;)[F

    move-result-object v3

    const/4 v4, 0x2

    aget v3, v3, v4

    iget-object v4, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView$1;->this$0:Lcom/powervision/handheld/ui/views/TouchRectangleView;

    invoke-static {v4}, Lcom/powervision/handheld/ui/views/TouchRectangleView;->access$100(Lcom/powervision/handheld/ui/views/TouchRectangleView;)[F

    move-result-object v4

    aget v1, v4, v1

    sub-float/2addr v3, v1

    .line 459
    iget-object v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView$1;->this$0:Lcom/powervision/handheld/ui/views/TouchRectangleView;

    invoke-static {v1}, Lcom/powervision/handheld/ui/views/TouchRectangleView;->access$100(Lcom/powervision/handheld/ui/views/TouchRectangleView;)[F

    move-result-object v1

    const/4 v4, 0x3

    aget v1, v1, v4

    iget-object v4, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView$1;->this$0:Lcom/powervision/handheld/ui/views/TouchRectangleView;

    invoke-static {v4}, Lcom/powervision/handheld/ui/views/TouchRectangleView;->access$100(Lcom/powervision/handheld/ui/views/TouchRectangleView;)[F

    move-result-object v4

    aget v4, v4, v0

    sub-float/2addr v1, v4

    .line 460
    iget-object v4, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView$1;->this$0:Lcom/powervision/handheld/ui/views/TouchRectangleView;

    invoke-static {v4, v0}, Lcom/powervision/handheld/ui/views/TouchRectangleView;->access$302(Lcom/powervision/handheld/ui/views/TouchRectangleView;Z)Z

    .line 461
    iget-object v4, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView$1;->this$0:Lcom/powervision/handheld/ui/views/TouchRectangleView;

    invoke-static {v4}, Lcom/powervision/handheld/ui/views/TouchRectangleView;->access$200(Lcom/powervision/handheld/ui/views/TouchRectangleView;)Lcom/powervision/handheld/ui/views/TouchRectangleView$TouchGuideListener;

    move-result-object v4

    invoke-interface {v4, p1, v2, v3, v1}, Lcom/powervision/handheld/ui/views/TouchRectangleView$TouchGuideListener;->onTouchView(FFFF)V

    .line 463
    :cond_0
    iget-object p1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView$1;->this$0:Lcom/powervision/handheld/ui/views/TouchRectangleView;

    invoke-virtual {p1}, Lcom/powervision/handheld/ui/views/TouchRectangleView;->invalidate()V

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4

    .line 469
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 470
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView$1;->this$0:Lcom/powervision/handheld/ui/views/TouchRectangleView;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/powervision/handheld/ui/views/TouchRectangleView;->performHapticFeedback(II)Z

    .line 471
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView$1;->this$0:Lcom/powervision/handheld/ui/views/TouchRectangleView;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/powervision/handheld/ui/views/TouchRectangleView;->access$402(Lcom/powervision/handheld/ui/views/TouchRectangleView;Z)Z

    .line 472
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 473
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 474
    iget-object v3, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView$1;->this$0:Lcom/powervision/handheld/ui/views/TouchRectangleView;

    invoke-static {v3, v0, v2}, Lcom/powervision/handheld/ui/views/TouchRectangleView;->access$500(Lcom/powervision/handheld/ui/views/TouchRectangleView;II)V

    const-string v0, "touch"

    .line 475
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLongPress"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 480
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 481
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 482
    iget-object v1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView$1;->this$0:Lcom/powervision/handheld/ui/views/TouchRectangleView;

    invoke-static {v1, v0, p1}, Lcom/powervision/handheld/ui/views/TouchRectangleView;->access$600(Lcom/powervision/handheld/ui/views/TouchRectangleView;II)Z

    move-result p1

    const-string v0, "touchV"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView$1;->this$0:Lcom/powervision/handheld/ui/views/TouchRectangleView;

    invoke-static {p1}, Lcom/powervision/handheld/ui/views/TouchRectangleView;->access$200(Lcom/powervision/handheld/ui/views/TouchRectangleView;)Lcom/powervision/handheld/ui/views/TouchRectangleView$TouchGuideListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 483
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p1

    const-string v0, "close 11111"

    invoke-interface {p1, v0}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/Object;)V

    .line 484
    iget-object p1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView$1;->this$0:Lcom/powervision/handheld/ui/views/TouchRectangleView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/powervision/handheld/ui/views/TouchRectangleView;->access$302(Lcom/powervision/handheld/ui/views/TouchRectangleView;Z)Z

    .line 485
    iget-object p1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView$1;->this$0:Lcom/powervision/handheld/ui/views/TouchRectangleView;

    invoke-static {p1}, Lcom/powervision/handheld/ui/views/TouchRectangleView;->access$200(Lcom/powervision/handheld/ui/views/TouchRectangleView;)Lcom/powervision/handheld/ui/views/TouchRectangleView$TouchGuideListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/powervision/handheld/ui/views/TouchRectangleView$TouchGuideListener;->clickClose()V

    .line 486
    iget-object p1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView$1;->this$0:Lcom/powervision/handheld/ui/views/TouchRectangleView;

    invoke-virtual {p1}, Lcom/powervision/handheld/ui/views/TouchRectangleView;->invalidate()V

    goto :goto_0

    .line 488
    :cond_0
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p1

    const-string v0, "onClick"

    invoke-interface {p1, v0}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/Object;)V

    .line 489
    iget-object p1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView$1;->this$0:Lcom/powervision/handheld/ui/views/TouchRectangleView;

    invoke-static {p1}, Lcom/powervision/handheld/ui/views/TouchRectangleView;->access$200(Lcom/powervision/handheld/ui/views/TouchRectangleView;)Lcom/powervision/handheld/ui/views/TouchRectangleView$TouchGuideListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 490
    iget-object p1, p0, Lcom/powervision/handheld/ui/views/TouchRectangleView$1;->this$0:Lcom/powervision/handheld/ui/views/TouchRectangleView;

    invoke-static {p1}, Lcom/powervision/handheld/ui/views/TouchRectangleView;->access$200(Lcom/powervision/handheld/ui/views/TouchRectangleView;)Lcom/powervision/handheld/ui/views/TouchRectangleView$TouchGuideListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/powervision/handheld/ui/views/TouchRectangleView$TouchGuideListener;->onClick()V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
