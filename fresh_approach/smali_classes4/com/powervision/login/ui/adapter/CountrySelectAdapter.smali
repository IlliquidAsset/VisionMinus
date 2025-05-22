.class public Lcom/powervision/login/ui/adapter/CountrySelectAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CountrySelectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/login/ui/adapter/CountrySelectAdapter$AdapterListener;,
        Lcom/powervision/login/ui/adapter/CountrySelectAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/powervision/login/ui/adapter/CountrySelectAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TYPE_HEADER:I = 0x1

.field private static final TYPE_ITEM:I = 0x2


# instance fields
.field private isChinaLanguage:Z

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/login/model/entity/CountryListEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/powervision/login/ui/adapter/CountrySelectAdapter$AdapterListener;

.field private mRequestOptions:Lcom/bumptech/glide/request/RequestOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/powervision/login/ui/adapter/CountrySelectAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powervision/login/ui/adapter/CountrySelectAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/login/model/entity/CountryListEntity;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/powervision/login/ui/adapter/CountrySelectAdapter;->mList:Ljava/util/List;

    .line 48
    new-instance p1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget v0, Lcom/powervision/login/R$color;->white:I

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/request/RequestOptions;

    sget v0, Lcom/powervision/login/R$color;->white:I

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/request/RequestOptions;

    iput-object p1, p0, Lcom/powervision/login/ui/adapter/CountrySelectAdapter;->mRequestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 49
    invoke-static {}, Lcom/powervision/base/utils/LanguageUtils;->getLanguageisChina()Z

    move-result p1

    iput-boolean p1, p0, Lcom/powervision/login/ui/adapter/CountrySelectAdapter;->isChinaLanguage:Z

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/powervision/login/ui/adapter/CountrySelectAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/powervision/login/ui/adapter/CountrySelectAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/login/model/entity/CountryListEntity;

    .line 96
    invoke-virtual {p1}, Lcom/powervision/login/model/entity/CountryListEntity;->isDefaultCountry()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public synthetic lambda$onBindViewHolder$0$CountrySelectAdapter(ILandroid/view/View;)V
    .locals 0

    .line 80
    iget-object p2, p0, Lcom/powervision/login/ui/adapter/CountrySelectAdapter;->mListener:Lcom/powervision/login/ui/adapter/CountrySelectAdapter$AdapterListener;

    invoke-static {p2}, Lcom/powervision/base/utils/ObjectUtils;->nonNull(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 81
    iget-object p2, p0, Lcom/powervision/login/ui/adapter/CountrySelectAdapter;->mListener:Lcom/powervision/login/ui/adapter/CountrySelectAdapter$AdapterListener;

    invoke-interface {p2, p1}, Lcom/powervision/login/ui/adapter/CountrySelectAdapter$AdapterListener;->onItemClick(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 26
    check-cast p1, Lcom/powervision/login/ui/adapter/CountrySelectAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/login/ui/adapter/CountrySelectAdapter;->onBindViewHolder(Lcom/powervision/login/ui/adapter/CountrySelectAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/powervision/login/ui/adapter/CountrySelectAdapter$ViewHolder;I)V
    .locals 6

    .line 68
    iget-object v0, p0, Lcom/powervision/login/ui/adapter/CountrySelectAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/login/model/entity/CountryListEntity;

    .line 69
    iget-object v1, p1, Lcom/powervision/login/ui/adapter/CountrySelectAdapter$ViewHolder;->mTvCountryCode:Landroid/widget/TextView;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/powervision/login/model/entity/CountryListEntity;->phoneCode:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "+%s"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v1, p1, Lcom/powervision/login/ui/adapter/CountrySelectAdapter$ViewHolder;->mTvCountryTitle:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/powervision/login/ui/adapter/CountrySelectAdapter;->isChinaLanguage:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/powervision/login/model/entity/CountryListEntity;->zhName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/powervision/login/model/entity/CountryListEntity;->enName:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v1, p1, Lcom/powervision/login/ui/adapter/CountrySelectAdapter$ViewHolder;->mIvCountryFlag:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file:///android_asset/country_icon/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/powervision/login/model/entity/CountryListEntity;->countryCode:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".webp"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/Priority;->HIGH:Lcom/bumptech/glide/Priority;

    .line 75
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    iget-object v1, p0, Lcom/powervision/login/ui/adapter/CountrySelectAdapter;->mRequestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 76
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/powervision/login/ui/adapter/CountrySelectAdapter$ViewHolder;->mIvCountryFlag:Landroid/widget/ImageView;

    .line 77
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 79
    iget-object p1, p1, Lcom/powervision/login/ui/adapter/CountrySelectAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/powervision/login/ui/adapter/-$$Lambda$CountrySelectAdapter$YO6zoFE1yE99jKp7oMsRnJY5QiA;

    invoke-direct {v0, p0, p2}, Lcom/powervision/login/ui/adapter/-$$Lambda$CountrySelectAdapter$YO6zoFE1yE99jKp7oMsRnJY5QiA;-><init>(Lcom/powervision/login/ui/adapter/CountrySelectAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/powervision/login/ui/adapter/CountrySelectAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/powervision/login/ui/adapter/CountrySelectAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/powervision/login/ui/adapter/CountrySelectAdapter$ViewHolder;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 58
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/powervision/login/R$layout;->login_item_header_country:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 60
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/powervision/login/R$layout;->login_item_select_country:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 63
    :goto_0
    new-instance v0, Lcom/powervision/login/ui/adapter/CountrySelectAdapter$ViewHolder;

    invoke-direct {v0, p1, p2}, Lcom/powervision/login/ui/adapter/CountrySelectAdapter$ViewHolder;-><init>(Landroid/view/View;I)V

    return-object v0
.end method

.method public setAdapterListener(Lcom/powervision/login/ui/adapter/CountrySelectAdapter$AdapterListener;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/powervision/login/ui/adapter/CountrySelectAdapter;->mListener:Lcom/powervision/login/ui/adapter/CountrySelectAdapter$AdapterListener;

    return-void
.end method
