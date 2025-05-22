.class public Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "HeaderRecyclerView.java"


# instance fields
.field private mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field private mDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field private mEmptyView:Landroid/view/View;

.field public mItemClickListener:Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter$OnItemClickListener;

.field private mLoadingView:Landroid/view/View;

.field private mWrapRecyclerAdapter:Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 106
    new-instance p1, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView$1;

    invoke-direct {p1, p0}, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView$1;-><init>(Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;)V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->mDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    new-instance p1, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView$1;

    invoke-direct {p1, p0}, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView$1;-><init>(Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;)V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->mDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    new-instance p1, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView$1;

    invoke-direct {p1, p0}, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView$1;-><init>(Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;)V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->mDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;)Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->mWrapRecyclerAdapter:Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->dataChanged()V

    return-void
.end method

.method private dataChanged()V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 185
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 190
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addEmptyView(Landroid/view/View;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->mEmptyView:Landroid/view/View;

    return-void
.end method

.method public addFooterView(Landroid/view/View;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->mWrapRecyclerAdapter:Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->addFooterView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->mWrapRecyclerAdapter:Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->addHeaderView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public addLoadingView(Landroid/view/View;)V
    .locals 1

    .line 174
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->mLoadingView:Landroid/view/View;

    const/4 v0, 0x0

    .line 175
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public removeFooterView(Landroid/view/View;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->mWrapRecyclerAdapter:Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->removeFooterView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->mWrapRecyclerAdapter:Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->removeHeaderView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 42
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->mDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 46
    :cond_0
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 48
    instance-of v0, p1, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;

    if-eqz v0, :cond_1

    .line 49
    check-cast p1, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->mWrapRecyclerAdapter:Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;

    goto :goto_0

    .line 51
    :cond_1
    new-instance v0, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;

    invoke-direct {v0, p1}, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->mWrapRecyclerAdapter:Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;

    .line 54
    :goto_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->mWrapRecyclerAdapter:Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 57
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->mDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 60
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->mWrapRecyclerAdapter:Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;

    invoke-virtual {p1, p0}, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->adjustSpanSize(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 63
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->mLoadingView:Landroid/view/View;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    .line 64
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->mLoadingView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 67
    :cond_2
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->mItemClickListener:Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter$OnItemClickListener;

    if-eqz p1, :cond_3

    .line 68
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->mWrapRecyclerAdapter:Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;

    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->setOnItemClickListener(Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter$OnItemClickListener;)V

    :cond_3
    return-void
.end method

.method public setOnItemClickListener(Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter$OnItemClickListener;)V
    .locals 1

    .line 202
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->mItemClickListener:Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter$OnItemClickListener;

    .line 204
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->mWrapRecyclerAdapter:Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->setOnItemClickListener(Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter$OnItemClickListener;)V

    :cond_0
    return-void
.end method
