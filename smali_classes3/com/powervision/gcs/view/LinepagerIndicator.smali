.class public Lcom/powervision/gcs/view/LinepagerIndicator;
.super Landroid/widget/HorizontalScrollView;
.source "LinepagerIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/LinepagerIndicator$PageListener;,
        Lcom/powervision/gcs/view/LinepagerIndicator$TabView;,
        Lcom/powervision/gcs/view/LinepagerIndicator$OnTabSelectedListener;
    }
.end annotation


# instance fields
.field private currentPosition:I

.field private currentPositionOffset:F

.field private diviPaint:Landroid/graphics/Paint;

.field private dividerColor:I

.field private dividerPadding:I

.field private dividerWidth:I

.field private enableDivider:Z

.field private enableExpand:Z

.field private indicatorColor:I

.field private indicatorHeight:F

.field private indicatorOnTop:Z

.field private lastScrollX:I

.field private linePaint:Landroid/graphics/Paint;

.field public mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private mPager:Landroidx/viewpager/widget/ViewPager;

.field private mTabSelectedListener:Lcom/powervision/gcs/view/LinepagerIndicator$OnTabSelectedListener;

.field private mTabsContainer:Landroid/widget/LinearLayout;

.field private scrollOffset:I

.field private tabCount:I

.field private tabPadding:I

.field private tabTextSize:I

.field private textSelectedColor:I

.field private textUnselectColor:I

.field private underlineColor:I

.field private underlineHeight:F

.field private viewPagerScrollWithAnimation:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/powervision/gcs/view/LinepagerIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/gcs/view/LinepagerIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 29
    iput p2, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->currentPosition:I

    const/4 p3, 0x0

    .line 30
    iput p3, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->currentPositionOffset:F

    const p3, -0xd9d6d5

    .line 33
    iput p3, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->indicatorColor:I

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->underlineColor:I

    .line 35
    iput v0, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->dividerColor:I

    .line 36
    iput p3, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->textSelectedColor:I

    const p3, -0x7c7771

    .line 37
    iput p3, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->textUnselectColor:I

    const/4 p3, 0x1

    .line 38
    iput-boolean p3, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->enableExpand:Z

    .line 39
    iput-boolean p2, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->enableDivider:Z

    .line 40
    iput-boolean p2, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->indicatorOnTop:Z

    .line 41
    iput-boolean p3, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->viewPagerScrollWithAnimation:Z

    const/16 v1, 0x10

    .line 42
    iput v1, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->tabTextSize:I

    const/16 v1, 0x34

    .line 43
    iput v1, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->scrollOffset:I

    const/high16 v1, 0x3fc00000    # 1.5f

    .line 44
    iput v1, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->indicatorHeight:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 45
    iput v1, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->underlineHeight:F

    const/16 v1, 0xc

    .line 46
    iput v1, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->dividerPadding:I

    const/16 v1, 0x18

    .line 47
    iput v1, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->tabPadding:I

    .line 48
    iput p3, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->dividerWidth:I

    .line 49
    iput p2, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->lastScrollX:I

    .line 62
    invoke-virtual {p0, p3}, Lcom/powervision/gcs/view/LinepagerIndicator;->setFillViewport(Z)V

    .line 63
    invoke-virtual {p0, p2}, Lcom/powervision/gcs/view/LinepagerIndicator;->setWillNotDraw(Z)V

    .line 65
    invoke-virtual {p0}, Lcom/powervision/gcs/view/LinepagerIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 67
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->mTabsContainer:Landroid/widget/LinearLayout;

    .line 68
    invoke-virtual {v2, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 69
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/high16 p2, 0x42480000    # 50.0f

    .line 70
    invoke-static {p3, p2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 71
    iget-object p2, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    iget-object p1, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/LinepagerIndicator;->addView(Landroid/view/View;)V

    .line 74
    iget p1, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->scrollOffset:I

    int-to-float p1, p1

    invoke-static {p3, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->scrollOffset:I

    .line 75
    iget p1, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->dividerPadding:I

    int-to-float p1, p1

    invoke-static {p3, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->dividerPadding:I

    .line 76
    iget p1, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->tabPadding:I

    int-to-float p1, p1

    invoke-static {p3, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->tabPadding:I

    .line 77
    iget p1, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->dividerWidth:I

    int-to-float p1, p1

    invoke-static {p3, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->dividerWidth:I

    .line 78
    iget p1, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->indicatorHeight:F

    invoke-static {p3, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->indicatorHeight:F

    .line 79
    iget p1, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->underlineHeight:F

    invoke-static {p3, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->underlineHeight:F

    .line 81
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->linePaint:Landroid/graphics/Paint;

    .line 82
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 83
    iget-object p1, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->linePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->diviPaint:Landroid/graphics/Paint;

    .line 86
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 87
    iget-object p1, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->diviPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->dividerWidth:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/gcs/view/LinepagerIndicator;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->mPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/gcs/view/LinepagerIndicator;)Lcom/powervision/gcs/view/LinepagerIndicator$OnTabSelectedListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->mTabSelectedListener:Lcom/powervision/gcs/view/LinepagerIndicator$OnTabSelectedListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/gcs/view/LinepagerIndicator;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->viewPagerScrollWithAnimation:Z

    return p0
.end method

.method static synthetic access$400(Lcom/powervision/gcs/view/LinepagerIndicator;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->tabTextSize:I

    return p0
.end method

.method static synthetic access$502(Lcom/powervision/gcs/view/LinepagerIndicator;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->currentPosition:I

    return p1
.end method

.method static synthetic access$602(Lcom/powervision/gcs/view/LinepagerIndicator;F)F
    .locals 0

    .line 23
    iput p1, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->currentPositionOffset:F

    return p1
.end method

.method static synthetic access$700(Lcom/powervision/gcs/view/LinepagerIndicator;)Landroid/widget/LinearLayout;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->mTabsContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$800(Lcom/powervision/gcs/view/LinepagerIndicator;II)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/powervision/gcs/view/LinepagerIndicator;->scrollToChild(II)V

    return-void
.end method

.method static synthetic access$900(Lcom/powervision/gcs/view/LinepagerIndicator;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/LinepagerIndicator;->tabSelect(I)V

    return-void
.end method

.method private addTab(ILjava/lang/String;)V
    .locals 5

    .line 171
    new-instance v0, Lcom/powervision/gcs/view/LinepagerIndicator$TabView;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/LinepagerIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/powervision/gcs/view/LinepagerIndicator$TabView;-><init>(Lcom/powervision/gcs/view/LinepagerIndicator;Landroid/content/Context;)V

    .line 172
    invoke-virtual {v0}, Lcom/powervision/gcs/view/LinepagerIndicator$TabView;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x1

    .line 173
    invoke-virtual {v0, p2}, Lcom/powervision/gcs/view/LinepagerIndicator$TabView;->setFocusable(Z)V

    .line 174
    new-instance p2, Lcom/powervision/gcs/view/LinepagerIndicator$1;

    invoke-direct {p2, p0, p1}, Lcom/powervision/gcs/view/LinepagerIndicator$1;-><init>(Lcom/powervision/gcs/view/LinepagerIndicator;I)V

    invoke-virtual {v0, p2}, Lcom/powervision/gcs/view/LinepagerIndicator$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-boolean p2, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->enableExpand:Z

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 187
    iget p2, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->tabPadding:I

    invoke-virtual {v0, p2, v1, p2, v1}, Lcom/powervision/gcs/view/LinepagerIndicator$TabView;->setPadding(IIII)V

    .line 189
    :cond_0
    iget-object p2, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->mTabsContainer:Landroid/widget/LinearLayout;

    iget-boolean v2, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->enableExpand:Z

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_0
    invoke-virtual {p2, v0, p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private scrollToChild(II)V
    .locals 1

    .line 263
    iget v0, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->tabCount:I

    if-nez v0, :cond_0

    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, p2

    if-gtz p1, :cond_1

    if-lez p2, :cond_2

    .line 270
    :cond_1
    iget p1, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->scrollOffset:I

    sub-int/2addr v0, p1

    .line 273
    :cond_2
    iget p1, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->lastScrollX:I

    if-eq v0, p1, :cond_3

    .line 274
    iput v0, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->lastScrollX:I

    const/4 p1, 0x0

    .line 275
    invoke-virtual {p0, v0, p1}, Lcom/powervision/gcs/view/LinepagerIndicator;->scrollTo(II)V

    :cond_3
    return-void
.end method

.method private tabSelect(I)V
    .locals 5

    .line 241
    iget-object v0, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 243
    iget-object v3, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v2, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 245
    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    if-eqz v4, :cond_1

    .line 247
    check-cast v3, Lcom/powervision/gcs/view/LinepagerIndicator$TabView;

    invoke-virtual {v3}, Lcom/powervision/gcs/view/LinepagerIndicator$TabView;->getTextView()Landroid/widget/TextView;

    move-result-object v3

    iget v4, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->textSelectedColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 249
    :cond_1
    check-cast v3, Lcom/powervision/gcs/view/LinepagerIndicator$TabView;

    invoke-virtual {v3}, Lcom/powervision/gcs/view/LinepagerIndicator$TabView;->getTextView()Landroid/widget/TextView;

    move-result-object v3

    iget v4, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->textUnselectColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateTabStyles()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 255
    :goto_0
    iget v2, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->tabCount:I

    if-ge v1, v2, :cond_0

    .line 256
    iget-object v2, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 257
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/powervision/gcs/view/LinepagerIndicator;->tabSelect(I)V

    return-void
.end method


# virtual methods
.method public getViewPagerScrollWithAnimation()Z
    .locals 1

    .line 229
    iget-boolean v0, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->viewPagerScrollWithAnimation:Z

    return v0
.end method

.method public isEnableDivider()Z
    .locals 1

    .line 221
    iget-boolean v0, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->enableDivider:Z

    return v0
.end method

.method public isEnableExpand()Z
    .locals 1

    .line 213
    iget-boolean v0, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->enableExpand:Z

    return v0
.end method

.method public isIndicatorOnTop()Z
    .locals 1

    .line 205
    iget-boolean v0, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->indicatorOnTop:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 161
    iget-object v0, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->tabCount:I

    const/4 v0, 0x0

    .line 163
    :goto_0
    iget v1, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->tabCount:I

    if-ge v0, v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/powervision/gcs/view/LinepagerIndicator;->addTab(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_0
    invoke-direct {p0}, Lcom/powervision/gcs/view/LinepagerIndicator;->updateTabStyles()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 92
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 94
    invoke-virtual {p0}, Lcom/powervision/gcs/view/LinepagerIndicator;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->tabCount:I

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/gcs/view/LinepagerIndicator;->getHeight()I

    move-result v0

    .line 100
    iget-object v1, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->linePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->underlineColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    iget-boolean v1, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->indicatorOnTop:Z

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 102
    iget-object v1, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    int-to-float v5, v1

    iget v6, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->underlineHeight:F

    iget-object v7, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->linePaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    int-to-float v12, v0

    .line 104
    iget v1, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->underlineHeight:F

    sub-float v10, v12, v1

    iget-object v1, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    int-to-float v11, v1

    iget-object v13, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->linePaint:Landroid/graphics/Paint;

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 107
    :goto_0
    iget-object v1, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->linePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->indicatorColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    iget-object v1, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->mTabsContainer:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->currentPosition:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 110
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    .line 111
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    .line 113
    iget v3, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->currentPositionOffset:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    iget v3, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->currentPosition:I

    iget v4, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->tabCount:I

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_2

    .line 114
    iget-object v4, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->mTabsContainer:Landroid/widget/LinearLayout;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 115
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    .line 116
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    .line 118
    iget v5, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->currentPositionOffset:F

    mul-float v4, v4, v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v7, v6, v5

    mul-float v7, v7, v2

    add-float v2, v4, v7

    mul-float v3, v3, v5

    sub-float/2addr v6, v5

    mul-float v6, v6, v1

    add-float v1, v3, v6

    :cond_2
    move v6, v1

    move v4, v2

    .line 122
    iget-boolean v1, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->indicatorOnTop:Z

    if-eqz v1, :cond_3

    const/4 v5, 0x0

    .line 123
    iget v7, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->indicatorHeight:F

    iget-object v8, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->linePaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_3
    int-to-float v7, v0

    .line 125
    iget v1, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->indicatorHeight:F

    sub-float v5, v7, v1

    iget-object v8, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->linePaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 128
    :goto_1
    iget-boolean v1, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->enableDivider:Z

    if-eqz v1, :cond_4

    .line 129
    iget-object v1, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->diviPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->dividerColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    .line 130
    :goto_2
    iget v2, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->tabCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4

    .line 131
    iget-object v2, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 132
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v5, v3

    iget v3, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->dividerPadding:I

    int-to-float v6, v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v7, v2

    iget v2, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->dividerPadding:I

    sub-int v2, v0, v2

    int-to-float v8, v2

    iget-object v9, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->diviPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->mPager:Landroidx/viewpager/widget/ViewPager;

    iget-boolean v1, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->viewPagerScrollWithAnimation:Z

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public setEnableDivider(Z)V
    .locals 0

    .line 225
    iput-boolean p1, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->enableDivider:Z

    return-void
.end method

.method public setEnableExpand(Z)V
    .locals 0

    .line 217
    iput-boolean p1, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->enableExpand:Z

    return-void
.end method

.method public setIndicatorOnTop(Z)V
    .locals 0

    .line 209
    iput-boolean p1, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->indicatorOnTop:Z

    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setOnTabReselectedListener(Lcom/powervision/gcs/view/LinepagerIndicator$OnTabSelectedListener;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->mTabSelectedListener:Lcom/powervision/gcs/view/LinepagerIndicator$OnTabSelectedListener;

    return-void
.end method

.method public setTabText(ILjava/lang/String;)V
    .locals 1

    if-ltz p1, :cond_1

    .line 195
    iget-object v0, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 199
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 200
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    .line 196
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "tabs does not have this position."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 2

    .line 138
    iput-object p1, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->mPager:Landroidx/viewpager/widget/ViewPager;

    .line 140
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    new-instance v0, Lcom/powervision/gcs/view/LinepagerIndicator$PageListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/powervision/gcs/view/LinepagerIndicator$PageListener;-><init>(Lcom/powervision/gcs/view/LinepagerIndicator;Lcom/powervision/gcs/view/LinepagerIndicator$1;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 146
    invoke-virtual {p0}, Lcom/powervision/gcs/view/LinepagerIndicator;->notifyDataSetChanged()V

    return-void

    .line 141
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager does not have adapter instance."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setViewPagerScrollWithAnimation(Z)V
    .locals 0

    .line 233
    iput-boolean p1, p0, Lcom/powervision/gcs/view/LinepagerIndicator;->viewPagerScrollWithAnimation:Z

    return-void
.end method
