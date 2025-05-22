.class public Lcom/powervision/login/ui/activity/SelectCountryActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "SelectCountryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private mAdapter:Lcom/powervision/login/ui/adapter/CountryAdapter;

.field private mArrayAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBack:Landroid/widget/ImageView;

.field private mFindList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/login/model/entity/UserEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mIndexableLayout:Lme/yokeyword/indexablerv/IndexableLayout;

.field private mSearchList:Landroid/widget/ListView;

.field private mSearchView:Landroidx/appcompat/widget/SearchView;

.field private mUserEntityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/login/model/entity/UserEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/login/ui/activity/SelectCountryActivity;->mFindList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/login/ui/activity/SelectCountryActivity;)Lme/yokeyword/indexablerv/IndexableLayout;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/powervision/login/ui/activity/SelectCountryActivity;->mIndexableLayout:Lme/yokeyword/indexablerv/IndexableLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/login/ui/activity/SelectCountryActivity;)Landroid/widget/ListView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/powervision/login/ui/activity/SelectCountryActivity;->mSearchList:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/login/ui/activity/SelectCountryActivity;)Ljava/util/List;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/powervision/login/ui/activity/SelectCountryActivity;->mFindList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/login/ui/activity/SelectCountryActivity;)Ljava/util/List;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/powervision/login/ui/activity/SelectCountryActivity;->mUserEntityList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/powervision/login/ui/activity/SelectCountryActivity;)Landroid/widget/ArrayAdapter;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/powervision/login/ui/activity/SelectCountryActivity;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    return-object p0
.end method

.method static synthetic access$402(Lcom/powervision/login/ui/activity/SelectCountryActivity;Landroid/widget/ArrayAdapter;)Landroid/widget/ArrayAdapter;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/powervision/login/ui/activity/SelectCountryActivity;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    return-object p1
.end method

.method private initAdapter()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/powervision/login/ui/activity/SelectCountryActivity;->mIndexableLayout:Lme/yokeyword/indexablerv/IndexableLayout;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lme/yokeyword/indexablerv/IndexableLayout;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 152
    new-instance v0, Lcom/powervision/login/ui/adapter/CountryAdapter;

    invoke-direct {v0, p0}, Lcom/powervision/login/ui/adapter/CountryAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powervision/login/ui/activity/SelectCountryActivity;->mAdapter:Lcom/powervision/login/ui/adapter/CountryAdapter;

    .line 153
    iget-object v1, p0, Lcom/powervision/login/ui/activity/SelectCountryActivity;->mIndexableLayout:Lme/yokeyword/indexablerv/IndexableLayout;

    invoke-virtual {v1, v0}, Lme/yokeyword/indexablerv/IndexableLayout;->setAdapter(Lme/yokeyword/indexablerv/IndexableAdapter;)V

    .line 154
    iget-object v0, p0, Lcom/powervision/login/ui/activity/SelectCountryActivity;->mIndexableLayout:Lme/yokeyword/indexablerv/IndexableLayout;

    invoke-virtual {v0}, Lme/yokeyword/indexablerv/IndexableLayout;->setOverlayStyle_Center()V

    .line 155
    iget-object v0, p0, Lcom/powervision/login/ui/activity/SelectCountryActivity;->mAdapter:Lcom/powervision/login/ui/adapter/CountryAdapter;

    invoke-direct {p0}, Lcom/powervision/login/ui/activity/SelectCountryActivity;->setData()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/login/ui/adapter/CountryAdapter;->setDatas(Ljava/util/List;)V

    .line 156
    iget-object v0, p0, Lcom/powervision/login/ui/activity/SelectCountryActivity;->mIndexableLayout:Lme/yokeyword/indexablerv/IndexableLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lme/yokeyword/indexablerv/IndexableLayout;->setCompareMode(I)V

    return-void
.end method

.method private initSearchView()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/powervision/login/ui/activity/SelectCountryActivity;->mSearchView:Landroidx/appcompat/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 142
    iget-object v0, p0, Lcom/powervision/login/ui/activity/SelectCountryActivity;->mSearchView:Landroidx/appcompat/widget/SearchView;

    const v1, 0x104000c

    invoke-virtual {p0, v1}, Lcom/powervision/login/ui/activity/SelectCountryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setData()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/powervision/login/model/entity/UserEntity;",
            ">;"
        }
    .end annotation

    .line 163
    invoke-static {}, Lcom/powervision/base/utils/LanguageUtils;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "chineseCountryJson.txt"

    .line 166
    invoke-static {p0, v0}, Lcom/powervision/base/utils/FileUtils;->getFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "englishCountryJson.txt"

    .line 168
    invoke-static {p0, v0}, Lcom/powervision/base/utils/FileUtils;->getFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    sget v1, Lcom/powervision/login/R$string;->APP_function_8:I

    invoke-virtual {p0, v1}, Lcom/powervision/login/ui/activity/SelectCountryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    .line 173
    :cond_1
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Lcom/powervision/login/ui/activity/SelectCountryActivity$2;

    invoke-direct {v2, p0}, Lcom/powervision/login/ui/activity/SelectCountryActivity$2;-><init>(Lcom/powervision/login/ui/activity/SelectCountryActivity;)V

    .line 174
    invoke-virtual {v2}, Lcom/powervision/login/ui/activity/SelectCountryActivity$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 173
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/model/ResultModel;

    .line 175
    invoke-virtual {v0}, Lcom/powervision/base/model/ResultModel;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 176
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/powervision/login/ui/activity/SelectCountryActivity;->mUserEntityList:Ljava/util/List;

    const/4 v1, 0x0

    .line 177
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 178
    new-instance v2, Lcom/powervision/login/model/entity/UserEntity;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/base/model/CountryModel;

    invoke-virtual {v3}, Lcom/powervision/base/model/CountryModel;->getCountryName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/powervision/base/model/CountryModel;

    invoke-virtual {v4}, Lcom/powervision/base/model/CountryModel;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/powervision/login/model/entity/UserEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/base/model/CountryModel;

    invoke-virtual {v3}, Lcom/powervision/base/model/CountryModel;->getCountryPinyin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/powervision/login/model/entity/UserEntity;->setFieldPinyinIndexBy(Ljava/lang/String;)V

    .line 180
    iget-object v3, p0, Lcom/powervision/login/ui/activity/SelectCountryActivity;->mUserEntityList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 182
    :cond_2
    iget-object v0, p0, Lcom/powervision/login/ui/activity/SelectCountryActivity;->mUserEntityList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .line 53
    sget v0, Lcom/powervision/login/R$layout;->login_activity_select_country:I

    return v0
.end method

.method protected initData()V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/powervision/login/ui/activity/SelectCountryActivity;->initAdapter()V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    .line 58
    sget p1, Lcom/powervision/login/R$id;->indexableLayout:I

    invoke-virtual {p0, p1}, Lcom/powervision/login/ui/activity/SelectCountryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lme/yokeyword/indexablerv/IndexableLayout;

    iput-object p1, p0, Lcom/powervision/login/ui/activity/SelectCountryActivity;->mIndexableLayout:Lme/yokeyword/indexablerv/IndexableLayout;

    .line 59
    sget p1, Lcom/powervision/login/R$id;->searchEdit:I

    invoke-virtual {p0, p1}, Lcom/powervision/login/ui/activity/SelectCountryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SearchView;

    iput-object p1, p0, Lcom/powervision/login/ui/activity/SelectCountryActivity;->mSearchView:Landroidx/appcompat/widget/SearchView;

    .line 60
    sget p1, Lcom/powervision/login/R$id;->search_list:I

    invoke-virtual {p0, p1}, Lcom/powervision/login/ui/activity/SelectCountryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/powervision/login/ui/activity/SelectCountryActivity;->mSearchList:Landroid/widget/ListView;

    .line 61
    sget p1, Lcom/powervision/login/R$id;->img_back:I

    invoke-virtual {p0, p1}, Lcom/powervision/login/ui/activity/SelectCountryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/login/ui/activity/SelectCountryActivity;->mBack:Landroid/widget/ImageView;

    .line 63
    invoke-direct {p0}, Lcom/powervision/login/ui/activity/SelectCountryActivity;->initSearchView()V

    return-void
.end method

.method public synthetic lambda$setListener$0$SelectCountryActivity(Landroid/view/View;IILcom/powervision/login/model/entity/UserEntity;)V
    .locals 0

    if-ltz p2, :cond_0

    .line 127
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 128
    invoke-virtual {p4}, Lcom/powervision/login/model/entity/UserEntity;->getNick()Ljava/lang/String;

    move-result-object p2

    const-string p3, "country_name"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    invoke-virtual {p4}, Lcom/powervision/login/model/entity/UserEntity;->getMobile()Ljava/lang/String;

    move-result-object p2

    const-string p3, "country_code"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, -0x1

    .line 130
    invoke-virtual {p0, p2, p1}, Lcom/powervision/login/ui/activity/SelectCountryActivity;->setResult(ILandroid/content/Intent;)V

    .line 131
    invoke-virtual {p0}, Lcom/powervision/login/ui/activity/SelectCountryActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 187
    invoke-virtual {p0}, Lcom/powervision/login/ui/activity/SelectCountryActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 201
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 202
    iput-object v0, p0, Lcom/powervision/login/ui/activity/SelectCountryActivity;->mSearchView:Landroidx/appcompat/widget/SearchView;

    .line 203
    iput-object v0, p0, Lcom/powervision/login/ui/activity/SelectCountryActivity;->mIndexableLayout:Lme/yokeyword/indexablerv/IndexableLayout;

    .line 204
    iput-object v0, p0, Lcom/powervision/login/ui/activity/SelectCountryActivity;->mAdapter:Lcom/powervision/login/ui/adapter/CountryAdapter;

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 192
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 193
    iget-object p2, p0, Lcom/powervision/login/ui/activity/SelectCountryActivity;->mFindList:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/powervision/login/model/entity/UserEntity;

    invoke-virtual {p2}, Lcom/powervision/login/model/entity/UserEntity;->getNick()Ljava/lang/String;

    move-result-object p2

    const-string p4, "country_name"

    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    iget-object p2, p0, Lcom/powervision/login/ui/activity/SelectCountryActivity;->mFindList:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/powervision/login/model/entity/UserEntity;

    invoke-virtual {p2}, Lcom/powervision/login/model/entity/UserEntity;->getMobile()Ljava/lang/String;

    move-result-object p2

    const-string p3, "country_code"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, -0x1

    .line 195
    invoke-virtual {p0, p2, p1}, Lcom/powervision/login/ui/activity/SelectCountryActivity;->setResult(ILandroid/content/Intent;)V

    .line 196
    invoke-virtual {p0}, Lcom/powervision/login/ui/activity/SelectCountryActivity;->finish()V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 73
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->setListener()V

    .line 74
    iget-object v0, p0, Lcom/powervision/login/ui/activity/SelectCountryActivity;->mBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/powervision/login/ui/activity/SelectCountryActivity;->mSearchView:Landroidx/appcompat/widget/SearchView;

    new-instance v1, Lcom/powervision/login/ui/activity/SelectCountryActivity$1;

    invoke-direct {v1, p0}, Lcom/powervision/login/ui/activity/SelectCountryActivity$1;-><init>(Lcom/powervision/login/ui/activity/SelectCountryActivity;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 125
    iget-object v0, p0, Lcom/powervision/login/ui/activity/SelectCountryActivity;->mAdapter:Lcom/powervision/login/ui/adapter/CountryAdapter;

    new-instance v1, Lcom/powervision/login/ui/activity/-$$Lambda$SelectCountryActivity$88p2ixRqnXQsPPtDpKTpA_r8c3U;

    invoke-direct {v1, p0}, Lcom/powervision/login/ui/activity/-$$Lambda$SelectCountryActivity$88p2ixRqnXQsPPtDpKTpA_r8c3U;-><init>(Lcom/powervision/login/ui/activity/SelectCountryActivity;)V

    invoke-virtual {v0, v1}, Lcom/powervision/login/ui/adapter/CountryAdapter;->setOnItemContentClickListener(Lme/yokeyword/indexablerv/IndexableAdapter$OnItemContentClickListener;)V

    .line 134
    iget-object v0, p0, Lcom/powervision/login/ui/activity/SelectCountryActivity;->mSearchList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method
