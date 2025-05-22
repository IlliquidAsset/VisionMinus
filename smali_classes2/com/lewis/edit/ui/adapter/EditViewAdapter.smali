.class public Lcom/lewis/edit/ui/adapter/EditViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "EditViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewis/edit/ui/adapter/EditViewAdapter$OnItemClickListener;,
        Lcom/lewis/edit/ui/adapter/EditViewAdapter$EditViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/lewis/edit/ui/adapter/EditViewAdapter$EditViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mIsLogo:Z

.field private mItemClickListener:Lcom/lewis/edit/ui/adapter/EditViewAdapter$OnItemClickListener;

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
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lewis/edit/model/entries/EditResBean;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/lewis/edit/ui/adapter/EditViewAdapter;->mList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/lewis/edit/ui/adapter/EditViewAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$EditViewAdapter(Lcom/lewis/edit/ui/adapter/EditViewAdapter$EditViewHolder;Landroid/view/View;)V
    .locals 0

    .line 54
    iget-object p2, p0, Lcom/lewis/edit/ui/adapter/EditViewAdapter;->mItemClickListener:Lcom/lewis/edit/ui/adapter/EditViewAdapter$OnItemClickListener;

    if-eqz p2, :cond_0

    .line 55
    invoke-virtual {p1}, Lcom/lewis/edit/ui/adapter/EditViewAdapter$EditViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-interface {p2, p1}, Lcom/lewis/edit/ui/adapter/EditViewAdapter$OnItemClickListener;->onItemClick(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 24
    check-cast p1, Lcom/lewis/edit/ui/adapter/EditViewAdapter$EditViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/lewis/edit/ui/adapter/EditViewAdapter;->onBindViewHolder(Lcom/lewis/edit/ui/adapter/EditViewAdapter$EditViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/lewis/edit/ui/adapter/EditViewAdapter$EditViewHolder;I)V
    .locals 8

    .line 43
    invoke-static {p1}, Lcom/lewis/edit/ui/adapter/EditViewAdapter$EditViewHolder;->access$000(Lcom/lewis/edit/ui/adapter/EditViewAdapter$EditViewHolder;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lewis/edit/ui/adapter/EditViewAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lewis/edit/model/entries/EditResBean;

    invoke-virtual {v1}, Lcom/lewis/edit/model/entries/EditResBean;->getTitleResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 44
    invoke-static {p1}, Lcom/lewis/edit/ui/adapter/EditViewAdapter$EditViewHolder;->access$000(Lcom/lewis/edit/ui/adapter/EditViewAdapter$EditViewHolder;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lewis/edit/ui/adapter/EditViewAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lewis/edit/model/entries/EditResBean;

    invoke-virtual {v1}, Lcom/lewis/edit/model/entries/EditResBean;->getPicResId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 45
    iget-boolean v0, p0, Lcom/lewis/edit/ui/adapter/EditViewAdapter;->mIsLogo:Z

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    if-eqz p2, :cond_5

    :cond_0
    iget-boolean v0, p0, Lcom/lewis/edit/ui/adapter/EditViewAdapter;->mIsLogo:Z

    if-eqz v0, :cond_1

    if-eq p2, v5, :cond_5

    :cond_1
    iget-boolean v0, p0, Lcom/lewis/edit/ui/adapter/EditViewAdapter;->mIsLogo:Z

    if-eqz v0, :cond_2

    if-eq p2, v4, :cond_5

    :cond_2
    iget-boolean v0, p0, Lcom/lewis/edit/ui/adapter/EditViewAdapter;->mIsLogo:Z

    if-eqz v0, :cond_3

    if-eq p2, v3, :cond_5

    :cond_3
    iget-boolean v0, p0, Lcom/lewis/edit/ui/adapter/EditViewAdapter;->mIsLogo:Z

    if-eqz v0, :cond_4

    if-eq p2, v2, :cond_5

    :cond_4
    iget-boolean v0, p0, Lcom/lewis/edit/ui/adapter/EditViewAdapter;->mIsLogo:Z

    if-eqz v0, :cond_6

    if-ne p2, v1, :cond_6

    .line 46
    :cond_5
    sget v0, Lcom/lewis/edit/R$color;->light_gray_color:I

    invoke-static {p1, v0}, Lcom/lewis/edit/ui/adapter/EditViewAdapter$EditViewHolder;->access$100(Lcom/lewis/edit/ui/adapter/EditViewAdapter$EditViewHolder;I)V

    goto :goto_0

    .line 48
    :cond_6
    sget v0, Lcom/lewis/edit/R$color;->white:I

    invoke-static {p1, v0}, Lcom/lewis/edit/ui/adapter/EditViewAdapter$EditViewHolder;->access$100(Lcom/lewis/edit/ui/adapter/EditViewAdapter$EditViewHolder;I)V

    .line 50
    :goto_0
    invoke-static {p1}, Lcom/lewis/edit/ui/adapter/EditViewAdapter$EditViewHolder;->access$000(Lcom/lewis/edit/ui/adapter/EditViewAdapter$EditViewHolder;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    iget-boolean v6, p0, Lcom/lewis/edit/ui/adapter/EditViewAdapter;->mIsLogo:Z

    const/4 v7, 0x7

    if-eqz v6, :cond_7

    if-ne p2, v7, :cond_8

    goto :goto_1

    :cond_7
    if-eqz p2, :cond_9

    if-eq p2, v5, :cond_9

    if-eq p2, v4, :cond_9

    if-eq p2, v3, :cond_9

    if-eq p2, v2, :cond_9

    if-eq p2, v1, :cond_9

    if-ne p2, v7, :cond_8

    goto :goto_1

    .line 52
    :cond_8
    invoke-static {p1}, Lcom/lewis/edit/ui/adapter/EditViewAdapter$EditViewHolder;->access$000(Lcom/lewis/edit/ui/adapter/EditViewAdapter$EditViewHolder;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/widget/AppCompatTextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/lewis/edit/R$color;->light_gray_color:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    goto :goto_2

    .line 51
    :cond_9
    :goto_1
    invoke-static {p1}, Lcom/lewis/edit/ui/adapter/EditViewAdapter$EditViewHolder;->access$000(Lcom/lewis/edit/ui/adapter/EditViewAdapter$EditViewHolder;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/widget/AppCompatTextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x106000b

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    .line 50
    :goto_2
    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    .line 53
    iget-object p2, p1, Lcom/lewis/edit/ui/adapter/EditViewAdapter$EditViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/lewis/edit/ui/adapter/-$$Lambda$EditViewAdapter$b-v9s7bSJuVSAG0JtBpYcNTbn6o;

    invoke-direct {v0, p0, p1}, Lcom/lewis/edit/ui/adapter/-$$Lambda$EditViewAdapter$b-v9s7bSJuVSAG0JtBpYcNTbn6o;-><init>(Lcom/lewis/edit/ui/adapter/EditViewAdapter;Lcom/lewis/edit/ui/adapter/EditViewAdapter$EditViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/lewis/edit/ui/adapter/EditViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/lewis/edit/ui/adapter/EditViewAdapter$EditViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/lewis/edit/ui/adapter/EditViewAdapter$EditViewHolder;
    .locals 2

    .line 37
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/lewis/edit/R$layout;->edit_function_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 38
    new-instance p2, Lcom/lewis/edit/ui/adapter/EditViewAdapter$EditViewHolder;

    invoke-direct {p2, p1}, Lcom/lewis/edit/ui/adapter/EditViewAdapter$EditViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setOnItemClickListener(Lcom/lewis/edit/ui/adapter/EditViewAdapter$OnItemClickListener;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/lewis/edit/ui/adapter/EditViewAdapter;->mItemClickListener:Lcom/lewis/edit/ui/adapter/EditViewAdapter$OnItemClickListener;

    return-void
.end method

.method public updateItemData(III)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/lewis/edit/ui/adapter/EditViewAdapter;->mList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/lewis/edit/ui/adapter/EditViewAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lewis/edit/model/entries/EditResBean;

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0, p2}, Lcom/lewis/edit/model/entries/EditResBean;->setPicResId(I)V

    .line 77
    invoke-virtual {v0, p3}, Lcom/lewis/edit/model/entries/EditResBean;->setTitleResId(I)V

    .line 78
    invoke-virtual {p0, p1}, Lcom/lewis/edit/ui/adapter/EditViewAdapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method public updateLogoView(Z)V
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcom/lewis/edit/ui/adapter/EditViewAdapter;->mIsLogo:Z

    .line 88
    iget-object p1, p0, Lcom/lewis/edit/ui/adapter/EditViewAdapter;->mList:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/lewis/edit/ui/adapter/EditViewAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
