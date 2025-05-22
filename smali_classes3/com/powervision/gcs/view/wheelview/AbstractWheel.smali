.class public abstract Lcom/powervision/gcs/view/wheelview/AbstractWheel;
.super Landroid/view/View;
.source "AbstractWheel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/wheelview/AbstractWheel$SavedState;
    }
.end annotation


# static fields
.field private static final DEF_IS_CYCLIC:Z = false

.field private static final DEF_VISIBLE_ITEMS:I = 0x4

.field private static final TAG:Ljava/lang/String; = "AbstractWheel"

.field private static itemID:I = -0x1


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private changingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/gcs/view/wheelview/OnWheelChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private clickingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/gcs/view/wheelview/OnWheelClickedListener;",
            ">;"
        }
    .end annotation
.end field

.field currentScrollOrientation:I

.field protected mCurrentItemIdx:I

.field private mDataObserver:Landroid/database/DataSetObserver;

.field protected mFirstItemIdx:I

.field protected mIsAllVisible:Z

.field protected mIsCyclic:Z

.field protected mIsScrollingPerformed:Z

.field protected mItemsLayout:Landroid/widget/LinearLayout;

.field public mLastTempDirection:I

.field protected mLayoutHeight:I

.field protected mLayoutWidth:I

.field private mRecycler:Lcom/powervision/gcs/view/wheelview/WheelRecycler;

.field protected mScroller:Lcom/powervision/gcs/view/wheelview/WheelScroller;

.field protected mScrollingOffset:I

.field protected mViewAdapter:Lcom/powervision/gcs/view/wheelview/adapters/WheelViewAdapter;

.field protected mVisibleItems:I

.field private scrollingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/gcs/view/wheelview/OnWheelScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field startX:F

.field startY:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 130
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/powervision/gcs/view/wheelview/AbstractWheel;

    .line 59
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->itemID:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->itemID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 75
    iput v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mCurrentItemIdx:I

    .line 102
    new-instance v0, Lcom/powervision/gcs/view/wheelview/WheelRecycler;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/view/wheelview/WheelRecycler;-><init>(Lcom/powervision/gcs/view/wheelview/AbstractWheel;)V

    iput-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mRecycler:Lcom/powervision/gcs/view/wheelview/WheelRecycler;

    .line 105
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->changingListeners:Ljava/util/List;

    .line 106
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->scrollingListeners:Ljava/util/List;

    .line 107
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->clickingListeners:Ljava/util/List;

    const/4 v0, -0x1

    .line 930
    iput v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->currentScrollOrientation:I

    .line 131
    invoke-virtual {p0, p2, p3}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->initAttributes(Landroid/util/AttributeSet;I)V

    .line 132
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->initData(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/view/wheelview/AbstractWheel;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->doScroll(I)V

    return-void
.end method

.method private addItemView(IZ)Z
    .locals 1

    .line 887
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->getItemView(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 890
    iget-object p2, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mItemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 892
    :cond_0
    iget-object p2, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mItemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method private doScroll(I)V
    .locals 7

    .line 393
    iget v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mScrollingOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mScrollingOffset:I

    .line 395
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->getItemDimension()I

    move-result p1

    .line 396
    iget v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mScrollingOffset:I

    div-int/2addr v0, p1

    .line 398
    iget v1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mCurrentItemIdx:I

    sub-int/2addr v1, v0

    .line 399
    iget-object v2, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mViewAdapter:Lcom/powervision/gcs/view/wheelview/adapters/WheelViewAdapter;

    invoke-interface {v2}, Lcom/powervision/gcs/view/wheelview/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v2

    .line 401
    iget v3, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mScrollingOffset:I

    rem-int/2addr v3, p1

    .line 402
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    div-int/lit8 v5, p1, 0x2

    const/4 v6, 0x0

    if-gt v4, v5, :cond_0

    const/4 v3, 0x0

    .line 405
    :cond_0
    iget-boolean v4, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mIsCyclic:Z

    if-eqz v4, :cond_4

    if-lez v2, :cond_4

    if-lez v3, :cond_1

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-gez v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    :cond_2
    :goto_0
    if-gez v1, :cond_3

    add-int/2addr v1, v2

    goto :goto_0

    .line 417
    :cond_3
    rem-int/2addr v1, v2

    goto :goto_1

    :cond_4
    if-gez v1, :cond_5

    .line 420
    iget v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mCurrentItemIdx:I

    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    if-lt v1, v2, :cond_6

    .line 423
    iget v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mCurrentItemIdx:I

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v2, -0x1

    goto :goto_1

    :cond_6
    if-lez v1, :cond_7

    if-lez v3, :cond_7

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_8

    if-gez v3, :cond_8

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    .line 434
    :cond_8
    :goto_1
    iget v2, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mScrollingOffset:I

    .line 435
    iget v3, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mCurrentItemIdx:I

    if-eq v1, v3, :cond_9

    .line 436
    invoke-virtual {p0, v1, v6}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->setCurrentItem(IZ)V

    goto :goto_2

    .line 438
    :cond_9
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->invalidate()V

    .line 442
    :goto_2
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->getBaseDimension()I

    move-result v1

    mul-int v0, v0, p1

    sub-int/2addr v2, v0

    .line 443
    iput v2, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mScrollingOffset:I

    if-le v2, v1, :cond_a

    .line 445
    rem-int/2addr v2, v1

    add-int/2addr v2, v1

    iput v2, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mScrollingOffset:I

    :cond_a
    return-void
.end method

.method public static getDistanceBetween2Points(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 4

    .line 1001
    iget v0, p0, Landroid/graphics/PointF;->y:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget p0, p0, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method private getItemView(I)Landroid/view/View;
    .locals 4

    .line 906
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mViewAdapter:Lcom/powervision/gcs/view/wheelview/adapters/WheelViewAdapter;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/powervision/gcs/view/wheelview/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 909
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mViewAdapter:Lcom/powervision/gcs/view/wheelview/adapters/WheelViewAdapter;

    invoke-interface {v0}, Lcom/powervision/gcs/view/wheelview/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    .line 910
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->isValidItemIndex(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 911
    iget-object p1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mViewAdapter:Lcom/powervision/gcs/view/wheelview/adapters/WheelViewAdapter;

    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mRecycler:Lcom/powervision/gcs/view/wheelview/WheelRecycler;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/wheelview/WheelRecycler;->getEmptyItem()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mItemsLayout:Landroid/widget/LinearLayout;

    invoke-interface {p1, v0, v1}, Lcom/powervision/gcs/view/wheelview/adapters/WheelViewAdapter;->getEmptyItem(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    if-gez p1, :cond_2

    add-int/2addr p1, v0

    goto :goto_0

    .line 917
    :cond_2
    rem-int/2addr p1, v0

    .line 918
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mViewAdapter:Lcom/powervision/gcs/view/wheelview/adapters/WheelViewAdapter;

    iget-object v1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mRecycler:Lcom/powervision/gcs/view/wheelview/WheelRecycler;

    invoke-virtual {v1}, Lcom/powervision/gcs/view/wheelview/WheelRecycler;->getItem()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mItemsLayout:Landroid/widget/LinearLayout;

    iget v3, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mCurrentItemIdx:I

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/powervision/gcs/view/wheelview/adapters/WheelViewAdapter;->getItem(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getItemsRange()Lcom/powervision/gcs/view/wheelview/ItemsRange;
    .locals 5

    .line 841
    iget-boolean v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mIsAllVisible:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 842
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->getBaseDimension()I

    move-result v0

    .line 843
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->getItemDimension()I

    move-result v2

    if-eqz v2, :cond_0

    .line 844
    div-int/2addr v0, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mVisibleItems:I

    .line 847
    :cond_0
    iget v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mCurrentItemIdx:I

    iget v2, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mVisibleItems:I

    div-int/lit8 v3, v2, 0x2

    sub-int/2addr v0, v3

    add-int v3, v0, v2

    .line 848
    rem-int/lit8 v2, v2, 0x2

    const/4 v4, 0x0

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    sub-int/2addr v3, v2

    .line 849
    iget v2, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mScrollingOffset:I

    if-eqz v2, :cond_3

    if-lez v2, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 856
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->isCyclic()Z

    move-result v2

    if-nez v2, :cond_6

    if-gez v0, :cond_4

    const/4 v0, 0x0

    .line 858
    :cond_4
    iget-object v2, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mViewAdapter:Lcom/powervision/gcs/view/wheelview/adapters/WheelViewAdapter;

    if-nez v2, :cond_5

    goto :goto_2

    .line 859
    :cond_5
    invoke-interface {v2}, Lcom/powervision/gcs/view/wheelview/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v2

    if-le v3, v2, :cond_6

    iget-object v2, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mViewAdapter:Lcom/powervision/gcs/view/wheelview/adapters/WheelViewAdapter;

    invoke-interface {v2}, Lcom/powervision/gcs/view/wheelview/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v4

    goto :goto_2

    :cond_6
    move v4, v3

    .line 861
    :goto_2
    new-instance v2, Lcom/powervision/gcs/view/wheelview/ItemsRange;

    sub-int/2addr v4, v0

    add-int/2addr v4, v1

    invoke-direct {v2, v0, v4}, Lcom/powervision/gcs/view/wheelview/ItemsRange;-><init>(II)V

    return-object v2
.end method


# virtual methods
.method public addChangingListener(Lcom/powervision/gcs/view/wheelview/OnWheelChangedListener;)V
    .locals 1

    .line 691
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->changingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addClickingListener(Lcom/powervision/gcs/view/wheelview/OnWheelClickedListener;)V
    .locals 1

    .line 757
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->clickingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addScrollingListener(Lcom/powervision/gcs/view/wheelview/OnWheelScrollListener;)V
    .locals 1

    .line 721
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected abstract createItemsLayout()V
.end method

.method protected abstract createScroller(Lcom/powervision/gcs/view/wheelview/WheelScroller$ScrollingListener;)Lcom/powervision/gcs/view/wheelview/WheelScroller;
.end method

.method protected abstract doItemsLayout()V
.end method

.method protected abstract getBaseDimension()I
.end method

.method public getCurrentItem()I
    .locals 1

    .line 605
    iget v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mCurrentItemIdx:I

    return v0
.end method

.method protected abstract getItemDimension()I
.end method

.method protected abstract getMaxOverScrollDimension()I
.end method

.method protected abstract getMotionEventPosition(Landroid/view/MotionEvent;)F
.end method

.method public getViewAdapter()Lcom/powervision/gcs/view/wheelview/adapters/WheelViewAdapter;
    .locals 1

    .line 578
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mViewAdapter:Lcom/powervision/gcs/view/wheelview/adapters/WheelViewAdapter;

    return-object v0
.end method

.method public getVisibleItems()I
    .locals 1

    .line 548
    iget v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mVisibleItems:I

    return v0
.end method

.method protected initAttributes(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 148
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/powervision/gcs/R$styleable;->AbstractWheelView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 149
    sget p2, Lcom/powervision/gcs/R$styleable;->AbstractWheelView_visibleItems:I

    const/4 v0, 0x4

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mVisibleItems:I

    .line 150
    sget p2, Lcom/powervision/gcs/R$styleable;->AbstractWheelView_isAllVisible:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mIsAllVisible:Z

    .line 151
    sget p2, Lcom/powervision/gcs/R$styleable;->AbstractWheelView_isCyclic:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mIsCyclic:Z

    .line 153
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method protected initData(Landroid/content/Context;)V
    .locals 0

    .line 163
    new-instance p1, Lcom/powervision/gcs/view/wheelview/AbstractWheel$1;

    invoke-direct {p1, p0}, Lcom/powervision/gcs/view/wheelview/AbstractWheel$1;-><init>(Lcom/powervision/gcs/view/wheelview/AbstractWheel;)V

    iput-object p1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mDataObserver:Landroid/database/DataSetObserver;

    .line 176
    new-instance p1, Lcom/powervision/gcs/view/wheelview/AbstractWheel$2;

    invoke-direct {p1, p0}, Lcom/powervision/gcs/view/wheelview/AbstractWheel$2;-><init>(Lcom/powervision/gcs/view/wheelview/AbstractWheel;)V

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->createScroller(Lcom/powervision/gcs/view/wheelview/WheelScroller$ScrollingListener;)Lcom/powervision/gcs/view/wheelview/WheelScroller;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mScroller:Lcom/powervision/gcs/view/wheelview/WheelScroller;

    return-void
.end method

.method public invalidateItemsLayout(Z)V
    .locals 3

    if-eqz p1, :cond_1

    .line 523
    iget-object p1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mRecycler:Lcom/powervision/gcs/view/wheelview/WheelRecycler;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/wheelview/WheelRecycler;->clearAll()V

    .line 524
    iget-object p1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mItemsLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    .line 525
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_0
    const/4 p1, 0x0

    .line 527
    iput p1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mScrollingOffset:I

    goto :goto_0

    .line 528
    :cond_1
    iget-object p1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mItemsLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    .line 530
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mRecycler:Lcom/powervision/gcs/view/wheelview/WheelRecycler;

    iget v1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mFirstItemIdx:I

    new-instance v2, Lcom/powervision/gcs/view/wheelview/ItemsRange;

    invoke-direct {v2}, Lcom/powervision/gcs/view/wheelview/ItemsRange;-><init>()V

    invoke-virtual {v0, p1, v1, v2}, Lcom/powervision/gcs/view/wheelview/WheelRecycler;->recycleItems(Landroid/widget/LinearLayout;ILcom/powervision/gcs/view/wheelview/ItemsRange;)I

    .line 532
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->invalidate()V

    return-void
.end method

.method public isCyclic()Z
    .locals 1

    .line 665
    iget-boolean v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mIsCyclic:Z

    return v0
.end method

.method protected isValidItemIndex(I)Z
    .locals 1

    .line 871
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mViewAdapter:Lcom/powervision/gcs/view/wheelview/adapters/WheelViewAdapter;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/powervision/gcs/view/wheelview/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mIsCyclic:Z

    if-nez v0, :cond_0

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mViewAdapter:Lcom/powervision/gcs/view/wheelview/adapters/WheelViewAdapter;

    .line 872
    invoke-interface {v0}, Lcom/powervision/gcs/view/wheelview/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected notifyChangingListeners(II)V
    .locals 2

    .line 710
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->changingListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/view/wheelview/OnWheelChangedListener;

    .line 711
    invoke-interface {v1, p0, p1, p2}, Lcom/powervision/gcs/view/wheelview/OnWheelChangedListener;->onChanged(Lcom/powervision/gcs/view/wheelview/AbstractWheel;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected notifyClickListenersAboutClick(I)V
    .locals 2

    .line 775
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->clickingListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/view/wheelview/OnWheelClickedListener;

    .line 776
    invoke-interface {v1, p0, p1}, Lcom/powervision/gcs/view/wheelview/OnWheelClickedListener;->onItemClicked(Lcom/powervision/gcs/view/wheelview/AbstractWheel;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected notifyScrollingListenersAboutEnd()V
    .locals 2

    .line 746
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/view/wheelview/OnWheelScrollListener;

    .line 747
    invoke-interface {v1, p0}, Lcom/powervision/gcs/view/wheelview/OnWheelScrollListener;->onScrollingFinished(Lcom/powervision/gcs/view/wheelview/AbstractWheel;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected notifyScrollingListenersAboutStart()V
    .locals 2

    .line 737
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/view/wheelview/OnWheelScrollListener;

    .line 738
    invoke-interface {v1, p0}, Lcom/powervision/gcs/view/wheelview/OnWheelScrollListener;->onScrollingStarted(Lcom/powervision/gcs/view/wheelview/AbstractWheel;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    if-eqz p1, :cond_2

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 507
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->doItemsLayout()V

    .line 508
    iget p1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mLayoutWidth:I

    if-ne p1, p4, :cond_0

    iget p1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mLayoutHeight:I

    if-eq p1, p5, :cond_1

    .line 509
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->recreateAssets(II)V

    .line 511
    :cond_1
    iput p4, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mLayoutWidth:I

    .line 512
    iput p5, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mLayoutHeight:I

    :cond_2
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 270
    instance-of v0, p1, Lcom/powervision/gcs/view/wheelview/AbstractWheel$SavedState;

    if-nez v0, :cond_0

    .line 271
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 275
    :cond_0
    check-cast p1, Lcom/powervision/gcs/view/wheelview/AbstractWheel$SavedState;

    .line 276
    invoke-virtual {p1}, Lcom/powervision/gcs/view/wheelview/AbstractWheel$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 279
    iget p1, p1, Lcom/powervision/gcs/view/wheelview/AbstractWheel$SavedState;->currentItem:I

    iput p1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mCurrentItemIdx:I

    .line 282
    new-instance p1, Lcom/powervision/gcs/view/wheelview/AbstractWheel$3;

    invoke-direct {p1, p0}, Lcom/powervision/gcs/view/wheelview/AbstractWheel$3;-><init>(Lcom/powervision/gcs/view/wheelview/AbstractWheel;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 258
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 259
    new-instance v1, Lcom/powervision/gcs/view/wheelview/AbstractWheel$SavedState;

    invoke-direct {v1, v0}, Lcom/powervision/gcs/view/wheelview/AbstractWheel$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 262
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->getCurrentItem()I

    move-result v0

    iput v0, v1, Lcom/powervision/gcs/view/wheelview/AbstractWheel$SavedState;->currentItem:I

    return-object v1
.end method

.method protected onScrollFinished()V
    .locals 0

    return-void
.end method

.method protected onScrollStarted()V
    .locals 0

    return-void
.end method

.method protected onScrollTouched()V
    .locals 0

    return-void
.end method

.method protected onScrollTouchedUp()V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 935
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->getViewAdapter()Lcom/powervision/gcs/view/wheelview/adapters/WheelViewAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 939
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_9

    const/4 v2, 0x2

    if-eq v0, v1, :cond_6

    if-eq v0, v2, :cond_1

    goto/16 :goto_1

    .line 946
    :cond_1
    new-instance v0, Landroid/graphics/PointF;

    iget v2, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->startX:F

    iget v3, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->startY:F

    invoke-direct {v0, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v0, v2}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->getDistanceBetween2Points(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_5

    .line 947
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v2, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->startY:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->startX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 949
    iget v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->currentScrollOrientation:I

    if-nez v0, :cond_2

    goto :goto_1

    .line 953
    :cond_2
    iput v1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->currentScrollOrientation:I

    return v1

    .line 958
    :cond_3
    iget v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->currentScrollOrientation:I

    if-ne v0, v1, :cond_4

    return v1

    :cond_4
    const/4 v0, 0x0

    .line 961
    iput v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->currentScrollOrientation:I

    .line 962
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    :cond_5
    return v1

    .line 971
    :cond_6
    iget v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->currentScrollOrientation:I

    if-ne v0, v1, :cond_7

    return v1

    .line 974
    :cond_7
    iget-boolean v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mIsScrollingPerformed:Z

    if-nez v0, :cond_a

    .line 975
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->getMotionEventPosition(Landroid/view/MotionEvent;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->getBaseDimension()I

    move-result v1

    div-int/2addr v1, v2

    sub-int/2addr v0, v1

    if-lez v0, :cond_8

    .line 977
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->getItemDimension()I

    move-result v1

    div-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_0

    .line 979
    :cond_8
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->getItemDimension()I

    move-result v1

    div-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 981
    :goto_0
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->getItemDimension()I

    move-result v1

    div-int/2addr v0, v1

    if-eqz v0, :cond_a

    .line 982
    iget v1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mCurrentItemIdx:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->isValidItemIndex(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 983
    iget v1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mCurrentItemIdx:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->notifyClickListenersAboutClick(I)V

    goto :goto_1

    .line 941
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->startX:F

    .line 942
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->startY:F

    .line 988
    :cond_a
    :goto_1
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mScroller:Lcom/powervision/gcs/view/wheelview/WheelScroller;

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/view/wheelview/WheelScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_b
    :goto_2
    return v1
.end method

.method protected rebuildItems()Z
    .locals 6

    .line 794
    invoke-direct {p0}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->getItemsRange()Lcom/powervision/gcs/view/wheelview/ItemsRange;

    move-result-object v0

    .line 796
    iget-object v1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mItemsLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 797
    iget-object v4, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mRecycler:Lcom/powervision/gcs/view/wheelview/WheelRecycler;

    iget v5, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mFirstItemIdx:I

    invoke-virtual {v4, v1, v5, v0}, Lcom/powervision/gcs/view/wheelview/WheelRecycler;->recycleItems(Landroid/widget/LinearLayout;ILcom/powervision/gcs/view/wheelview/ItemsRange;)I

    move-result v1

    .line 798
    iget v4, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mFirstItemIdx:I

    if-eq v4, v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 799
    :goto_0
    iput v1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mFirstItemIdx:I

    goto :goto_1

    .line 801
    :cond_1
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->createItemsLayout()V

    const/4 v4, 0x1

    :goto_1
    if-nez v4, :cond_4

    .line 806
    iget v1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mFirstItemIdx:I

    invoke-virtual {v0}, Lcom/powervision/gcs/view/wheelview/ItemsRange;->getFirst()I

    move-result v4

    if-ne v1, v4, :cond_3

    iget-object v1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mItemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    invoke-virtual {v0}, Lcom/powervision/gcs/view/wheelview/ItemsRange;->getCount()I

    move-result v4

    if-eq v1, v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v4, 0x1

    .line 809
    :cond_4
    :goto_3
    iget v1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mFirstItemIdx:I

    invoke-virtual {v0}, Lcom/powervision/gcs/view/wheelview/ItemsRange;->getFirst()I

    move-result v5

    if-le v1, v5, :cond_6

    iget v1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mFirstItemIdx:I

    invoke-virtual {v0}, Lcom/powervision/gcs/view/wheelview/ItemsRange;->getLast()I

    move-result v5

    if-gt v1, v5, :cond_6

    .line 810
    iget v1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mFirstItemIdx:I

    sub-int/2addr v1, v3

    :goto_4
    invoke-virtual {v0}, Lcom/powervision/gcs/view/wheelview/ItemsRange;->getFirst()I

    move-result v5

    if-lt v1, v5, :cond_7

    .line 811
    invoke-direct {p0, v1, v3}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->addItemView(IZ)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_5

    .line 814
    :cond_5
    iput v1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mFirstItemIdx:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 817
    :cond_6
    invoke-virtual {v0}, Lcom/powervision/gcs/view/wheelview/ItemsRange;->getFirst()I

    move-result v1

    iput v1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mFirstItemIdx:I

    .line 820
    :cond_7
    :goto_5
    iget v1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mFirstItemIdx:I

    .line 821
    iget-object v3, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mItemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    :goto_6
    invoke-virtual {v0}, Lcom/powervision/gcs/view/wheelview/ItemsRange;->getCount()I

    move-result v5

    if-ge v3, v5, :cond_9

    .line 822
    iget v5, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mFirstItemIdx:I

    add-int/2addr v5, v3

    invoke-direct {p0, v5, v2}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->addItemView(IZ)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mItemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-nez v5, :cond_8

    add-int/lit8 v1, v1, 0x1

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 826
    :cond_9
    iput v1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mFirstItemIdx:I

    return v4
.end method

.method protected abstract recreateAssets(II)V
.end method

.method public removeChangingListener(Lcom/powervision/gcs/view/wheelview/OnWheelChangedListener;)V
    .locals 1

    .line 700
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->changingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeClickingListener(Lcom/powervision/gcs/view/wheelview/OnWheelClickedListener;)V
    .locals 1

    .line 766
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->clickingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeScrollingListener(Lcom/powervision/gcs/view/wheelview/OnWheelScrollListener;)V
    .locals 1

    .line 730
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public scroll(II)V
    .locals 1

    .line 373
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->getItemDimension()I

    move-result v0

    mul-int p1, p1, v0

    iget v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mScrollingOffset:I

    sub-int/2addr p1, v0

    .line 374
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->onScrollTouched()V

    .line 375
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mScroller:Lcom/powervision/gcs/view/wheelview/WheelScroller;

    invoke-virtual {v0, p1, p2}, Lcom/powervision/gcs/view/wheelview/WheelScroller;->scroll(II)V

    return-void
.end method

.method public setAllItemsVisible(Z)V
    .locals 0

    .line 568
    iput-boolean p1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mIsAllVisible:Z

    const/4 p1, 0x0

    .line 569
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->invalidateItemsLayout(Z)V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    const/4 v0, 0x0

    .line 656
    invoke-virtual {p0, p1, v0}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->setCurrentItem(IZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 4

    .line 615
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mViewAdapter:Lcom/powervision/gcs/view/wheelview/adapters/WheelViewAdapter;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/powervision/gcs/view/wheelview/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mViewAdapter:Lcom/powervision/gcs/view/wheelview/adapters/WheelViewAdapter;

    invoke-interface {v0}, Lcom/powervision/gcs/view/wheelview/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-ltz p1, :cond_1

    if-lt p1, v0, :cond_3

    .line 621
    :cond_1
    iget-boolean v1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mIsCyclic:Z

    if-eqz v1, :cond_7

    :goto_0
    if-gez p1, :cond_2

    add-int/2addr p1, v0

    goto :goto_0

    .line 625
    :cond_2
    rem-int/2addr p1, v0

    .line 630
    :cond_3
    iget v1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mCurrentItemIdx:I

    if-eq p1, v1, :cond_7

    const/4 v2, 0x0

    if-eqz p2, :cond_6

    sub-int p2, p1, v1

    .line 633
    iget-boolean v3, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mIsCyclic:Z

    if-eqz v3, :cond_5

    .line 634
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mCurrentItemIdx:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr v0, p1

    .line 635
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge v0, p1, :cond_5

    if-gez p2, :cond_4

    move p2, v0

    goto :goto_1

    :cond_4
    neg-int p1, v0

    move p2, p1

    .line 639
    :cond_5
    :goto_1
    invoke-virtual {p0, p2, v2}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->scroll(II)V

    goto :goto_2

    .line 641
    :cond_6
    iput v2, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mScrollingOffset:I

    .line 643
    iput p1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mCurrentItemIdx:I

    .line 644
    invoke-virtual {p0, v1, p1}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->notifyChangingListeners(II)V

    .line 645
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->invalidate()V

    :cond_7
    :goto_2
    return-void
.end method

.method public setCyclic(Z)V
    .locals 0

    .line 674
    iput-boolean p1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mIsCyclic:Z

    const/4 p1, 0x0

    .line 675
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->invalidateItemsLayout(Z)V

    return-void
.end method

.method public setFriction(F)V
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mScroller:Lcom/powervision/gcs/view/wheelview/WheelScroller;

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/view/wheelview/WheelScroller;->setFriction(F)V

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mScroller:Lcom/powervision/gcs/view/wheelview/WheelScroller;

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/view/wheelview/WheelScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public setViewAdapter(Lcom/powervision/gcs/view/wheelview/adapters/WheelViewAdapter;)V
    .locals 2

    .line 589
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mViewAdapter:Lcom/powervision/gcs/view/wheelview/adapters/WheelViewAdapter;

    if-eqz v0, :cond_0

    .line 590
    iget-object v1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Lcom/powervision/gcs/view/wheelview/adapters/WheelViewAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 592
    :cond_0
    iput-object p1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mViewAdapter:Lcom/powervision/gcs/view/wheelview/adapters/WheelViewAdapter;

    if-eqz p1, :cond_1

    .line 594
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Lcom/powervision/gcs/view/wheelview/adapters/WheelViewAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    const/4 p1, 0x1

    .line 596
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->invalidateItemsLayout(Z)V

    return-void
.end method

.method public setVisibleItems(I)V
    .locals 0

    .line 559
    iput p1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mVisibleItems:I

    return-void
.end method

.method public stopScrolling()V
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mScroller:Lcom/powervision/gcs/view/wheelview/WheelScroller;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/wheelview/WheelScroller;->stopScrolling()V

    return-void
.end method
