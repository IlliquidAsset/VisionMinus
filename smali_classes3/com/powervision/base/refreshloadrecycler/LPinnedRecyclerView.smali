.class public Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;
.super Landroid/widget/LinearLayout;
.source "LPinnedRecyclerView.java"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;
.implements Lcom/powervision/base/pinnedrecycler/PinnedHeaderRecyclerView$OnPinnedHeaderClickListener;


# instance fields
.field private isNoData:Z

.field private isShowFooter:Z

.field private lastPositions:[I

.field private lastVisibleItem:I

.field private mContext:Landroid/content/Context;

.field private mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field private mNoDataTip:Landroidx/appcompat/widget/AppCompatTextView;

.field private mRecyclerAdapter:Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;

.field private mRecyclerView:Lcom/powervision/base/pinnedrecycler/PinnedHeaderRecyclerView;

.field private mRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field private mRefreshLoadListener:Lcom/powervision/base/refreshloadrecycler/RefreshLoadListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-direct {p0, p1}, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    invoke-direct {p0, p1}, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    invoke-direct {p0, p1}, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->lastVisibleItem:I

    return p0
.end method

.method static synthetic access$102(Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;I)I
    .locals 0

    .line 27
    iput p1, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->lastVisibleItem:I

    return p1
.end method

.method static synthetic access$200(Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->isNoData:Z

    return p0
.end method

.method static synthetic access$300(Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->isShowFooter:Z

    return p0
.end method

.method static synthetic access$400(Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;)Lcom/powervision/base/refreshloadrecycler/RefreshLoadListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->mRefreshLoadListener:Lcom/powervision/base/refreshloadrecycler/RefreshLoadListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->setFooter()V

    return-void
.end method

.method static synthetic access$600(Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;)[I
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->lastPositions:[I

    return-object p0
.end method

.method static synthetic access$602(Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;[I)[I
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->lastPositions:[I

    return-object p1
.end method

.method static synthetic access$700(Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;[I)I
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->findMax([I)I

    move-result p0

    return p0
.end method

.method private findMax([I)I
    .locals 4

    const/4 v0, 0x0

    .line 103
    aget v1, p1, v0

    .line 104
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

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 58
    iput-object p1, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->mContext:Landroid/content/Context;

    .line 59
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/powervision/base/R$layout;->pinned_recyclerview:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 60
    sget p1, Lcom/powervision/base/R$id;->tip_message:I

    invoke-virtual {p0, p1}, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->mNoDataTip:Landroidx/appcompat/widget/AppCompatTextView;

    .line 61
    sget p1, Lcom/powervision/base/R$id;->swipe_refresh_layout:I

    invoke-virtual {p0, p1}, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object p1, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->mRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 62
    sget p1, Lcom/powervision/base/R$id;->recycler_view:I

    invoke-virtual {p0, p1}, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/pinnedrecycler/PinnedHeaderRecyclerView;

    iput-object p1, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->mRecyclerView:Lcom/powervision/base/pinnedrecycler/PinnedHeaderRecyclerView;

    .line 64
    iget-object p1, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->mRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p1, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 65
    iget-object p1, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->mRecyclerView:Lcom/powervision/base/pinnedrecycler/PinnedHeaderRecyclerView;

    invoke-virtual {p1, p0}, Lcom/powervision/base/pinnedrecycler/PinnedHeaderRecyclerView;->setOnPinnedHeaderClickListener(Lcom/powervision/base/pinnedrecycler/PinnedHeaderRecyclerView$OnPinnedHeaderClickListener;)V

    .line 66
    iget-object p1, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->mRecyclerView:Lcom/powervision/base/pinnedrecycler/PinnedHeaderRecyclerView;

    new-instance v0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView$1;

    invoke-direct {v0, p0}, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView$1;-><init>(Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;)V

    invoke-virtual {p1, v0}, Lcom/powervision/base/pinnedrecycler/PinnedHeaderRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method private setFooter()V
    .locals 2

    const/4 v0, 0x1

    .line 116
    iput-boolean v0, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->isShowFooter:Z

    .line 117
    iget-object v1, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->mRecyclerAdapter:Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;

    invoke-virtual {v1, v0}, Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;->setShowFooter(Z)V

    return-void
.end method

.method private showData(Z)V
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->mRecyclerView:Lcom/powervision/base/pinnedrecycler/PinnedHeaderRecyclerView;

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Lcom/powervision/base/pinnedrecycler/PinnedHeaderRecyclerView;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->mNoDataTip:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public notifyDataSetChanged()V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->mRecyclerAdapter:Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;

    invoke-virtual {v0}, Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public notifyItemChanged(I)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->mRecyclerAdapter:Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public onPinnedHeaderClick(I)V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->mRefreshLoadListener:Lcom/powervision/base/refreshloadrecycler/RefreshLoadListener;

    if-eqz v0, :cond_0

    .line 224
    invoke-interface {v0, p1}, Lcom/powervision/base/refreshloadrecycler/RefreshLoadListener;->onPinnedClick(I)V

    :cond_0
    return-void
.end method

.method public onRefresh()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->mRefreshLoadListener:Lcom/powervision/base/refreshloadrecycler/RefreshLoadListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->isNoData:Z

    .line 127
    iput-boolean v0, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->isShowFooter:Z

    .line 128
    iget-object v1, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->mRecyclerAdapter:Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;

    invoke-virtual {v1, v0}, Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;->setNoData(Z)V

    .line 129
    iget-object v0, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->mRecyclerAdapter:Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;

    iget-boolean v1, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->isShowFooter:Z

    invoke-virtual {v0, v1}, Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;->setShowFooter(Z)V

    .line 130
    iget-object v0, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->mRefreshLoadListener:Lcom/powervision/base/refreshloadrecycler/RefreshLoadListener;

    invoke-interface {v0}, Lcom/powervision/base/refreshloadrecycler/RefreshLoadListener;->onRefresh()V

    :cond_0
    return-void
.end method

.method public setAdapter(Lcom/powervision/base/pinnedrecycler/PinnedHeaderAdapter;)V
    .locals 4

    .line 180
    new-instance v0, Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;

    iget-object v1, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->isShowFooter:Z

    iget-boolean v3, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->isNoData:Z

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;-><init>(Lcom/powervision/base/pinnedrecycler/PinnedHeaderAdapter;Landroid/content/Context;ZZ)V

    iput-object v0, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->mRecyclerAdapter:Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;

    .line 181
    iget-object p1, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->mRecyclerView:Lcom/powervision/base/pinnedrecycler/PinnedHeaderRecyclerView;

    invoke-virtual {p1, v0}, Lcom/powervision/base/pinnedrecycler/PinnedHeaderRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 182
    iget-object p1, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->mRecyclerView:Lcom/powervision/base/pinnedrecycler/PinnedHeaderRecyclerView;

    new-instance v0, Lcom/powervision/base/pinnedrecycler/PinnedHeaderItemDecoration;

    invoke-direct {v0}, Lcom/powervision/base/pinnedrecycler/PinnedHeaderItemDecoration;-><init>()V

    invoke-virtual {p1, v0}, Lcom/powervision/base/pinnedrecycler/PinnedHeaderRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 1

    .line 170
    iput-object p1, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 171
    iget-object v0, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->mRecyclerView:Lcom/powervision/base/pinnedrecycler/PinnedHeaderRecyclerView;

    invoke-virtual {v0, p1}, Lcom/powervision/base/pinnedrecycler/PinnedHeaderRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public setRefreshLoadListener(Lcom/powervision/base/refreshloadrecycler/RefreshLoadListener;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->mRefreshLoadListener:Lcom/powervision/base/refreshloadrecycler/RefreshLoadListener;

    return-void
.end method

.method public startRefresh()V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->mRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 204
    invoke-virtual {p0}, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->onRefresh()V

    return-void
.end method

.method public stopRefresh(IZ)V
    .locals 3

    .line 141
    iput-boolean p2, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->isNoData:Z

    .line 142
    iget-object v0, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->mRecyclerAdapter:Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;

    invoke-virtual {v0, p2}, Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;->setNoData(Z)V

    .line 143
    iget-object v0, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->mRecyclerAdapter:Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;

    invoke-virtual {v0}, Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->showData(Z)V

    if-ne p1, v1, :cond_1

    .line 145
    iget-object p1, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->mRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    goto :goto_1

    :cond_1
    if-nez p2, :cond_2

    .line 148
    iput-boolean v2, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->isShowFooter:Z

    .line 149
    iget-object p1, p0, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->mRecyclerAdapter:Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;

    invoke-virtual {p1, v2}, Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;->setShowFooter(Z)V

    :cond_2
    :goto_1
    return-void
.end method
