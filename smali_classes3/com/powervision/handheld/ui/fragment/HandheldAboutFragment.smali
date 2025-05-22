.class public Lcom/powervision/handheld/ui/fragment/HandheldAboutFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "HandheldAboutFragment.java"


# instance fields
.field private mAdapter:Lcom/powervision/handheld/ui/adapter/AboutAdapter;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/handheld/model/AboutItemBean;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/powervision/handheld/ui/fragment/HandheldAboutFragment;
    .locals 1

    .line 37
    new-instance v0, Lcom/powervision/handheld/ui/fragment/HandheldAboutFragment;

    invoke-direct {v0}, Lcom/powervision/handheld/ui/fragment/HandheldAboutFragment;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$initData$0(Landroid/view/View;I)V
    .locals 0

    .line 61
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .line 42
    sget v0, Lcom/powervision/handheld/R$layout;->hand_about_fragment:I

    return v0
.end method

.method protected initData()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldAboutFragment;->mAdapter:Lcom/powervision/handheld/ui/adapter/AboutAdapter;

    sget-object v1, Lcom/powervision/handheld/ui/fragment/-$$Lambda$HandheldAboutFragment$LsuhJp9fmTezgNPQshuN9zGIW8Q;->INSTANCE:Lcom/powervision/handheld/ui/fragment/-$$Lambda$HandheldAboutFragment$LsuhJp9fmTezgNPQshuN9zGIW8Q;

    invoke-virtual {v0, v1}, Lcom/powervision/handheld/ui/adapter/AboutAdapter;->setOnClickListener(Lcom/powervision/handheld/ui/adapter/AboutAdapter$OnClickListener;)V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 4

    .line 47
    sget p1, Lcom/powervision/handheld/R$id;->recyclerView:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/fragment/HandheldAboutFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldAboutFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 48
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/powervision/handheld/ui/fragment/HandheldAboutFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 49
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldAboutFragment;->mList:Ljava/util/List;

    .line 50
    new-instance v0, Lcom/powervision/handheld/model/AboutItemBean;

    invoke-static {}, Lcom/powervision/base/utils/AppUtils;->getVersionName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "APP"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/powervision/handheld/model/AboutItemBean;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldAboutFragment;->mList:Ljava/util/List;

    new-instance v0, Lcom/powervision/handheld/model/AboutItemBean;

    sget v1, Lcom/powervision/handheld/R$string;->AP03_GeneralSetting_228:I

    invoke-virtual {p0, v1}, Lcom/powervision/handheld/ui/fragment/HandheldAboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "N/A"

    invoke-direct {v0, v1, v2, v3}, Lcom/powervision/handheld/model/AboutItemBean;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldAboutFragment;->mList:Ljava/util/List;

    new-instance v0, Lcom/powervision/handheld/model/AboutItemBean;

    sget v1, Lcom/powervision/handheld/R$string;->AP03_DV_GeneralSetting_36:I

    invoke-virtual {p0, v1}, Lcom/powervision/handheld/ui/fragment/HandheldAboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2, v3}, Lcom/powervision/handheld/model/AboutItemBean;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance p1, Lcom/powervision/handheld/ui/adapter/AboutAdapter;

    invoke-virtual {p0}, Lcom/powervision/handheld/ui/fragment/HandheldAboutFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/handheld/ui/fragment/HandheldAboutFragment;->mList:Ljava/util/List;

    invoke-direct {p1, v0, v1}, Lcom/powervision/handheld/ui/adapter/AboutAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldAboutFragment;->mAdapter:Lcom/powervision/handheld/ui/adapter/AboutAdapter;

    .line 54
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldAboutFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 55
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldAboutFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldAboutFragment;->mAdapter:Lcom/powervision/handheld/ui/adapter/AboutAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
