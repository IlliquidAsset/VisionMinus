.class public Lcom/powervision/login/ui/adapter/CountryAdapter;
.super Lme/yokeyword/indexablerv/IndexableAdapter;
.source "CountryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/login/ui/adapter/CountryAdapter$ContentVH;,
        Lcom/powervision/login/ui/adapter/CountryAdapter$IndexVH;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/yokeyword/indexablerv/IndexableAdapter<",
        "Lcom/powervision/login/model/entity/UserEntity;",
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

    iput-object p1, p0, Lcom/powervision/login/ui/adapter/CountryAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public onBindContentViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/powervision/login/model/entity/UserEntity;)V
    .locals 2

    .line 46
    check-cast p1, Lcom/powervision/login/ui/adapter/CountryAdapter$ContentVH;

    .line 47
    iget-object v0, p1, Lcom/powervision/login/ui/adapter/CountryAdapter$ContentVH;->tvName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/powervision/login/model/entity/UserEntity;->getNick()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object p1, p1, Lcom/powervision/login/ui/adapter/CountryAdapter$ContentVH;->tvMobile:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/powervision/login/model/entity/UserEntity;->getMobile()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onBindContentViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lme/yokeyword/indexablerv/IndexableEntity;)V
    .locals 0

    .line 19
    check-cast p2, Lcom/powervision/login/model/entity/UserEntity;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/login/ui/adapter/CountryAdapter;->onBindContentViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/powervision/login/model/entity/UserEntity;)V

    return-void
.end method

.method public onBindTitleViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/String;)V
    .locals 0

    .line 40
    check-cast p1, Lcom/powervision/login/ui/adapter/CountryAdapter$IndexVH;

    .line 41
    iget-object p1, p1, Lcom/powervision/login/ui/adapter/CountryAdapter$IndexVH;->tv:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateContentViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/powervision/login/ui/adapter/CountryAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/powervision/login/R$layout;->login_item_country_content:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 35
    new-instance v0, Lcom/powervision/login/ui/adapter/CountryAdapter$ContentVH;

    invoke-direct {v0, p1}, Lcom/powervision/login/ui/adapter/CountryAdapter$ContentVH;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public onCreateTitleViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 28
    iget-object v0, p0, Lcom/powervision/login/ui/adapter/CountryAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/powervision/login/R$layout;->login_item_country_title:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 29
    new-instance v0, Lcom/powervision/login/ui/adapter/CountryAdapter$IndexVH;

    invoke-direct {v0, p1}, Lcom/powervision/login/ui/adapter/CountryAdapter$IndexVH;-><init>(Landroid/view/View;)V

    return-object v0
.end method
