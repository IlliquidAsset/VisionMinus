.class Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MiddleSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/aircraft/ui/views/MiddleSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeekBarGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;


# direct methods
.method private constructor <init>(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;Lcom/powervision/aircraft/ui/views/MiddleSeekBar$1;)V
    .locals 0

    .line 328
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;-><init>(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 342
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$400(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 343
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {p1, v0}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$402(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;Z)Z

    :cond_0
    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 7

    .line 424
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$500(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)F

    move-result v1

    sub-float/2addr p1, v1

    invoke-static {v0, p1}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$1800(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;F)F

    move-result p1

    float-to-int p1, p1

    .line 425
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$300(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)Landroid/widget/Scroller;

    move-result-object v1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$100(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)F

    move-result v0

    float-to-int v3, v0

    int-to-float v0, p1

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {v2}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$100(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)F

    move-result v2

    sub-float/2addr v0, v2

    float-to-int v5, v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x190

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 426
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$900(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)I

    move-result v1

    mul-int p1, p1, v1

    int-to-float p1, p1

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$1000(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)F

    move-result v1

    div-float/2addr p1, v1

    float-to-int p1, p1

    invoke-static {v0, p1}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$1300(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;I)V

    .line 427
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$200(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)V

    .line 428
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-virtual {p1}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->invalidate()V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 351
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$100(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)F

    move-result p2

    sub-float/2addr p2, p3

    invoke-static {p1, p2}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$102(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;F)F

    .line 352
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$100(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)F

    move-result p1

    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {p2}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$500(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)F

    move-result p2

    iget-object p3, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {p3}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$600(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)F

    move-result p3

    sub-float/2addr p2, p3

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    .line 353
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$500(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)F

    move-result p2

    iget-object p3, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {p3}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$600(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)F

    move-result p3

    sub-float/2addr p2, p3

    invoke-static {p1, p2}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$102(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;F)F

    .line 356
    :cond_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$100(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)F

    move-result p1

    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {p2}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$700(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)F

    move-result p2

    iget-object p3, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {p3}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$600(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)F

    move-result p3

    sub-float/2addr p2, p3

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    .line 357
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$700(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)F

    move-result p2

    iget-object p3, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {p3}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$600(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)F

    move-result p3

    sub-float/2addr p2, p3

    invoke-static {p1, p2}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$102(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;F)F

    .line 360
    :cond_1
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$800(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)I

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    .line 361
    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$800(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)I

    move-result p1

    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {p2}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$900(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)I

    move-result p2

    if-ne p1, p2, :cond_2

    goto/16 :goto_0

    .line 364
    :cond_2
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$1100(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)F

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    mul-float p1, p1, p2

    .line 365
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {p2}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$100(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)F

    move-result p2

    iget-object p3, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {p3}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$1200(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)F

    move-result p3

    iget-object p4, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {p4}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$1100(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)F

    move-result p4

    sub-float/2addr p3, p4

    cmpg-float p2, p2, p3

    if-gez p2, :cond_3

    .line 366
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {p2}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$100(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)F

    move-result p2

    iget-object p3, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {p3}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$900(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)I

    move-result p3

    add-int/lit8 p3, p3, -0x2

    int-to-float p3, p3

    mul-float p2, p2, p3

    iget-object p3, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    .line 367
    invoke-static {p3}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$1000(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)F

    move-result p3

    sub-float/2addr p3, p1

    div-float/2addr p2, p3

    goto :goto_1

    .line 369
    :cond_3
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {p2}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$100(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)F

    move-result p2

    iget-object p3, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {p3}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$1200(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)F

    move-result p3

    iget-object p4, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {p4}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$1100(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)F

    move-result p4

    add-float/2addr p3, p4

    cmpl-float p2, p2, p3

    if-lez p2, :cond_4

    .line 370
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {p2}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$800(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {p3}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$100(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)F

    move-result p3

    iget-object p4, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {p4}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$1200(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)F

    move-result p4

    sub-float/2addr p3, p4

    iget-object p4, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {p4}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$1100(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)F

    move-result p4

    sub-float/2addr p3, p4

    iget-object p4, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    .line 371
    invoke-static {p4}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$900(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)I

    move-result p4

    add-int/lit8 p4, p4, -0x2

    int-to-float p4, p4

    mul-float p3, p3, p4

    iget-object p4, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {p4}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$1000(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)F

    move-result p4

    sub-float/2addr p4, p1

    div-float/2addr p3, p4

    add-float/2addr p2, p3

    const/high16 p1, 0x3f800000    # 1.0f

    add-float/2addr p2, p1

    goto :goto_1

    .line 373
    :cond_4
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$800(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)I

    move-result p1

    int-to-float p2, p1

    goto :goto_1

    .line 362
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$100(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)F

    move-result p1

    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {p2}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$900(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)I

    move-result p2

    int-to-float p2, p2

    mul-float p1, p1, p2

    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {p2}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$1000(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)F

    move-result p2

    div-float p2, p1, p2

    :goto_1
    const/4 p1, 0x0

    cmpg-float p3, p2, p1

    if-gez p3, :cond_6

    const/4 p2, 0x0

    .line 381
    :cond_6
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$900(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_7

    .line 382
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$900(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)I

    move-result p1

    int-to-float p2, p1

    .line 385
    :cond_7
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {p1, p2}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$1300(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;I)V

    .line 386
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-virtual {p1}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->invalidate()V

    const/4 p1, 0x1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 393
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$1400(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 394
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {v2}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$100(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)F

    move-result v2

    cmpl-float p1, p1, v2

    if-lez p1, :cond_0

    .line 395
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$1400(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)I

    move-result p1

    add-int/lit8 v0, p1, 0x1

    :cond_0
    const/4 p1, 0x0

    if-gez v0, :cond_1

    const/4 v0, 0x0

    .line 402
    :cond_1
    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {v2}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$900(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)I

    move-result v2

    if-le v0, v2, :cond_2

    .line 403
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$900(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)I

    move-result v0

    .line 406
    :cond_2
    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {v2, v0}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$1300(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;I)V

    .line 408
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$100(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)F

    move-result v0

    .line 409
    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {v2}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$200(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)V

    .line 410
    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {v2}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$300(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)Landroid/widget/Scroller;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {v2}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$100(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)F

    move-result v2

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v7

    const/16 v8, 0x190

    invoke-virtual/range {v3 .. v8}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 411
    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {v2, v0}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$102(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;F)F

    .line 412
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {v0, p1}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$402(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;Z)Z

    .line 413
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-virtual {p1}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->invalidate()V

    .line 415
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$1500(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)Lcom/powervision/aircraft/ui/views/MiddleSeekBar$OnSeekChangeListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 416
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$1500(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)Lcom/powervision/aircraft/ui/views/MiddleSeekBar$OnSeekChangeListener;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$1400(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)I

    move-result v0

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {v2}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$1600(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {v2}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$1700(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)F

    move-result v2

    mul-float v0, v0, v2

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {v2}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$1700(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)F

    move-result v2

    iget-object v3, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-interface {p1, v0, v2, v3}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$OnSeekChangeListener;->onSeekStopped(FFLcom/powervision/aircraft/ui/views/MiddleSeekBar;)V

    :cond_3
    return v1
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 331
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$100(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)F

    move-result p1

    .line 332
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$200(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)V

    .line 333
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$300(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$100(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;)F

    move-result v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x190

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 334
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-static {v0, p1}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$102(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;F)F

    .line 335
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->access$402(Lcom/powervision/aircraft/ui/views/MiddleSeekBar;Z)Z

    .line 336
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-virtual {p1}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->invalidate()V

    const/4 p1, 0x1

    return p1
.end method
