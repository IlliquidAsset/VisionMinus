.class public Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "UserRealNameRegisterActivity.java"

# interfaces
.implements Lcom/powervision/user/ui/view/IUserRealNameView;
.implements Landroid/view/View$OnClickListener;
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;
.implements Lcom/powervision/base/views/TipDialog$DialogTipClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseActivity<",
        "Lcom/powervision/user/presenter/impl/UserRealNamePresenter;",
        "Lcom/powervision/base/base/BaseModel;",
        ">;",
        "Lcom/powervision/user/ui/view/IUserRealNameView;",
        "Landroid/view/View$OnClickListener;",
        "Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;",
        "Lcom/powervision/base/views/TipDialog$DialogTipClickListener;"
    }
.end annotation


# instance fields
.field private mDeletePosition:I

.field private mNameBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/user/bean/UrnRegisterItemBean;",
            ">;"
        }
    .end annotation
.end field

.field private mNameShowAdapter:Lcom/powervision/user/ui/adapter/UserRealNameShowAdapter;

.field private mRvContent:Landroidx/recyclerview/widget/RecyclerView;

.field private mSrlRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field private mTipDeleteDialog:Lcom/powervision/base/views/TipDialog;

.field private mTitle:Landroid/widget/TextView;

.field private mToolbar:Landroidx/appcompat/widget/Toolbar;

.field private mTvRight:Landroid/widget/TextView;

.field private mTvWork:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->mNameBeanList:Ljava/util/List;

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->mDeletePosition:I

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->mNameBeanList:Ljava/util/List;

    return-object p0
.end method

.method public static goInTo(Landroid/content/Context;)V
    .locals 2

    .line 50
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private initEmptyView()V
    .locals 4

    .line 127
    invoke-virtual {p0}, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/powervision/user/R$layout;->user_layout_real_name_add:I

    iget-object v2, p0, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 128
    sget v1, Lcom/powervision/user/R$id;->rl_user_layout_rna_add:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/powervision/user/ui/activity/-$$Lambda$UserRealNameRegisterActivity$uCG6quedNrR-cqiujbdWqGE3W4A;

    invoke-direct {v2, p0}, Lcom/powervision/user/ui/activity/-$$Lambda$UserRealNameRegisterActivity$uCG6quedNrR-cqiujbdWqGE3W4A;-><init>(Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    iget-object v1, p0, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->mNameShowAdapter:Lcom/powervision/user/ui/adapter/UserRealNameShowAdapter;

    invoke-virtual {v1, v0}, Lcom/powervision/user/ui/adapter/UserRealNameShowAdapter;->setEmptyView(Landroid/view/View;)V

    .line 135
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->mNameShowAdapter:Lcom/powervision/user/ui/adapter/UserRealNameShowAdapter;

    invoke-virtual {v0, v3}, Lcom/powervision/user/ui/adapter/UserRealNameShowAdapter;->isUseEmpty(Z)V

    return-void
.end method

.method private initRecycle()V
    .locals 3

    .line 111
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 112
    iget-object v1, p0, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 113
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 115
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 116
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setFocusable(Z)V

    .line 118
    new-instance v0, Lcom/powervision/user/ui/adapter/UserRealNameShowAdapter;

    sget v1, Lcom/powervision/user/R$layout;->user_item_real_name_show:I

    iget-object v2, p0, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->mNameBeanList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/powervision/user/ui/adapter/UserRealNameShowAdapter;-><init>(ILjava/util/List;)V

    iput-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->mNameShowAdapter:Lcom/powervision/user/ui/adapter/UserRealNameShowAdapter;

    .line 119
    invoke-direct {p0}, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->initEmptyView()V

    .line 120
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->mNameShowAdapter:Lcom/powervision/user/ui/adapter/UserRealNameShowAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private workIsHadEmpty(Z)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->mTvRight:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private workRequestResult(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/user/bean/UrnRegisterItemBean;",
            ">;)V"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->mSrlRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 218
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->mNameBeanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->mNameBeanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 221
    :cond_0
    invoke-static {p1}, Lcom/powervision/base/utils/StringUtils;->isListValid(Ljava/util/List;)Z

    move-result v0

    .line 222
    invoke-direct {p0, v0}, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->workIsHadEmpty(Z)V

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->mNameShowAdapter:Lcom/powervision/user/ui/adapter/UserRealNameShowAdapter;

    invoke-virtual {v0, v1}, Lcom/powervision/user/ui/adapter/UserRealNameShowAdapter;->isUseEmpty(Z)V

    .line 225
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->mNameBeanList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 227
    :cond_1
    iget-object p1, p0, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->mNameShowAdapter:Lcom/powervision/user/ui/adapter/UserRealNameShowAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/powervision/user/ui/adapter/UserRealNameShowAdapter;->isUseEmpty(Z)V

    .line 229
    :goto_0
    iget-object p1, p0, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->mNameShowAdapter:Lcom/powervision/user/ui/adapter/UserRealNameShowAdapter;

    invoke-virtual {p1}, Lcom/powervision/user/ui/adapter/UserRealNameShowAdapter;->notifyDataSetChanged()V

    .line 231
    invoke-direct {p0}, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->workUserRealNameRegisterData()V

    return-void
.end method

.method private workUserRealNameRegisterData()V
    .locals 4

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    iget-object v1, p0, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->mNameBeanList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 240
    iget-object v1, p0, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->mNameBeanList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/user/bean/UrnRegisterItemBean;

    .line 241
    invoke-virtual {v2}, Lcom/powervision/user/bean/UrnRegisterItemBean;->getRealRegisterNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "+"

    .line 242
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v2}, Lcom/powervision/user/bean/UrnRegisterItemBean;->getDevicePsn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    .line 244
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 246
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v1

    const-string v2, "AP03_FLY_UAS_ID_PSN_CODE"

    invoke-virtual {v1, v2, v0}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .line 55
    sget v0, Lcom/powervision/user/R$layout;->user_activity_real_name_register:I

    return v0
.end method

.method protected initData()V
    .locals 8

    .line 70
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    sget v1, Lcom/powervision/user/R$mipmap;->icon_back_black:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    .line 71
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 72
    invoke-virtual {p0}, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 74
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->mTitle:Landroid/widget/TextView;

    sget v1, Lcom/powervision/user/R$string;->AP03_Verified_1:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 77
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->mTvRight:Landroid/widget/TextView;

    sget v1, Lcom/powervision/user/R$string;->AP03_Verified_12:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 79
    new-instance v0, Lcom/powervision/base/views/TipDialog;

    sget v1, Lcom/powervision/user/R$string;->AP03_Verified_25:I

    invoke-virtual {p0, v1}, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v1, Lcom/powervision/user/R$string;->AP03_Verified_26:I

    .line 80
    invoke-virtual {p0, v1}, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object v2, v0

    move-object v3, p0

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/powervision/base/views/TipDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/powervision/base/views/TipDialog$DialogTipClickListener;)V

    iput-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->mTipDeleteDialog:Lcom/powervision/base/views/TipDialog;

    .line 82
    invoke-direct {p0}, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->initRecycle()V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    .line 60
    sget p1, Lcom/powervision/user/R$id;->base_toolbar:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    iput-object p1, p0, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 61
    sget p1, Lcom/powervision/user/R$id;->base_title:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->mTitle:Landroid/widget/TextView;

    .line 62
    sget p1, Lcom/powervision/user/R$id;->base_right:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->mTvRight:Landroid/widget/TextView;

    .line 63
    sget p1, Lcom/powervision/user/R$id;->srl_user_activity_rnr_refresh:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object p1, p0, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->mSrlRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 64
    sget p1, Lcom/powervision/user/R$id;->rv_user_activity_rnr_content:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    .line 65
    sget p1, Lcom/powervision/user/R$id;->tv_user_activity_rnr_work:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->mTvWork:Landroid/widget/TextView;

    return-void
.end method

.method public synthetic lambda$initEmptyView$1$UserRealNameRegisterActivity(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 129
    invoke-static {p0, p1, v0}, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->goInTo(Landroid/content/Context;ILcom/powervision/user/bean/UrnRegisterItemBean;)V

    return-void
.end method

.method public synthetic lambda$onRefresh$2$UserRealNameRegisterActivity()V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter;

    invoke-virtual {v0}, Lcom/powervision/user/presenter/impl/UserRealNamePresenter;->umRnrQueryHadDevice()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$setListener$0$UserRealNameRegisterActivity(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 0

    .line 91
    iput p3, p0, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->mDeletePosition:I

    .line 92
    iget-object p1, p0, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->mTipDeleteDialog:Lcom/powervision/base/views/TipDialog;

    if-eqz p1, :cond_0

    .line 93
    invoke-virtual {p1}, Lcom/powervision/base/views/TipDialog;->show()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 153
    sget v0, Lcom/powervision/user/R$id;->base_right:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 154
    invoke-static {p0, v0, v1}, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->goInTo(Landroid/content/Context;ILcom/powervision/user/bean/UrnRegisterItemBean;)V

    .line 156
    :cond_0
    sget v0, Lcom/powervision/user/R$id;->tv_user_activity_rnr_work:I

    if-ne v0, p1, :cond_1

    .line 157
    invoke-static {p0}, Lcom/powervision/user/ui/activity/UserRealNameIntroductionActivity;->goInTo(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 253
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->finish()V

    .line 256
    :cond_0
    invoke-super {p0, p1}, Lcom/powervision/base/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onRefresh()V
    .locals 4

    .line 163
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/powervision/user/ui/activity/-$$Lambda$UserRealNameRegisterActivity$FnTvK8W5Nn2m8GAWOq7Tx1Yuri0;

    invoke-direct {v1, p0}, Lcom/powervision/user/ui/activity/-$$Lambda$UserRealNameRegisterActivity$FnTvK8W5Nn2m8GAWOq7Tx1Yuri0;-><init>(Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 144
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onResume()V

    .line 146
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->mSrlRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 147
    invoke-virtual {p0}, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->onRefresh()V

    return-void
.end method

.method public onTipCancel()V
    .locals 0

    return-void
.end method

.method public onTipConfirm()V
    .locals 2

    .line 173
    iget v0, p0, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->mDeletePosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->mNameBeanList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/user/bean/UrnRegisterItemBean;

    .line 175
    iget-object v1, p0, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v1, Lcom/powervision/user/presenter/impl/UserRealNamePresenter;

    invoke-virtual {v0}, Lcom/powervision/user/bean/UrnRegisterItemBean;->getId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/powervision/user/presenter/impl/UserRealNamePresenter;->umRnrDeleteDevice(I)V

    :cond_0
    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->mTvRight:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->mTvWork:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->mSrlRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 90
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->mNameShowAdapter:Lcom/powervision/user/ui/adapter/UserRealNameShowAdapter;

    new-instance v1, Lcom/powervision/user/ui/activity/-$$Lambda$UserRealNameRegisterActivity$pGxelywaf0AFCCBlO1a-6KVm8YM;

    invoke-direct {v1, p0}, Lcom/powervision/user/ui/activity/-$$Lambda$UserRealNameRegisterActivity$pGxelywaf0AFCCBlO1a-6KVm8YM;-><init>(Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;)V

    invoke-virtual {v0, v1}, Lcom/powervision/user/ui/adapter/UserRealNameShowAdapter;->setOnItemLongClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemLongClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->mNameShowAdapter:Lcom/powervision/user/ui/adapter/UserRealNameShowAdapter;

    new-instance v1, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity$1;

    invoke-direct {v1, p0}, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity$1;-><init>(Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;)V

    invoke-virtual {v0, v1}, Lcom/powervision/user/ui/adapter/UserRealNameShowAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    return-void
.end method

.method public urnDeleteSuccess()V
    .locals 2

    .line 196
    iget v0, p0, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->mDeletePosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 197
    iget-object v1, p0, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->mNameBeanList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 198
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->mNameBeanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 199
    invoke-direct {p0, v0}, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->workRequestResult(Ljava/util/List;)V

    goto :goto_0

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->mNameShowAdapter:Lcom/powervision/user/ui/adapter/UserRealNameShowAdapter;

    invoke-virtual {v0}, Lcom/powervision/user/ui/adapter/UserRealNameShowAdapter;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void
.end method

.method public urnDeviceSuccess(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/user/bean/UrnDeviceItemBean;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public urnFail(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    .line 213
    invoke-direct {p0, p1}, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->workRequestResult(Ljava/util/List;)V

    return-void
.end method

.method public urnRegisterSuccess(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/user/bean/UrnRegisterItemBean;",
            ">;)V"
        }
    .end annotation

    .line 186
    invoke-direct {p0, p1}, Lcom/powervision/user/ui/activity/UserRealNameRegisterActivity;->workRequestResult(Ljava/util/List;)V

    return-void
.end method

.method public urnSaveSuccess()V
    .locals 0

    return-void
.end method
