.class public Lcom/lewis/edit/ui/adapter/ListAdapter;
.super Lcom/powervision/base/base/BaseRecyclerViewAdapter;
.source "ListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewis/edit/ui/adapter/ListAdapter$ListHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseRecyclerViewAdapter<",
        "Lcom/lewis/edit/ui/adapter/ListAdapter$ListHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mLastSelectIndex:I

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lewis/edit/model/entries/EditResBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lewis/edit/model/entries/EditResBean;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Lcom/powervision/base/base/BaseRecyclerViewAdapter;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/lewis/edit/ui/adapter/ListAdapter;->mLastSelectIndex:I

    .line 29
    iput-object p1, p0, Lcom/lewis/edit/ui/adapter/ListAdapter;->mList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/lewis/edit/ui/adapter/ListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$ListAdapter(Lcom/lewis/edit/ui/adapter/ListAdapter$ListHolder;Landroid/view/View;)V
    .locals 6

    .line 45
    invoke-virtual {p1}, Lcom/lewis/edit/ui/adapter/ListAdapter$ListHolder;->getAdapterPosition()I

    move-result v3

    .line 47
    iget-object p2, p0, Lcom/lewis/edit/ui/adapter/ListAdapter;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz p2, :cond_0

    .line 48
    iget-object v0, p0, Lcom/lewis/edit/ui/adapter/ListAdapter;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/lewis/edit/ui/adapter/ListAdapter$ListHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Lcom/lewis/edit/ui/adapter/ListAdapter$ListHolder;->getItemId()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 23
    check-cast p1, Lcom/lewis/edit/ui/adapter/ListAdapter$ListHolder;

    invoke-virtual {p0, p1, p2}, Lcom/lewis/edit/ui/adapter/ListAdapter;->onBindViewHolder(Lcom/lewis/edit/ui/adapter/ListAdapter$ListHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/lewis/edit/ui/adapter/ListAdapter$ListHolder;I)V
    .locals 2

    .line 41
    invoke-static {p1}, Lcom/lewis/edit/ui/adapter/ListAdapter$ListHolder;->access$000(Lcom/lewis/edit/ui/adapter/ListAdapter$ListHolder;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/lewis/edit/ui/adapter/ListAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lewis/edit/model/entries/EditResBean;

    invoke-virtual {v1}, Lcom/lewis/edit/model/entries/EditResBean;->getPicResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 42
    invoke-static {p1}, Lcom/lewis/edit/ui/adapter/ListAdapter$ListHolder;->access$100(Lcom/lewis/edit/ui/adapter/ListAdapter$ListHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lewis/edit/ui/adapter/ListAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lewis/edit/model/entries/EditResBean;

    invoke-virtual {v1}, Lcom/lewis/edit/model/entries/EditResBean;->getTitleResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 43
    iget-object v0, p1, Lcom/lewis/edit/ui/adapter/ListAdapter$ListHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/lewis/edit/ui/adapter/ListAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lewis/edit/model/entries/EditResBean;

    invoke-virtual {p2}, Lcom/lewis/edit/model/entries/EditResBean;->isSelect()Z

    move-result p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setSelected(Z)V

    .line 44
    iget-object p2, p1, Lcom/lewis/edit/ui/adapter/ListAdapter$ListHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/lewis/edit/ui/adapter/-$$Lambda$ListAdapter$2yRHhE_j0sRoWY0qPcaXJMQmi9s;

    invoke-direct {v0, p0, p1}, Lcom/lewis/edit/ui/adapter/-$$Lambda$ListAdapter$2yRHhE_j0sRoWY0qPcaXJMQmi9s;-><init>(Lcom/lewis/edit/ui/adapter/ListAdapter;Lcom/lewis/edit/ui/adapter/ListAdapter$ListHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/lewis/edit/ui/adapter/ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/lewis/edit/ui/adapter/ListAdapter$ListHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/lewis/edit/ui/adapter/ListAdapter$ListHolder;
    .locals 2

    .line 35
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/lewis/edit/R$layout;->edit_resource_layout:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 36
    new-instance p2, Lcom/lewis/edit/ui/adapter/ListAdapter$ListHolder;

    invoke-direct {p2, p0, p1}, Lcom/lewis/edit/ui/adapter/ListAdapter$ListHolder;-><init>(Lcom/lewis/edit/ui/adapter/ListAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setSelect(I)V
    .locals 2

    .line 64
    iget v0, p0, Lcom/lewis/edit/ui/adapter/ListAdapter;->mLastSelectIndex:I

    if-eq v0, p1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/lewis/edit/ui/adapter/ListAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lewis/edit/model/entries/EditResBean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lewis/edit/model/entries/EditResBean;->setSelect(Z)V

    .line 66
    iget-object v0, p0, Lcom/lewis/edit/ui/adapter/ListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lewis/edit/model/entries/EditResBean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lewis/edit/model/entries/EditResBean;->setSelect(Z)V

    .line 67
    iput p1, p0, Lcom/lewis/edit/ui/adapter/ListAdapter;->mLastSelectIndex:I

    .line 68
    invoke-virtual {p0}, Lcom/lewis/edit/ui/adapter/ListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
