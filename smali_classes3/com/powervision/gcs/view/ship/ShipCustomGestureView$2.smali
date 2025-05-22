.class Lcom/powervision/gcs/view/ship/ShipCustomGestureView$2;
.super Ljava/lang/Object;
.source "ShipCustomGestureView.java"

# interfaces
.implements Lcom/powervision/gcs/view/ship/ShipCustomGestureView$GestrueControlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/ship/ShipCustomGestureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/ship/ShipCustomGestureView;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/ship/ShipCustomGestureView;)V
    .locals 0

    .line 481
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipCustomGestureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnSingleTapUp(Landroid/view/MotionEvent;)V
    .locals 1

    .line 484
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipCustomGestureView;

    iget-boolean p1, p1, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->isEgg:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipCustomGestureView;

    invoke-static {p1}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->access$200(Lcom/powervision/gcs/view/ship/ShipCustomGestureView;)I

    move-result p1

    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    .line 485
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipCustomGestureView;

    invoke-static {p1}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->access$300(Lcom/powervision/gcs/view/ship/ShipCustomGestureView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)V
    .locals 3

    .line 524
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipCustomGestureView;

    iget-boolean p1, p1, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->isEgg:Z

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    .line 525
    new-instance p1, Lcom/powervision/powersdk/param/GimbalControlParam;

    invoke-direct {p1}, Lcom/powervision/powersdk/param/GimbalControlParam;-><init>()V

    .line 526
    iput v0, p1, Lcom/powervision/powersdk/param/GimbalControlParam;->mount_mode:I

    const/4 v1, 0x0

    .line 527
    iput v1, p1, Lcom/powervision/powersdk/param/GimbalControlParam;->stab_roll:I

    const/4 v1, 0x1

    .line 528
    iput v1, p1, Lcom/powervision/powersdk/param/GimbalControlParam;->stab_pitch:I

    .line 529
    iput v1, p1, Lcom/powervision/powersdk/param/GimbalControlParam;->stab_yaw:I

    .line 531
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipCustomGestureView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->access$1402(Lcom/powervision/gcs/view/ship/ShipCustomGestureView;J)J

    .line 532
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipCustomGestureView;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/powervision/gcs/utils/ScreenUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    div-int/2addr v1, v0

    int-to-float v1, v1

    invoke-static {p1, v1}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->access$1502(Lcom/powervision/gcs/view/ship/ShipCustomGestureView;F)F

    .line 533
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipCustomGestureView;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/powervision/gcs/utils/ScreenUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    div-int/2addr v1, v0

    int-to-float v0, v1

    invoke-static {p1, v0}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->access$1602(Lcom/powervision/gcs/view/ship/ShipCustomGestureView;F)F

    .line 534
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipCustomGestureView;

    iget-boolean p1, p1, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->isEgg:Z

    if-nez p1, :cond_1

    .line 535
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipCustomGestureView;

    invoke-static {p1}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->access$300(Lcom/powervision/gcs/view/ship/ShipCustomGestureView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 536
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipCustomGestureView;

    invoke-static {p1}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->access$300(Lcom/powervision/gcs/view/ship/ShipCustomGestureView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0

    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    .line 491
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipCustomGestureView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->access$402(Lcom/powervision/gcs/view/ship/ShipCustomGestureView;Z)Z

    .line 492
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipCustomGestureView;

    invoke-static {v0}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->access$500(Lcom/powervision/gcs/view/ship/ShipCustomGestureView;)Landroid/graphics/Paint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 493
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipCustomGestureView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->access$602(Lcom/powervision/gcs/view/ship/ShipCustomGestureView;F)F

    .line 494
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipCustomGestureView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {v0, p1}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->access$702(Lcom/powervision/gcs/view/ship/ShipCustomGestureView;F)F

    .line 495
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipCustomGestureView;

    invoke-static {p1}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->access$600(Lcom/powervision/gcs/view/ship/ShipCustomGestureView;)F

    move-result v0

    float-to-int v0, v0

    invoke-static {p1, v0}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->access$802(Lcom/powervision/gcs/view/ship/ShipCustomGestureView;I)I

    .line 496
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipCustomGestureView;

    invoke-static {p1}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->access$700(Lcom/powervision/gcs/view/ship/ShipCustomGestureView;)F

    move-result v0

    float-to-int v0, v0

    invoke-static {p1, v0}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->access$902(Lcom/powervision/gcs/view/ship/ShipCustomGestureView;I)I

    .line 497
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipCustomGestureView;

    invoke-static {p1}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->access$600(Lcom/powervision/gcs/view/ship/ShipCustomGestureView;)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->access$1002(Lcom/powervision/gcs/view/ship/ShipCustomGestureView;F)F

    .line 498
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipCustomGestureView;

    invoke-static {p1}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->access$700(Lcom/powervision/gcs/view/ship/ShipCustomGestureView;)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->access$1102(Lcom/powervision/gcs/view/ship/ShipCustomGestureView;F)F

    .line 499
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipCustomGestureView;

    iget v0, p1, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->defaultRockerCircleR:I

    invoke-static {p1, v0}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->access$202(Lcom/powervision/gcs/view/ship/ShipCustomGestureView;I)I

    .line 500
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipCustomGestureView;

    iget v0, p1, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->defaultSmallRockerCircleR:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->access$1202(Lcom/powervision/gcs/view/ship/ShipCustomGestureView;F)F

    .line 501
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipCustomGestureView;

    invoke-static {p1}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->access$1300(Lcom/powervision/gcs/view/ship/ShipCustomGestureView;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipCustomGestureView;

    invoke-static {v0}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->access$1300(Lcom/powervision/gcs/view/ship/ShipCustomGestureView;)Landroid/content/Context;

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    const-wide/16 v0, 0x1f4

    .line 502
    invoke-virtual {p1, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    .line 503
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipCustomGestureView;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->invalidate()V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
