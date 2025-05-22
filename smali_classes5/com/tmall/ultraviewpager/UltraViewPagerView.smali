.class public Lcom/tmall/ultraviewpager/UltraViewPagerView;
.super Landroidx/viewpager/widget/ViewPager;
.source "UltraViewPagerView.java"

# interfaces
.implements Lcom/tmall/ultraviewpager/UltraViewPagerAdapter$UltraViewPagerCenterListener;


# instance fields
.field private autoMeasureHeight:Z

.field private constrainLength:I

.field private enableLoop:Z

.field private itemMarginBottom:I

.field private itemMarginLeft:I

.field private itemMarginRight:I

.field private itemMarginTop:I

.field private itemRatio:D

.field private multiScrRatio:F

.field private needsMeasurePage:Z

.field private pagerAdapter:Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;

.field private ratio:F

.field private scrollMode:Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 66
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 50
    iput v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->multiScrRatio:F

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    .line 53
    iput-wide v1, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->itemRatio:D

    .line 61
    iput v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->ratio:F

    .line 63
    sget-object v0, Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;->HORIZONTAL:Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;

    iput-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->scrollMode:Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, v0}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 71
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 50
    iput v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->multiScrRatio:F

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    .line 53
    iput-wide v1, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->itemRatio:D

    .line 61
    iput v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->ratio:F

    .line 63
    sget-object v0, Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;->HORIZONTAL:Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;

    iput-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->scrollMode:Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    const/4 p1, 0x0

    .line 76
    invoke-virtual {p0, p1}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->setClipChildren(Z)V

    const/4 p1, 0x2

    .line 77
    invoke-virtual {p0, p1}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->setOverScrollMode(I)V

    return-void
.end method

.method private swapTouchEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 4

    .line 324
    invoke-virtual {p0}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 325
    invoke-virtual {p0}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 327
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    div-float/2addr v2, v1

    mul-float v2, v2, v0

    .line 328
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    div-float/2addr v3, v0

    mul-float v3, v3, v1

    .line 330
    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    return-object p1
.end method


# virtual methods
.method public center()V
    .locals 1

    const/4 v0, 0x0

    .line 315
    invoke-virtual {p0, v0}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->setCurrentItem(I)V

    return-void
.end method

.method public getConstrainLength()I
    .locals 1

    .line 295
    iget v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->constrainLength:I

    return v0
.end method

.method public getCurrentItem()I
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->pagerAdapter:Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 225
    iget-object v1, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->pagerAdapter:Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;

    invoke-virtual {v1}, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->getRealCount()I

    move-result v1

    rem-int/2addr v0, v1

    return v0

    .line 227
    :cond_0
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public getCurrentItemFake()I
    .locals 1

    .line 252
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public getNextItem()I
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->pagerAdapter:Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;

    invoke-virtual {v0}, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 233
    iget-object v1, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->pagerAdapter:Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;

    invoke-virtual {v1}, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->getRealCount()I

    move-result v1

    rem-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getRatio()F
    .locals 1

    .line 306
    iget v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->ratio:F

    return v0
.end method

.method public getScrollMode()Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->scrollMode:Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->scrollMode:Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;

    sget-object v1, Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;->VERTICAL:Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;

    if-ne v0, v1, :cond_0

    .line 338
    invoke-direct {p0, p1}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->swapTouchEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 340
    invoke-direct {p0, p1}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->swapTouchEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    return v0

    .line 343
    :cond_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 82
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->onMeasure(II)V

    .line 83
    invoke-virtual {p0, p1, p2}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->onMeasurePage(II)V

    return-void
.end method

.method protected onMeasurePage(II)V
    .locals 10

    .line 87
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->pagerAdapter:Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;

    if-nez v0, :cond_0

    return-void

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->getViewAtPosition(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 92
    invoke-virtual {p0, v1}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v2, 0x0

    .line 97
    :goto_0
    invoke-virtual {p0}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 98
    invoke-virtual {p0, v2}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 99
    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    iget v5, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->itemMarginLeft:I

    if-ne v4, v5, :cond_3

    .line 100
    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget v5, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->itemMarginTop:I

    if-ne v4, v5, :cond_3

    .line 101
    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    iget v5, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->itemMarginRight:I

    if-ne v4, v5, :cond_3

    .line 102
    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    iget v5, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->itemMarginBottom:I

    if-eq v4, v5, :cond_4

    .line 103
    :cond_3
    iget v4, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->itemMarginLeft:I

    iget v5, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->itemMarginTop:I

    iget v6, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->itemMarginRight:I

    iget v7, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->itemMarginBottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 107
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 108
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, v1, v3}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->getChildMeasureSpec(III)I

    move-result v3

    .line 109
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v1, v2}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->getChildMeasureSpec(III)I

    move-result p2

    .line 111
    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {p0}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    iget-object v4, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->pagerAdapter:Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;

    invoke-virtual {p0}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->getCurrentItem()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->getPageWidth(I)F

    move-result v4

    mul-float v2, v2, v4

    float-to-int v2, v2

    .line 112
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 114
    iget-boolean v5, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->needsMeasurePage:Z

    if-eqz v5, :cond_13

    if-nez v2, :cond_6

    if-nez v4, :cond_6

    goto/16 :goto_a

    .line 118
    :cond_6
    iget-wide v4, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->itemRatio:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    if-nez v4, :cond_7

    int-to-double v3, v2

    .line 119
    iget-wide v6, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->itemRatio:D

    div-double/2addr v3, v6

    double-to-int p2, v3

    .line 120
    invoke-virtual {p0}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_9

    .line 121
    invoke-virtual {p0, v4}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 122
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 123
    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 122
    invoke-virtual {v6, v7, v8}, Landroid/view/View;->measure(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 126
    :cond_7
    invoke-virtual {p0}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->getChildCount()I

    move-result v4

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_9

    .line 127
    invoke-virtual {p0, v6}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 128
    iget-object v8, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->pagerAdapter:Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;

    invoke-virtual {p0}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->getCurrentItem()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->getPageWidth(I)F

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_8

    .line 129
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 130
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 129
    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    goto :goto_3

    .line 132
    :cond_8
    invoke-virtual {v7, v3, p2}, Landroid/view/View;->measure(II)V

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 137
    :cond_9
    iget-object p2, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->scrollMode:Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;

    sget-object v2, Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;->HORIZONTAL:Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;

    const/4 v3, 0x1

    if-ne p2, v2, :cond_a

    const/4 p2, 0x1

    goto :goto_4

    :cond_a
    const/4 p2, 0x0

    .line 139
    :goto_4
    iget v2, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->itemMarginLeft:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v2, v4

    iget v4, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->itemMarginRight:I

    add-int/2addr v2, v4

    .line 140
    iget v4, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->itemMarginTop:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v4, v6

    iget v6, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->itemMarginBottom:I

    add-int/2addr v4, v6

    .line 142
    iget v6, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->ratio:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_b

    .line 143
    invoke-virtual {p0}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    iget v6, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->ratio:F

    div-float/2addr v4, v6

    float-to-int v4, v4

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 144
    invoke-virtual {p0, p1, v4}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->setMeasuredDimension(II)V

    .line 145
    invoke-virtual {p0}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->getChildCount()I

    move-result p1

    const/4 v6, 0x0

    :goto_5
    if-ge v6, p1, :cond_e

    .line 146
    invoke-virtual {p0, v6}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 147
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v7, v8, v4}, Landroid/view/View;->measure(II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 150
    :cond_b
    iget-boolean p1, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->autoMeasureHeight:Z

    if-eqz p1, :cond_e

    if-eqz p2, :cond_c

    .line 152
    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iput p1, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->constrainLength:I

    .line 153
    invoke-virtual {p0}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0, p1, v4}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->setMeasuredDimension(II)V

    goto :goto_6

    .line 155
    :cond_c
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iput p1, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->constrainLength:I

    .line 156
    invoke-virtual {p0}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0, v2, p1}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->setMeasuredDimension(II)V

    .line 159
    :goto_6
    iget p1, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->itemMarginTop:I

    iget v2, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->itemMarginBottom:I

    add-int/2addr p1, v2

    if-ne v4, p1, :cond_d

    const/4 p1, 0x1

    goto :goto_7

    :cond_d
    const/4 p1, 0x0

    :goto_7
    iput-boolean p1, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->needsMeasurePage:Z

    .line 163
    :cond_e
    iget-object p1, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->pagerAdapter:Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;

    invoke-virtual {p1}, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->isEnableMultiScr()Z

    move-result p1

    if-nez p1, :cond_f

    return-void

    :cond_f
    if-eqz p2, :cond_10

    .line 167
    invoke-virtual {p0}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->getMeasuredWidth()I

    move-result p1

    goto :goto_8

    :cond_10
    invoke-virtual {p0}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->getMeasuredHeight()I

    move-result p1

    :goto_8
    if-eqz p2, :cond_11

    .line 169
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    goto :goto_9

    :cond_11
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    :goto_9
    if-lez p2, :cond_13

    .line 173
    iput-boolean v1, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->needsMeasurePage:Z

    sub-int v0, p1, p2

    .line 175
    invoke-virtual {p0}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->getPageMargin()I

    move-result v1

    if-nez v1, :cond_12

    neg-int v0, v0

    .line 176
    invoke-virtual {p0, v0}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->setPageMargin(I)V

    :cond_12
    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    float-to-double p1, p1

    .line 178
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    add-int/2addr p1, v3

    .line 179
    invoke-virtual {p0, p1}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->setOffscreenPageLimit(I)V

    .line 180
    invoke-virtual {p0}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->requestLayout()V

    :cond_13
    :goto_a
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 186
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/viewpager/widget/ViewPager;->onSizeChanged(IIII)V

    const/4 p1, 0x1

    .line 188
    iput-boolean p1, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->needsMeasurePage:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 348
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->scrollMode:Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;

    sget-object v1, Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;->VERTICAL:Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;

    if-ne v0, v1, :cond_0

    .line 349
    invoke-direct {p0, p1}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->swapTouchEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 350
    :cond_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public resetPosition()V
    .locals 1

    .line 320
    invoke-virtual {p0}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->setCurrentItem(I)V

    return-void
.end method

.method public setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 194
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->pagerAdapter:Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eq v0, p1, :cond_2

    .line 195
    :cond_0
    new-instance v0, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;

    invoke-direct {v0, p1}, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;-><init>(Landroidx/viewpager/widget/PagerAdapter;)V

    iput-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->pagerAdapter:Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;

    .line 196
    invoke-virtual {v0, p0}, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->setCenterListener(Lcom/tmall/ultraviewpager/UltraViewPagerAdapter$UltraViewPagerCenterListener;)V

    .line 197
    iget-object p1, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->pagerAdapter:Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;

    iget-boolean v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->enableLoop:Z

    invoke-virtual {p1, v0}, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->setEnableLoop(Z)V

    .line 198
    iget-object p1, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->pagerAdapter:Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;

    iget v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->multiScrRatio:F

    invoke-virtual {p1, v0}, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->setMultiScrRatio(F)V

    const/4 p1, 0x1

    .line 199
    iput-boolean p1, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->needsMeasurePage:Z

    const/4 p1, 0x0

    .line 200
    iput p1, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->constrainLength:I

    .line 201
    iget-object p1, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->pagerAdapter:Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    goto :goto_0

    .line 204
    :cond_1
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setAutoMeasureHeight(Z)V
    .locals 0

    .line 281
    iput-boolean p1, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->autoMeasureHeight:Z

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    const/4 v0, 0x0

    .line 210
    invoke-virtual {p0, p1, v0}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->setCurrentItem(IZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->pagerAdapter:Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;

    invoke-virtual {v0}, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->pagerAdapter:Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;

    invoke-virtual {v0}, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->isEnableLoop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->pagerAdapter:Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;

    invoke-virtual {v0}, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->getCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->pagerAdapter:Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;

    invoke-virtual {v1}, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->getRealCount()I

    move-result v1

    rem-int/2addr p1, v1

    add-int/2addr p1, v0

    .line 218
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public setCurrentItemFake(IZ)V
    .locals 0

    .line 245
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public setEnableLoop(Z)V
    .locals 1

    .line 270
    iput-boolean p1, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->enableLoop:Z

    .line 271
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->pagerAdapter:Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {v0, p1}, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->setEnableLoop(Z)V

    :cond_0
    return-void
.end method

.method public setItemMargin(IIII)V
    .locals 0

    .line 299
    iput p1, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->itemMarginLeft:I

    .line 300
    iput p2, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->itemMarginTop:I

    .line 301
    iput p3, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->itemMarginRight:I

    .line 302
    iput p4, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->itemMarginBottom:I

    return-void
.end method

.method public setItemRatio(D)V
    .locals 0

    .line 277
    iput-wide p1, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->itemRatio:D

    return-void
.end method

.method public setMultiScreen(F)V
    .locals 2

    .line 256
    iput p1, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->multiScrRatio:F

    .line 257
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->pagerAdapter:Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {v0, p1}, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->setMultiScrRatio(F)V

    const/4 v0, 0x1

    .line 259
    iput-boolean v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->needsMeasurePage:Z

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    .line 261
    invoke-virtual {p0}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    mul-float v0, v0, p1

    .line 262
    iget-object p1, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->scrollMode:Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;

    sget-object v1, Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;->VERTICAL:Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;

    if-ne p1, v1, :cond_1

    float-to-int p1, v0

    .line 263
    invoke-virtual {p0, p1}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->setPageMargin(I)V

    goto :goto_0

    :cond_1
    neg-float p1, v0

    float-to-int p1, p1

    .line 265
    invoke-virtual {p0, p1}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->setPageMargin(I)V

    :goto_0
    return-void
.end method

.method public setRatio(F)V
    .locals 0

    .line 310
    iput p1, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->ratio:F

    return-void
.end method

.method public setScrollMode(Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;)V
    .locals 1

    .line 285
    iput-object p1, p0, Lcom/tmall/ultraviewpager/UltraViewPagerView;->scrollMode:Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;

    .line 286
    sget-object v0, Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;->VERTICAL:Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 287
    new-instance v0, Lcom/tmall/ultraviewpager/transformer/UltraVerticalTransformer;

    invoke-direct {v0}, Lcom/tmall/ultraviewpager/transformer/UltraVerticalTransformer;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->setPageTransformer(ZLandroidx/viewpager/widget/ViewPager$PageTransformer;)V

    :cond_0
    return-void
.end method
