.class public Lcom/powervision/base/views/VerticalViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "VerticalViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/base/views/VerticalViewPager$VerticalPageTransformer;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-direct {p0}, Lcom/powervision/base/views/VerticalViewPager;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-direct {p0}, Lcom/powervision/base/views/VerticalViewPager;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 30
    new-instance v0, Lcom/powervision/base/views/VerticalViewPager$VerticalPageTransformer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/powervision/base/views/VerticalViewPager$VerticalPageTransformer;-><init>(Lcom/powervision/base/views/VerticalViewPager;Lcom/powervision/base/views/VerticalViewPager$1;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/powervision/base/views/VerticalViewPager;->setPageTransformer(ZLandroidx/viewpager/widget/ViewPager$PageTransformer;)V

    const/4 v0, 0x2

    .line 32
    invoke-virtual {p0, v0}, Lcom/powervision/base/views/VerticalViewPager;->setOverScrollMode(I)V

    return-void
.end method

.method private swapXY(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 4

    .line 65
    invoke-virtual {p0}, Lcom/powervision/base/views/VerticalViewPager;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 66
    invoke-virtual {p0}, Lcom/powervision/base/views/VerticalViewPager;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    div-float/2addr v2, v1

    mul-float v2, v2, v0

    .line 69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    div-float/2addr v3, v0

    mul-float v3, v3, v1

    .line 71
    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    return-object p1
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 78
    invoke-direct {p0, p1}, Lcom/powervision/base/views/VerticalViewPager;->swapXY(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 79
    invoke-direct {p0, p1}, Lcom/powervision/base/views/VerticalViewPager;->swapXY(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcom/powervision/base/views/VerticalViewPager;->swapXY(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
