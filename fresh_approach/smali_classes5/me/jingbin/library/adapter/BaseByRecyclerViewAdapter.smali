.class public abstract Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BaseByRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Lme/jingbin/library/adapter/BaseByViewHolder;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "TK;>;"
    }
.end annotation


# instance fields
.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mRecyclerView:Lme/jingbin/library/ByRecyclerView;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;->mData:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;->mData:Ljava/util/List;

    if-nez p1, :cond_0

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iput-object p1, p0, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;->mData:Ljava/util/List;

    return-void
.end method

.method private compatibilityDataSizeChanged(I)V
    .locals 1

    .line 164
    iget-object v0, p0, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;->mData:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ne v0, p1, :cond_1

    .line 166
    invoke-virtual {p0}, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method


# virtual methods
.method public addAll(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addData(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 72
    invoke-virtual {p0}, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;->getCustomTopItemViewCount()I

    move-result p2

    add-int/2addr p1, p2

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;->notifyItemRangeInserted(II)V

    .line 73
    invoke-direct {p0, p2}, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;->compatibilityDataSizeChanged(I)V

    return-void
.end method

.method public addData(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 103
    invoke-virtual {p0}, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;->getCustomTopItemViewCount()I

    move-result v0

    add-int/2addr p1, v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;->notifyItemRangeInserted(II)V

    .line 104
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;->compatibilityDataSizeChanged(I)V

    return-void
.end method

.method public addData(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 81
    iget-object v1, p0, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-virtual {p0}, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;->getCustomTopItemViewCount()I

    move-result p1

    add-int/2addr v0, p1

    const/4 p1, 0x1

    .line 83
    invoke-virtual {p0, v0, p1}, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;->notifyItemRangeInserted(II)V

    .line 84
    invoke-direct {p0, p1}, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;->compatibilityDataSizeChanged(I)V

    return-void
.end method

.method public addData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 92
    iget-object v1, p0, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 93
    invoke-virtual {p0}, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;->getCustomTopItemViewCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 94
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;->notifyItemRangeInserted(II)V

    .line 95
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;->compatibilityDataSizeChanged(I)V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 47
    iget-object v0, p0, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getCustomTopItemViewCount()I
    .locals 1

    .line 135
    iget-object v0, p0, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;->mRecyclerView:Lme/jingbin/library/ByRecyclerView;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0}, Lme/jingbin/library/ByRecyclerView;->getCustomTopItemViewCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;->mData:Ljava/util/List;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 39
    iget-object v0, p0, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemData(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;->mData:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getRecyclerView()Lme/jingbin/library/ByRecyclerView;
    .locals 1

    .line 171
    iget-object v0, p0, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;->mRecyclerView:Lme/jingbin/library/ByRecyclerView;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 19
    check-cast p1, Lme/jingbin/library/adapter/BaseByViewHolder;

    invoke-virtual {p0, p1, p2}, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;->onBindViewHolder(Lme/jingbin/library/adapter/BaseByViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lme/jingbin/library/adapter/BaseByViewHolder;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)V"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;->mRecyclerView:Lme/jingbin/library/ByRecyclerView;

    invoke-virtual {p1, v0}, Lme/jingbin/library/adapter/BaseByViewHolder;->setByRecyclerView(Lme/jingbin/library/ByRecyclerView;)Lme/jingbin/library/adapter/BaseByViewHolder;

    .line 34
    iget-object v0, p0, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p1, v0, p2}, Lme/jingbin/library/adapter/BaseByViewHolder;->onBaseBindView(Lme/jingbin/library/adapter/BaseByViewHolder;Ljava/lang/Object;I)V

    return-void
.end method

.method public final refreshNotifyItemChanged(I)V
    .locals 1

    .line 146
    invoke-virtual {p0}, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;->getCustomTopItemViewCount()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public final refreshNotifyItemMoved(II)V
    .locals 1

    .line 154
    invoke-virtual {p0}, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;->getCustomTopItemViewCount()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;->getCustomTopItemViewCount()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;->notifyItemMoved(II)V

    return-void
.end method

.method public final refreshNotifyItemRemoved(I)V
    .locals 1

    .line 150
    invoke-virtual {p0}, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;->getCustomTopItemViewCount()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;->notifyItemRemoved(I)V

    return-void
.end method

.method public removeData(I)V
    .locals 2

    .line 122
    iget-object v0, p0, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 123
    invoke-virtual {p0}, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;->getCustomTopItemViewCount()I

    move-result v0

    add-int/2addr v0, p1

    .line 124
    invoke-virtual {p0, v0}, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;->notifyItemRemoved(I)V

    .line 126
    iget-object v1, p0, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 127
    iget-object p1, p0, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-virtual {p0, v0, p1}, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;->notifyItemRangeChanged(II)V

    :cond_0
    return-void
.end method

.method public setNewData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 111
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iput-object p1, p0, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;->mData:Ljava/util/List;

    .line 112
    iget-object p1, p0, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;->mRecyclerView:Lme/jingbin/library/ByRecyclerView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 113
    invoke-virtual {p1, v0}, Lme/jingbin/library/ByRecyclerView;->setRefreshing(Z)V

    .line 115
    :cond_1
    invoke-virtual {p0}, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setRecyclerView(Lme/jingbin/library/ByRecyclerView;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;->mRecyclerView:Lme/jingbin/library/ByRecyclerView;

    return-void
.end method
