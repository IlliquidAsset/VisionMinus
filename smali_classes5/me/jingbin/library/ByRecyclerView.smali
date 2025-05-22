.class public Lme/jingbin/library/ByRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "ByRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/jingbin/library/ByRecyclerView$OnItemChildLongClickListener;,
        Lme/jingbin/library/ByRecyclerView$OnItemChildClickListener;,
        Lme/jingbin/library/ByRecyclerView$OnItemLongClickListener;,
        Lme/jingbin/library/ByRecyclerView$OnItemClickListener;,
        Lme/jingbin/library/ByRecyclerView$OnRefreshListener;,
        Lme/jingbin/library/ByRecyclerView$OnLoadMoreListener;,
        Lme/jingbin/library/ByRecyclerView$WrapAdapter;,
        Lme/jingbin/library/ByRecyclerView$DataObserver;
    }
.end annotation


# static fields
.field private static final HEADER_INIT_INDEX:I = 0x2714

.field private static final TYPE_FOOTER_VIEW:I = 0x2713

.field private static final TYPE_LOAD_MORE_VIEW:I = 0x2711

.field private static final TYPE_REFRESH_HEADER:I = 0x2710

.field private static final TYPE_STATE_VIEW:I = 0x2712


# instance fields
.field private appbarState:Lme/jingbin/library/AppBarStateChangeListener$State;

.field private final mDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field private mDragRate:F

.field private mFootViewEnabled:Z

.field private mFooterLayout:Landroid/widget/LinearLayout;

.field private mHeaderTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderViewEnabled:Z

.field private mHeaderViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mIsLoadingData:Z

.field private mIsNoMore:Z

.field private mIsScrollUp:Z

.field private mLastY:F

.field private mLoadMore:Lme/jingbin/library/BaseLoadMore;

.field private mLoadMoreDelayMillis:J

.field private mLoadMoreEnabled:Z

.field private mLoadMoreListener:Lme/jingbin/library/ByRecyclerView$OnLoadMoreListener;

.field private mOnItemChildClickListener:Lme/jingbin/library/ByRecyclerView$OnItemChildClickListener;

.field private mOnItemChildLongClickListener:Lme/jingbin/library/ByRecyclerView$OnItemChildLongClickListener;

.field private mPullMaxY:F

.field private mPullStartY:F

.field private mRefreshDelayMillis:J

.field private mRefreshEnabled:Z

.field private mRefreshHeader:Lme/jingbin/library/BaseRefreshHeader;

.field private mRefreshListener:Lme/jingbin/library/ByRecyclerView$OnRefreshListener;

.field private mStateLayout:Landroid/widget/FrameLayout;

.field private mStateViewEnabled:Z

.field private mWrapAdapter:Lme/jingbin/library/ByRecyclerView$WrapAdapter;

.field private misNoLoadMoreIfNotFullScreen:Z

.field private onItemClickListener:Lme/jingbin/library/ByRecyclerView$OnItemClickListener;

.field private onItemLongClickListener:Lme/jingbin/library/ByRecyclerView$OnItemLongClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, v0}, Lme/jingbin/library/ByRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, p1, p2, v0}, Lme/jingbin/library/ByRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lme/jingbin/library/ByRecyclerView;->mHeaderTypes:Ljava/util/List;

    .line 46
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lme/jingbin/library/ByRecyclerView;->mHeaderViews:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 50
    iput-boolean p1, p0, Lme/jingbin/library/ByRecyclerView;->mRefreshEnabled:Z

    .line 51
    iput-boolean p1, p0, Lme/jingbin/library/ByRecyclerView;->mLoadMoreEnabled:Z

    .line 52
    iput-boolean p1, p0, Lme/jingbin/library/ByRecyclerView;->mHeaderViewEnabled:Z

    .line 53
    iput-boolean p1, p0, Lme/jingbin/library/ByRecyclerView;->mFootViewEnabled:Z

    const/4 p2, 0x1

    .line 54
    iput-boolean p2, p0, Lme/jingbin/library/ByRecyclerView;->mStateViewEnabled:Z

    .line 55
    iput-boolean p1, p0, Lme/jingbin/library/ByRecyclerView;->misNoLoadMoreIfNotFullScreen:Z

    .line 57
    iput-boolean p1, p0, Lme/jingbin/library/ByRecyclerView;->mIsLoadingData:Z

    .line 58
    iput-boolean p1, p0, Lme/jingbin/library/ByRecyclerView;->mIsNoMore:Z

    .line 59
    iput-boolean p1, p0, Lme/jingbin/library/ByRecyclerView;->mIsScrollUp:Z

    const/high16 p1, -0x40800000    # -1.0f

    .line 60
    iput p1, p0, Lme/jingbin/library/ByRecyclerView;->mLastY:F

    const/4 p1, 0x0

    .line 61
    iput p1, p0, Lme/jingbin/library/ByRecyclerView;->mPullStartY:F

    const/high16 p1, 0x40200000    # 2.5f

    .line 63
    iput p1, p0, Lme/jingbin/library/ByRecyclerView;->mDragRate:F

    const-wide/16 p1, 0x0

    .line 64
    iput-wide p1, p0, Lme/jingbin/library/ByRecyclerView;->mLoadMoreDelayMillis:J

    .line 65
    iput-wide p1, p0, Lme/jingbin/library/ByRecyclerView;->mRefreshDelayMillis:J

    .line 77
    sget-object p1, Lme/jingbin/library/AppBarStateChangeListener$State;->EXPANDED:Lme/jingbin/library/AppBarStateChangeListener$State;

    iput-object p1, p0, Lme/jingbin/library/ByRecyclerView;->appbarState:Lme/jingbin/library/AppBarStateChangeListener$State;

    .line 78
    new-instance p1, Lme/jingbin/library/ByRecyclerView$DataObserver;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lme/jingbin/library/ByRecyclerView$DataObserver;-><init>(Lme/jingbin/library/ByRecyclerView;Lme/jingbin/library/ByRecyclerView$1;)V

    iput-object p1, p0, Lme/jingbin/library/ByRecyclerView;->mDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 92
    invoke-virtual {p0}, Lme/jingbin/library/ByRecyclerView;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 95
    :cond_0
    invoke-direct {p0}, Lme/jingbin/library/ByRecyclerView;->init()V

    return-void
.end method

.method static synthetic access$1000(Lme/jingbin/library/ByRecyclerView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 34
    iget-object p0, p0, Lme/jingbin/library/ByRecyclerView;->mStateLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$102(Lme/jingbin/library/ByRecyclerView;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lme/jingbin/library/ByRecyclerView;->mIsLoadingData:Z

    return p1
.end method

.method static synthetic access$1100(Lme/jingbin/library/ByRecyclerView;)Landroid/widget/LinearLayout;
    .locals 0

    .line 34
    iget-object p0, p0, Lme/jingbin/library/ByRecyclerView;->mFooterLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1200(Lme/jingbin/library/ByRecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lme/jingbin/library/ByRecyclerView;->bindViewClickListener(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method static synthetic access$1300(Lme/jingbin/library/ByRecyclerView;)Ljava/util/List;
    .locals 0

    .line 34
    iget-object p0, p0, Lme/jingbin/library/ByRecyclerView;->mHeaderTypes:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1400(Lme/jingbin/library/ByRecyclerView;I)Z
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lme/jingbin/library/ByRecyclerView;->isReservedItemViewType(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lme/jingbin/library/ByRecyclerView;)Lme/jingbin/library/ByRecyclerView$OnItemClickListener;
    .locals 0

    .line 34
    iget-object p0, p0, Lme/jingbin/library/ByRecyclerView;->onItemClickListener:Lme/jingbin/library/ByRecyclerView$OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$1600(Lme/jingbin/library/ByRecyclerView;)Lme/jingbin/library/ByRecyclerView$OnItemLongClickListener;
    .locals 0

    .line 34
    iget-object p0, p0, Lme/jingbin/library/ByRecyclerView;->onItemLongClickListener:Lme/jingbin/library/ByRecyclerView$OnItemLongClickListener;

    return-object p0
.end method

.method static synthetic access$1702(Lme/jingbin/library/ByRecyclerView;Lme/jingbin/library/AppBarStateChangeListener$State;)Lme/jingbin/library/AppBarStateChangeListener$State;
    .locals 0

    .line 34
    iput-object p1, p0, Lme/jingbin/library/ByRecyclerView;->appbarState:Lme/jingbin/library/AppBarStateChangeListener$State;

    return-object p1
.end method

.method static synthetic access$200(Lme/jingbin/library/ByRecyclerView;)Lme/jingbin/library/BaseLoadMore;
    .locals 0

    .line 34
    iget-object p0, p0, Lme/jingbin/library/ByRecyclerView;->mLoadMore:Lme/jingbin/library/BaseLoadMore;

    return-object p0
.end method

.method static synthetic access$300(Lme/jingbin/library/ByRecyclerView;)J
    .locals 2

    .line 34
    iget-wide v0, p0, Lme/jingbin/library/ByRecyclerView;->mLoadMoreDelayMillis:J

    return-wide v0
.end method

.method static synthetic access$400(Lme/jingbin/library/ByRecyclerView;)Lme/jingbin/library/ByRecyclerView$OnLoadMoreListener;
    .locals 0

    .line 34
    iget-object p0, p0, Lme/jingbin/library/ByRecyclerView;->mLoadMoreListener:Lme/jingbin/library/ByRecyclerView$OnLoadMoreListener;

    return-object p0
.end method

.method static synthetic access$500(Lme/jingbin/library/ByRecyclerView;)Lme/jingbin/library/ByRecyclerView$OnRefreshListener;
    .locals 0

    .line 34
    iget-object p0, p0, Lme/jingbin/library/ByRecyclerView;->mRefreshListener:Lme/jingbin/library/ByRecyclerView$OnRefreshListener;

    return-object p0
.end method

.method static synthetic access$600(Lme/jingbin/library/ByRecyclerView;)Lme/jingbin/library/ByRecyclerView$WrapAdapter;
    .locals 0

    .line 34
    iget-object p0, p0, Lme/jingbin/library/ByRecyclerView;->mWrapAdapter:Lme/jingbin/library/ByRecyclerView$WrapAdapter;

    return-object p0
.end method

.method static synthetic access$700(Lme/jingbin/library/ByRecyclerView;)Lme/jingbin/library/BaseRefreshHeader;
    .locals 0

    .line 34
    iget-object p0, p0, Lme/jingbin/library/ByRecyclerView;->mRefreshHeader:Lme/jingbin/library/BaseRefreshHeader;

    return-object p0
.end method

.method static synthetic access$800(Lme/jingbin/library/ByRecyclerView;I)Z
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lme/jingbin/library/ByRecyclerView;->isHeaderType(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lme/jingbin/library/ByRecyclerView;I)Landroid/view/View;
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lme/jingbin/library/ByRecyclerView;->getHeaderViewByType(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private bindViewClickListener(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 751
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 752
    iget-object v1, p0, Lme/jingbin/library/ByRecyclerView;->onItemClickListener:Lme/jingbin/library/ByRecyclerView$OnItemClickListener;

    if-eqz v1, :cond_1

    .line 753
    new-instance v1, Lme/jingbin/library/ByRecyclerView$6;

    invoke-direct {v1, p0, p1}, Lme/jingbin/library/ByRecyclerView$6;-><init>(Lme/jingbin/library/ByRecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 760
    :cond_1
    iget-object v1, p0, Lme/jingbin/library/ByRecyclerView;->onItemLongClickListener:Lme/jingbin/library/ByRecyclerView$OnItemLongClickListener;

    if-eqz v1, :cond_2

    .line 761
    new-instance v1, Lme/jingbin/library/ByRecyclerView$7;

    invoke-direct {v1, p0, p1}, Lme/jingbin/library/ByRecyclerView$7;-><init>(Lme/jingbin/library/ByRecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_2
    return-void
.end method

.method private findMax([I)I
    .locals 4

    const/4 v0, 0x0

    .line 421
    aget v1, p1, v0

    .line 422
    array-length v2, p1

    :goto_0
    if-ge v0, v2, :cond_1

    aget v3, p1, v0

    if-le v3, v1, :cond_0

    move v1, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private getHeaderViewByType(I)Landroid/view/View;
    .locals 1

    .line 130
    invoke-direct {p0, p1}, Lme/jingbin/library/ByRecyclerView;->isHeaderType(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 133
    :cond_0
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView;->mHeaderViews:Ljava/util/ArrayList;

    add-int/lit16 p1, p1, -0x2714

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method private getLayoutView(I)Landroid/view/View;
    .locals 3

    .line 940
    invoke-virtual {p0}, Lme/jingbin/library/ByRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lme/jingbin/library/ByRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private init()V
    .locals 2

    .line 99
    new-instance v0, Lme/jingbin/library/SimpleLoadMoreView;

    invoke-virtual {p0}, Lme/jingbin/library/ByRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lme/jingbin/library/SimpleLoadMoreView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lme/jingbin/library/ByRecyclerView;->mLoadMore:Lme/jingbin/library/BaseLoadMore;

    const/4 v1, 0x1

    .line 100
    invoke-interface {v0, v1}, Lme/jingbin/library/BaseLoadMore;->setState(I)V

    return-void
.end method

.method private isFullScreen()Z
    .locals 5

    .line 1020
    invoke-virtual {p0}, Lme/jingbin/library/ByRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1024
    :cond_0
    instance-of v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 1025
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 1027
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v2

    add-int/2addr v2, v3

    iget-object v4, p0, Lme/jingbin/library/ByRecyclerView;->mWrapAdapter:Lme/jingbin/library/ByRecyclerView$WrapAdapter;

    invoke-virtual {v4}, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->getItemCount()I

    move-result v4

    if-ne v2, v4, :cond_1

    .line 1028
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1

    .line 1030
    :cond_3
    instance-of v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v2, :cond_5

    .line 1031
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 1033
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v2

    new-array v2, v2, [I

    .line 1034
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastCompletelyVisibleItemPositions([I)[I

    .line 1036
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v4

    new-array v4, v4, [I

    .line 1037
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstCompletelyVisibleItemPositions([I)[I

    .line 1039
    invoke-direct {p0, v2}, Lme/jingbin/library/ByRecyclerView;->findMax([I)I

    move-result v0

    add-int/2addr v0, v3

    iget-object v2, p0, Lme/jingbin/library/ByRecyclerView;->mWrapAdapter:Lme/jingbin/library/ByRecyclerView$WrapAdapter;

    invoke-virtual {v2}, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->getItemCount()I

    move-result v2

    if-ne v0, v2, :cond_4

    aget v0, v4, v1

    if-eqz v0, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method private isHeaderType(I)Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Lme/jingbin/library/ByRecyclerView;->mHeaderViewEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lme/jingbin/library/ByRecyclerView;->getHeaderViewCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView;->mHeaderTypes:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isNoFullScreenLoad()Z
    .locals 1

    .line 1009
    iget-boolean v0, p0, Lme/jingbin/library/ByRecyclerView;->misNoLoadMoreIfNotFullScreen:Z

    if-eqz v0, :cond_0

    .line 1010
    invoke-direct {p0}, Lme/jingbin/library/ByRecyclerView;->isFullScreen()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private isOnTop()Z
    .locals 2

    .line 431
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView;->mRefreshHeader:Lme/jingbin/library/BaseRefreshHeader;

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/View;

    .line 433
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isReservedItemViewType(I)Z
    .locals 1

    const/16 v0, 0x2710

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2711

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2712

    if-eq p1, v0, :cond_1

    .line 147
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView;->mHeaderTypes:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isScrollLoad()Z
    .locals 1

    .line 995
    invoke-direct {p0}, Lme/jingbin/library/ByRecyclerView;->isFullScreen()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lme/jingbin/library/ByRecyclerView;->mIsScrollUp:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public addFooterView(I)I
    .locals 2

    .line 944
    invoke-direct {p0, p1}, Lme/jingbin/library/ByRecyclerView;->getLayoutView(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lme/jingbin/library/ByRecyclerView;->addFooterView(Landroid/view/View;II)I

    move-result p1

    return p1
.end method

.method public addFooterView(Landroid/view/View;)I
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 948
    invoke-virtual {p0, p1, v0, v1}, Lme/jingbin/library/ByRecyclerView;->addFooterView(Landroid/view/View;II)I

    move-result p1

    return p1
.end method

.method public addFooterView(Landroid/view/View;I)I
    .locals 1

    const/4 v0, 0x1

    .line 952
    invoke-virtual {p0, p1, p2, v0}, Lme/jingbin/library/ByRecyclerView;->addFooterView(Landroid/view/View;II)I

    move-result p1

    return p1
.end method

.method public addFooterView(Landroid/view/View;II)I
    .locals 4

    .line 956
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView;->mFooterLayout:Landroid/widget/LinearLayout;

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 957
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lme/jingbin/library/ByRecyclerView;->mFooterLayout:Landroid/widget/LinearLayout;

    const/4 v3, -0x2

    if-ne p3, v2, :cond_0

    .line 959
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 960
    iget-object p3, p0, Lme/jingbin/library/ByRecyclerView;->mFooterLayout:Landroid/widget/LinearLayout;

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, v1, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 962
    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 963
    iget-object p3, p0, Lme/jingbin/library/ByRecyclerView;->mFooterLayout:Landroid/widget/LinearLayout;

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, v3, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 966
    :cond_1
    :goto_0
    iget-object p3, p0, Lme/jingbin/library/ByRecyclerView;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p3

    if-ltz p2, :cond_2

    if-le p2, p3, :cond_3

    :cond_2
    move p2, p3

    .line 970
    :cond_3
    iget-object p3, p0, Lme/jingbin/library/ByRecyclerView;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 971
    iput-boolean v2, p0, Lme/jingbin/library/ByRecyclerView;->mFootViewEnabled:Z

    .line 972
    iget-object p1, p0, Lme/jingbin/library/ByRecyclerView;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-ne p1, v2, :cond_4

    .line 973
    iget-object p1, p0, Lme/jingbin/library/ByRecyclerView;->mWrapAdapter:Lme/jingbin/library/ByRecyclerView$WrapAdapter;

    if-eqz p1, :cond_4

    .line 974
    invoke-virtual {p1}, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->getOriginalAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    invoke-virtual {p0}, Lme/jingbin/library/ByRecyclerView;->getCustomTopItemViewCount()I

    move-result p3

    add-int/2addr p1, p3

    if-eq p1, v1, :cond_4

    .line 976
    iget-object p3, p0, Lme/jingbin/library/ByRecyclerView;->mWrapAdapter:Lme/jingbin/library/ByRecyclerView$WrapAdapter;

    invoke-virtual {p3}, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->getOriginalAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    :cond_4
    return p2
.end method

.method public addHeaderView(I)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lme/jingbin/library/ByRecyclerView;->getLayoutView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lme/jingbin/library/ByRecyclerView;->addHeaderView(Landroid/view/View;)V

    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 3

    .line 118
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView;->mHeaderTypes:Ljava/util/List;

    iget-object v1, p0, Lme/jingbin/library/ByRecyclerView;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit16 v1, v1, 0x2714

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 120
    iput-boolean p1, p0, Lme/jingbin/library/ByRecyclerView;->mHeaderViewEnabled:Z

    .line 121
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView;->mWrapAdapter:Lme/jingbin/library/ByRecyclerView$WrapAdapter;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->getOriginalAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {p0}, Lme/jingbin/library/ByRecyclerView;->getPullHeaderSize()I

    move-result v1

    invoke-virtual {p0}, Lme/jingbin/library/ByRecyclerView;->getHeaderViewCount()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 1230
    iput-boolean v0, p0, Lme/jingbin/library/ByRecyclerView;->mHeaderViewEnabled:Z

    .line 1231
    iput-boolean v0, p0, Lme/jingbin/library/ByRecyclerView;->mFootViewEnabled:Z

    .line 1232
    iput-boolean v0, p0, Lme/jingbin/library/ByRecyclerView;->mStateViewEnabled:Z

    .line 1233
    iput-boolean v0, p0, Lme/jingbin/library/ByRecyclerView;->mRefreshEnabled:Z

    .line 1234
    iput-boolean v0, p0, Lme/jingbin/library/ByRecyclerView;->mLoadMoreEnabled:Z

    .line 1235
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView;->mHeaderViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1236
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1238
    :cond_0
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView;->mHeaderTypes:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1239
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1241
    :cond_1
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView;->mFooterLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 1242
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1244
    :cond_2
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView;->mStateLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    .line 1245
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_3
    return-void
.end method

.method public getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1

    .line 291
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView;->mWrapAdapter:Lme/jingbin/library/ByRecyclerView$WrapAdapter;

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {v0}, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->getOriginalAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCustomTopItemViewCount()I
    .locals 2

    .line 775
    invoke-virtual {p0}, Lme/jingbin/library/ByRecyclerView;->getHeaderViewCount()I

    move-result v0

    invoke-virtual {p0}, Lme/jingbin/library/ByRecyclerView;->getPullHeaderSize()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lme/jingbin/library/ByRecyclerView;->getStateViewSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getFooterViewSize()I
    .locals 1

    .line 727
    iget-boolean v0, p0, Lme/jingbin/library/ByRecyclerView;->mFootViewEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView;->mFooterLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getHeaderViewCount()I
    .locals 1

    .line 741
    iget-boolean v0, p0, Lme/jingbin/library/ByRecyclerView;->mHeaderViewEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getLoadMoreSize()I
    .locals 1

    .line 867
    iget-boolean v0, p0, Lme/jingbin/library/ByRecyclerView;->mLoadMoreEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getOnItemChildClickListener()Lme/jingbin/library/ByRecyclerView$OnItemChildClickListener;
    .locals 1

    .line 1176
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView;->mOnItemChildClickListener:Lme/jingbin/library/ByRecyclerView$OnItemChildClickListener;

    return-object v0
.end method

.method public final getOnItemChildLongClickListener()Lme/jingbin/library/ByRecyclerView$OnItemChildLongClickListener;
    .locals 1

    .line 1187
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView;->mOnItemChildLongClickListener:Lme/jingbin/library/ByRecyclerView$OnItemChildLongClickListener;

    return-object v0
.end method

.method public getPullHeaderSize()I
    .locals 1

    .line 856
    iget-boolean v0, p0, Lme/jingbin/library/ByRecyclerView;->mRefreshEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getStateViewSize()I
    .locals 1

    .line 734
    iget-boolean v0, p0, Lme/jingbin/library/ByRecyclerView;->mStateViewEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView;->mStateLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFootView(I)Z
    .locals 4

    .line 694
    iget-boolean v0, p0, Lme/jingbin/library/ByRecyclerView;->mFootViewEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView;->mFooterLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView;->mWrapAdapter:Lme/jingbin/library/ByRecyclerView$WrapAdapter;

    invoke-virtual {v0}, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->getItemCount()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lme/jingbin/library/ByRecyclerView;->getLoadMoreSize()I

    move-result v3

    sub-int/2addr v0, v3

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isFootViewEnabled()Z
    .locals 1

    .line 1219
    iget-boolean v0, p0, Lme/jingbin/library/ByRecyclerView;->mFootViewEnabled:Z

    return v0
.end method

.method public isHeaderView(I)Z
    .locals 2

    .line 687
    iget-boolean v0, p0, Lme/jingbin/library/ByRecyclerView;->mHeaderViewEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lme/jingbin/library/ByRecyclerView;->getPullHeaderSize()I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lme/jingbin/library/ByRecyclerView;->getHeaderViewCount()I

    move-result v0

    invoke-virtual {p0}, Lme/jingbin/library/ByRecyclerView;->getPullHeaderSize()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isHeaderViewEnabled()Z
    .locals 1

    .line 1215
    iget-boolean v0, p0, Lme/jingbin/library/ByRecyclerView;->mHeaderViewEnabled:Z

    return v0
.end method

.method public isLoadMoreEnabled()Z
    .locals 1

    .line 1211
    iget-boolean v0, p0, Lme/jingbin/library/ByRecyclerView;->mLoadMoreEnabled:Z

    return v0
.end method

.method public isLoadMoreView(I)Z
    .locals 3

    .line 716
    iget-boolean v0, p0, Lme/jingbin/library/ByRecyclerView;->mLoadMoreEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView;->mWrapAdapter:Lme/jingbin/library/ByRecyclerView$WrapAdapter;

    invoke-virtual {v0}, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->getItemCount()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isLoadingMore()Z
    .locals 1

    .line 1138
    iget-boolean v0, p0, Lme/jingbin/library/ByRecyclerView;->mIsLoadingData:Z

    return v0
.end method

.method public isRefreshEnabled()Z
    .locals 1

    .line 1207
    iget-boolean v0, p0, Lme/jingbin/library/ByRecyclerView;->mRefreshEnabled:Z

    return v0
.end method

.method public isRefreshHeader(I)Z
    .locals 2

    .line 705
    iget-boolean v0, p0, Lme/jingbin/library/ByRecyclerView;->mRefreshEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isRefreshing()Z
    .locals 2

    .line 1145
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView;->mRefreshHeader:Lme/jingbin/library/BaseRefreshHeader;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lme/jingbin/library/BaseRefreshHeader;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStateView(I)Z
    .locals 2

    .line 680
    iget-boolean v0, p0, Lme/jingbin/library/ByRecyclerView;->mStateViewEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView;->mStateLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lme/jingbin/library/ByRecyclerView;->getHeaderViewCount()I

    move-result v0

    invoke-virtual {p0}, Lme/jingbin/library/ByRecyclerView;->getPullHeaderSize()I

    move-result v1

    add-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isStateViewEnabled()Z
    .locals 1

    .line 1223
    iget-boolean v0, p0, Lme/jingbin/library/ByRecyclerView;->mStateViewEnabled:Z

    return v0
.end method

.method public loadMoreComplete()V
    .locals 2

    .line 169
    invoke-virtual {p0}, Lme/jingbin/library/ByRecyclerView;->getLoadMoreSize()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 172
    iput-boolean v0, p0, Lme/jingbin/library/ByRecyclerView;->mIsNoMore:Z

    .line 173
    iput-boolean v0, p0, Lme/jingbin/library/ByRecyclerView;->mIsLoadingData:Z

    .line 174
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView;->mLoadMore:Lme/jingbin/library/BaseLoadMore;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lme/jingbin/library/BaseLoadMore;->setState(I)V

    return-void
.end method

.method public loadMoreEnd()V
    .locals 2

    const/4 v0, 0x0

    .line 181
    iput-boolean v0, p0, Lme/jingbin/library/ByRecyclerView;->mIsLoadingData:Z

    const/4 v0, 0x1

    .line 182
    iput-boolean v0, p0, Lme/jingbin/library/ByRecyclerView;->mIsNoMore:Z

    .line 183
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView;->mLoadMore:Lme/jingbin/library/BaseLoadMore;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lme/jingbin/library/BaseLoadMore;->setState(I)V

    return-void
.end method

.method public loadMoreFail()V
    .locals 2

    .line 190
    invoke-virtual {p0}, Lme/jingbin/library/ByRecyclerView;->getLoadMoreSize()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView;->mLoadMore:Lme/jingbin/library/BaseLoadMore;

    invoke-interface {v0}, Lme/jingbin/library/BaseLoadMore;->getFailureView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView;->mLoadMoreListener:Lme/jingbin/library/ByRecyclerView$OnLoadMoreListener;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 193
    iput-boolean v0, p0, Lme/jingbin/library/ByRecyclerView;->mIsLoadingData:Z

    .line 194
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView;->mLoadMore:Lme/jingbin/library/BaseLoadMore;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lme/jingbin/library/BaseLoadMore;->setState(I)V

    .line 195
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView;->mLoadMore:Lme/jingbin/library/BaseLoadMore;

    invoke-interface {v0}, Lme/jingbin/library/BaseLoadMore;->getFailureView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lme/jingbin/library/ByRecyclerView$1;

    invoke-direct {v1, p0}, Lme/jingbin/library/ByRecyclerView$1;-><init>(Lme/jingbin/library/ByRecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 820
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onAttachedToWindow()V

    .line 823
    invoke-virtual {p0}, Lme/jingbin/library/ByRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 825
    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v1, :cond_0

    goto :goto_1

    .line 828
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_4

    .line 831
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 832
    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2
    if-ltz v1, :cond_3

    .line 834
    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 835
    instance-of v3, v2, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v3, :cond_2

    .line 836
    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout;

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_4

    .line 841
    new-instance v0, Lme/jingbin/library/ByRecyclerView$8;

    invoke-direct {v0, p0}, Lme/jingbin/library/ByRecyclerView$8;-><init>(Lme/jingbin/library/ByRecyclerView;)V

    invoke-virtual {v2, v0}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    :cond_4
    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 4

    .line 322
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onScrollStateChanged(I)V

    if-nez p1, :cond_5

    .line 323
    iget-object p1, p0, Lme/jingbin/library/ByRecyclerView;->mLoadMoreListener:Lme/jingbin/library/ByRecyclerView$OnLoadMoreListener;

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lme/jingbin/library/ByRecyclerView;->mIsLoadingData:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lme/jingbin/library/ByRecyclerView;->mLoadMoreEnabled:Z

    if-eqz p1, :cond_5

    .line 324
    invoke-virtual {p0}, Lme/jingbin/library/ByRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    .line 329
    instance-of v1, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v1, :cond_1

    .line 330
    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    goto :goto_0

    .line 332
    :cond_1
    instance-of v1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_2

    .line 333
    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v1

    new-array v1, v1, [I

    .line 334
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastCompletelyVisibleItemPositions([I)[I

    .line 335
    invoke-direct {p0, v1}, Lme/jingbin/library/ByRecyclerView;->findMax([I)I

    move-result v0

    .line 338
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p1

    if-lez p1, :cond_5

    iget-boolean p1, p0, Lme/jingbin/library/ByRecyclerView;->mIsNoMore:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lme/jingbin/library/ByRecyclerView;->mWrapAdapter:Lme/jingbin/library/ByRecyclerView$WrapAdapter;

    .line 340
    invoke-virtual {p1}, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->getItemCount()I

    move-result p1

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    if-ne v0, p1, :cond_5

    .line 341
    invoke-direct {p0}, Lme/jingbin/library/ByRecyclerView;->isNoFullScreenLoad()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 342
    invoke-direct {p0}, Lme/jingbin/library/ByRecyclerView;->isScrollLoad()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lme/jingbin/library/ByRecyclerView;->mRefreshEnabled:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lme/jingbin/library/ByRecyclerView;->mRefreshHeader:Lme/jingbin/library/BaseRefreshHeader;

    .line 343
    invoke-interface {p1}, Lme/jingbin/library/BaseRefreshHeader;->getState()I

    move-result p1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_5

    :cond_3
    const/4 p1, 0x0

    .line 344
    iput-boolean p1, p0, Lme/jingbin/library/ByRecyclerView;->mIsScrollUp:Z

    .line 345
    iput-boolean v1, p0, Lme/jingbin/library/ByRecyclerView;->mIsLoadingData:Z

    .line 346
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView;->mLoadMore:Lme/jingbin/library/BaseLoadMore;

    invoke-interface {v0, p1}, Lme/jingbin/library/BaseLoadMore;->setState(I)V

    .line 347
    iget-wide v0, p0, Lme/jingbin/library/ByRecyclerView;->mLoadMoreDelayMillis:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_4

    .line 348
    iget-object p1, p0, Lme/jingbin/library/ByRecyclerView;->mLoadMoreListener:Lme/jingbin/library/ByRecyclerView$OnLoadMoreListener;

    invoke-interface {p1}, Lme/jingbin/library/ByRecyclerView$OnLoadMoreListener;->onLoadMore()V

    goto :goto_1

    .line 350
    :cond_4
    new-instance p1, Lme/jingbin/library/ByRecyclerView$4;

    invoke-direct {p1, p0}, Lme/jingbin/library/ByRecyclerView$4;-><init>(Lme/jingbin/library/ByRecyclerView;)V

    iget-wide v0, p0, Lme/jingbin/library/ByRecyclerView;->mLoadMoreDelayMillis:J

    invoke-virtual {p0, p1, v0, v1}, Lme/jingbin/library/ByRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    :goto_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 363
    iget v0, p0, Lme/jingbin/library/ByRecyclerView;->mLastY:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 364
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lme/jingbin/library/ByRecyclerView;->mLastY:F

    .line 366
    :cond_0
    iget v0, p0, Lme/jingbin/library/ByRecyclerView;->mPullStartY:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    .line 367
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lme/jingbin/library/ByRecyclerView;->mPullStartY:F

    .line 368
    iput v0, p0, Lme/jingbin/library/ByRecyclerView;->mPullMaxY:F

    .line 370
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v3, :cond_3

    .line 397
    iget-boolean v0, p0, Lme/jingbin/library/ByRecyclerView;->mLoadMoreEnabled:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lme/jingbin/library/ByRecyclerView;->mPullStartY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v0, v3

    const/high16 v3, -0x3ee00000    # -10.0f

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Lme/jingbin/library/ByRecyclerView;->mPullMaxY:F

    sub-float/2addr v0, v3

    const/high16 v3, 0x43160000    # 150.0f

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_2

    const/4 v4, 0x1

    :cond_2
    iput-boolean v4, p0, Lme/jingbin/library/ByRecyclerView;->mIsScrollUp:Z

    .line 399
    iput v2, p0, Lme/jingbin/library/ByRecyclerView;->mPullStartY:F

    .line 400
    iput v1, p0, Lme/jingbin/library/ByRecyclerView;->mLastY:F

    .line 401
    iget-boolean v0, p0, Lme/jingbin/library/ByRecyclerView;->mRefreshEnabled:Z

    if-eqz v0, :cond_6

    .line 402
    invoke-direct {p0}, Lme/jingbin/library/ByRecyclerView;->isOnTop()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView;->appbarState:Lme/jingbin/library/AppBarStateChangeListener$State;

    sget-object v1, Lme/jingbin/library/AppBarStateChangeListener$State;->EXPANDED:Lme/jingbin/library/AppBarStateChangeListener$State;

    if-ne v0, v1, :cond_6

    .line 404
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView;->mRefreshHeader:Lme/jingbin/library/BaseRefreshHeader;

    invoke-interface {v0}, Lme/jingbin/library/BaseRefreshHeader;->releaseAction()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 405
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView;->mRefreshListener:Lme/jingbin/library/ByRecyclerView$OnRefreshListener;

    if-eqz v0, :cond_6

    .line 406
    new-instance v0, Lme/jingbin/library/ByRecyclerView$5;

    invoke-direct {v0, p0}, Lme/jingbin/library/ByRecyclerView$5;-><init>(Lme/jingbin/library/ByRecyclerView;)V

    const-wide/16 v1, 0x12c

    iget-wide v3, p0, Lme/jingbin/library/ByRecyclerView;->mRefreshDelayMillis:J

    add-long/2addr v3, v1

    invoke-virtual {p0, v0, v3, v4}, Lme/jingbin/library/ByRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 376
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lme/jingbin/library/ByRecyclerView;->mPullMaxY:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 377
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lme/jingbin/library/ByRecyclerView;->mPullMaxY:F

    .line 379
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Lme/jingbin/library/ByRecyclerView;->mLastY:F

    sub-float/2addr v0, v1

    .line 380
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lme/jingbin/library/ByRecyclerView;->mLastY:F

    .line 381
    iget-boolean v1, p0, Lme/jingbin/library/ByRecyclerView;->mRefreshEnabled:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lme/jingbin/library/ByRecyclerView;->mRefreshListener:Lme/jingbin/library/ByRecyclerView$OnRefreshListener;

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lme/jingbin/library/ByRecyclerView;->isOnTop()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lme/jingbin/library/ByRecyclerView;->appbarState:Lme/jingbin/library/AppBarStateChangeListener$State;

    sget-object v2, Lme/jingbin/library/AppBarStateChangeListener$State;->EXPANDED:Lme/jingbin/library/AppBarStateChangeListener$State;

    if-ne v1, v2, :cond_6

    .line 382
    iget-object v1, p0, Lme/jingbin/library/ByRecyclerView;->mRefreshHeader:Lme/jingbin/library/BaseRefreshHeader;

    iget v2, p0, Lme/jingbin/library/ByRecyclerView;->mDragRate:F

    div-float/2addr v0, v2

    invoke-interface {v1, v0}, Lme/jingbin/library/BaseRefreshHeader;->onMove(F)V

    .line 383
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView;->mRefreshHeader:Lme/jingbin/library/BaseRefreshHeader;

    invoke-interface {v0}, Lme/jingbin/library/BaseRefreshHeader;->getVisibleHeight()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView;->mRefreshHeader:Lme/jingbin/library/BaseRefreshHeader;

    invoke-interface {v0}, Lme/jingbin/library/BaseRefreshHeader;->getState()I

    move-result v0

    if-ge v0, v3, :cond_6

    .line 384
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 385
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v4

    .line 373
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lme/jingbin/library/ByRecyclerView;->mLastY:F

    .line 417
    :cond_6
    :goto_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public removeAllFooterView()V
    .locals 2

    .line 1108
    iget-boolean v0, p0, Lme/jingbin/library/ByRecyclerView;->mFootViewEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView;->mFooterLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1109
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1110
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView;->mWrapAdapter:Lme/jingbin/library/ByRecyclerView$WrapAdapter;

    if-eqz v0, :cond_0

    .line 1111
    invoke-virtual {v0}, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->getOriginalAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    invoke-virtual {p0}, Lme/jingbin/library/ByRecyclerView;->getCustomTopItemViewCount()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1113
    iget-object v1, p0, Lme/jingbin/library/ByRecyclerView;->mWrapAdapter:Lme/jingbin/library/ByRecyclerView$WrapAdapter;

    invoke-virtual {v1}, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->getOriginalAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    :cond_0
    return-void
.end method

.method public removeAllHeaderView()V
    .locals 3

    .line 1074
    invoke-virtual {p0}, Lme/jingbin/library/ByRecyclerView;->getHeaderViewCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1077
    iput-boolean v0, p0, Lme/jingbin/library/ByRecyclerView;->mHeaderViewEnabled:Z

    .line 1078
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView;->mWrapAdapter:Lme/jingbin/library/ByRecyclerView$WrapAdapter;

    if-eqz v0, :cond_1

    .line 1079
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1080
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView;->mHeaderTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1081
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView;->mWrapAdapter:Lme/jingbin/library/ByRecyclerView$WrapAdapter;

    invoke-virtual {v0}, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->getOriginalAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {p0}, Lme/jingbin/library/ByRecyclerView;->getPullHeaderSize()I

    move-result v1

    invoke-virtual {p0}, Lme/jingbin/library/ByRecyclerView;->getHeaderViewCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    :cond_1
    return-void
.end method

.method public removeFooterView(Landroid/view/View;)V
    .locals 1

    .line 1093
    iget-boolean v0, p0, Lme/jingbin/library/ByRecyclerView;->mFootViewEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView;->mFooterLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1094
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1095
    iget-object p1, p0, Lme/jingbin/library/ByRecyclerView;->mWrapAdapter:Lme/jingbin/library/ByRecyclerView$WrapAdapter;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lme/jingbin/library/ByRecyclerView;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 1096
    iget-object p1, p0, Lme/jingbin/library/ByRecyclerView;->mWrapAdapter:Lme/jingbin/library/ByRecyclerView$WrapAdapter;

    invoke-virtual {p1}, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->getOriginalAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    invoke-virtual {p0}, Lme/jingbin/library/ByRecyclerView;->getCustomTopItemViewCount()I

    move-result v0

    add-int/2addr p1, v0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1098
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView;->mWrapAdapter:Lme/jingbin/library/ByRecyclerView$WrapAdapter;

    invoke-virtual {v0}, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->getOriginalAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    :cond_0
    return-void
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .locals 3

    .line 1051
    invoke-virtual {p0}, Lme/jingbin/library/ByRecyclerView;->getHeaderViewCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1054
    :cond_0
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView;->mWrapAdapter:Lme/jingbin/library/ByRecyclerView$WrapAdapter;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 1056
    :goto_0
    iget-object v1, p0, Lme/jingbin/library/ByRecyclerView;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_2

    .line 1057
    iget-object v1, p0, Lme/jingbin/library/ByRecyclerView;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 1058
    iget-object p1, p0, Lme/jingbin/library/ByRecyclerView;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    :goto_1
    if-eq v0, v2, :cond_3

    .line 1064
    iget-object p1, p0, Lme/jingbin/library/ByRecyclerView;->mHeaderTypes:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1065
    iget-object p1, p0, Lme/jingbin/library/ByRecyclerView;->mWrapAdapter:Lme/jingbin/library/ByRecyclerView$WrapAdapter;

    invoke-virtual {p1}, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->getOriginalAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p0}, Lme/jingbin/library/ByRecyclerView;->getPullHeaderSize()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    :cond_3
    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1

    .line 276
    instance-of v0, p1, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;

    if-eqz v0, :cond_0

    .line 277
    move-object v0, p1

    check-cast v0, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;

    invoke-virtual {v0, p0}, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;->setRecyclerView(Lme/jingbin/library/ByRecyclerView;)V

    .line 279
    :cond_0
    new-instance v0, Lme/jingbin/library/ByRecyclerView$WrapAdapter;

    invoke-direct {v0, p0, p1}, Lme/jingbin/library/ByRecyclerView$WrapAdapter;-><init>(Lme/jingbin/library/ByRecyclerView;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iput-object v0, p0, Lme/jingbin/library/ByRecyclerView;->mWrapAdapter:Lme/jingbin/library/ByRecyclerView$WrapAdapter;

    .line 280
    invoke-super {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 281
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView;->mDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 282
    iget-object p1, p0, Lme/jingbin/library/ByRecyclerView;->mDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    const/4 p1, 0x0

    .line 283
    invoke-virtual {p0, p1}, Lme/jingbin/library/ByRecyclerView;->setRefreshing(Z)V

    return-void
.end method

.method public setDragRate(F)V
    .locals 5

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    .line 1131
    :cond_0
    iput p1, p0, Lme/jingbin/library/ByRecyclerView;->mDragRate:F

    return-void
.end method

.method public setEmptyView(I)V
    .locals 0

    .line 875
    invoke-virtual {p0, p1}, Lme/jingbin/library/ByRecyclerView;->setStateView(I)V

    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 0

    .line 879
    invoke-virtual {p0, p1}, Lme/jingbin/library/ByRecyclerView;->setStateView(Landroid/view/View;)V

    return-void
.end method

.method public setEmptyViewEnabled(Z)V
    .locals 0

    .line 886
    invoke-virtual {p0, p1}, Lme/jingbin/library/ByRecyclerView;->setStateViewEnabled(Z)V

    return-void
.end method

.method public setFootViewEnabled(Z)V
    .locals 0

    .line 988
    iput-boolean p1, p0, Lme/jingbin/library/ByRecyclerView;->mFootViewEnabled:Z

    return-void
.end method

.method public setHeaderViewEnabled(Z)V
    .locals 0

    .line 984
    iput-boolean p1, p0, Lme/jingbin/library/ByRecyclerView;->mHeaderViewEnabled:Z

    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 1

    .line 300
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 301
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView;->mWrapAdapter:Lme/jingbin/library/ByRecyclerView$WrapAdapter;

    if-eqz v0, :cond_0

    .line 302
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 303
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 304
    new-instance v0, Lme/jingbin/library/ByRecyclerView$3;

    invoke-direct {v0, p0, p1}, Lme/jingbin/library/ByRecyclerView$3;-><init>(Lme/jingbin/library/ByRecyclerView;Landroidx/recyclerview/widget/GridLayoutManager;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    :cond_0
    return-void
.end method

.method public setLoadMoreEnabled(Z)V
    .locals 1

    .line 259
    iput-boolean p1, p0, Lme/jingbin/library/ByRecyclerView;->mLoadMoreEnabled:Z

    if-nez p1, :cond_0

    .line 261
    iget-object p1, p0, Lme/jingbin/library/ByRecyclerView;->mLoadMore:Lme/jingbin/library/BaseLoadMore;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lme/jingbin/library/BaseLoadMore;->setState(I)V

    :cond_0
    return-void
.end method

.method public setLoadingMoreBottomHeight(F)V
    .locals 1

    .line 271
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView;->mLoadMore:Lme/jingbin/library/BaseLoadMore;

    invoke-interface {v0, p1}, Lme/jingbin/library/BaseLoadMore;->setLoadingMoreBottomHeight(F)V

    return-void
.end method

.method public setLoadingMoreView(Lme/jingbin/library/BaseLoadMore;)V
    .locals 1

    .line 154
    iput-object p1, p0, Lme/jingbin/library/ByRecyclerView;->mLoadMore:Lme/jingbin/library/BaseLoadMore;

    const/4 v0, 0x1

    .line 155
    invoke-interface {p1, v0}, Lme/jingbin/library/BaseLoadMore;->setState(I)V

    return-void
.end method

.method public setNotFullScreenNoLoadMore()V
    .locals 1

    const/4 v0, 0x1

    .line 1002
    iput-boolean v0, p0, Lme/jingbin/library/ByRecyclerView;->misNoLoadMoreIfNotFullScreen:Z

    return-void
.end method

.method public setOnItemChildClickListener(Lme/jingbin/library/ByRecyclerView$OnItemChildClickListener;)V
    .locals 0

    .line 1199
    iput-object p1, p0, Lme/jingbin/library/ByRecyclerView;->mOnItemChildClickListener:Lme/jingbin/library/ByRecyclerView$OnItemChildClickListener;

    return-void
.end method

.method public setOnItemChildLongClickListener(Lme/jingbin/library/ByRecyclerView$OnItemChildLongClickListener;)V
    .locals 0

    .line 1203
    iput-object p1, p0, Lme/jingbin/library/ByRecyclerView;->mOnItemChildLongClickListener:Lme/jingbin/library/ByRecyclerView$OnItemChildLongClickListener;

    return-void
.end method

.method public setOnItemClickListener(Lme/jingbin/library/ByRecyclerView$OnItemClickListener;)V
    .locals 0

    .line 1191
    iput-object p1, p0, Lme/jingbin/library/ByRecyclerView;->onItemClickListener:Lme/jingbin/library/ByRecyclerView$OnItemClickListener;

    return-void
.end method

.method public setOnItemLongClickListener(Lme/jingbin/library/ByRecyclerView$OnItemLongClickListener;)V
    .locals 0

    .line 1195
    iput-object p1, p0, Lme/jingbin/library/ByRecyclerView;->onItemLongClickListener:Lme/jingbin/library/ByRecyclerView$OnItemLongClickListener;

    return-void
.end method

.method public setOnLoadMoreListener(Lme/jingbin/library/ByRecyclerView$OnLoadMoreListener;)V
    .locals 1

    const/4 v0, 0x1

    .line 798
    invoke-virtual {p0, v0}, Lme/jingbin/library/ByRecyclerView;->setLoadMoreEnabled(Z)V

    .line 799
    iput-object p1, p0, Lme/jingbin/library/ByRecyclerView;->mLoadMoreListener:Lme/jingbin/library/ByRecyclerView$OnLoadMoreListener;

    return-void
.end method

.method public setOnLoadMoreListener(Lme/jingbin/library/ByRecyclerView$OnLoadMoreListener;J)V
    .locals 1

    const/4 v0, 0x1

    .line 792
    invoke-virtual {p0, v0}, Lme/jingbin/library/ByRecyclerView;->setLoadMoreEnabled(Z)V

    .line 793
    iput-object p1, p0, Lme/jingbin/library/ByRecyclerView;->mLoadMoreListener:Lme/jingbin/library/ByRecyclerView$OnLoadMoreListener;

    .line 794
    iput-wide p2, p0, Lme/jingbin/library/ByRecyclerView;->mLoadMoreDelayMillis:J

    return-void
.end method

.method public setOnRefreshListener(Lme/jingbin/library/ByRecyclerView$OnRefreshListener;)V
    .locals 1

    const/4 v0, 0x1

    .line 813
    invoke-virtual {p0, v0}, Lme/jingbin/library/ByRecyclerView;->setRefreshEnabled(Z)V

    .line 814
    iput-object p1, p0, Lme/jingbin/library/ByRecyclerView;->mRefreshListener:Lme/jingbin/library/ByRecyclerView$OnRefreshListener;

    return-void
.end method

.method public setOnRefreshListener(Lme/jingbin/library/ByRecyclerView$OnRefreshListener;J)V
    .locals 1

    const/4 v0, 0x1

    .line 807
    invoke-virtual {p0, v0}, Lme/jingbin/library/ByRecyclerView;->setRefreshEnabled(Z)V

    .line 808
    iput-object p1, p0, Lme/jingbin/library/ByRecyclerView;->mRefreshListener:Lme/jingbin/library/ByRecyclerView$OnRefreshListener;

    .line 809
    iput-wide p2, p0, Lme/jingbin/library/ByRecyclerView;->mRefreshDelayMillis:J

    return-void
.end method

.method public setRefreshEnabled(Z)V
    .locals 1

    .line 249
    iput-boolean p1, p0, Lme/jingbin/library/ByRecyclerView;->mRefreshEnabled:Z

    .line 250
    iget-object p1, p0, Lme/jingbin/library/ByRecyclerView;->mRefreshHeader:Lme/jingbin/library/BaseRefreshHeader;

    if-nez p1, :cond_0

    .line 251
    new-instance p1, Lme/jingbin/library/SimpleRefreshHeaderView;

    invoke-virtual {p0}, Lme/jingbin/library/ByRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lme/jingbin/library/SimpleRefreshHeaderView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lme/jingbin/library/ByRecyclerView;->mRefreshHeader:Lme/jingbin/library/BaseRefreshHeader;

    :cond_0
    return-void
.end method

.method public setRefreshHeaderView(Lme/jingbin/library/BaseRefreshHeader;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lme/jingbin/library/ByRecyclerView;->mRefreshHeader:Lme/jingbin/library/BaseRefreshHeader;

    return-void
.end method

.method public setRefreshing(Z)V
    .locals 4

    if-eqz p1, :cond_3

    .line 221
    invoke-virtual {p0}, Lme/jingbin/library/ByRecyclerView;->getPullHeaderSize()I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lme/jingbin/library/ByRecyclerView;->mRefreshHeader:Lme/jingbin/library/BaseRefreshHeader;

    invoke-interface {p1}, Lme/jingbin/library/BaseRefreshHeader;->getState()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    invoke-virtual {p0}, Lme/jingbin/library/ByRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 226
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 228
    :cond_1
    iget-object p1, p0, Lme/jingbin/library/ByRecyclerView;->mRefreshHeader:Lme/jingbin/library/BaseRefreshHeader;

    invoke-interface {p1, v0}, Lme/jingbin/library/BaseRefreshHeader;->setState(I)V

    .line 229
    iget-object p1, p0, Lme/jingbin/library/ByRecyclerView;->mRefreshListener:Lme/jingbin/library/ByRecyclerView$OnRefreshListener;

    if-eqz p1, :cond_5

    .line 230
    new-instance p1, Lme/jingbin/library/ByRecyclerView$2;

    invoke-direct {p1, p0}, Lme/jingbin/library/ByRecyclerView$2;-><init>(Lme/jingbin/library/ByRecyclerView;)V

    const-wide/16 v0, 0x12c

    iget-wide v2, p0, Lme/jingbin/library/ByRecyclerView;->mRefreshDelayMillis:J

    add-long/2addr v2, v0

    invoke-virtual {p0, p1, v2, v3}, Lme/jingbin/library/ByRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    .line 238
    :cond_3
    invoke-virtual {p0}, Lme/jingbin/library/ByRecyclerView;->getPullHeaderSize()I

    move-result p1

    if-lez p1, :cond_4

    .line 239
    iget-object p1, p0, Lme/jingbin/library/ByRecyclerView;->mRefreshHeader:Lme/jingbin/library/BaseRefreshHeader;

    invoke-interface {p1}, Lme/jingbin/library/BaseRefreshHeader;->refreshComplete()V

    .line 241
    :cond_4
    invoke-virtual {p0}, Lme/jingbin/library/ByRecyclerView;->loadMoreComplete()V

    :cond_5
    :goto_1
    return-void
.end method

.method public setStateView(I)V
    .locals 0

    .line 893
    invoke-direct {p0, p1}, Lme/jingbin/library/ByRecyclerView;->getLayoutView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lme/jingbin/library/ByRecyclerView;->setStateView(Landroid/view/View;)V

    return-void
.end method

.method public setStateView(Landroid/view/View;)V
    .locals 4

    .line 910
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView;->mStateLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 911
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lme/jingbin/library/ByRecyclerView;->mStateLayout:Landroid/widget/FrameLayout;

    .line 912
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 913
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 915
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v3, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->width:I

    .line 916
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->height:I

    .line 918
    :cond_0
    iget-object v2, p0, Lme/jingbin/library/ByRecyclerView;->mStateLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 921
    :goto_0
    iget-object v2, p0, Lme/jingbin/library/ByRecyclerView;->mStateLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 922
    iget-object v2, p0, Lme/jingbin/library/ByRecyclerView;->mStateLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 923
    iput-boolean v1, p0, Lme/jingbin/library/ByRecyclerView;->mStateViewEnabled:Z

    if-eqz v0, :cond_2

    .line 925
    invoke-virtual {p0}, Lme/jingbin/library/ByRecyclerView;->getStateViewSize()I

    move-result p1

    if-ne p1, v1, :cond_2

    .line 926
    invoke-virtual {p0}, Lme/jingbin/library/ByRecyclerView;->getHeaderViewCount()I

    move-result p1

    invoke-virtual {p0}, Lme/jingbin/library/ByRecyclerView;->getPullHeaderSize()I

    move-result v0

    add-int/2addr p1, v0

    .line 927
    iget-object v0, p0, Lme/jingbin/library/ByRecyclerView;->mWrapAdapter:Lme/jingbin/library/ByRecyclerView$WrapAdapter;

    if-eqz v0, :cond_2

    .line 928
    invoke-virtual {v0}, Lme/jingbin/library/ByRecyclerView$WrapAdapter;->getOriginalAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    :cond_2
    return-void
.end method

.method public setStateViewEnabled(Z)V
    .locals 0

    .line 900
    iput-boolean p1, p0, Lme/jingbin/library/ByRecyclerView;->mStateViewEnabled:Z

    return-void
.end method
