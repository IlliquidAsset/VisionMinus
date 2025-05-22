.class public Lcom/powervision/gcs/adapter/ship/ContactAdapter;
.super Lme/yokeyword/indexablerv/IndexableAdapter;
.source "ContactAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/adapter/ship/ContactAdapter$ContentVH;,
        Lcom/powervision/gcs/adapter/ship/ContactAdapter$IndexVH;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/yokeyword/indexablerv/IndexableAdapter<",
        "Lcom/powervision/gcs/model/ship/UserEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lme/yokeyword/indexablerv/IndexableAdapter;-><init>()V

    .line 23
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/adapter/ship/ContactAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public onBindContentViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/powervision/gcs/model/ship/UserEntity;)V
    .locals 2

    .line 46
    check-cast p1, Lcom/powervision/gcs/adapter/ship/ContactAdapter$ContentVH;

    .line 47
    iget-object v0, p1, Lcom/powervision/gcs/adapter/ship/ContactAdapter$ContentVH;->tvName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/powervision/gcs/model/ship/UserEntity;->getNick()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object p1, p1, Lcom/powervision/gcs/adapter/ship/ContactAdapter$ContentVH;->tvMobile:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/powervision/gcs/model/ship/UserEntity;->getMobile()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onBindContentViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lme/yokeyword/indexablerv/IndexableEntity;)V
    .locals 0

    .line 19
    check-cast p2, Lcom/powervision/gcs/model/ship/UserEntity;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/gcs/adapter/ship/ContactAdapter;->onBindContentViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/powervision/gcs/model/ship/UserEntity;)V

    return-void
.end method

.method public onBindTitleViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/String;)V
    .locals 0

    .line 40
    check-cast p1, Lcom/powervision/gcs/adapter/ship/ContactAdapter$IndexVH;

    .line 41
    iget-object p1, p1, Lcom/powervision/gcs/adapter/ship/ContactAdapter$IndexVH;->tv:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateContentViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/powervision/gcs/adapter/ship/ContactAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/powervision/gcs/R$layout;->country_item_contact:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 35
    new-instance v0, Lcom/powervision/gcs/adapter/ship/ContactAdapter$ContentVH;

    invoke-direct {v0, p1}, Lcom/powervision/gcs/adapter/ship/ContactAdapter$ContentVH;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public onCreateTitleViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 28
    iget-object v0, p0, Lcom/powervision/gcs/adapter/ship/ContactAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/powervision/gcs/R$layout;->country_item_index_contact:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 29
    new-instance v0, Lcom/powervision/gcs/adapter/ship/ContactAdapter$IndexVH;

    invoke-direct {v0, p1}, Lcom/powervision/gcs/adapter/ship/ContactAdapter$IndexVH;-><init>(Landroid/view/View;)V

    return-object v0
.end method
