.class public Lcom/tmall/ultraviewpager/UltraViewPager;
.super Landroid/widget/RelativeLayout;
.source "UltraViewPager.java"

# interfaces
.implements Lcom/tmall/ultraviewpager/IUltraViewPagerFeature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tmall/ultraviewpager/UltraViewPager$ScrollDirection;,
        Lcom/tmall/ultraviewpager/UltraViewPager$Orientation;,
        Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;
    }
.end annotation


# instance fields
.field private mTimerHandlerListener:Lcom/tmall/ultraviewpager/TimerHandler$TimerHandlerListener;

.field private maxHeight:I

.field private final maxSize:Landroid/graphics/Point;

.field private maxWidth:I

.field private pagerIndicator:Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;

.field private ratio:F

.field private final size:Landroid/graphics/Point;

.field private timer:Lcom/tmall/ultraviewpager/TimerHandler;

.field private viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 94
    iput p1, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->ratio:F

    const/4 p1, -0x1

    .line 97
    iput p1, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->maxWidth:I

    .line 100
    iput p1, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->maxHeight:I

    .line 294
    new-instance p1, Lcom/tmall/ultraviewpager/UltraViewPager$2;

    invoke-direct {p1, p0}, Lcom/tmall/ultraviewpager/UltraViewPager$2;-><init>(Lcom/tmall/ultraviewpager/UltraViewPager;)V

    iput-object p1, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->mTimerHandlerListener:Lcom/tmall/ultraviewpager/TimerHandler$TimerHandlerListener;

    .line 110
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->size:Landroid/graphics/Point;

    .line 111
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->maxSize:Landroid/graphics/Point;

    .line 112
    invoke-direct {p0}, Lcom/tmall/ultraviewpager/UltraViewPager;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 116
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 94
    iput v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->ratio:F

    const/4 v0, -0x1

    .line 97
    iput v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->maxWidth:I

    .line 100
    iput v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->maxHeight:I

    .line 294
    new-instance v0, Lcom/tmall/ultraviewpager/UltraViewPager$2;

    invoke-direct {v0, p0}, Lcom/tmall/ultraviewpager/UltraViewPager$2;-><init>(Lcom/tmall/ultraviewpager/UltraViewPager;)V

    iput-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->mTimerHandlerListener:Lcom/tmall/ultraviewpager/TimerHandler$TimerHandlerListener;

    .line 117
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->size:Landroid/graphics/Point;

    .line 118
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->maxSize:Landroid/graphics/Point;

    .line 119
    invoke-direct {p0}, Lcom/tmall/ultraviewpager/UltraViewPager;->initView()V

    .line 120
    invoke-direct {p0, p1, p2}, Lcom/tmall/ultraviewpager/UltraViewPager;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 124
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 94
    iput p1, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->ratio:F

    const/4 p1, -0x1

    .line 97
    iput p1, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->maxWidth:I

    .line 100
    iput p1, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->maxHeight:I

    .line 294
    new-instance p1, Lcom/tmall/ultraviewpager/UltraViewPager$2;

    invoke-direct {p1, p0}, Lcom/tmall/ultraviewpager/UltraViewPager$2;-><init>(Lcom/tmall/ultraviewpager/UltraViewPager;)V

    iput-object p1, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->mTimerHandlerListener:Lcom/tmall/ultraviewpager/TimerHandler$TimerHandlerListener;

    .line 125
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->size:Landroid/graphics/Point;

    .line 126
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->maxSize:Landroid/graphics/Point;

    .line 127
    invoke-direct {p0}, Lcom/tmall/ultraviewpager/UltraViewPager;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/tmall/ultraviewpager/UltraViewPager;)Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->pagerIndicator:Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;

    return-object p0
.end method

.method private constrainTo(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 2

    .line 496
    iget v0, p2, Landroid/graphics/Point;->x:I

    if-ltz v0, :cond_0

    .line 497
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p2, Landroid/graphics/Point;->x:I

    if-le v0, v1, :cond_0

    .line 498
    iget v0, p2, Landroid/graphics/Point;->x:I

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 501
    :cond_0
    iget v0, p2, Landroid/graphics/Point;->y:I

    if-ltz v0, :cond_1

    .line 502
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p2, Landroid/graphics/Point;->y:I

    if-le v0, v1, :cond_1

    .line 503
    iget p2, p2, Landroid/graphics/Point;->y:I

    iput p2, p1, Landroid/graphics/Point;->y:I

    :cond_1
    return-void
.end method

.method private initView()V
    .locals 3

    .line 131
    new-instance v0, Lcom/tmall/ultraviewpager/UltraViewPagerView;

    invoke-virtual {p0}, Lcom/tmall/ultraviewpager/UltraViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tmall/ultraviewpager/UltraViewPagerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    .line 132
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->setId(I)V

    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->setId(I)V

    .line 138
    :goto_0
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/tmall/ultraviewpager/UltraViewPager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 142
    sget-object v0, Lcom/tmall/ultraviewpager/R$styleable;->UltraViewPager:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 143
    sget p2, Lcom/tmall/ultraviewpager/R$styleable;->UltraViewPager_upv_autoscroll:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/tmall/ultraviewpager/UltraViewPager;->setAutoScroll(I)V

    .line 144
    sget p2, Lcom/tmall/ultraviewpager/R$styleable;->UltraViewPager_upv_infiniteloop:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/tmall/ultraviewpager/UltraViewPager;->setInfiniteLoop(Z)V

    .line 145
    sget p2, Lcom/tmall/ultraviewpager/R$styleable;->UltraViewPager_upv_ratio:I

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/tmall/ultraviewpager/UltraViewPager;->setRatio(F)V

    .line 146
    sget p2, Lcom/tmall/ultraviewpager/R$styleable;->UltraViewPager_upv_scrollmode:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-static {p2}, Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;->getScrollMode(I)Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/tmall/ultraviewpager/UltraViewPager;->setScrollMode(Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;)V

    .line 147
    sget p2, Lcom/tmall/ultraviewpager/R$styleable;->UltraViewPager_upv_disablescroll:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-static {p2}, Lcom/tmall/ultraviewpager/UltraViewPager$ScrollDirection;->getScrollDirection(I)Lcom/tmall/ultraviewpager/UltraViewPager$ScrollDirection;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/tmall/ultraviewpager/UltraViewPager;->disableScrollDirection(Lcom/tmall/ultraviewpager/UltraViewPager$ScrollDirection;)V

    .line 148
    sget p2, Lcom/tmall/ultraviewpager/R$styleable;->UltraViewPager_upv_multiscreen:I

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/tmall/ultraviewpager/UltraViewPager;->setMultiScreen(F)V

    .line 149
    sget p2, Lcom/tmall/ultraviewpager/R$styleable;->UltraViewPager_upv_automeasure:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/tmall/ultraviewpager/UltraViewPager;->setAutoMeasureHeight(Z)V

    .line 150
    sget p2, Lcom/tmall/ultraviewpager/R$styleable;->UltraViewPager_upv_itemratio:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    float-to-double v0, p2

    invoke-virtual {p0, v0, v1}, Lcom/tmall/ultraviewpager/UltraViewPager;->setItemRatio(D)V

    .line 151
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private startTimer()V
    .locals 2

    .line 509
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->timer:Lcom/tmall/ultraviewpager/TimerHandler;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    if-eqz v1, :cond_1

    iget-boolean v0, v0, Lcom/tmall/ultraviewpager/TimerHandler;->isStopped:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->timer:Lcom/tmall/ultraviewpager/TimerHandler;

    iget-object v1, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->mTimerHandlerListener:Lcom/tmall/ultraviewpager/TimerHandler$TimerHandlerListener;

    iput-object v1, v0, Lcom/tmall/ultraviewpager/TimerHandler;->listener:Lcom/tmall/ultraviewpager/TimerHandler$TimerHandlerListener;

    .line 513
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->timer:Lcom/tmall/ultraviewpager/TimerHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tmall/ultraviewpager/TimerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 514
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->timer:Lcom/tmall/ultraviewpager/TimerHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tmall/ultraviewpager/TimerHandler;->tick(I)V

    .line 515
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->timer:Lcom/tmall/ultraviewpager/TimerHandler;

    iput-boolean v1, v0, Lcom/tmall/ultraviewpager/TimerHandler;->isStopped:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private stopTimer()V
    .locals 2

    .line 519
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->timer:Lcom/tmall/ultraviewpager/TimerHandler;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    if-eqz v1, :cond_1

    iget-boolean v0, v0, Lcom/tmall/ultraviewpager/TimerHandler;->isStopped:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->timer:Lcom/tmall/ultraviewpager/TimerHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tmall/ultraviewpager/TimerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 523
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->timer:Lcom/tmall/ultraviewpager/TimerHandler;

    iput-object v1, v0, Lcom/tmall/ultraviewpager/TimerHandler;->listener:Lcom/tmall/ultraviewpager/TimerHandler$TimerHandlerListener;

    .line 524
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->timer:Lcom/tmall/ultraviewpager/TimerHandler;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tmall/ultraviewpager/TimerHandler;->isStopped:Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public disableAutoScroll()V
    .locals 1

    .line 333
    invoke-direct {p0}, Lcom/tmall/ultraviewpager/UltraViewPager;->stopTimer()V

    const/4 v0, 0x0

    .line 334
    iput-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->timer:Lcom/tmall/ultraviewpager/TimerHandler;

    return-void
.end method

.method public disableIndicator()V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->pagerIndicator:Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {p0, v0}, Lcom/tmall/ultraviewpager/UltraViewPager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 286
    iput-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->pagerIndicator:Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;

    :cond_0
    return-void
.end method

.method public disableScrollDirection(Lcom/tmall/ultraviewpager/UltraViewPager$ScrollDirection;)V
    .locals 0

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->timer:Lcom/tmall/ultraviewpager/TimerHandler;

    if-eqz v0, :cond_2

    .line 220
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/tmall/ultraviewpager/UltraViewPager;->stopTimer()V

    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 225
    :cond_1
    invoke-direct {p0}, Lcom/tmall/ultraviewpager/UltraViewPager;->startTimer()V

    .line 228
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getAdapter()Landroidx/viewpager/widget/PagerAdapter;
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    invoke-virtual {v0}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    invoke-virtual {v0}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;

    invoke-virtual {v0}, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getCurrentItem()I
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    invoke-virtual {v0}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public getIndicator()Lcom/tmall/ultraviewpager/IUltraIndicatorBuilder;
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->pagerIndicator:Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;

    return-object v0
.end method

.method public getNextItem()I
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    invoke-virtual {v0}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->getNextItem()I

    move-result v0

    return v0
.end method

.method public getViewPager()Landroidx/viewpager/widget/ViewPager;
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    return-object v0
.end method

.method public getWrapAdapter()Landroidx/viewpager/widget/PagerAdapter;
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    invoke-virtual {v0}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public initIndicator()Lcom/tmall/ultraviewpager/IUltraIndicatorBuilder;
    .locals 2

    .line 233
    invoke-virtual {p0}, Lcom/tmall/ultraviewpager/UltraViewPager;->disableIndicator()V

    .line 234
    new-instance v0, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;

    invoke-virtual {p0}, Lcom/tmall/ultraviewpager/UltraViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->pagerIndicator:Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;

    .line 235
    iget-object v1, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    invoke-virtual {v0, v1}, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->setViewPager(Lcom/tmall/ultraviewpager/UltraViewPagerView;)V

    .line 236
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->pagerIndicator:Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;

    new-instance v1, Lcom/tmall/ultraviewpager/UltraViewPager$1;

    invoke-direct {v1, p0}, Lcom/tmall/ultraviewpager/UltraViewPager$1;-><init>(Lcom/tmall/ultraviewpager/UltraViewPager;)V

    invoke-virtual {v0, v1}, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->setIndicatorBuildListener(Lcom/tmall/ultraviewpager/UltraViewPagerIndicator$UltraViewPagerIndicatorListener;)V

    .line 243
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->pagerIndicator:Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;

    return-object v0
.end method

.method public initIndicator(III)Lcom/tmall/ultraviewpager/IUltraIndicatorBuilder;
    .locals 1

    .line 268
    invoke-virtual {p0}, Lcom/tmall/ultraviewpager/UltraViewPager;->initIndicator()Lcom/tmall/ultraviewpager/IUltraIndicatorBuilder;

    move-result-object v0

    .line 269
    invoke-interface {v0, p1}, Lcom/tmall/ultraviewpager/IUltraIndicatorBuilder;->setFocusResId(I)Lcom/tmall/ultraviewpager/IUltraIndicatorBuilder;

    move-result-object p1

    .line 270
    invoke-interface {p1, p2}, Lcom/tmall/ultraviewpager/IUltraIndicatorBuilder;->setNormalResId(I)Lcom/tmall/ultraviewpager/IUltraIndicatorBuilder;

    move-result-object p1

    .line 271
    invoke-interface {p1, p3}, Lcom/tmall/ultraviewpager/IUltraIndicatorBuilder;->setGravity(I)Lcom/tmall/ultraviewpager/IUltraIndicatorBuilder;

    move-result-object p1

    return-object p1
.end method

.method public initIndicator(IIII)Lcom/tmall/ultraviewpager/IUltraIndicatorBuilder;
    .locals 1

    .line 248
    invoke-virtual {p0}, Lcom/tmall/ultraviewpager/UltraViewPager;->initIndicator()Lcom/tmall/ultraviewpager/IUltraIndicatorBuilder;

    move-result-object v0

    .line 249
    invoke-interface {v0, p1}, Lcom/tmall/ultraviewpager/IUltraIndicatorBuilder;->setFocusColor(I)Lcom/tmall/ultraviewpager/IUltraIndicatorBuilder;

    move-result-object p1

    .line 250
    invoke-interface {p1, p2}, Lcom/tmall/ultraviewpager/IUltraIndicatorBuilder;->setNormalColor(I)Lcom/tmall/ultraviewpager/IUltraIndicatorBuilder;

    move-result-object p1

    .line 251
    invoke-interface {p1, p3}, Lcom/tmall/ultraviewpager/IUltraIndicatorBuilder;->setRadius(I)Lcom/tmall/ultraviewpager/IUltraIndicatorBuilder;

    move-result-object p1

    .line 252
    invoke-interface {p1, p4}, Lcom/tmall/ultraviewpager/IUltraIndicatorBuilder;->setGravity(I)Lcom/tmall/ultraviewpager/IUltraIndicatorBuilder;

    move-result-object p1

    return-object p1
.end method

.method public initIndicator(IIIIII)Lcom/tmall/ultraviewpager/IUltraIndicatorBuilder;
    .locals 1

    .line 257
    invoke-virtual {p0}, Lcom/tmall/ultraviewpager/UltraViewPager;->initIndicator()Lcom/tmall/ultraviewpager/IUltraIndicatorBuilder;

    move-result-object v0

    .line 258
    invoke-interface {v0, p1}, Lcom/tmall/ultraviewpager/IUltraIndicatorBuilder;->setFocusColor(I)Lcom/tmall/ultraviewpager/IUltraIndicatorBuilder;

    move-result-object p1

    .line 259
    invoke-interface {p1, p2}, Lcom/tmall/ultraviewpager/IUltraIndicatorBuilder;->setNormalColor(I)Lcom/tmall/ultraviewpager/IUltraIndicatorBuilder;

    move-result-object p1

    .line 260
    invoke-interface {p1, p4}, Lcom/tmall/ultraviewpager/IUltraIndicatorBuilder;->setStrokeWidth(I)Lcom/tmall/ultraviewpager/IUltraIndicatorBuilder;

    move-result-object p1

    .line 261
    invoke-interface {p1, p3}, Lcom/tmall/ultraviewpager/IUltraIndicatorBuilder;->setStrokeColor(I)Lcom/tmall/ultraviewpager/IUltraIndicatorBuilder;

    move-result-object p1

    .line 262
    invoke-interface {p1, p5}, Lcom/tmall/ultraviewpager/IUltraIndicatorBuilder;->setRadius(I)Lcom/tmall/ultraviewpager/IUltraIndicatorBuilder;

    move-result-object p1

    .line 263
    invoke-interface {p1, p6}, Lcom/tmall/ultraviewpager/IUltraIndicatorBuilder;->setGravity(I)Lcom/tmall/ultraviewpager/IUltraIndicatorBuilder;

    move-result-object p1

    return-object p1
.end method

.method public initIndicator(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Lcom/tmall/ultraviewpager/IUltraIndicatorBuilder;
    .locals 1

    .line 276
    invoke-virtual {p0}, Lcom/tmall/ultraviewpager/UltraViewPager;->initIndicator()Lcom/tmall/ultraviewpager/IUltraIndicatorBuilder;

    move-result-object v0

    .line 277
    invoke-interface {v0, p1}, Lcom/tmall/ultraviewpager/IUltraIndicatorBuilder;->setFocusIcon(Landroid/graphics/Bitmap;)Lcom/tmall/ultraviewpager/IUltraIndicatorBuilder;

    move-result-object p1

    .line 278
    invoke-interface {p1, p2}, Lcom/tmall/ultraviewpager/IUltraIndicatorBuilder;->setNormalIcon(Landroid/graphics/Bitmap;)Lcom/tmall/ultraviewpager/IUltraIndicatorBuilder;

    move-result-object p1

    .line 279
    invoke-interface {p1, p3}, Lcom/tmall/ultraviewpager/IUltraIndicatorBuilder;->setGravity(I)Lcom/tmall/ultraviewpager/IUltraIndicatorBuilder;

    move-result-object p1

    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 185
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 186
    invoke-direct {p0}, Lcom/tmall/ultraviewpager/UltraViewPager;->startTimer()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 191
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 192
    invoke-direct {p0}, Lcom/tmall/ultraviewpager/UltraViewPager;->stopTimer()V

    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 0

    .line 213
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishTemporaryDetach()V

    .line 214
    invoke-direct {p0}, Lcom/tmall/ultraviewpager/UltraViewPager;->startTimer()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 156
    iget v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->ratio:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-nez v0, :cond_0

    .line 157
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float p2, p2

    .line 158
    iget v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->ratio:F

    div-float/2addr p2, v0

    float-to-int p2, p2

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->size:Landroid/graphics/Point;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 161
    iget v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->maxWidth:I

    if-gez v0, :cond_1

    iget v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->maxHeight:I

    if-ltz v0, :cond_2

    .line 162
    :cond_1
    iget-object p1, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->maxSize:Landroid/graphics/Point;

    iget p2, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->maxWidth:I

    iget v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->maxHeight:I

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Point;->set(II)V

    .line 163
    iget-object p1, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->size:Landroid/graphics/Point;

    iget-object p2, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->maxSize:Landroid/graphics/Point;

    invoke-direct {p0, p1, p2}, Lcom/tmall/ultraviewpager/UltraViewPager;->constrainTo(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 164
    iget-object p1, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->size:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 165
    iget-object p2, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->size:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    invoke-virtual {v0}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->getConstrainLength()I

    move-result v0

    if-lez v0, :cond_5

    .line 168
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    invoke-virtual {v0}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->getConstrainLength()I

    move-result v0

    if-ne v0, p2, :cond_3

    .line 169
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    invoke-virtual {v0, p1, p2}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->measure(II)V

    .line 170
    iget-object p1, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->size:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget-object p2, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->size:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p1, p2}, Lcom/tmall/ultraviewpager/UltraViewPager;->setMeasuredDimension(II)V

    goto :goto_0

    .line 172
    :cond_3
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    invoke-virtual {v0}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->getScrollMode()Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;

    move-result-object v0

    sget-object v1, Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;->HORIZONTAL:Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;

    if-ne v0, v1, :cond_4

    .line 173
    iget-object p2, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    invoke-virtual {p2}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->getConstrainLength()I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    goto :goto_0

    .line 175
    :cond_4
    iget-object p1, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    invoke-virtual {p1}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->getConstrainLength()I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    goto :goto_0

    .line 179
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    :goto_0
    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 0

    .line 207
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onStartTemporaryDetach()V

    .line 208
    invoke-direct {p0}, Lcom/tmall/ultraviewpager/UltraViewPager;->stopTimer()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 197
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    .line 199
    invoke-direct {p0}, Lcom/tmall/ultraviewpager/UltraViewPager;->startTimer()V

    goto :goto_0

    .line 201
    :cond_0
    invoke-direct {p0}, Lcom/tmall/ultraviewpager/UltraViewPager;->stopTimer()V

    :goto_0
    return-void
.end method

.method public refresh()V
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    invoke-virtual {v0}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    invoke-virtual {v0}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public scrollLastPage()Z
    .locals 4

    .line 378
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    invoke-virtual {v0}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 379
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    invoke-virtual {v0}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->getCurrentItemFake()I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 385
    :goto_0
    iget-object v3, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    invoke-virtual {v3, v1, v2}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->setCurrentItemFake(IZ)V

    move v1, v0

    :cond_1
    return v1
.end method

.method public scrollNextPage()Z
    .locals 4

    .line 393
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    invoke-virtual {v0}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 394
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    invoke-virtual {v0}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->getCurrentItemFake()I

    move-result v0

    .line 396
    iget-object v2, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    invoke-virtual {v2}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_0

    add-int/lit8 v1, v0, 0x1

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 400
    :goto_0
    iget-object v2, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    invoke-virtual {v2, v1, v3}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->setCurrentItemFake(IZ)V

    move v1, v0

    :cond_1
    return v1
.end method

.method public setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    invoke-virtual {v0, p1}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    return-void
.end method

.method public setAutoMeasureHeight(Z)V
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    invoke-virtual {v0, p1}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->setAutoMeasureHeight(Z)V

    return-void
.end method

.method public setAutoScroll(I)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->timer:Lcom/tmall/ultraviewpager/TimerHandler;

    if-eqz v0, :cond_1

    .line 312
    invoke-virtual {p0}, Lcom/tmall/ultraviewpager/UltraViewPager;->disableAutoScroll()V

    .line 314
    :cond_1
    new-instance v0, Lcom/tmall/ultraviewpager/TimerHandler;

    iget-object v1, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->mTimerHandlerListener:Lcom/tmall/ultraviewpager/TimerHandler$TimerHandlerListener;

    int-to-long v2, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/tmall/ultraviewpager/TimerHandler;-><init>(Lcom/tmall/ultraviewpager/TimerHandler$TimerHandlerListener;J)V

    iput-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->timer:Lcom/tmall/ultraviewpager/TimerHandler;

    .line 315
    invoke-direct {p0}, Lcom/tmall/ultraviewpager/UltraViewPager;->startTimer()V

    return-void
.end method

.method public setAutoScroll(ILandroid/util/SparseIntArray;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->timer:Lcom/tmall/ultraviewpager/TimerHandler;

    if-eqz v0, :cond_1

    .line 324
    invoke-virtual {p0}, Lcom/tmall/ultraviewpager/UltraViewPager;->disableAutoScroll()V

    .line 326
    :cond_1
    new-instance v0, Lcom/tmall/ultraviewpager/TimerHandler;

    iget-object v1, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->mTimerHandlerListener:Lcom/tmall/ultraviewpager/TimerHandler$TimerHandlerListener;

    int-to-long v2, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/tmall/ultraviewpager/TimerHandler;-><init>(Lcom/tmall/ultraviewpager/TimerHandler$TimerHandlerListener;J)V

    iput-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->timer:Lcom/tmall/ultraviewpager/TimerHandler;

    .line 327
    iput-object p2, v0, Lcom/tmall/ultraviewpager/TimerHandler;->specialInterval:Landroid/util/SparseIntArray;

    .line 328
    invoke-direct {p0}, Lcom/tmall/ultraviewpager/UltraViewPager;->startTimer()V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    invoke-virtual {v0, p1}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->setCurrentItem(I)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    invoke-virtual {v0, p1, p2}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->setCurrentItem(IZ)V

    return-void
.end method

.method public setHGap(I)V
    .locals 3

    .line 360
    invoke-virtual {p0}, Lcom/tmall/ultraviewpager/UltraViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 361
    iget-object v1, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    sub-int v2, v0, p1

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->setMultiScreen(F)V

    .line 362
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    invoke-virtual {v0, p1}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->setPageMargin(I)V

    return-void
.end method

.method public setInfiniteLoop(Z)V
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    invoke-virtual {v0, p1}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->setEnableLoop(Z)V

    return-void
.end method

.method public setInfiniteRatio(I)V
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    invoke-virtual {v0}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    .line 530
    invoke-virtual {v0}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    invoke-virtual {v0}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/tmall/ultraviewpager/UltraViewPagerAdapter;->setInfiniteRatio(I)V

    :cond_0
    return-void
.end method

.method public setItemMargin(IIII)V
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->setItemMargin(IIII)V

    return-void
.end method

.method public setItemRatio(D)V
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    invoke-virtual {v0, p1, p2}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->setItemRatio(D)V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0

    .line 367
    iput p1, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->maxHeight:I

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    .line 349
    iput p1, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->maxWidth:I

    return-void
.end method

.method public setMultiScreen(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-gtz v1, :cond_1

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    invoke-virtual {v0, p1}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->setMultiScreen(F)V

    :cond_0
    return-void

    .line 408
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, ""

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOffscreenPageLimit(I)V
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    invoke-virtual {v0, p1}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->setOffscreenPageLimit(I)V

    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->pagerIndicator:Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;

    if-nez v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    invoke-virtual {v0, p1}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 465
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    invoke-virtual {v0, p1}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    goto :goto_0

    .line 467
    :cond_0
    invoke-virtual {v0, p1}, Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;->setPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    :goto_0
    return-void
.end method

.method public setPageTransformer(ZLandroidx/viewpager/widget/ViewPager$PageTransformer;)V
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    invoke-virtual {v0, p1, p2}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->setPageTransformer(ZLandroidx/viewpager/widget/ViewPager$PageTransformer;)V

    return-void
.end method

.method public setRatio(F)V
    .locals 1

    .line 354
    iput p1, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->ratio:F

    .line 355
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    invoke-virtual {v0, p1}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->setRatio(F)V

    return-void
.end method

.method public setScrollMargin(II)V
    .locals 2

    .line 432
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, v1}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->setPadding(IIII)V

    return-void
.end method

.method public setScrollMode(Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;)V
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager;->viewPager:Lcom/tmall/ultraviewpager/UltraViewPagerView;

    invoke-virtual {v0, p1}, Lcom/tmall/ultraviewpager/UltraViewPagerView;->setScrollMode(Lcom/tmall/ultraviewpager/UltraViewPager$ScrollMode;)V

    return-void
.end method
