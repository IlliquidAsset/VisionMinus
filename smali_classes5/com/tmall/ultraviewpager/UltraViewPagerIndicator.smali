.class public Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;
.super Landroid/view/View;
.source "UltraViewPagerIndicator.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
.implements Lcom/tmall/ultraviewpager/IUltraIndicatorBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tmall/ultraviewpager/UltraViewPagerIndicator$UltraViewPagerIndicatorListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_RADIUS:I = 0x3


# instance fields
.field private animateIndicator:Z

.field defaultRadius:F

.field private focusBitmap:Landroid/graphics/Bitmap;

.field private focusColor:I

.field private gravity:I

.field private indicatorBuildListener:Lcom/tmall/ultraviewpager/UltraViewPagerIndicator$UltraViewPagerIndicatorListener;

.field private indicatorPadding:I

.field private marginBottom:I

.field private marginLeft:I

.field private marginRight:I

.field private marginTop:I

.field private normalBitmap:Landroid/graphics/Bitmap;

.field private normalColor:I

.field private orientation:Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;

.field private pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field pageOffset:F

.field private paintFill:Landroid/graphics/Paint;

.field private paintStroke:Landroid/graphics/Paint;

.field private radius:I

.field private scrollState:I

.field private viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 57
    sget-object p1, Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;->HORIZONTAL:Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;

    iput-object p1, p0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->orientation:Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;

    .line 84
    invoke-direct {p0}, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    sget-object p1, Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;->HORIZONTAL:Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;

    iput-object p1, p0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->orientation:Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;

    .line 89
    invoke-direct {p0}, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    sget-object p1, Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;->HORIZONTAL:Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;

    iput-object p1, p0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->orientation:Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;

    .line 94
    invoke-direct {p0}, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->init()V

    return-void
.end method

.method private getItemHeight()F
    .locals 2

    .line 267
    invoke-direct {p0}, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->isDrawResIndicator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->focusBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->normalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    return v0

    .line 270
    :cond_0
    iget v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->radius:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->defaultRadius:F

    goto :goto_0

    :cond_1
    int-to-float v0, v0

    :goto_0
    return v0
.end method

.method private getItemWidth()F
    .locals 2

    .line 260
    invoke-direct {p0}, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->isDrawResIndicator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->focusBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->normalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    return v0

    .line 263
    :cond_0
    iget v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->radius:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->defaultRadius:F

    goto :goto_0

    :cond_1
    int-to-float v0, v0

    :goto_0
    return v0
.end method

.method private init()V
    .locals 3

    .line 98
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->paintStroke:Landroid/graphics/Paint;

    .line 99
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 100
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->paintFill:Landroid/graphics/Paint;

    .line 101
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 102
    invoke-virtual {p0}, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->defaultRadius:F

    return-void
.end method

.method private isDrawResIndicator()Z
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->focusBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->normalBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public build()V
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->indicatorBuildListener:Lcom/tmall/ultraviewpager/UltraViewPagerIndicator$UltraViewPagerIndicatorListener;

    if-eqz v0, :cond_0

    .line 395
    invoke-interface {v0}, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator$UltraViewPagerIndicatorListener;->build()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 112
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 114
    iget-object v2, v0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_a

    .line 117
    :cond_0
    iget-object v2, v0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    invoke-virtual {v2}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v2

    check-cast v2, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;

    invoke-virtual {v2}, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->getRealCount()I

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 128
    :cond_1
    iget-object v3, v0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->orientation:Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;

    sget-object v4, Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;->HORIZONTAL:Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;

    if-ne v3, v4, :cond_2

    .line 129
    iget-object v3, v0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    invoke-virtual {v3}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->getWidth()I

    move-result v3

    .line 130
    iget-object v4, v0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    invoke-virtual {v4}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->getHeight()I

    move-result v4

    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->getPaddingLeft()I

    move-result v5

    iget v6, v0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->marginLeft:I

    add-int/2addr v5, v6

    .line 132
    invoke-virtual/range {p0 .. p0}, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->getPaddingRight()I

    move-result v6

    iget v7, v0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->marginRight:I

    add-int/2addr v6, v7

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->getPaddingTop()I

    move-result v7

    iget v8, v0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->marginTop:I

    add-int/2addr v7, v8

    .line 134
    iget-object v8, v0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->paintStroke:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual/range {p0 .. p0}, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, v0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->marginBottom:I

    goto :goto_0

    .line 136
    :cond_2
    iget-object v3, v0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    invoke-virtual {v3}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->getHeight()I

    move-result v3

    .line 137
    iget-object v4, v0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    invoke-virtual {v4}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->getWidth()I

    move-result v4

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->getPaddingTop()I

    move-result v5

    iget v6, v0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->marginTop:I

    add-int/2addr v5, v6

    .line 139
    iget-object v6, v0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->paintStroke:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual/range {p0 .. p0}, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->marginBottom:I

    add-int/2addr v6, v7

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->getPaddingLeft()I

    move-result v7

    iget v8, v0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->marginLeft:I

    add-int/2addr v7, v8

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->getPaddingRight()I

    move-result v8

    iget v9, v0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->marginRight:I

    :goto_0
    add-int/2addr v8, v9

    .line 144
    invoke-direct/range {p0 .. p0}, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->getItemWidth()F

    move-result v9

    .line 145
    invoke-direct/range {p0 .. p0}, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->isDrawResIndicator()Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    goto :goto_1

    :cond_3
    const/4 v10, 0x2

    .line 146
    :goto_1
    iget v12, v0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->indicatorPadding:I

    if-nez v12, :cond_4

    float-to-int v12, v9

    .line 147
    iput v12, v0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->indicatorPadding:I

    :cond_4
    int-to-float v12, v7

    int-to-float v13, v5

    add-int/lit8 v14, v2, -0x1

    int-to-float v14, v14

    int-to-float v10, v10

    mul-float v10, v10, v9

    .line 153
    iget v15, v0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->indicatorPadding:I

    int-to-float v15, v15

    add-float/2addr v15, v10

    mul-float v14, v14, v15

    .line 155
    iget v15, v0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->gravity:I

    and-int/lit8 v11, v15, 0x7

    and-int/lit8 v15, v15, 0x70

    const/high16 v16, 0x40000000    # 2.0f

    move/from16 v17, v12

    const/4 v12, 0x1

    if-eq v11, v12, :cond_9

    const/4 v5, 0x3

    if-eq v11, v5, :cond_8

    const/4 v5, 0x5

    if-eq v11, v5, :cond_6

    :cond_5
    :goto_2
    move/from16 v12, v17

    goto :goto_3

    .line 162
    :cond_6
    iget-object v5, v0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->orientation:Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;

    sget-object v12, Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;->HORIZONTAL:Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;

    if-ne v5, v12, :cond_7

    sub-int v5, v3, v6

    int-to-float v5, v5

    sub-float/2addr v5, v14

    sub-float v13, v5, v9

    .line 165
    :cond_7
    iget-object v5, v0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->orientation:Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;

    sget-object v12, Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;->VERTICAL:Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;

    if-ne v5, v12, :cond_5

    sub-int v5, v4, v8

    int-to-float v5, v5

    sub-float v12, v5, v9

    goto :goto_3

    :cond_8
    add-float/2addr v13, v9

    goto :goto_2

    :cond_9
    sub-int v5, v3, v5

    sub-int/2addr v5, v6

    int-to-float v5, v5

    sub-float/2addr v5, v14

    div-float v13, v5, v16

    goto :goto_2

    :goto_3
    const/16 v5, 0x10

    if-eq v15, v5, :cond_e

    const/16 v5, 0x30

    if-eq v15, v5, :cond_d

    const/16 v5, 0x50

    if-eq v15, v5, :cond_a

    :goto_4
    const/4 v3, 0x1

    goto :goto_5

    .line 180
    :cond_a
    iget-object v5, v0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->orientation:Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;

    move/from16 v18, v13

    sget-object v13, Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;->HORIZONTAL:Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;

    if-ne v5, v13, :cond_b

    sub-int v5, v4, v8

    int-to-float v5, v5

    .line 181
    invoke-direct/range {p0 .. p0}, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->getItemHeight()F

    move-result v12

    sub-float v12, v5, v12

    .line 183
    :cond_b
    iget-object v5, v0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->orientation:Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;

    sget-object v13, Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;->VERTICAL:Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;

    if-ne v5, v13, :cond_c

    sub-int/2addr v3, v6

    int-to-float v3, v3

    sub-float v13, v3, v14

    goto :goto_4

    :cond_c
    move/from16 v13, v18

    goto :goto_4

    :cond_d
    move/from16 v18, v13

    add-float/2addr v12, v9

    goto :goto_4

    :cond_e
    move/from16 v18, v13

    sub-int v3, v4, v8

    sub-int/2addr v3, v7

    int-to-float v3, v3

    sub-float/2addr v3, v9

    div-float v12, v3, v16

    goto :goto_4

    :goto_5
    if-ne v11, v3, :cond_f

    const/16 v3, 0x10

    if-ne v15, v3, :cond_f

    sub-int/2addr v4, v8

    sub-int/2addr v4, v7

    int-to-float v3, v4

    sub-float/2addr v3, v9

    div-float v12, v3, v16

    .line 200
    :cond_f
    iget v3, v0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->radius:I

    int-to-float v3, v3

    .line 201
    iget-object v4, v0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->paintStroke:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_10

    .line 202
    iget-object v4, v0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->paintStroke:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    div-float v4, v4, v16

    sub-float/2addr v3, v4

    :cond_10
    const/4 v4, 0x0

    :goto_6
    if-ge v4, v2, :cond_16

    int-to-float v5, v4

    .line 207
    iget v6, v0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->indicatorPadding:I

    int-to-float v6, v6

    add-float/2addr v6, v10

    mul-float v5, v5, v6

    add-float/2addr v5, v13

    .line 209
    iget-object v6, v0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->orientation:Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;

    sget-object v7, Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;->HORIZONTAL:Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;

    if-ne v6, v7, :cond_11

    move v6, v12

    goto :goto_7

    :cond_11
    move v6, v5

    move v5, v12

    .line 217
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->isDrawResIndicator()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 218
    iget-object v7, v0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    invoke-virtual {v7}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->getCurrentItem()I

    move-result v7

    if-ne v4, v7, :cond_12

    goto :goto_8

    .line 220
    :cond_12
    iget-object v7, v0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->normalBitmap:Landroid/graphics/Bitmap;

    iget-object v8, v0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->paintFill:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v5, v6, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_8

    .line 223
    :cond_13
    iget-object v7, v0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->paintFill:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getAlpha()I

    move-result v7

    if-lez v7, :cond_14

    .line 224
    iget-object v7, v0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->paintFill:Landroid/graphics/Paint;

    iget v8, v0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->normalColor:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 225
    iget-object v7, v0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->paintFill:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v6, v3, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 229
    :cond_14
    iget v7, v0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->radius:I

    int-to-float v8, v7

    cmpl-float v8, v3, v8

    if-eqz v8, :cond_15

    int-to-float v7, v7

    .line 230
    iget-object v8, v0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->paintStroke:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_15
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 236
    :cond_16
    iget-object v2, v0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    invoke-virtual {v2}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->getCurrentItem()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->indicatorPadding:I

    int-to-float v3, v3

    add-float/2addr v10, v3

    mul-float v2, v2, v10

    .line 237
    iget-boolean v3, v0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->animateIndicator:Z

    if-eqz v3, :cond_17

    .line 238
    iget v3, v0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->pageOffset:F

    mul-float v3, v3, v9

    add-float/2addr v2, v3

    .line 239
    :cond_17
    iget-object v3, v0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->orientation:Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;

    sget-object v4, Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;->HORIZONTAL:Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;

    if-ne v3, v4, :cond_18

    add-float/2addr v13, v2

    move/from16 v19, v13

    move v13, v12

    move/from16 v12, v19

    goto :goto_9

    :cond_18
    add-float/2addr v13, v2

    .line 247
    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->isDrawResIndicator()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 248
    iget-object v2, v0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->focusBitmap:Landroid/graphics/Bitmap;

    iget-object v3, v0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->paintStroke:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v12, v13, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_a

    .line 250
    :cond_19
    iget-object v2, v0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->paintFill:Landroid/graphics/Paint;

    iget v3, v0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->focusColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 251
    iget v2, v0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->radius:I

    int-to-float v2, v2

    iget-object v3, v0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->paintFill:Landroid/graphics/Paint;

    invoke-virtual {v1, v12, v13, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1a
    :goto_a
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 296
    iput p1, p0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->scrollState:I

    .line 298
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 299
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 275
    iput p2, p0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->pageOffset:F

    .line 276
    invoke-virtual {p0}, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->invalidate()V

    .line 278
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 279
    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 285
    iget v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->scrollState:I

    if-nez v0, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->invalidate()V

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 290
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_1
    return-void
.end method

.method public setFocusColor(I)Lcom/tmall/ultraviewpager/IUltraIndicatorBuilder;
    .locals 0

    .line 323
    iput p1, p0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->focusColor:I

    return-object p0
.end method

.method public setFocusIcon(Landroid/graphics/Bitmap;)Lcom/tmall/ultraviewpager/IUltraIndicatorBuilder;
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->focusBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setFocusResId(I)Lcom/tmall/ultraviewpager/IUltraIndicatorBuilder;
    .locals 1

    .line 354
    :try_start_0
    invoke-virtual {p0}, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->focusBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 356
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object p0
.end method

.method public setGravity(I)Lcom/tmall/ultraviewpager/IUltraIndicatorBuilder;
    .locals 0

    .line 347
    iput p1, p0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->gravity:I

    return-object p0
.end method

.method public setIndicatorBuildListener(Lcom/tmall/ultraviewpager/UltraViewPagerIndicator$UltraViewPagerIndicatorListener;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->indicatorBuildListener:Lcom/tmall/ultraviewpager/UltraViewPagerIndicator$UltraViewPagerIndicatorListener;

    return-void
.end method

.method public setIndicatorPadding(I)Lcom/tmall/ultraviewpager/IUltraIndicatorBuilder;
    .locals 0

    .line 317
    iput p1, p0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->indicatorPadding:I

    return-object p0
.end method

.method public setMargin(IIII)Lcom/tmall/ultraviewpager/IUltraIndicatorBuilder;
    .locals 0

    .line 385
    iput p1, p0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->marginLeft:I

    .line 386
    iput p2, p0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->marginTop:I

    .line 387
    iput p3, p0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->marginRight:I

    .line 388
    iput p4, p0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->marginBottom:I

    return-object p0
.end method

.method public setNormalColor(I)Lcom/tmall/ultraviewpager/IUltraIndicatorBuilder;
    .locals 0

    .line 329
    iput p1, p0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->normalColor:I

    return-object p0
.end method

.method public setNormalIcon(Landroid/graphics/Bitmap;)Lcom/tmall/ultraviewpager/IUltraIndicatorBuilder;
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->normalBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setNormalResId(I)Lcom/tmall/ultraviewpager/IUltraIndicatorBuilder;
    .locals 1

    .line 364
    :try_start_0
    invoke-virtual {p0}, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->normalBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 366
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object p0
.end method

.method public setOrientation(Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;)Lcom/tmall/ultraviewpager/IUltraIndicatorBuilder;
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->orientation:Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;

    return-object p0
.end method

.method public setPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0

    .line 400
    iput-object p1, p0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setRadius(I)Lcom/tmall/ultraviewpager/IUltraIndicatorBuilder;
    .locals 0

    .line 311
    iput p1, p0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->radius:I

    return-object p0
.end method

.method public setStrokeColor(I)Lcom/tmall/ultraviewpager/IUltraIndicatorBuilder;
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->paintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-object p0
.end method

.method public setStrokeWidth(I)Lcom/tmall/ultraviewpager/IUltraIndicatorBuilder;
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->paintStroke:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-object p0
.end method

.method public setViewPager(Lcom/tmall/ultraviewpager/UltraViewPagerView;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    .line 107
    invoke-virtual {p1, p0}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method
