.class public abstract Lcom/powervision/base/views/widget/WheelItemClickListener;
.super Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;
.source "WheelItemClickListener.java"


# instance fields
.field private gestureDetector:Landroidx/core/view/GestureDetectorCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 15
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;-><init>()V

    .line 16
    new-instance v0, Lcom/powervision/base/views/widget/WheelItemClickListener$1;

    invoke-direct {v0, p0}, Lcom/powervision/base/views/widget/WheelItemClickListener$1;-><init>(Lcom/powervision/base/views/widget/WheelItemClickListener;)V

    .line 22
    new-instance v1, Landroidx/core/view/GestureDetectorCompat;

    invoke-direct {v1, p1, v0}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/powervision/base/views/widget/WheelItemClickListener;->gestureDetector:Landroidx/core/view/GestureDetectorCompat;

    const/4 p1, 0x0

    .line 23
    invoke-virtual {v1, p1}, Landroidx/core/view/GestureDetectorCompat;->setIsLongpressEnabled(Z)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 28
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    iget-object v1, p0, Lcom/powervision/base/views/widget/WheelItemClickListener;->gestureDetector:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {v1, p2}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 30
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/powervision/base/views/widget/WheelItemClickListener;->onItemClick(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method abstract onItemClick(I)V
.end method
