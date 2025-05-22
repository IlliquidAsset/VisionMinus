.class public Lcom/powervision/base/views/NoScrollViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "NoScrollViewPager.java"


# instance fields
.field private isScroll:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/powervision/base/views/NoScrollViewPager;->isScroll:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/powervision/base/views/NoScrollViewPager;->isScroll:Z

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/powervision/base/views/NoScrollViewPager;->isScroll:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/powervision/base/views/NoScrollViewPager;->isScroll:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setScroll(Z)V
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/powervision/base/views/NoScrollViewPager;->isScroll:Z

    return-void
.end method
