.class public Lcom/powervision/gcs/view/ScrollControlVP;
.super Landroidx/viewpager/widget/ViewPager;
.source "ScrollControlVP.java"


# instance fields
.field private isCanScroll:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/powervision/gcs/view/ScrollControlVP;->isCanScroll:Z

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/powervision/gcs/view/ScrollControlVP;->isCanScroll:Z

    if-eqz v0, :cond_0

    .line 24
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public scrollTo(II)V
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/powervision/gcs/view/ScrollControlVP;->isCanScroll:Z

    if-eqz v0, :cond_0

    .line 41
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->scrollTo(II)V

    :cond_0
    return-void
.end method

.method public setIsCanScroll(Z)V
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/powervision/gcs/view/ScrollControlVP;->isCanScroll:Z

    return-void
.end method
