.class Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MiddleSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yalantis/ucrop/view/MiddleSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeekBarGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;


# direct methods
.method private constructor <init>(Lcom/yalantis/ucrop/view/MiddleSeekBar;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yalantis/ucrop/view/MiddleSeekBar;Lcom/yalantis/ucrop/view/MiddleSeekBar$1;)V
    .locals 0

    .line 356
    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;-><init>(Lcom/yalantis/ucrop/view/MiddleSeekBar;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 370
    iget-object p1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {p1}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$400(Lcom/yalantis/ucrop/view/MiddleSeekBar;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 371
    iget-object p1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {p1, v0}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$402(Lcom/yalantis/ucrop/view/MiddleSeekBar;Z)Z

    :cond_0
    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 7

    .line 449
    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {v1}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$500(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F

    move-result v1

    sub-float/2addr p1, v1

    invoke-static {v0, p1}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$1800(Lcom/yalantis/ucrop/view/MiddleSeekBar;F)F

    move-result p1

    .line 450
    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {v0}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$300(Lcom/yalantis/ucrop/view/MiddleSeekBar;)Landroid/widget/Scroller;

    move-result-object v1

    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {v0}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$100(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F

    move-result v0

    float-to-int v3, v0

    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {v0}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$100(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F

    move-result v0

    sub-float v0, p1, v0

    float-to-int v5, v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x190

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 451
    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {v0}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$900(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F

    move-result v1

    mul-float p1, p1, v1

    iget-object v1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {v1}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$1000(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F

    move-result v1

    div-float/2addr p1, v1

    invoke-static {v0, p1}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$1300(Lcom/yalantis/ucrop/view/MiddleSeekBar;F)V

    .line 452
    iget-object p1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {p1}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$200(Lcom/yalantis/ucrop/view/MiddleSeekBar;)V

    .line 453
    iget-object p1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-virtual {p1}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->invalidate()V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 379
    iget-object p1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {p1}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$100(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F

    move-result p2

    sub-float/2addr p2, p3

    invoke-static {p1, p2}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$102(Lcom/yalantis/ucrop/view/MiddleSeekBar;F)F

    .line 380
    iget-object p1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {p1}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$100(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F

    move-result p1

    iget-object p2, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {p2}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$500(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F

    move-result p2

    iget-object p3, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {p3}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$600(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F

    move-result p3

    sub-float/2addr p2, p3

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    .line 381
    iget-object p1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {p1}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$500(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F

    move-result p2

    iget-object p3, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {p3}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$600(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F

    move-result p3

    sub-float/2addr p2, p3

    invoke-static {p1, p2}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$102(Lcom/yalantis/ucrop/view/MiddleSeekBar;F)F

    .line 384
    :cond_0
    iget-object p1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {p1}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$100(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F

    move-result p1

    iget-object p2, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {p2}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$700(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F

    move-result p2

    iget-object p3, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {p3}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$600(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F

    move-result p3

    sub-float/2addr p2, p3

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    .line 385
    iget-object p1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {p1}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$700(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F

    move-result p2

    iget-object p3, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {p3}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$600(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F

    move-result p3

    sub-float/2addr p2, p3

    invoke-static {p1, p2}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$102(Lcom/yalantis/ucrop/view/MiddleSeekBar;F)F

    .line 388
    :cond_1
    iget-object p1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {p1}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$800(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {p1}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$800(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F

    move-result p1

    iget-object p3, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {p3}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$900(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F

    move-result p3

    cmpl-float p1, p1, p3

    if-nez p1, :cond_2

    goto/16 :goto_0

    .line 391
    :cond_2
    iget-object p1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {p1}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$1100(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F

    move-result p1

    const/high16 p3, 0x40000000    # 2.0f

    mul-float p1, p1, p3

    .line 392
    iget-object p4, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {p4}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$100(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F

    move-result p4

    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {v0}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$1200(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F

    move-result v0

    iget-object v1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {v1}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$1100(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F

    move-result v1

    sub-float/2addr v0, v1

    cmpg-float p4, p4, v0

    if-gez p4, :cond_3

    .line 393
    iget-object p4, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {p4}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$100(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F

    move-result p4

    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {v0}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$900(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F

    move-result v0

    sub-float/2addr v0, p3

    mul-float p4, p4, v0

    iget-object p3, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {p3}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$1000(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F

    move-result p3

    sub-float/2addr p3, p1

    div-float/2addr p4, p3

    goto :goto_1

    .line 394
    :cond_3
    iget-object p4, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {p4}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$100(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F

    move-result p4

    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {v0}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$1200(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F

    move-result v0

    iget-object v1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {v1}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$1100(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F

    move-result v1

    add-float/2addr v0, v1

    cmpl-float p4, p4, v0

    if-lez p4, :cond_4

    .line 395
    iget-object p4, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {p4}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$800(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F

    move-result p4

    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {v0}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$100(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F

    move-result v0

    iget-object v1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {v1}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$1200(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {v1}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$1100(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    .line 396
    invoke-static {v1}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$900(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F

    move-result v1

    sub-float/2addr v1, p3

    mul-float v0, v0, v1

    iget-object p3, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {p3}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$1000(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F

    move-result p3

    sub-float/2addr p3, p1

    div-float/2addr v0, p3

    add-float/2addr p4, v0

    const/high16 p1, 0x3f800000    # 1.0f

    add-float/2addr p4, p1

    goto :goto_1

    .line 398
    :cond_4
    iget-object p1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {p1}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$800(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F

    move-result p4

    goto :goto_1

    .line 389
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {p1}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$100(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F

    move-result p1

    iget-object p3, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {p3}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$900(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F

    move-result p3

    mul-float p1, p1, p3

    iget-object p3, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {p3}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$1000(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F

    move-result p3

    div-float p4, p1, p3

    :goto_1
    cmpg-float p1, p4, p2

    if-gez p1, :cond_6

    goto :goto_2

    :cond_6
    move p2, p4

    .line 406
    :goto_2
    iget-object p1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {p1}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$900(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F

    move-result p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_7

    .line 407
    iget-object p1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {p1}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$900(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F

    move-result p2

    .line 410
    :cond_7
    iget-object p1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {p1, p2}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$1300(Lcom/yalantis/ucrop/view/MiddleSeekBar;F)V

    .line 411
    iget-object p1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-virtual {p1}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->invalidate()V

    const/4 p1, 0x1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 418
    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {v0}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$1400(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    .line 419
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v2, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {v2}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$100(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F

    move-result v2

    cmpl-float p1, p1, v2

    if-lez p1, :cond_0

    .line 420
    iget-object p1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {p1}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$1400(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F

    move-result p1

    add-float v0, p1, v1

    :cond_0
    const/4 p1, 0x0

    cmpg-float v1, v0, p1

    if-gez v1, :cond_1

    const/4 v0, 0x0

    .line 427
    :cond_1
    iget-object p1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {p1}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$900(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F

    move-result p1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_2

    .line 428
    iget-object p1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {p1}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$900(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F

    move-result v0

    .line 431
    :cond_2
    iget-object p1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {p1, v0}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$1300(Lcom/yalantis/ucrop/view/MiddleSeekBar;F)V

    .line 433
    iget-object p1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {p1}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$100(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F

    move-result p1

    .line 434
    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {v0}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$200(Lcom/yalantis/ucrop/view/MiddleSeekBar;)V

    .line 435
    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {v0}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$300(Lcom/yalantis/ucrop/view/MiddleSeekBar;)Landroid/widget/Scroller;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {v0}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$100(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F

    move-result v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    const/16 v6, 0x190

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 436
    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {v0, p1}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$102(Lcom/yalantis/ucrop/view/MiddleSeekBar;F)F

    .line 437
    iget-object p1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$402(Lcom/yalantis/ucrop/view/MiddleSeekBar;Z)Z

    .line 438
    iget-object p1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-virtual {p1}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->invalidate()V

    .line 440
    iget-object p1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {p1}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$1500(Lcom/yalantis/ucrop/view/MiddleSeekBar;)Lcom/yalantis/ucrop/view/MiddleSeekBar$OnSeekChangeListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 441
    iget-object p1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {p1}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$1500(Lcom/yalantis/ucrop/view/MiddleSeekBar;)Lcom/yalantis/ucrop/view/MiddleSeekBar$OnSeekChangeListener;

    move-result-object p1

    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {v0}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$1400(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F

    move-result v0

    iget-object v1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {v1}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$1600(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {v1}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$1700(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F

    move-result v1

    mul-float v0, v0, v1

    iget-object v1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {v1}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$1700(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F

    move-result v1

    iget-object v2, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-interface {p1, v0, v1, v2}, Lcom/yalantis/ucrop/view/MiddleSeekBar$OnSeekChangeListener;->onSeekStopped(FFLcom/yalantis/ucrop/view/MiddleSeekBar;)V

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 359
    iget-object p1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {p1}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$100(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F

    move-result p1

    .line 360
    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {v0}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$200(Lcom/yalantis/ucrop/view/MiddleSeekBar;)V

    .line 361
    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {v0}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$300(Lcom/yalantis/ucrop/view/MiddleSeekBar;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {v0}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$100(Lcom/yalantis/ucrop/view/MiddleSeekBar;)F

    move-result v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x190

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 362
    iget-object v0, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-static {v0, p1}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$102(Lcom/yalantis/ucrop/view/MiddleSeekBar;F)F

    .line 363
    iget-object p1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->access$402(Lcom/yalantis/ucrop/view/MiddleSeekBar;Z)Z

    .line 364
    iget-object p1, p0, Lcom/yalantis/ucrop/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/yalantis/ucrop/view/MiddleSeekBar;

    invoke-virtual {p1}, Lcom/yalantis/ucrop/view/MiddleSeekBar;->invalidate()V

    const/4 p1, 0x1

    return p1
.end method
