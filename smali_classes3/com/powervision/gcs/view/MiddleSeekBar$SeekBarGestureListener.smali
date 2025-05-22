.class Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MiddleSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/MiddleSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeekBarGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/MiddleSeekBar;


# direct methods
.method private constructor <init>(Lcom/powervision/gcs/view/MiddleSeekBar;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/powervision/gcs/view/MiddleSeekBar;Lcom/powervision/gcs/view/MiddleSeekBar$1;)V
    .locals 0

    .line 292
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;-><init>(Lcom/powervision/gcs/view/MiddleSeekBar;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 7

    .line 383
    iget-object v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v1, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {v1}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$400(Lcom/powervision/gcs/view/MiddleSeekBar;)F

    move-result v1

    sub-float/2addr p1, v1

    invoke-static {v0, p1}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$1700(Lcom/powervision/gcs/view/MiddleSeekBar;F)F

    move-result p1

    float-to-int p1, p1

    .line 384
    iget-object v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {v0}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$300(Lcom/powervision/gcs/view/MiddleSeekBar;)Landroid/widget/Scroller;

    move-result-object v1

    iget-object v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {v0}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$100(Lcom/powervision/gcs/view/MiddleSeekBar;)F

    move-result v0

    float-to-int v3, v0

    int-to-float v0, p1

    iget-object v2, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {v2}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$100(Lcom/powervision/gcs/view/MiddleSeekBar;)F

    move-result v2

    sub-float/2addr v0, v2

    float-to-int v5, v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x190

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 385
    iget-object v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {v0}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$800(Lcom/powervision/gcs/view/MiddleSeekBar;)I

    move-result v1

    mul-int p1, p1, v1

    int-to-float p1, p1

    iget-object v1, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {v1}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$900(Lcom/powervision/gcs/view/MiddleSeekBar;)F

    move-result v1

    div-float/2addr p1, v1

    float-to-int p1, p1

    invoke-static {v0, p1}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$1200(Lcom/powervision/gcs/view/MiddleSeekBar;I)V

    .line 386
    iget-object p1, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {p1}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$200(Lcom/powervision/gcs/view/MiddleSeekBar;)V

    .line 387
    iget-object p1, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/MiddleSeekBar;->invalidate()V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 311
    iget-object p1, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {p1}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$100(Lcom/powervision/gcs/view/MiddleSeekBar;)F

    move-result p2

    sub-float/2addr p2, p3

    invoke-static {p1, p2}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$102(Lcom/powervision/gcs/view/MiddleSeekBar;F)F

    .line 312
    iget-object p1, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {p1}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$100(Lcom/powervision/gcs/view/MiddleSeekBar;)F

    move-result p1

    iget-object p2, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {p2}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$400(Lcom/powervision/gcs/view/MiddleSeekBar;)F

    move-result p2

    iget-object p3, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {p3}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$500(Lcom/powervision/gcs/view/MiddleSeekBar;)F

    move-result p3

    sub-float/2addr p2, p3

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    .line 313
    iget-object p1, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {p1}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$400(Lcom/powervision/gcs/view/MiddleSeekBar;)F

    move-result p2

    iget-object p3, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {p3}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$500(Lcom/powervision/gcs/view/MiddleSeekBar;)F

    move-result p3

    sub-float/2addr p2, p3

    invoke-static {p1, p2}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$102(Lcom/powervision/gcs/view/MiddleSeekBar;F)F

    .line 316
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {p1}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$100(Lcom/powervision/gcs/view/MiddleSeekBar;)F

    move-result p1

    iget-object p2, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {p2}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$600(Lcom/powervision/gcs/view/MiddleSeekBar;)F

    move-result p2

    iget-object p3, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {p3}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$500(Lcom/powervision/gcs/view/MiddleSeekBar;)F

    move-result p3

    sub-float/2addr p2, p3

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    .line 317
    iget-object p1, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {p1}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$600(Lcom/powervision/gcs/view/MiddleSeekBar;)F

    move-result p2

    iget-object p3, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {p3}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$500(Lcom/powervision/gcs/view/MiddleSeekBar;)F

    move-result p3

    sub-float/2addr p2, p3

    invoke-static {p1, p2}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$102(Lcom/powervision/gcs/view/MiddleSeekBar;F)F

    .line 320
    :cond_1
    iget-object p1, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {p1}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$700(Lcom/powervision/gcs/view/MiddleSeekBar;)I

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    .line 321
    invoke-static {p1}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$700(Lcom/powervision/gcs/view/MiddleSeekBar;)I

    move-result p1

    iget-object p2, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {p2}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$800(Lcom/powervision/gcs/view/MiddleSeekBar;)I

    move-result p2

    if-ne p1, p2, :cond_2

    goto/16 :goto_0

    .line 324
    :cond_2
    iget-object p1, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {p1}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$1000(Lcom/powervision/gcs/view/MiddleSeekBar;)F

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    mul-float p1, p1, p2

    .line 325
    iget-object p2, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {p2}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$100(Lcom/powervision/gcs/view/MiddleSeekBar;)F

    move-result p2

    iget-object p3, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {p3}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$1100(Lcom/powervision/gcs/view/MiddleSeekBar;)F

    move-result p3

    iget-object p4, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {p4}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$1000(Lcom/powervision/gcs/view/MiddleSeekBar;)F

    move-result p4

    sub-float/2addr p3, p4

    cmpg-float p2, p2, p3

    if-gez p2, :cond_3

    .line 326
    iget-object p2, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {p2}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$100(Lcom/powervision/gcs/view/MiddleSeekBar;)F

    move-result p2

    iget-object p3, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {p3}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$800(Lcom/powervision/gcs/view/MiddleSeekBar;)I

    move-result p3

    add-int/lit8 p3, p3, -0x2

    int-to-float p3, p3

    mul-float p2, p2, p3

    iget-object p3, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    .line 327
    invoke-static {p3}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$900(Lcom/powervision/gcs/view/MiddleSeekBar;)F

    move-result p3

    sub-float/2addr p3, p1

    div-float/2addr p2, p3

    goto :goto_1

    .line 329
    :cond_3
    iget-object p2, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {p2}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$100(Lcom/powervision/gcs/view/MiddleSeekBar;)F

    move-result p2

    iget-object p3, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {p3}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$1100(Lcom/powervision/gcs/view/MiddleSeekBar;)F

    move-result p3

    iget-object p4, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {p4}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$1000(Lcom/powervision/gcs/view/MiddleSeekBar;)F

    move-result p4

    add-float/2addr p3, p4

    cmpl-float p2, p2, p3

    if-lez p2, :cond_4

    .line 330
    iget-object p2, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {p2}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$700(Lcom/powervision/gcs/view/MiddleSeekBar;)I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {p3}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$100(Lcom/powervision/gcs/view/MiddleSeekBar;)F

    move-result p3

    iget-object p4, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {p4}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$1100(Lcom/powervision/gcs/view/MiddleSeekBar;)F

    move-result p4

    sub-float/2addr p3, p4

    iget-object p4, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {p4}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$1000(Lcom/powervision/gcs/view/MiddleSeekBar;)F

    move-result p4

    sub-float/2addr p3, p4

    iget-object p4, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    .line 331
    invoke-static {p4}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$800(Lcom/powervision/gcs/view/MiddleSeekBar;)I

    move-result p4

    add-int/lit8 p4, p4, -0x2

    int-to-float p4, p4

    mul-float p3, p3, p4

    iget-object p4, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {p4}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$900(Lcom/powervision/gcs/view/MiddleSeekBar;)F

    move-result p4

    sub-float/2addr p4, p1

    div-float/2addr p3, p4

    add-float/2addr p2, p3

    const/high16 p1, 0x3f800000    # 1.0f

    add-float/2addr p2, p1

    goto :goto_1

    .line 333
    :cond_4
    iget-object p1, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {p1}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$700(Lcom/powervision/gcs/view/MiddleSeekBar;)I

    move-result p1

    int-to-float p2, p1

    goto :goto_1

    .line 322
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {p1}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$100(Lcom/powervision/gcs/view/MiddleSeekBar;)F

    move-result p1

    iget-object p2, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {p2}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$800(Lcom/powervision/gcs/view/MiddleSeekBar;)I

    move-result p2

    int-to-float p2, p2

    mul-float p1, p1, p2

    iget-object p2, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {p2}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$900(Lcom/powervision/gcs/view/MiddleSeekBar;)F

    move-result p2

    div-float p2, p1, p2

    :goto_1
    const/4 p1, 0x0

    cmpg-float p3, p2, p1

    if-gez p3, :cond_6

    const/4 p2, 0x0

    .line 341
    :cond_6
    iget-object p1, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {p1}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$800(Lcom/powervision/gcs/view/MiddleSeekBar;)I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_7

    .line 342
    iget-object p1, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {p1}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$800(Lcom/powervision/gcs/view/MiddleSeekBar;)I

    move-result p1

    int-to-float p2, p1

    .line 345
    :cond_7
    iget-object p1, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {p1, p2}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$1200(Lcom/powervision/gcs/view/MiddleSeekBar;I)V

    .line 346
    iget-object p1, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/MiddleSeekBar;->invalidate()V

    const/4 p1, 0x1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 353
    iget-object v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {v0}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$1300(Lcom/powervision/gcs/view/MiddleSeekBar;)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 354
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v2, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {v2}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$100(Lcom/powervision/gcs/view/MiddleSeekBar;)F

    move-result v2

    cmpl-float p1, p1, v2

    if-lez p1, :cond_0

    .line 355
    iget-object p1, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {p1}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$1300(Lcom/powervision/gcs/view/MiddleSeekBar;)I

    move-result p1

    add-int/lit8 v0, p1, 0x1

    :cond_0
    if-gez v0, :cond_1

    const/4 v0, 0x0

    .line 362
    :cond_1
    iget-object p1, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {p1}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$800(Lcom/powervision/gcs/view/MiddleSeekBar;)I

    move-result p1

    if-le v0, p1, :cond_2

    .line 363
    iget-object p1, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {p1}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$800(Lcom/powervision/gcs/view/MiddleSeekBar;)I

    move-result v0

    .line 366
    :cond_2
    iget-object p1, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {p1, v0}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$1200(Lcom/powervision/gcs/view/MiddleSeekBar;I)V

    .line 368
    iget-object p1, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {p1}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$100(Lcom/powervision/gcs/view/MiddleSeekBar;)F

    move-result p1

    .line 369
    iget-object v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {v0}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$200(Lcom/powervision/gcs/view/MiddleSeekBar;)V

    .line 370
    iget-object v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {v0}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$300(Lcom/powervision/gcs/view/MiddleSeekBar;)Landroid/widget/Scroller;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v4

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {v0}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$100(Lcom/powervision/gcs/view/MiddleSeekBar;)F

    move-result v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v6

    const/16 v7, 0x190

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 371
    iget-object v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {v0, p1}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$102(Lcom/powervision/gcs/view/MiddleSeekBar;F)F

    .line 372
    iget-object p1, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/MiddleSeekBar;->invalidate()V

    .line 374
    iget-object p1, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {p1}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$1400(Lcom/powervision/gcs/view/MiddleSeekBar;)Lcom/powervision/gcs/view/MiddleSeekBar$OnSeekChangeListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 375
    iget-object p1, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {p1}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$1400(Lcom/powervision/gcs/view/MiddleSeekBar;)Lcom/powervision/gcs/view/MiddleSeekBar$OnSeekChangeListener;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {v0}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$1300(Lcom/powervision/gcs/view/MiddleSeekBar;)I

    move-result v0

    iget-object v2, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {v2}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$1500(Lcom/powervision/gcs/view/MiddleSeekBar;)I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget-object v2, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {v2}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$1600(Lcom/powervision/gcs/view/MiddleSeekBar;)F

    move-result v2

    mul-float v0, v0, v2

    iget-object v2, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {v2}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$1600(Lcom/powervision/gcs/view/MiddleSeekBar;)F

    move-result v2

    iget-object v3, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-interface {p1, v0, v2, v3}, Lcom/powervision/gcs/view/MiddleSeekBar$OnSeekChangeListener;->onSeekStopped(FFLcom/powervision/gcs/view/MiddleSeekBar;)V

    :cond_3
    return v1
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 295
    iget-object p1, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {p1}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$100(Lcom/powervision/gcs/view/MiddleSeekBar;)F

    move-result p1

    .line 296
    iget-object v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {v0}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$200(Lcom/powervision/gcs/view/MiddleSeekBar;)V

    .line 297
    iget-object v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {v0}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$300(Lcom/powervision/gcs/view/MiddleSeekBar;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {v0}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$100(Lcom/powervision/gcs/view/MiddleSeekBar;)F

    move-result v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x190

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 298
    iget-object v0, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-static {v0, p1}, Lcom/powervision/gcs/view/MiddleSeekBar;->access$102(Lcom/powervision/gcs/view/MiddleSeekBar;F)F

    .line 299
    iget-object p1, p0, Lcom/powervision/gcs/view/MiddleSeekBar$SeekBarGestureListener;->this$0:Lcom/powervision/gcs/view/MiddleSeekBar;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/MiddleSeekBar;->invalidate()V

    const/4 p1, 0x1

    return p1
.end method
