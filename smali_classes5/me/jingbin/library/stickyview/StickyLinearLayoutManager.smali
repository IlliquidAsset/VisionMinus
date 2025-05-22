.class public Lme/jingbin/library/stickyview/StickyLinearLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "StickyLinearLayoutManager.java"


# instance fields
.field private headerElevation:I

.field private mHeaderHandler:Lme/jingbin/library/stickyview/StickyHeaderHandler;

.field private mHeaderPositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderProvider:Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;

.field private viewHolderFactory:Lme/jingbin/library/stickyview/ViewHolderFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;IZLme/jingbin/library/adapter/BaseByRecyclerViewAdapter;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 25
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lme/jingbin/library/stickyview/StickyLinearLayoutManager;->mHeaderPositions:Ljava/util/List;

    const/4 p1, -0x1

    .line 29
    iput p1, p0, Lme/jingbin/library/stickyview/StickyLinearLayoutManager;->headerElevation:I

    .line 37
    iput-object p4, p0, Lme/jingbin/library/stickyview/StickyLinearLayoutManager;->mHeaderProvider:Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 32
    invoke-direct {p0, p1, v0, v1, p2}, Lme/jingbin/library/stickyview/StickyLinearLayoutManager;-><init>(Landroid/content/Context;IZLme/jingbin/library/adapter/BaseByRecyclerViewAdapter;)V

    return-void
.end method

.method private cacheHeaderPositions()V
    .locals 4

    .line 134
    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyLinearLayoutManager;->mHeaderPositions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 135
    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyLinearLayoutManager;->mHeaderProvider:Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;

    invoke-virtual {v0}, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 137
    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyLinearLayoutManager;->mHeaderHandler:Lme/jingbin/library/stickyview/StickyHeaderHandler;

    if-eqz v0, :cond_0

    .line 138
    iget-object v1, p0, Lme/jingbin/library/stickyview/StickyLinearLayoutManager;->mHeaderPositions:Ljava/util/List;

    invoke-virtual {v0, v1}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->setHeaderPositions(Ljava/util/List;)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    .line 143
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 144
    iget-object v2, p0, Lme/jingbin/library/stickyview/StickyLinearLayoutManager;->mHeaderProvider:Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;

    invoke-virtual {v2, v1}, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;->getItemViewType(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v3, v2, :cond_2

    .line 145
    iget-object v2, p0, Lme/jingbin/library/stickyview/StickyLinearLayoutManager;->mHeaderPositions:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    :cond_3
    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyLinearLayoutManager;->mHeaderHandler:Lme/jingbin/library/stickyview/StickyHeaderHandler;

    if-eqz v0, :cond_4

    .line 149
    iget-object v1, p0, Lme/jingbin/library/stickyview/StickyLinearLayoutManager;->mHeaderPositions:Ljava/util/List;

    invoke-virtual {v0, v1}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->setHeaderPositions(Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method private getVisibleHeaders()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 121
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v1, 0x0

    .line 123
    :goto_0
    invoke-virtual {p0}, Lme/jingbin/library/stickyview/StickyLinearLayoutManager;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 124
    invoke-virtual {p0, v1}, Lme/jingbin/library/stickyview/StickyLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 125
    invoke-virtual {p0, v2}, Lme/jingbin/library/stickyview/StickyLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    .line 126
    iget-object v4, p0, Lme/jingbin/library/stickyview/StickyLinearLayoutManager;->mHeaderPositions:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 127
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private resetHeaderHandler()V
    .locals 5

    .line 116
    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyLinearLayoutManager;->mHeaderHandler:Lme/jingbin/library/stickyview/StickyHeaderHandler;

    invoke-virtual {p0}, Lme/jingbin/library/stickyview/StickyLinearLayoutManager;->getOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->reset(I)V

    .line 117
    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyLinearLayoutManager;->mHeaderHandler:Lme/jingbin/library/stickyview/StickyHeaderHandler;

    invoke-virtual {p0}, Lme/jingbin/library/stickyview/StickyLinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    invoke-direct {p0}, Lme/jingbin/library/stickyview/StickyLinearLayoutManager;->getVisibleHeaders()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lme/jingbin/library/stickyview/StickyLinearLayoutManager;->viewHolderFactory:Lme/jingbin/library/stickyview/ViewHolderFactory;

    invoke-virtual {p0}, Lme/jingbin/library/stickyview/StickyLinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2, v3, v4}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->updateHeaderState(ILjava/util/Map;Lme/jingbin/library/stickyview/ViewHolderFactory;Z)V

    return-void
.end method


# virtual methods
.method public elevateHeaders(I)V
    .locals 1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 45
    :goto_0
    iput p1, p0, Lme/jingbin/library/stickyview/StickyLinearLayoutManager;->headerElevation:I

    .line 46
    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyLinearLayoutManager;->mHeaderHandler:Lme/jingbin/library/stickyview/StickyHeaderHandler;

    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {v0, p1}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->setElevateHeaders(I)V

    :cond_1
    return-void
.end method

.method public elevateHeaders(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 41
    :goto_0
    invoke-virtual {p0, p1}, Lme/jingbin/library/stickyview/StickyLinearLayoutManager;->elevateHeaders(I)V

    return-void
.end method

.method public onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 97
    new-instance v0, Lme/jingbin/library/stickyview/ViewHolderFactory;

    invoke-direct {v0, p1}, Lme/jingbin/library/stickyview/ViewHolderFactory;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, p0, Lme/jingbin/library/stickyview/StickyLinearLayoutManager;->viewHolderFactory:Lme/jingbin/library/stickyview/ViewHolderFactory;

    .line 98
    new-instance v0, Lme/jingbin/library/stickyview/StickyHeaderHandler;

    invoke-direct {v0, p1}, Lme/jingbin/library/stickyview/StickyHeaderHandler;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, p0, Lme/jingbin/library/stickyview/StickyLinearLayoutManager;->mHeaderHandler:Lme/jingbin/library/stickyview/StickyHeaderHandler;

    .line 99
    iget v1, p0, Lme/jingbin/library/stickyview/StickyLinearLayoutManager;->headerElevation:I

    invoke-virtual {v0, v1}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->setElevateHeaders(I)V

    .line 100
    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyLinearLayoutManager;->mHeaderPositions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 101
    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyLinearLayoutManager;->mHeaderHandler:Lme/jingbin/library/stickyview/StickyHeaderHandler;

    iget-object v1, p0, Lme/jingbin/library/stickyview/StickyLinearLayoutManager;->mHeaderPositions:Ljava/util/List;

    invoke-virtual {v0, v1}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->setHeaderPositions(Ljava/util/List;)V

    .line 102
    invoke-direct {p0}, Lme/jingbin/library/stickyview/StickyLinearLayoutManager;->resetHeaderHandler()V

    .line 104
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyLinearLayoutManager;->mHeaderHandler:Lme/jingbin/library/stickyview/StickyHeaderHandler;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->clearVisibilityObserver()V

    .line 112
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 53
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 54
    invoke-direct {p0}, Lme/jingbin/library/stickyview/StickyLinearLayoutManager;->cacheHeaderPositions()V

    .line 55
    iget-object p1, p0, Lme/jingbin/library/stickyview/StickyLinearLayoutManager;->mHeaderHandler:Lme/jingbin/library/stickyview/StickyHeaderHandler;

    if-eqz p1, :cond_0

    .line 56
    invoke-direct {p0}, Lme/jingbin/library/stickyview/StickyLinearLayoutManager;->resetHeaderHandler()V

    :cond_0
    return-void
.end method

.method public removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 90
    iget-object p1, p0, Lme/jingbin/library/stickyview/StickyLinearLayoutManager;->mHeaderHandler:Lme/jingbin/library/stickyview/StickyHeaderHandler;

    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {p1}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->clearHeader()V

    :cond_0
    return-void
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 3

    .line 78
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    .line 79
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lez p2, :cond_1

    .line 80
    iget-object p2, p0, Lme/jingbin/library/stickyview/StickyLinearLayoutManager;->mHeaderHandler:Lme/jingbin/library/stickyview/StickyHeaderHandler;

    if-eqz p2, :cond_1

    .line 81
    invoke-virtual {p0}, Lme/jingbin/library/stickyview/StickyLinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p3

    invoke-direct {p0}, Lme/jingbin/library/stickyview/StickyLinearLayoutManager;->getVisibleHeaders()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lme/jingbin/library/stickyview/StickyLinearLayoutManager;->viewHolderFactory:Lme/jingbin/library/stickyview/ViewHolderFactory;

    invoke-virtual {p0}, Lme/jingbin/library/stickyview/StickyLinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p2, p3, v0, v1, v2}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->updateHeaderState(ILjava/util/Map;Lme/jingbin/library/stickyview/ViewHolderFactory;Z)V

    :cond_1
    return p1
.end method

.method public scrollToPosition(I)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-super {p0, p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 3

    .line 67
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    .line 68
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lez p2, :cond_1

    .line 69
    iget-object p2, p0, Lme/jingbin/library/stickyview/StickyLinearLayoutManager;->mHeaderHandler:Lme/jingbin/library/stickyview/StickyHeaderHandler;

    if-eqz p2, :cond_1

    .line 70
    invoke-virtual {p0}, Lme/jingbin/library/stickyview/StickyLinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p3

    invoke-direct {p0}, Lme/jingbin/library/stickyview/StickyLinearLayoutManager;->getVisibleHeaders()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lme/jingbin/library/stickyview/StickyLinearLayoutManager;->viewHolderFactory:Lme/jingbin/library/stickyview/ViewHolderFactory;

    invoke-virtual {p0}, Lme/jingbin/library/stickyview/StickyLinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p2, p3, v0, v1, v2}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->updateHeaderState(ILjava/util/Map;Lme/jingbin/library/stickyview/ViewHolderFactory;Z)V

    :cond_1
    return p1
.end method
