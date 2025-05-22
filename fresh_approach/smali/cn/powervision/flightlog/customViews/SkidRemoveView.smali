.class public Lcn/powervision/flightlog/customViews/SkidRemoveView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SkidRemoveView.java"


# static fields
.field private static final INVALID_CHILD_WIDTH:I = -0x1

.field private static final INVALID_POSITION:I = -0x1

.field private static final SNAP_VELOCITY:I = 0x258

.field private static final TAG:Ljava/lang/String; = "SlideRecyclerView"


# instance fields
.field private mFirstX:F

.field private mFirstY:F

.field private mFlingView:Landroid/view/ViewGroup;

.field private mIsSlide:Z

.field private mLastX:F

.field private mMenuViewWidth:I

.field private mPosition:I

.field private mScroller:Landroid/widget/Scroller;

.field private mTouchFrame:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lcn/powervision/flightlog/customViews/SkidRemoveView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, v0}, Lcn/powervision/flightlog/customViews/SkidRemoveView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mTouchSlop:I

    .line 50
    new-instance p2, Landroid/widget/Scroller;

    invoke-direct {p2, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mScroller:Landroid/widget/Scroller;

    return-void
.end method

.method private obtainVelocity(Landroid/view/MotionEvent;)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 157
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 159
    :cond_0
    iget-object v0, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private releaseVelocity()V
    .locals 1

    .line 148
    iget-object v0, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 150
    iget-object v0, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method


# virtual methods
.method public closeMenu()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mFlingView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mFlingView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/view/ViewGroup;->scrollTo(II)V

    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 3

    .line 185
    iget-object v0, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mFlingView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iget-object v2, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 187
    invoke-virtual {p0}, Lcn/powervision/flightlog/customViews/SkidRemoveView;->invalidate()V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 57
    invoke-direct {p0, p1}, Lcn/powervision/flightlog/customViews/SkidRemoveView;->obtainVelocity(Landroid/view/MotionEvent;)V

    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v4, :cond_3

    if-eq v2, v3, :cond_0

    goto/16 :goto_0

    .line 82
    :cond_0
    iget-object v2, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 83
    iget-object v2, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    .line 84
    iget-object v3, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v3

    .line 85
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x44160000    # 600.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_2

    :cond_1
    int-to-float v0, v0

    iget v2, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mFirstX:F

    sub-float v2, v0, v2

    .line 86
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_8

    iget v2, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mFirstX:F

    sub-float/2addr v0, v2

    .line 87
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v1, v1

    iget v2, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mFirstY:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    .line 88
    :cond_2
    iput-boolean v4, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mIsSlide:Z

    return v4

    .line 93
    :cond_3
    invoke-direct {p0}, Lcn/powervision/flightlog/customViews/SkidRemoveView;->releaseVelocity()V

    goto :goto_0

    .line 60
    :cond_4
    iget-object v2, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_5

    .line 61
    iget-object v2, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_5
    int-to-float v2, v0

    .line 63
    iput v2, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mLastX:F

    iput v2, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mFirstX:F

    int-to-float v2, v1

    .line 64
    iput v2, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mFirstY:F

    .line 65
    invoke-virtual {p0, v0, v1}, Lcn/powervision/flightlog/customViews/SkidRemoveView;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 67
    iget-object v2, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mFlingView:Landroid/view/ViewGroup;

    .line 70
    invoke-virtual {p0}, Lcn/powervision/flightlog/customViews/SkidRemoveView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0, v0}, Lcn/powervision/flightlog/customViews/SkidRemoveView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mFlingView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_6

    if-eq v0, v2, :cond_6

    .line 71
    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    .line 72
    invoke-virtual {v2, v0, v0}, Landroid/view/View;->scrollTo(II)V

    .line 74
    :cond_6
    iget-object v0, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mFlingView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ne v0, v3, :cond_7

    .line 75
    iget-object v0, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mFlingView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mMenuViewWidth:I

    goto :goto_0

    .line 77
    :cond_7
    iput v1, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mMenuViewWidth:I

    .line 96
    :cond_8
    :goto_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 101
    iget-boolean v0, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mIsSlide:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 103
    invoke-direct {p0, p1}, Lcn/powervision/flightlog/customViews/SkidRemoveView;->obtainVelocity(Landroid/view/MotionEvent;)V

    .line 104
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_2

    const/4 v4, 0x2

    if-eq p1, v4, :cond_0

    goto/16 :goto_1

    .line 109
    :cond_0
    iget p1, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mMenuViewWidth:I

    if-eq p1, v1, :cond_7

    .line 110
    iget p1, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mLastX:F

    sub-float/2addr p1, v0

    .line 111
    iget-object v1, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mFlingView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p1

    iget v4, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mMenuViewWidth:I

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mFlingView:Landroid/view/ViewGroup;

    .line 112
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p1

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-lez v1, :cond_1

    .line 113
    iget-object v1, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mFlingView:Landroid/view/ViewGroup;

    float-to-int p1, p1

    invoke-virtual {v1, p1, v2}, Landroid/view/ViewGroup;->scrollBy(II)V

    .line 115
    :cond_1
    iput v0, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mLastX:F

    goto/16 :goto_1

    .line 119
    :cond_2
    iget p1, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mMenuViewWidth:I

    if-eq p1, v1, :cond_6

    .line 120
    iget-object p1, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mFlingView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v5

    .line 121
    iget-object p1, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 122
    iget-object p1, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    const/high16 v0, -0x3bea0000    # -600.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    .line 123
    iget-object v4, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mScroller:Landroid/widget/Scroller;

    const/4 v6, 0x0

    iget p1, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mMenuViewWidth:I

    sub-int v7, p1, v5

    const/4 v8, 0x0

    sub-int/2addr p1, v5

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-virtual/range {v4 .. v9}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 124
    :cond_3
    iget-object p1, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    const/high16 v0, 0x44160000    # 600.0f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_4

    .line 125
    iget-object v4, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mScroller:Landroid/widget/Scroller;

    const/4 v6, 0x0

    neg-int v7, v5

    const/4 v8, 0x0

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-virtual/range {v4 .. v9}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 126
    :cond_4
    iget p1, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mMenuViewWidth:I

    div-int/lit8 v0, p1, 0x2

    if-lt v5, v0, :cond_5

    .line 127
    iget-object v4, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mScroller:Landroid/widget/Scroller;

    const/4 v6, 0x0

    sub-int v7, p1, v5

    const/4 v8, 0x0

    sub-int/2addr p1, v5

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-virtual/range {v4 .. v9}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 129
    :cond_5
    iget-object v4, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mScroller:Landroid/widget/Scroller;

    const/4 v6, 0x0

    neg-int v7, v5

    const/4 v8, 0x0

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-virtual/range {v4 .. v9}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 131
    :goto_0
    invoke-virtual {p0}, Lcn/powervision/flightlog/customViews/SkidRemoveView;->invalidate()V

    .line 133
    :cond_6
    iput v1, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mMenuViewWidth:I

    .line 134
    iput-boolean v2, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mIsSlide:Z

    .line 135
    iput v1, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mPosition:I

    .line 136
    invoke-direct {p0}, Lcn/powervision/flightlog/customViews/SkidRemoveView;->releaseVelocity()V

    :cond_7
    :goto_1
    return v3

    .line 141
    :cond_8
    invoke-virtual {p0}, Lcn/powervision/flightlog/customViews/SkidRemoveView;->closeMenu()V

    .line 142
    invoke-direct {p0}, Lcn/powervision/flightlog/customViews/SkidRemoveView;->releaseVelocity()V

    .line 144
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public pointToPosition(II)I
    .locals 5

    .line 163
    invoke-virtual {p0}, Lcn/powervision/flightlog/customViews/SkidRemoveView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 164
    iget-object v1, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mTouchFrame:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    .line 166
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcn/powervision/flightlog/customViews/SkidRemoveView;->mTouchFrame:Landroid/graphics/Rect;

    .line 170
    :cond_0
    invoke-virtual {p0}, Lcn/powervision/flightlog/customViews/SkidRemoveView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    .line 172
    invoke-virtual {p0, v2}, Lcn/powervision/flightlog/customViews/SkidRemoveView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 173
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 174
    invoke-virtual {v3, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 175
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/2addr v0, v2

    return v0

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method
