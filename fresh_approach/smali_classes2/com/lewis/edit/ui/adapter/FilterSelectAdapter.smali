.class public Lcom/lewis/edit/ui/adapter/FilterSelectAdapter;
.super Lcom/powervision/base/base/BaseRecyclerViewAdapter;
.source "FilterSelectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewis/edit/ui/adapter/FilterSelectAdapter$FilterHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseRecyclerViewAdapter<",
        "Lcom/lewis/edit/ui/adapter/FilterSelectAdapter$FilterHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mLastSelectIndex:I

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lewis/edit/model/entries/FilterBean;",
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
            "Lcom/lewis/edit/model/entries/FilterBean;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Lcom/powervision/base/base/BaseRecyclerViewAdapter;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/lewis/edit/ui/adapter/FilterSelectAdapter;->mLastSelectIndex:I

    .line 26
    iput-object p1, p0, Lcom/lewis/edit/ui/adapter/FilterSelectAdapter;->mList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/lewis/edit/ui/adapter/FilterSelectAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$FilterSelectAdapter(Lcom/lewis/edit/ui/adapter/FilterSelectAdapter$FilterHolder;Landroid/view/View;)V
    .locals 6

    .line 44
    invoke-virtual {p1}, Lcom/lewis/edit/ui/adapter/FilterSelectAdapter$FilterHolder;->getAdapterPosition()I

    move-result v3

    .line 45
    iget-object p2, p0, Lcom/lewis/edit/ui/adapter/FilterSelectAdapter;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz p2, :cond_0

    const/4 p2, -0x1

    if-eq v3, p2, :cond_0

    .line 46
    iget-object v0, p0, Lcom/lewis/edit/ui/adapter/FilterSelectAdapter;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/lewis/edit/ui/adapter/FilterSelectAdapter$FilterHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Lcom/lewis/edit/ui/adapter/FilterSelectAdapter$FilterHolder;->getItemId()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 21
    check-cast p1, Lcom/lewis/edit/ui/adapter/FilterSelectAdapter$FilterHolder;

    invoke-virtual {p0, p1, p2}, Lcom/lewis/edit/ui/adapter/FilterSelectAdapter;->onBindViewHolder(Lcom/lewis/edit/ui/adapter/FilterSelectAdapter$FilterHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/lewis/edit/ui/adapter/FilterSelectAdapter$FilterHolder;I)V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/lewis/edit/ui/adapter/FilterSelectAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lewis/edit/model/entries/FilterBean;

    if-eqz p2, :cond_1

    .line 40
    invoke-static {p1}, Lcom/lewis/edit/ui/adapter/FilterSelectAdapter$FilterHolder;->access$000(Lcom/lewis/edit/ui/adapter/FilterSelectAdapter$FilterHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/lewis/edit/model/entries/FilterBean;->getPicResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 41
    invoke-static {p1}, Lcom/lewis/edit/ui/adapter/FilterSelectAdapter$FilterHolder;->access$100(Lcom/lewis/edit/ui/adapter/FilterSelectAdapter$FilterHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/lewis/edit/model/entries/FilterBean;->getTitleStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    invoke-static {p1}, Lcom/lewis/edit/ui/adapter/FilterSelectAdapter$FilterHolder;->access$200(Lcom/lewis/edit/ui/adapter/FilterSelectAdapter$FilterHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/lewis/edit/model/entries/FilterBean;->isSelect()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 43
    iget-object p2, p1, Lcom/lewis/edit/ui/adapter/FilterSelectAdapter$FilterHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/lewis/edit/ui/adapter/-$$Lambda$FilterSelectAdapter$lBFLD2-xwrqMK2_8cYR0lzrJ90w;

    invoke-direct {v0, p0, p1}, Lcom/lewis/edit/ui/adapter/-$$Lambda$FilterSelectAdapter$lBFLD2-xwrqMK2_8cYR0lzrJ90w;-><init>(Lcom/lewis/edit/ui/adapter/FilterSelectAdapter;Lcom/lewis/edit/ui/adapter/FilterSelectAdapter$FilterHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/lewis/edit/ui/adapter/FilterSelectAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/lewis/edit/ui/adapter/FilterSelectAdapter$FilterHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/lewis/edit/ui/adapter/FilterSelectAdapter$FilterHolder;
    .locals 2

    .line 32
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/lewis/edit/R$layout;->edit_filter_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 33
    new-instance p2, Lcom/lewis/edit/ui/adapter/FilterSelectAdapter$FilterHolder;

    invoke-direct {p2, p1}, Lcom/lewis/edit/ui/adapter/FilterSelectAdapter$FilterHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setItemSelect(I)V
    .locals 2

    .line 63
    iget v0, p0, Lcom/lewis/edit/ui/adapter/FilterSelectAdapter;->mLastSelectIndex:I

    if-eq v0, p1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/lewis/edit/ui/adapter/FilterSelectAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lewis/edit/model/entries/FilterBean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lewis/edit/model/entries/FilterBean;->setSelect(Z)V

    .line 65
    iget-object v0, p0, Lcom/lewis/edit/ui/adapter/FilterSelectAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lewis/edit/model/entries/FilterBean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lewis/edit/model/entries/FilterBean;->setSelect(Z)V

    .line 66
    iput p1, p0, Lcom/lewis/edit/ui/adapter/FilterSelectAdapter;->mLastSelectIndex:I

    .line 67
    invoke-virtual {p0}, Lcom/lewis/edit/ui/adapter/FilterSelectAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
