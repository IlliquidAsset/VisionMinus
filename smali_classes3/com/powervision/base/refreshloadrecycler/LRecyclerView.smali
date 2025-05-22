.class public Lcom/powervision/base/refreshloadrecycler/LRecyclerView;
.super Landroid/widget/LinearLayout;
.source "LRecyclerView.java"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


# instance fields
.field private isNoData:Z

.field private isShowFooter:Z

.field private lastPositions:[I

.field private lastVisibleItem:I

.field private mContext:Landroid/content/Context;

.field private mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field private mNoDataTip:Landroidx/appcompat/widget/AppCompatTextView;

.field private mRecyclerAdapter:Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field private mRefreshLoadListener:Lcom/powervision/base/refreshloadrecycler/RefreshLoadListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-direct {p0, p1}, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    invoke-direct {p0, p1}, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    invoke-direct {p0, p1}, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/base/refreshloadrecycler/LRecyclerView;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/base/refreshloadrecycler/LRecyclerView;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->lastVisibleItem:I

    return p0
.end method

.method static synthetic access$102(Lcom/powervision/base/refreshloadrecycler/LRecyclerView;I)I
    .locals 0

    .line 26
    iput p1, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->lastVisibleItem:I

    return p1
.end method

.method static synthetic access$200(Lcom/powervision/base/refreshloadrecycler/LRecyclerView;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->isNoData:Z

    return p0
.end method

.method static synthetic access$300(Lcom/powervision/base/refreshloadrecycler/LRecyclerView;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->isShowFooter:Z

    return p0
.end method

.method static synthetic access$400(Lcom/powervision/base/refreshloadrecycler/LRecyclerView;)Lcom/powervision/base/refreshloadrecycler/RefreshLoadListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->mRefreshLoadListener:Lcom/powervision/base/refreshloadrecycler/RefreshLoadListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/powervision/base/refreshloadrecycler/LRecyclerView;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->setFooter()V

    return-void
.end method

.method static synthetic access$600(Lcom/powervision/base/refreshloadrecycler/LRecyclerView;)[I
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->lastPositions:[I

    return-object p0
.end method

.method static synthetic access$602(Lcom/powervision/base/refreshloadrecycler/LRecyclerView;[I)[I
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->lastPositions:[I

    return-object p1
.end method

.method static synthetic access$700(Lcom/powervision/base/refreshloadrecycler/LRecyclerView;[I)I
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->findMax([I)I

    move-result p0

    return p0
.end method

.method private findMax([I)I
    .locals 4

    const/4 v0, 0x0

    .line 100
    aget v1, p1, v0

    .line 101
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

    .line 56
    iput-object p1, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->mContext:Landroid/content/Context;

    .line 57
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/powervision/base/R$layout;->recyclerview:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 58
    sget p1, Lcom/powervision/base/R$id;->tip_message:I

    invoke-virtual {p0, p1}, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->mNoDataTip:Landroidx/appcompat/widget/AppCompatTextView;

    .line 59
    sget p1, Lcom/powervision/base/R$id;->swipe_refresh_layout:I

    invoke-virtual {p0, p1}, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object p1, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->mRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 60
    sget p1, Lcom/powervision/base/R$id;->recycler_view:I

    invoke-virtual {p0, p1}, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 62
    iget-object p1, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->mRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p1, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 63
    iget-object p1, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView$1;

    invoke-direct {v0, p0}, Lcom/powervision/base/refreshloadrecycler/LRecyclerView$1;-><init>(Lcom/powervision/base/refreshloadrecycler/LRecyclerView;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method private setFooter()V
    .locals 2

    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->isShowFooter:Z

    .line 112
    iget-object v1, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->mRecyclerAdapter:Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;

    invoke-virtual {v1, v0}, Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;->setShowFooter(Z)V

    return-void
.end method

.method private showData(Z)V
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->mNoDataTip:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_1

    const/16 v1, 0x8

    :cond_1
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public notifyDataSetChanged()V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->mRecyclerAdapter:Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;

    invoke-virtual {v0}, Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onRefresh()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->mRefreshLoadListener:Lcom/powervision/base/refreshloadrecycler/RefreshLoadListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 118
    iput-boolean v0, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->isNoData:Z

    .line 119
    iput-boolean v0, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->isShowFooter:Z

    .line 120
    iget-object v1, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->mRecyclerAdapter:Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;

    invoke-virtual {v1, v0}, Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;->setNoData(Z)V

    .line 121
    iget-object v0, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->mRecyclerAdapter:Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;

    iget-boolean v1, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->isShowFooter:Z

    invoke-virtual {v0, v1}, Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;->setShowFooter(Z)V

    .line 122
    iget-object v0, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->mRefreshLoadListener:Lcom/powervision/base/refreshloadrecycler/RefreshLoadListener;

    invoke-interface {v0}, Lcom/powervision/base/refreshloadrecycler/RefreshLoadListener;->onRefresh()V

    :cond_0
    return-void
.end method

.method public setAdapter(Lcom/powervision/base/pinnedrecycler/PinnedHeaderAdapter;)V
    .locals 4

    .line 151
    new-instance v0, Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;

    iget-object v1, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->isShowFooter:Z

    iget-boolean v3, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->isNoData:Z

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;-><init>(Lcom/powervision/base/pinnedrecycler/PinnedHeaderAdapter;Landroid/content/Context;ZZ)V

    iput-object v0, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->mRecyclerAdapter:Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;

    .line 152
    iget-object p1, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 1

    .line 146
    iput-object p1, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 147
    iget-object v0, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public setRefreshLoadListener(Lcom/powervision/base/refreshloadrecycler/RefreshLoadListener;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->mRefreshLoadListener:Lcom/powervision/base/refreshloadrecycler/RefreshLoadListener;

    return-void
.end method

.method public startRefresh()V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->mRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 161
    invoke-virtual {p0}, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->onRefresh()V

    return-void
.end method

.method public stopRefresh(IZ)V
    .locals 3

    .line 127
    iput-boolean p2, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->isNoData:Z

    .line 128
    iget-object v0, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->mRecyclerAdapter:Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;

    invoke-virtual {v0, p2}, Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;->setNoData(Z)V

    .line 129
    iget-object v0, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->mRecyclerAdapter:Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;

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
    invoke-direct {p0, v0}, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->showData(Z)V

    if-ne p1, v1, :cond_1

    .line 131
    iget-object p1, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->mRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    goto :goto_1

    :cond_1
    if-nez p2, :cond_2

    .line 134
    iput-boolean v2, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->isShowFooter:Z

    .line 135
    iget-object p1, p0, Lcom/powervision/base/refreshloadrecycler/LRecyclerView;->mRecyclerAdapter:Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;

    invoke-virtual {p1, v2}, Lcom/powervision/base/refreshloadrecycler/RecyclerAdapter;->setShowFooter(Z)V

    :cond_2
    :goto_1
    return-void
.end method
