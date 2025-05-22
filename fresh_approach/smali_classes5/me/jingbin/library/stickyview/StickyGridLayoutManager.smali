.class public Lme/jingbin/library/stickyview/StickyGridLayoutManager;
.super Landroidx/recyclerview/widget/GridLayoutManager;
.source "StickyGridLayoutManager.java"


# instance fields
.field private headerElevation:I

.field private mBaseAdapter:Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;

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

.field private viewHolderFactory:Lme/jingbin/library/stickyview/ViewHolderFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILme/jingbin/library/adapter/BaseByRecyclerViewAdapter;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 23
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lme/jingbin/library/stickyview/StickyGridLayoutManager;->mHeaderPositions:Ljava/util/List;

    const/4 p1, -0x1

    .line 25
    iput p1, p0, Lme/jingbin/library/stickyview/StickyGridLayoutManager;->headerElevation:I

    .line 29
    iput-object p4, p0, Lme/jingbin/library/stickyview/StickyGridLayoutManager;->mBaseAdapter:Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;

    return-void
.end method

.method private cacheHeaderPositions()V
    .locals 4

    .line 125
    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyGridLayoutManager;->mHeaderPositions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 126
    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyGridLayoutManager;->mBaseAdapter:Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;

    invoke-virtual {v0}, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 128
    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyGridLayoutManager;->mHeaderHandler:Lme/jingbin/library/stickyview/StickyHeaderHandler;

    if-eqz v0, :cond_0

    .line 129
    iget-object v1, p0, Lme/jingbin/library/stickyview/StickyGridLayoutManager;->mHeaderPositions:Ljava/util/List;

    invoke-virtual {v0, v1}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->setHeaderPositions(Ljava/util/List;)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    .line 133
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 134
    iget-object v2, p0, Lme/jingbin/library/stickyview/StickyGridLayoutManager;->mBaseAdapter:Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;

    invoke-virtual {v2, v1}, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;->getItemViewType(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v3, v2, :cond_2

    .line 135
    iget-object v2, p0, Lme/jingbin/library/stickyview/StickyGridLayoutManager;->mHeaderPositions:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    :cond_3
    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyGridLayoutManager;->mHeaderHandler:Lme/jingbin/library/stickyview/StickyHeaderHandler;

    if-eqz v0, :cond_4

    .line 139
    iget-object v1, p0, Lme/jingbin/library/stickyview/StickyGridLayoutManager;->mHeaderPositions:Ljava/util/List;

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

    .line 113
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v1, 0x0

    .line 114
    :goto_0
    invoke-virtual {p0}, Lme/jingbin/library/stickyview/StickyGridLayoutManager;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 115
    invoke-virtual {p0, v1}, Lme/jingbin/library/stickyview/StickyGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 116
    invoke-virtual {p0, v2}, Lme/jingbin/library/stickyview/StickyGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    .line 117
    iget-object v4, p0, Lme/jingbin/library/stickyview/StickyGridLayoutManager;->mHeaderPositions:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 118
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

    .line 108
    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyGridLayoutManager;->mHeaderHandler:Lme/jingbin/library/stickyview/StickyHeaderHandler;

    invoke-virtual {p0}, Lme/jingbin/library/stickyview/StickyGridLayoutManager;->getOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->reset(I)V

    .line 109
    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyGridLayoutManager;->mHeaderHandler:Lme/jingbin/library/stickyview/StickyHeaderHandler;

    invoke-virtual {p0}, Lme/jingbin/library/stickyview/StickyGridLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    invoke-direct {p0}, Lme/jingbin/library/stickyview/StickyGridLayoutManager;->getVisibleHeaders()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lme/jingbin/library/stickyview/StickyGridLayoutManager;->viewHolderFactory:Lme/jingbin/library/stickyview/ViewHolderFactory;

    invoke-virtual {p0}, Lme/jingbin/library/stickyview/StickyGridLayoutManager;->findFirstCompletelyVisibleItemPosition()I

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

    .line 37
    :goto_0
    iput p1, p0, Lme/jingbin/library/stickyview/StickyGridLayoutManager;->headerElevation:I

    .line 38
    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyGridLayoutManager;->mHeaderHandler:Lme/jingbin/library/stickyview/StickyHeaderHandler;

    if-eqz v0, :cond_1

    .line 39
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

    .line 33
    :goto_0
    invoke-virtual {p0, p1}, Lme/jingbin/library/stickyview/StickyGridLayoutManager;->elevateHeaders(I)V

    return-void
.end method

.method public onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 89
    new-instance v0, Lme/jingbin/library/stickyview/ViewHolderFactory;

    invoke-direct {v0, p1}, Lme/jingbin/library/stickyview/ViewHolderFactory;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, p0, Lme/jingbin/library/stickyview/StickyGridLayoutManager;->viewHolderFactory:Lme/jingbin/library/stickyview/ViewHolderFactory;

    .line 90
    new-instance v0, Lme/jingbin/library/stickyview/StickyHeaderHandler;

    invoke-direct {v0, p1}, Lme/jingbin/library/stickyview/StickyHeaderHandler;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, p0, Lme/jingbin/library/stickyview/StickyGridLayoutManager;->mHeaderHandler:Lme/jingbin/library/stickyview/StickyHeaderHandler;

    .line 91
    iget v1, p0, Lme/jingbin/library/stickyview/StickyGridLayoutManager;->headerElevation:I

    invoke-virtual {v0, v1}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->setElevateHeaders(I)V

    .line 92
    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyGridLayoutManager;->mHeaderPositions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 93
    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyGridLayoutManager;->mHeaderHandler:Lme/jingbin/library/stickyview/StickyHeaderHandler;

    iget-object v1, p0, Lme/jingbin/library/stickyview/StickyGridLayoutManager;->mHeaderPositions:Ljava/util/List;

    invoke-virtual {v0, v1}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->setHeaderPositions(Ljava/util/List;)V

    .line 94
    invoke-direct {p0}, Lme/jingbin/library/stickyview/StickyGridLayoutManager;->resetHeaderHandler()V

    .line 96
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyGridLayoutManager;->mHeaderHandler:Lme/jingbin/library/stickyview/StickyHeaderHandler;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->clearVisibilityObserver()V

    .line 104
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 45
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 46
    invoke-direct {p0}, Lme/jingbin/library/stickyview/StickyGridLayoutManager;->cacheHeaderPositions()V

    .line 47
    iget-object p1, p0, Lme/jingbin/library/stickyview/StickyGridLayoutManager;->mHeaderHandler:Lme/jingbin/library/stickyview/StickyHeaderHandler;

    if-eqz p1, :cond_0

    .line 48
    invoke-direct {p0}, Lme/jingbin/library/stickyview/StickyGridLayoutManager;->resetHeaderHandler()V

    :cond_0
    return-void
.end method

.method public removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 0

    .line 81
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 82
    iget-object p1, p0, Lme/jingbin/library/stickyview/StickyGridLayoutManager;->mHeaderHandler:Lme/jingbin/library/stickyview/StickyHeaderHandler;

    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p1}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->clearHeader()V

    :cond_0
    return-void
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 3

    .line 70
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager;->scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    .line 71
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lez p2, :cond_1

    .line 72
    iget-object p2, p0, Lme/jingbin/library/stickyview/StickyGridLayoutManager;->mHeaderHandler:Lme/jingbin/library/stickyview/StickyHeaderHandler;

    if-eqz p2, :cond_1

    .line 73
    invoke-virtual {p0}, Lme/jingbin/library/stickyview/StickyGridLayoutManager;->findFirstVisibleItemPosition()I

    move-result p3

    invoke-direct {p0}, Lme/jingbin/library/stickyview/StickyGridLayoutManager;->getVisibleHeaders()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lme/jingbin/library/stickyview/StickyGridLayoutManager;->viewHolderFactory:Lme/jingbin/library/stickyview/ViewHolderFactory;

    invoke-virtual {p0}, Lme/jingbin/library/stickyview/StickyGridLayoutManager;->findFirstCompletelyVisibleItemPosition()I

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

    .line 54
    invoke-super {p0, p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 3

    .line 59
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    .line 60
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lez p2, :cond_1

    .line 61
    iget-object p2, p0, Lme/jingbin/library/stickyview/StickyGridLayoutManager;->mHeaderHandler:Lme/jingbin/library/stickyview/StickyHeaderHandler;

    if-eqz p2, :cond_1

    .line 62
    invoke-virtual {p0}, Lme/jingbin/library/stickyview/StickyGridLayoutManager;->findFirstVisibleItemPosition()I

    move-result p3

    invoke-direct {p0}, Lme/jingbin/library/stickyview/StickyGridLayoutManager;->getVisibleHeaders()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lme/jingbin/library/stickyview/StickyGridLayoutManager;->viewHolderFactory:Lme/jingbin/library/stickyview/ViewHolderFactory;

    invoke-virtual {p0}, Lme/jingbin/library/stickyview/StickyGridLayoutManager;->findFirstCompletelyVisibleItemPosition()I

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
