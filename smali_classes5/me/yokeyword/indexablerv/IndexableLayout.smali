.class public Lme/yokeyword/indexablerv/IndexableLayout;
.super Landroid/widget/FrameLayout;
.source "IndexableLayout.java"


# static fields
.field static final INDEX_SIGN:Ljava/lang/String; = "#"

.field public static final MODE_ALL_LETTERS:I = 0x1

.field public static final MODE_FAST:I = 0x0

.field public static final MODE_NONE:I = 0x2

.field private static PADDING_RIGHT_OVERLAY:I


# instance fields
.field private mBarBg:Landroid/graphics/drawable/Drawable;

.field private mBarFocusTextColor:I

.field private mBarTextColor:I

.field private mBarTextSize:F

.field private mBarTextSpace:F

.field private mBarWidth:F

.field private mCenterOverlay:Landroid/widget/TextView;

.field private mComparator:Ljava/util/Comparator;

.field private mCompareMode:I

.field private mContext:Landroid/content/Context;

.field private mDataSetObserver:Lme/yokeyword/indexablerv/database/DataObserver;

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mFuture:Ljava/util/concurrent/Future;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderFooterDataSetObserver:Lme/yokeyword/indexablerv/database/HeaderFooterDataObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lme/yokeyword/indexablerv/database/HeaderFooterDataObserver<",
            "Lme/yokeyword/indexablerv/EntityWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mIndexBar:Lme/yokeyword/indexablerv/IndexBar;

.field private mIndexBarDataSetObserver:Lme/yokeyword/indexablerv/database/IndexBarDataObserver;

.field private mIndexableAdapter:Lme/yokeyword/indexablerv/IndexableAdapter;

.field private mLastInvisibleRecyclerViewItemView:Landroid/view/View;

.field private mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field private mMDOverlay:Landroid/widget/TextView;

.field private mRealAdapter:Lme/yokeyword/indexablerv/RealAdapter;

.field private mRecy:Landroidx/recyclerview/widget/RecyclerView;

.field private mShowAllLetter:Z

.field private mStickyTitle:Ljava/lang/String;

.field private mStickyViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field private mSticyEnable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 125
    invoke-direct {p0, p1, v0}, Lme/yokeyword/indexablerv/IndexableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 129
    invoke-direct {p0, p1, p2, v0}, Lme/yokeyword/indexablerv/IndexableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 133
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 60
    iput-boolean p3, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mShowAllLetter:Z

    .line 76
    iput-boolean p3, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mSticyEnable:Z

    const/4 p3, 0x0

    .line 93
    iput p3, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mCompareMode:I

    .line 97
    new-instance p3, Lme/yokeyword/indexablerv/IndexableLayout$1;

    invoke-direct {p3, p0}, Lme/yokeyword/indexablerv/IndexableLayout$1;-><init>(Lme/yokeyword/indexablerv/IndexableLayout;)V

    iput-object p3, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mHeaderFooterDataSetObserver:Lme/yokeyword/indexablerv/database/HeaderFooterDataObserver;

    .line 117
    new-instance p3, Lme/yokeyword/indexablerv/IndexableLayout$2;

    invoke-direct {p3, p0}, Lme/yokeyword/indexablerv/IndexableLayout$2;-><init>(Lme/yokeyword/indexablerv/IndexableLayout;)V

    iput-object p3, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mIndexBarDataSetObserver:Lme/yokeyword/indexablerv/database/IndexBarDataObserver;

    .line 134
    invoke-direct {p0, p1, p2}, Lme/yokeyword/indexablerv/IndexableLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lme/yokeyword/indexablerv/IndexableLayout;)Lme/yokeyword/indexablerv/RealAdapter;
    .locals 0

    .line 48
    iget-object p0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mRealAdapter:Lme/yokeyword/indexablerv/RealAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lme/yokeyword/indexablerv/IndexableLayout;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mShowAllLetter:Z

    return p0
.end method

.method static synthetic access$1000(Lme/yokeyword/indexablerv/IndexableLayout;)Landroid/os/Handler;
    .locals 0

    .line 48
    invoke-direct {p0}, Lme/yokeyword/indexablerv/IndexableLayout;->getSafeHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lme/yokeyword/indexablerv/IndexableLayout;)Lme/yokeyword/indexablerv/IndexBar;
    .locals 0

    .line 48
    iget-object p0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mIndexBar:Lme/yokeyword/indexablerv/IndexBar;

    return-object p0
.end method

.method static synthetic access$300(Lme/yokeyword/indexablerv/IndexableLayout;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lme/yokeyword/indexablerv/IndexableLayout;->processScrollListener()V

    return-void
.end method

.method static synthetic access$400(Lme/yokeyword/indexablerv/IndexableLayout;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 0

    .line 48
    iget-object p0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    return-object p0
.end method

.method static synthetic access$500(Lme/yokeyword/indexablerv/IndexableLayout;FI)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lme/yokeyword/indexablerv/IndexableLayout;->showOverlayView(FI)V

    return-void
.end method

.method static synthetic access$600(Lme/yokeyword/indexablerv/IndexableLayout;)Landroid/widget/TextView;
    .locals 0

    .line 48
    iget-object p0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mCenterOverlay:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lme/yokeyword/indexablerv/IndexableLayout;)Landroid/widget/TextView;
    .locals 0

    .line 48
    iget-object p0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mMDOverlay:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lme/yokeyword/indexablerv/IndexableLayout;)Lme/yokeyword/indexablerv/IndexableAdapter;
    .locals 0

    .line 48
    iget-object p0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mIndexableAdapter:Lme/yokeyword/indexablerv/IndexableAdapter;

    return-object p0
.end method

.method static synthetic access$900(Lme/yokeyword/indexablerv/IndexableLayout;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lme/yokeyword/indexablerv/IndexableLayout;->transform(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private getSafeHandler()Landroid/os/Handler;
    .locals 2

    .line 742
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 743
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mHandler:Landroid/os/Handler;

    .line 745
    :cond_0
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    .line 320
    iput-object p1, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mContext:Landroid/content/Context;

    .line 321
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 322
    invoke-virtual {p0}, Lme/yokeyword/indexablerv/IndexableLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x42a00000    # 80.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lme/yokeyword/indexablerv/IndexableLayout;->PADDING_RIGHT_OVERLAY:I

    if-eqz p2, :cond_0

    .line 325
    sget-object v0, Lme/yokeyword/indexablerecyclerview/R$styleable;->IndexableRecyclerView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 326
    sget v0, Lme/yokeyword/indexablerecyclerview/R$styleable;->IndexableRecyclerView_indexBar_textColor:I

    sget v2, Lme/yokeyword/indexablerecyclerview/R$color;->default_indexBar_textColor:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mBarTextColor:I

    .line 327
    sget v0, Lme/yokeyword/indexablerecyclerview/R$styleable;->IndexableRecyclerView_indexBar_textSize:I

    invoke-virtual {p0}, Lme/yokeyword/indexablerv/IndexableLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lme/yokeyword/indexablerecyclerview/R$dimen;->default_indexBar_textSize:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mBarTextSize:F

    .line 328
    sget v0, Lme/yokeyword/indexablerecyclerview/R$styleable;->IndexableRecyclerView_indexBar_selectedTextColor:I

    sget v2, Lme/yokeyword/indexablerecyclerview/R$color;->default_indexBar_selectedTextColor:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mBarFocusTextColor:I

    .line 329
    sget v0, Lme/yokeyword/indexablerecyclerview/R$styleable;->IndexableRecyclerView_indexBar_textSpace:I

    invoke-virtual {p0}, Lme/yokeyword/indexablerv/IndexableLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lme/yokeyword/indexablerecyclerview/R$dimen;->default_indexBar_textSpace:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mBarTextSpace:F

    .line 330
    sget v0, Lme/yokeyword/indexablerecyclerview/R$styleable;->IndexableRecyclerView_indexBar_background:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mBarBg:Landroid/graphics/drawable/Drawable;

    .line 331
    sget v0, Lme/yokeyword/indexablerecyclerview/R$styleable;->IndexableRecyclerView_indexBar_layout_width:I

    invoke-virtual {p0}, Lme/yokeyword/indexablerv/IndexableLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lme/yokeyword/indexablerecyclerview/R$dimen;->default_indexBar_layout_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mBarWidth:F

    .line 332
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 335
    :cond_0
    iget-object p2, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mContext:Landroid/content/Context;

    instance-of v0, p2, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 336
    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 339
    :cond_1
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mRecy:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    .line 340
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVerticalScrollBarEnabled(Z)V

    .line 341
    iget-object p2, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mRecy:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setOverScrollMode(I)V

    .line 342
    iget-object p2, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mRecy:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, v0}, Lme/yokeyword/indexablerv/IndexableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    new-instance v3, Lme/yokeyword/indexablerv/IndexBar;

    invoke-direct {v3, p1}, Lme/yokeyword/indexablerv/IndexBar;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mIndexBar:Lme/yokeyword/indexablerv/IndexBar;

    .line 345
    iget-object v4, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mBarBg:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mBarTextColor:I

    iget v6, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mBarFocusTextColor:I

    iget v7, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mBarTextSize:F

    iget v8, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mBarTextSpace:F

    invoke-virtual/range {v3 .. v8}, Lme/yokeyword/indexablerv/IndexBar;->init(Landroid/graphics/drawable/Drawable;IIFF)V

    .line 346
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget p2, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mBarWidth:F

    float-to-int p2, p2

    const/4 v0, -0x2

    invoke-direct {p1, p2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const p2, 0x800015

    .line 347
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 348
    iget-object p2, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mIndexBar:Lme/yokeyword/indexablerv/IndexBar;

    invoke-virtual {p0, p2, p1}, Lme/yokeyword/indexablerv/IndexableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    new-instance p1, Lme/yokeyword/indexablerv/RealAdapter;

    invoke-direct {p1}, Lme/yokeyword/indexablerv/RealAdapter;-><init>()V

    iput-object p1, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mRealAdapter:Lme/yokeyword/indexablerv/RealAdapter;

    .line 351
    iget-object p1, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mRecy:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 352
    iget-object p1, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mRecy:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mRealAdapter:Lme/yokeyword/indexablerv/RealAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 354
    invoke-direct {p0}, Lme/yokeyword/indexablerv/IndexableLayout;->initListener()V

    return-void
.end method

.method private initCenterOverlay()V
    .locals 4

    .line 600
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mCenterOverlay:Landroid/widget/TextView;

    .line 601
    sget v1, Lme/yokeyword/indexablerecyclerview/R$drawable;->indexable_bg_center_overlay:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 602
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mCenterOverlay:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 603
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mCenterOverlay:Landroid/widget/TextView;

    const/high16 v1, 0x42200000    # 40.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 604
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mCenterOverlay:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 605
    invoke-virtual {p0}, Lme/yokeyword/indexablerv/IndexableLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v2, 0x1

    const/high16 v3, 0x428c0000    # 70.0f

    invoke-static {v2, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 606
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 607
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 608
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mCenterOverlay:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 609
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mCenterOverlay:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 611
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mCenterOverlay:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lme/yokeyword/indexablerv/IndexableLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private initListener()V
    .locals 2

    .line 387
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mRecy:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lme/yokeyword/indexablerv/IndexableLayout$5;

    invoke-direct {v1, p0}, Lme/yokeyword/indexablerv/IndexableLayout$5;-><init>(Lme/yokeyword/indexablerv/IndexableLayout;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 395
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mIndexBar:Lme/yokeyword/indexablerv/IndexBar;

    new-instance v1, Lme/yokeyword/indexablerv/IndexableLayout$6;

    invoke-direct {v1, p0}, Lme/yokeyword/indexablerv/IndexableLayout$6;-><init>(Lme/yokeyword/indexablerv/IndexableLayout;)V

    invoke-virtual {v0, v1}, Lme/yokeyword/indexablerv/IndexBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private initMDOverlay(I)V
    .locals 3

    .line 615
    new-instance v0, Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mMDOverlay:Landroid/widget/TextView;

    .line 616
    sget v1, Lme/yokeyword/indexablerecyclerview/R$drawable;->indexable_bg_md_overlay:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 617
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mMDOverlay:Landroid/widget/TextView;

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 618
    iget-object p1, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mMDOverlay:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->setSingleLine()V

    .line 619
    iget-object p1, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mMDOverlay:Landroid/widget/TextView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 620
    iget-object p1, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mMDOverlay:Landroid/widget/TextView;

    const/high16 v0, 0x42180000    # 38.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 621
    iget-object p1, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mMDOverlay:Landroid/widget/TextView;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 622
    invoke-virtual {p0}, Lme/yokeyword/indexablerv/IndexableLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    const/high16 v1, 0x42900000    # 72.0f

    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    .line 623
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 624
    invoke-virtual {p0}, Lme/yokeyword/indexablerv/IndexableLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v2, 0x42040000    # 33.0f

    invoke-static {v0, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const p1, 0x800005

    .line 625
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 626
    iget-object p1, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mMDOverlay:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 627
    iget-object p1, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mMDOverlay:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 629
    iget-object p1, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mMDOverlay:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lme/yokeyword/indexablerv/IndexableLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private initStickyView(Lme/yokeyword/indexablerv/IndexableAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lme/yokeyword/indexablerv/IndexableEntity;",
            ">(",
            "Lme/yokeyword/indexablerv/IndexableAdapter<",
            "TT;>;)V"
        }
    .end annotation

    .line 518
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mRecy:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Lme/yokeyword/indexablerv/IndexableAdapter;->onCreateTitleViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    iput-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mStickyViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 519
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lme/yokeyword/indexablerv/IndexableLayout$7;

    invoke-direct {v1, p0, p1}, Lme/yokeyword/indexablerv/IndexableLayout$7;-><init>(Lme/yokeyword/indexablerv/IndexableLayout;Lme/yokeyword/indexablerv/IndexableAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 532
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mStickyViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lme/yokeyword/indexablerv/IndexableLayout$8;

    invoke-direct {v1, p0, p1}, Lme/yokeyword/indexablerv/IndexableLayout$8;-><init>(Lme/yokeyword/indexablerv/IndexableLayout;Lme/yokeyword/indexablerv/IndexableAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 p1, 0x0

    .line 546
    :goto_0
    invoke-virtual {p0}, Lme/yokeyword/indexablerv/IndexableLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 547
    invoke-virtual {p0, p1}, Lme/yokeyword/indexablerv/IndexableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mRecy:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v0, v1, :cond_0

    .line 548
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mStickyViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 549
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mStickyViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, v0, p1}, Lme/yokeyword/indexablerv/IndexableLayout;->addView(Landroid/view/View;I)V

    return-void

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private processScroll(Landroidx/recyclerview/widget/LinearLayoutManager;Ljava/util/ArrayList;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/LinearLayoutManager;",
            "Ljava/util/ArrayList<",
            "Lme/yokeyword/indexablerv/EntityWrapper;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 486
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lme/yokeyword/indexablerv/EntityWrapper;

    .line 487
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 489
    :cond_0
    invoke-virtual {p2}, Lme/yokeyword/indexablerv/EntityWrapper;->getItemType()I

    move-result p2

    const p3, 0x7ffffffe

    if-ne p2, p3, :cond_3

    .line 490
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iget-object p3, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mStickyViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    if-gt p2, p3, :cond_1

    if-eqz p4, :cond_1

    .line 491
    iget-object p2, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mStickyViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p3

    iget-object p4, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mStickyViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object p4, p4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p4

    sub-int/2addr p3, p4

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    const/4 p2, 0x4

    .line 493
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p3

    if-ne p2, p3, :cond_2

    const/4 p2, 0x0

    .line 496
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void

    .line 499
    :cond_3
    iget-object p1, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mStickyViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_4

    .line 500
    iget-object p1, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mStickyViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    :cond_4
    return-void
.end method

.method private processScrollListener()V
    .locals 8

    .line 432
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v1, :cond_0

    return-void

    .line 434
    :cond_0
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 437
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return-void

    .line 440
    :cond_1
    iget-object v2, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mIndexBar:Lme/yokeyword/indexablerv/IndexBar;

    invoke-virtual {v2, v1}, Lme/yokeyword/indexablerv/IndexBar;->setSelection(I)V

    .line 442
    iget-boolean v2, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mSticyEnable:Z

    if-nez v2, :cond_2

    return-void

    .line 443
    :cond_2
    iget-object v2, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mRealAdapter:Lme/yokeyword/indexablerv/RealAdapter;

    invoke-virtual {v2}, Lme/yokeyword/indexablerv/RealAdapter;->getItems()Ljava/util/ArrayList;

    move-result-object v2

    .line 444
    iget-object v3, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mStickyViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v1, :cond_7

    .line 445
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lme/yokeyword/indexablerv/EntityWrapper;

    .line 446
    invoke-virtual {v3}, Lme/yokeyword/indexablerv/EntityWrapper;->getIndexTitle()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7ffffffe

    .line 448
    invoke-virtual {v3}, Lme/yokeyword/indexablerv/EntityWrapper;->getItemType()I

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x4

    if-ne v5, v3, :cond_4

    .line 449
    iget-object v3, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mLastInvisibleRecyclerViewItemView:Landroid/view/View;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v7, :cond_3

    .line 450
    iget-object v3, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mLastInvisibleRecyclerViewItemView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 451
    iput-object v6, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mLastInvisibleRecyclerViewItemView:Landroid/view/View;

    .line 454
    :cond_3
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mLastInvisibleRecyclerViewItemView:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 457
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    if-nez v4, :cond_5

    .line 462
    iget-object v3, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mStickyViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_5

    .line 463
    iput-object v6, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mStickyTitle:Ljava/lang/String;

    .line 464
    iget-object v3, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mStickyViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 466
    :cond_5
    invoke-direct {p0, v4}, Lme/yokeyword/indexablerv/IndexableLayout;->stickyNewViewHolder(Ljava/lang/String;)V

    .line 470
    :goto_0
    iget-object v3, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    instance-of v5, v3, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v5, :cond_6

    .line 471
    check-cast v3, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 472
    invoke-virtual {v3}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_7

    add-int/lit8 v5, v1, 0x1

    .line 473
    :goto_1
    invoke-virtual {v3}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v6

    add-int/2addr v6, v1

    if-gt v5, v6, :cond_7

    .line 474
    invoke-direct {p0, v0, v2, v5, v4}, Lme/yokeyword/indexablerv/IndexableLayout;->processScroll(Landroidx/recyclerview/widget/LinearLayoutManager;Ljava/util/ArrayList;ILjava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 478
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 479
    invoke-direct {p0, v0, v2, v1, v4}, Lme/yokeyword/indexablerv/IndexableLayout;->processScroll(Landroidx/recyclerview/widget/LinearLayoutManager;Ljava/util/ArrayList;ILjava/lang/String;)V

    :cond_7
    return-void
.end method

.method private showOverlayView(FI)V
    .locals 4

    .line 557
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mIndexBar:Lme/yokeyword/indexablerv/IndexBar;

    invoke-virtual {v0}, Lme/yokeyword/indexablerv/IndexBar;->getIndexList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p2, :cond_0

    return-void

    .line 559
    :cond_0
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mMDOverlay:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 560
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 561
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mMDOverlay:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 564
    :cond_1
    sget v0, Lme/yokeyword/indexablerv/IndexableLayout;->PADDING_RIGHT_OVERLAY:I

    iget-object v3, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mIndexBar:Lme/yokeyword/indexablerv/IndexBar;

    invoke-virtual {v3}, Lme/yokeyword/indexablerv/IndexBar;->getTop()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    const/4 v3, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    cmpl-float v0, p1, v3

    if-ltz v0, :cond_2

    .line 565
    sget p1, Lme/yokeyword/indexablerv/IndexableLayout;->PADDING_RIGHT_OVERLAY:I

    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mIndexBar:Lme/yokeyword/indexablerv/IndexBar;

    invoke-virtual {v0}, Lme/yokeyword/indexablerv/IndexBar;->getTop()I

    move-result v0

    sub-int/2addr p1, v0

    :goto_0
    int-to-float p1, p1

    goto :goto_1

    :cond_2
    cmpg-float v0, p1, v3

    if-gez v0, :cond_4

    .line 567
    iget-object p1, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mIndexBar:Lme/yokeyword/indexablerv/IndexBar;

    invoke-virtual {p1}, Lme/yokeyword/indexablerv/IndexBar;->getTop()I

    move-result p1

    sget v0, Lme/yokeyword/indexablerv/IndexableLayout;->PADDING_RIGHT_OVERLAY:I

    if-le p1, v0, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    .line 570
    :cond_3
    iget-object p1, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mIndexBar:Lme/yokeyword/indexablerv/IndexBar;

    invoke-virtual {p1}, Lme/yokeyword/indexablerv/IndexBar;->getTop()I

    move-result p1

    sub-int/2addr v0, p1

    int-to-float p1, v0

    goto :goto_1

    .line 572
    :cond_4
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mIndexBar:Lme/yokeyword/indexablerv/IndexBar;

    invoke-virtual {v0}, Lme/yokeyword/indexablerv/IndexBar;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_5

    .line 573
    iget-object p1, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mIndexBar:Lme/yokeyword/indexablerv/IndexBar;

    invoke-virtual {p1}, Lme/yokeyword/indexablerv/IndexBar;->getHeight()I

    move-result p1

    goto :goto_0

    .line 575
    :cond_5
    :goto_1
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mMDOverlay:Landroid/widget/TextView;

    iget-object v3, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mIndexBar:Lme/yokeyword/indexablerv/IndexBar;

    invoke-virtual {v3}, Lme/yokeyword/indexablerv/IndexBar;->getTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, p1

    sget p1, Lme/yokeyword/indexablerv/IndexableLayout;->PADDING_RIGHT_OVERLAY:I

    int-to-float p1, p1

    sub-float/2addr v3, p1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setY(F)V

    .line 577
    iget-object p1, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mIndexBar:Lme/yokeyword/indexablerv/IndexBar;

    invoke-virtual {p1}, Lme/yokeyword/indexablerv/IndexBar;->getIndexList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 578
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mMDOverlay:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 579
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_6

    .line 580
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mMDOverlay:Landroid/widget/TextView;

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 582
    :cond_6
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mMDOverlay:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    :cond_7
    iget-object p1, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mCenterOverlay:Landroid/widget/TextView;

    if-eqz p1, :cond_a

    .line 586
    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_8

    .line 587
    iget-object p1, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mCenterOverlay:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 589
    :cond_8
    iget-object p1, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mIndexBar:Lme/yokeyword/indexablerv/IndexBar;

    invoke-virtual {p1}, Lme/yokeyword/indexablerv/IndexBar;->getIndexList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 590
    iget-object p2, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mCenterOverlay:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 591
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-le p2, v1, :cond_9

    .line 592
    iget-object p2, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mCenterOverlay:Landroid/widget/TextView;

    const/high16 v0, 0x42000000    # 32.0f

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 594
    :cond_9
    iget-object p2, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mCenterOverlay:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    return-void
.end method

.method private stickyNewViewHolder(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 506
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mStickyTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 508
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mStickyViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mStickyViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 512
    :cond_0
    iput-object p1, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mStickyTitle:Ljava/lang/String;

    .line 513
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mIndexableAdapter:Lme/yokeyword/indexablerv/IndexableAdapter;

    iget-object v1, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mStickyViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1, p1}, Lme/yokeyword/indexablerv/IndexableAdapter;->onBindTitleViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private transform(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lme/yokeyword/indexablerv/IndexableEntity;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "Lme/yokeyword/indexablerv/EntityWrapper<",
            "TT;>;>;"
        }
    .end annotation

    .line 664
    :try_start_0
    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lme/yokeyword/indexablerv/IndexableLayout$10;

    invoke-direct {v1, p0}, Lme/yokeyword/indexablerv/IndexableLayout$10;-><init>(Lme/yokeyword/indexablerv/IndexableLayout;)V

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 676
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_3

    .line 677
    new-instance v3, Lme/yokeyword/indexablerv/EntityWrapper;

    invoke-direct {v3}, Lme/yokeyword/indexablerv/EntityWrapper;-><init>()V

    .line 678
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lme/yokeyword/indexablerv/IndexableEntity;

    .line 679
    invoke-interface {v5}, Lme/yokeyword/indexablerv/IndexableEntity;->getFieldIndexBy()Ljava/lang/String;

    move-result-object v6

    .line 680
    invoke-static {v6}, Lme/yokeyword/indexablerv/PinyinUtil;->getPingYin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 681
    invoke-virtual {v3, v7}, Lme/yokeyword/indexablerv/EntityWrapper;->setPinyin(Ljava/lang/String;)V

    .line 684
    invoke-static {v7}, Lme/yokeyword/indexablerv/PinyinUtil;->matchingLetter(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 685
    invoke-virtual {v7, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lme/yokeyword/indexablerv/EntityWrapper;->setIndex(Ljava/lang/String;)V

    .line 686
    invoke-interface {v5}, Lme/yokeyword/indexablerv/IndexableEntity;->getFieldIndexBy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lme/yokeyword/indexablerv/EntityWrapper;->setIndexByField(Ljava/lang/String;)V

    goto :goto_1

    .line 687
    :cond_0
    invoke-static {v7}, Lme/yokeyword/indexablerv/PinyinUtil;->matchingPolyphone(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 688
    invoke-static {v7}, Lme/yokeyword/indexablerv/PinyinUtil;->gePolyphoneInitial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lme/yokeyword/indexablerv/EntityWrapper;->setIndex(Ljava/lang/String;)V

    .line 689
    invoke-static {v7}, Lme/yokeyword/indexablerv/PinyinUtil;->getPolyphoneRealPinyin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lme/yokeyword/indexablerv/EntityWrapper;->setPinyin(Ljava/lang/String;)V

    .line 690
    invoke-static {v6}, Lme/yokeyword/indexablerv/PinyinUtil;->getPolyphoneRealHanzi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 691
    invoke-virtual {v3, v4}, Lme/yokeyword/indexablerv/EntityWrapper;->setIndexByField(Ljava/lang/String;)V

    .line 693
    invoke-interface {v5, v4}, Lme/yokeyword/indexablerv/IndexableEntity;->setFieldIndexBy(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v4, "#"

    .line 695
    invoke-virtual {v3, v4}, Lme/yokeyword/indexablerv/EntityWrapper;->setIndex(Ljava/lang/String;)V

    .line 696
    invoke-interface {v5}, Lme/yokeyword/indexablerv/IndexableEntity;->getFieldIndexBy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lme/yokeyword/indexablerv/EntityWrapper;->setIndexByField(Ljava/lang/String;)V

    .line 698
    :goto_1
    invoke-virtual {v3}, Lme/yokeyword/indexablerv/EntityWrapper;->getIndex()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lme/yokeyword/indexablerv/EntityWrapper;->setIndexTitle(Ljava/lang/String;)V

    .line 699
    invoke-virtual {v3, v5}, Lme/yokeyword/indexablerv/EntityWrapper;->setData(Ljava/lang/Object;)V

    .line 700
    invoke-virtual {v3, v2}, Lme/yokeyword/indexablerv/EntityWrapper;->setOriginalPosition(I)V

    .line 701
    invoke-virtual {v3}, Lme/yokeyword/indexablerv/EntityWrapper;->getPinyin()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lme/yokeyword/indexablerv/IndexableEntity;->setFieldPinyinIndexBy(Ljava/lang/String;)V

    .line 703
    invoke-virtual {v3}, Lme/yokeyword/indexablerv/EntityWrapper;->getIndex()Ljava/lang/String;

    move-result-object v4

    .line 706
    invoke-virtual {v0, v4}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 707
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 708
    new-instance v6, Lme/yokeyword/indexablerv/EntityWrapper;

    invoke-virtual {v3}, Lme/yokeyword/indexablerv/EntityWrapper;->getIndex()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7ffffffe

    invoke-direct {v6, v7, v8}, Lme/yokeyword/indexablerv/EntityWrapper;-><init>(Ljava/lang/String;I)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    invoke-virtual {v0, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 711
    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/util/List;

    .line 714
    :goto_2
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 717
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 718
    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 719
    iget-object v2, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mComparator:Ljava/util/Comparator;

    if-eqz v2, :cond_4

    .line 720
    iget-object v2, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_4

    .line 723
    :cond_4
    iget v2, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mCompareMode:I

    if-nez v2, :cond_5

    .line 724
    new-instance v2, Lme/yokeyword/indexablerv/InitialComparator;

    invoke-direct {v2}, Lme/yokeyword/indexablerv/InitialComparator;-><init>()V

    .line 725
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_4

    .line 726
    :cond_5
    iget v2, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mCompareMode:I

    if-ne v2, v4, :cond_6

    .line 727
    new-instance v2, Lme/yokeyword/indexablerv/PinyinComparator;

    invoke-direct {v2}, Lme/yokeyword/indexablerv/PinyinComparator;-><init>()V

    .line 728
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 732
    :cond_6
    :goto_4
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_7
    return-object p1

    :catch_0
    move-exception p1

    .line 736
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public addFooterAdapter(Lme/yokeyword/indexablerv/IndexableFooterAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lme/yokeyword/indexablerv/IndexableFooterAdapter<",
            "TT;>;)V"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mHeaderFooterDataSetObserver:Lme/yokeyword/indexablerv/database/HeaderFooterDataObserver;

    invoke-virtual {p1, v0}, Lme/yokeyword/indexablerv/IndexableFooterAdapter;->registerDataSetObserver(Lme/yokeyword/indexablerv/database/HeaderFooterDataObserver;)V

    .line 218
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mIndexBarDataSetObserver:Lme/yokeyword/indexablerv/database/IndexBarDataObserver;

    invoke-virtual {p1, v0}, Lme/yokeyword/indexablerv/IndexableFooterAdapter;->registerIndexBarDataSetObserver(Lme/yokeyword/indexablerv/database/IndexBarDataObserver;)V

    .line 219
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mRealAdapter:Lme/yokeyword/indexablerv/RealAdapter;

    invoke-virtual {v0, p1}, Lme/yokeyword/indexablerv/RealAdapter;->addIndexableFooterAdapter(Lme/yokeyword/indexablerv/IndexableFooterAdapter;)V

    return-void
.end method

.method public addHeaderAdapter(Lme/yokeyword/indexablerv/IndexableHeaderAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lme/yokeyword/indexablerv/IndexableHeaderAdapter<",
            "TT;>;)V"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mHeaderFooterDataSetObserver:Lme/yokeyword/indexablerv/database/HeaderFooterDataObserver;

    invoke-virtual {p1, v0}, Lme/yokeyword/indexablerv/IndexableHeaderAdapter;->registerDataSetObserver(Lme/yokeyword/indexablerv/database/HeaderFooterDataObserver;)V

    .line 197
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mIndexBarDataSetObserver:Lme/yokeyword/indexablerv/database/IndexBarDataObserver;

    invoke-virtual {p1, v0}, Lme/yokeyword/indexablerv/IndexableHeaderAdapter;->registerIndexBarDataSetObserver(Lme/yokeyword/indexablerv/database/IndexBarDataObserver;)V

    .line 198
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mRealAdapter:Lme/yokeyword/indexablerv/RealAdapter;

    invoke-virtual {v0, p1}, Lme/yokeyword/indexablerv/RealAdapter;->addIndexableHeaderAdapter(Lme/yokeyword/indexablerv/IndexableHeaderAdapter;)V

    return-void
.end method

.method public getOverlayView()Landroid/widget/TextView;
    .locals 1

    .line 302
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mMDOverlay:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mCenterOverlay:Landroid/widget/TextView;

    :goto_0
    return-object v0
.end method

.method public getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 309
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mRecy:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method onDataChanged()V
    .locals 2

    .line 633
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 634
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 636
    :cond_0
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lme/yokeyword/indexablerv/IndexableLayout$9;

    invoke-direct {v1, p0}, Lme/yokeyword/indexablerv/IndexableLayout$9;-><init>(Lme/yokeyword/indexablerv/IndexableLayout;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mFuture:Ljava/util/concurrent/Future;

    return-void
.end method

.method public removeFooterAdapter(Lme/yokeyword/indexablerv/IndexableFooterAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lme/yokeyword/indexablerv/IndexableFooterAdapter<",
            "TT;>;)V"
        }
    .end annotation

    .line 227
    :try_start_0
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mHeaderFooterDataSetObserver:Lme/yokeyword/indexablerv/database/HeaderFooterDataObserver;

    invoke-virtual {p1, v0}, Lme/yokeyword/indexablerv/IndexableFooterAdapter;->unregisterDataSetObserver(Lme/yokeyword/indexablerv/database/HeaderFooterDataObserver;)V

    .line 228
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mIndexBarDataSetObserver:Lme/yokeyword/indexablerv/database/IndexBarDataObserver;

    invoke-virtual {p1, v0}, Lme/yokeyword/indexablerv/IndexableFooterAdapter;->unregisterIndexBarDataSetObserver(Lme/yokeyword/indexablerv/database/IndexBarDataObserver;)V

    .line 229
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mRealAdapter:Lme/yokeyword/indexablerv/RealAdapter;

    invoke-virtual {v0, p1}, Lme/yokeyword/indexablerv/RealAdapter;->removeIndexableFooterAdapter(Lme/yokeyword/indexablerv/IndexableFooterAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public removeHeaderAdapter(Lme/yokeyword/indexablerv/IndexableHeaderAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lme/yokeyword/indexablerv/IndexableHeaderAdapter<",
            "TT;>;)V"
        }
    .end annotation

    .line 206
    :try_start_0
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mHeaderFooterDataSetObserver:Lme/yokeyword/indexablerv/database/HeaderFooterDataObserver;

    invoke-virtual {p1, v0}, Lme/yokeyword/indexablerv/IndexableHeaderAdapter;->unregisterDataSetObserver(Lme/yokeyword/indexablerv/database/HeaderFooterDataObserver;)V

    .line 207
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mIndexBarDataSetObserver:Lme/yokeyword/indexablerv/database/IndexBarDataObserver;

    invoke-virtual {p1, v0}, Lme/yokeyword/indexablerv/IndexableHeaderAdapter;->unregisterIndexBarDataSetObserver(Lme/yokeyword/indexablerv/database/IndexBarDataObserver;)V

    .line 208
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mRealAdapter:Lme/yokeyword/indexablerv/RealAdapter;

    invoke-virtual {v0, p1}, Lme/yokeyword/indexablerv/RealAdapter;->removeIndexableHeaderAdapter(Lme/yokeyword/indexablerv/IndexableHeaderAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setAdapter(Lme/yokeyword/indexablerv/IndexableAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lme/yokeyword/indexablerv/IndexableEntity;",
            ">(",
            "Lme/yokeyword/indexablerv/IndexableAdapter<",
            "TT;>;)V"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_2

    .line 147
    iput-object p1, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mIndexableAdapter:Lme/yokeyword/indexablerv/IndexableAdapter;

    .line 149
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mDataSetObserver:Lme/yokeyword/indexablerv/database/DataObserver;

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p1, v0}, Lme/yokeyword/indexablerv/IndexableAdapter;->unregisterDataSetObserver(Lme/yokeyword/indexablerv/database/DataObserver;)V

    .line 152
    :cond_0
    new-instance v0, Lme/yokeyword/indexablerv/IndexableLayout$3;

    invoke-direct {v0, p0, p1}, Lme/yokeyword/indexablerv/IndexableLayout$3;-><init>(Lme/yokeyword/indexablerv/IndexableLayout;Lme/yokeyword/indexablerv/IndexableAdapter;)V

    iput-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mDataSetObserver:Lme/yokeyword/indexablerv/database/DataObserver;

    .line 185
    invoke-virtual {p1, v0}, Lme/yokeyword/indexablerv/IndexableAdapter;->registerDataSetObserver(Lme/yokeyword/indexablerv/database/DataObserver;)V

    .line 186
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mRealAdapter:Lme/yokeyword/indexablerv/RealAdapter;

    invoke-virtual {v0, p1}, Lme/yokeyword/indexablerv/RealAdapter;->setIndexableAdapter(Lme/yokeyword/indexablerv/IndexableAdapter;)V

    .line 187
    iget-boolean v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mSticyEnable:Z

    if-eqz v0, :cond_1

    .line 188
    invoke-direct {p0, p1}, Lme/yokeyword/indexablerv/IndexableLayout;->initStickyView(Lme/yokeyword/indexablerv/IndexableAdapter;)V

    :cond_1
    return-void

    .line 144
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "You must set the LayoutManager first"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setComparator(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lme/yokeyword/indexablerv/IndexableEntity;",
            ">(",
            "Ljava/util/Comparator<",
            "Lme/yokeyword/indexablerv/EntityWrapper<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 259
    iput-object p1, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mComparator:Ljava/util/Comparator;

    return-void
.end method

.method public setCompareMode(I)V
    .locals 0

    .line 252
    iput p1, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mCompareMode:I

    return-void
.end method

.method public setFastCompare(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    xor-int/lit8 p1, p1, 0x1

    .line 240
    invoke-virtual {p0, p1}, Lme/yokeyword/indexablerv/IndexableLayout;->setCompareMode(I)V

    return-void
.end method

.method public setIndexBarVisibility(Z)V
    .locals 1

    .line 316
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mIndexBar:Lme/yokeyword/indexablerv/IndexBar;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Lme/yokeyword/indexablerv/IndexBar;->setVisibility(I)V

    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 366
    iput-object p1, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 367
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 368
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 369
    new-instance v0, Lme/yokeyword/indexablerv/IndexableLayout$4;

    invoke-direct {v0, p0, p1}, Lme/yokeyword/indexablerv/IndexableLayout$4;-><init>(Lme/yokeyword/indexablerv/IndexableLayout;Landroidx/recyclerview/widget/GridLayoutManager;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 383
    :cond_0
    iget-object p1, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mRecy:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void

    .line 364
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "LayoutManager == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOverlayStyle_Center()V
    .locals 1

    .line 292
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mCenterOverlay:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 293
    invoke-direct {p0}, Lme/yokeyword/indexablerv/IndexableLayout;->initCenterOverlay()V

    :cond_0
    const/4 v0, 0x0

    .line 295
    iput-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mMDOverlay:Landroid/widget/TextView;

    return-void
.end method

.method public setOverlayStyle_MaterialDesign(I)V
    .locals 1

    .line 280
    iget-object v0, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mMDOverlay:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 281
    invoke-direct {p0, p1}, Lme/yokeyword/indexablerv/IndexableLayout;->initMDOverlay(I)V

    goto :goto_0

    .line 283
    :cond_0
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    :goto_0
    const/4 p1, 0x0

    .line 285
    iput-object p1, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mCenterOverlay:Landroid/widget/TextView;

    return-void
.end method

.method public setStickyEnable(Z)V
    .locals 0

    .line 266
    iput-boolean p1, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mSticyEnable:Z

    return-void
.end method

.method public showAllLetter(Z)V
    .locals 0

    .line 273
    iput-boolean p1, p0, Lme/yokeyword/indexablerv/IndexableLayout;->mShowAllLetter:Z

    return-void
.end method
