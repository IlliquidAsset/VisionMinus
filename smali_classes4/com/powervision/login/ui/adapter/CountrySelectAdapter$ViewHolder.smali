.class public Lcom/powervision/login/ui/adapter/CountrySelectAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CountrySelectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/login/ui/adapter/CountrySelectAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field mIvCountryFlag:Landroid/widget/ImageView;

.field mTvCountryCode:Landroid/widget/TextView;

.field mTvCountryTitle:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;I)V
    .locals 1

    .line 110
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    sget p2, Lcom/powervision/login/R$id;->iv_country_flag:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/powervision/login/ui/adapter/CountrySelectAdapter$ViewHolder;->mIvCountryFlag:Landroid/widget/ImageView;

    .line 120
    sget p2, Lcom/powervision/login/R$id;->tv_country_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/powervision/login/ui/adapter/CountrySelectAdapter$ViewHolder;->mTvCountryTitle:Landroid/widget/TextView;

    .line 121
    sget p2, Lcom/powervision/login/R$id;->tv_country_code:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/login/ui/adapter/CountrySelectAdapter$ViewHolder;->mTvCountryCode:Landroid/widget/TextView;

    goto :goto_0

    .line 113
    :cond_1
    sget p2, Lcom/powervision/login/R$id;->iv_country_flag:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/powervision/login/ui/adapter/CountrySelectAdapter$ViewHolder;->mIvCountryFlag:Landroid/widget/ImageView;

    .line 114
    sget p2, Lcom/powervision/login/R$id;->tv_country_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/powervision/login/ui/adapter/CountrySelectAdapter$ViewHolder;->mTvCountryTitle:Landroid/widget/TextView;

    .line 115
    sget p2, Lcom/powervision/login/R$id;->tv_country_code:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/login/ui/adapter/CountrySelectAdapter$ViewHolder;->mTvCountryCode:Landroid/widget/TextView;

    :goto_0
    return-void
.end method
