.class public Lcom/powervision/user/ui/fragment/MessageDetailFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "MessageDetailFragment.java"

# interfaces
.implements Lcom/powervision/user/ui/view/IMessageDetailView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseFragment<",
        "Lcom/powervision/user/presenter/impl/MessageDetailPresenter;",
        "Lcom/powervision/user/modle/impl/MessageDetailModel;",
        ">;",
        "Lcom/powervision/user/ui/view/IMessageDetailView;"
    }
.end annotation


# instance fields
.field private mTextTitle:Landroid/widget/TextView;

.field private mToolbar:Landroidx/appcompat/widget/Toolbar;

.field private progressBar:Lcom/powervision/base/views/LoadingProgressBar;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    return-void
.end method

.method private initToolbar(Ljava/lang/String;)V
    .locals 2

    .line 58
    sget v0, Lcom/powervision/user/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lcom/powervision/user/ui/fragment/MessageDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p0, Lcom/powervision/user/ui/fragment/MessageDetailFragment;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 59
    sget v0, Lcom/powervision/user/R$id;->text_title:I

    invoke-virtual {p0, v0}, Lcom/powervision/user/ui/fragment/MessageDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/user/ui/fragment/MessageDetailFragment;->mTextTitle:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Lcom/powervision/user/ui/fragment/MessageDetailFragment;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    sget v1, Lcom/powervision/user/R$mipmap;->icon_back_black:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    .line 61
    iget-object v0, p0, Lcom/powervision/user/ui/fragment/MessageDetailFragment;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 62
    sget v0, Lcom/powervision/user/R$string;->APP_Message_1:I

    const-string v1, "event_message"

    .line 63
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    sget v0, Lcom/powervision/user/R$string;->APP_Message_3:I

    goto :goto_0

    :cond_0
    const-string v1, "system_message"

    .line 65
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    sget v0, Lcom/powervision/user/R$string;->APP_Message_2:I

    goto :goto_0

    :cond_1
    const-string v1, "user_message"

    .line 67
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 68
    sget v0, Lcom/powervision/user/R$string;->APP_Message_1:I

    .line 70
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/powervision/user/ui/fragment/MessageDetailFragment;->mTextTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/powervision/user/ui/fragment/MessageDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {p0}, Lcom/powervision/user/ui/fragment/MessageDetailFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 72
    invoke-virtual {p0}, Lcom/powervision/user/ui/fragment/MessageDetailFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    iget-object v0, p0, Lcom/powervision/user/ui/fragment/MessageDetailFragment;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 74
    :cond_3
    iget-object p1, p0, Lcom/powervision/user/ui/fragment/MessageDetailFragment;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    new-instance v0, Lcom/powervision/user/ui/fragment/MessageDetailFragment$1;

    invoke-direct {v0, p0}, Lcom/powervision/user/ui/fragment/MessageDetailFragment$1;-><init>(Lcom/powervision/user/ui/fragment/MessageDetailFragment;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public dismissLoading()V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/powervision/user/ui/fragment/MessageDetailFragment;->progressBar:Lcom/powervision/base/views/LoadingProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/powervision/user/ui/fragment/MessageDetailFragment;->progressBar:Lcom/powervision/base/views/LoadingProgressBar;

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->dismiss()V

    :cond_0
    return-void
.end method

.method protected getLayoutResId()I
    .locals 1

    .line 41
    sget v0, Lcom/powervision/user/R$layout;->user_fragment_message_detail:I

    return v0
.end method

.method protected initData()V
    .locals 3

    .line 52
    invoke-virtual {p0}, Lcom/powervision/user/ui/fragment/MessageDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/user/ui/fragment/MessageDetailFragmentArgs;->fromBundle(Landroid/os/Bundle;)Lcom/powervision/user/ui/fragment/MessageDetailFragmentArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/user/ui/fragment/MessageDetailFragmentArgs;->getMsgType()Ljava/lang/String;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/powervision/user/ui/fragment/MessageDetailFragment;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v1, Lcom/powervision/user/presenter/impl/MessageDetailPresenter;

    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getUserInfo()Lcom/powervision/base/model/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/powervision/base/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/powervision/user/presenter/impl/MessageDetailPresenter;->fetch(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0, v0}, Lcom/powervision/user/ui/fragment/MessageDetailFragment;->initToolbar(Ljava/lang/String;)V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 2

    .line 46
    sget p1, Lcom/powervision/user/R$id;->recycler_view:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/fragment/MessageDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/powervision/user/ui/fragment/MessageDetailFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 47
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/powervision/user/ui/fragment/MessageDetailFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public showLoadError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public showLoading()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/powervision/user/ui/fragment/MessageDetailFragment;->progressBar:Lcom/powervision/base/views/LoadingProgressBar;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lcom/powervision/base/views/LoadingProgressBar;

    invoke-virtual {p0}, Lcom/powervision/user/ui/fragment/MessageDetailFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/powervision/base/views/LoadingProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powervision/user/ui/fragment/MessageDetailFragment;->progressBar:Lcom/powervision/base/views/LoadingProgressBar;

    .line 110
    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->show()V

    :cond_0
    return-void
.end method

.method public showMessage(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/base/net/retrofit/message/response/MessageDetailBean;",
            ">;)V"
        }
    .end annotation

    .line 89
    new-instance v0, Lcom/powervision/user/ui/adapter/MessageDetailAdapter;

    invoke-direct {v0, p1}, Lcom/powervision/user/ui/adapter/MessageDetailAdapter;-><init>(Ljava/util/List;)V

    .line 90
    iget-object p1, p0, Lcom/powervision/user/ui/fragment/MessageDetailFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 91
    new-instance p1, Lcom/powervision/user/ui/fragment/MessageDetailFragment$2;

    invoke-direct {p1, p0}, Lcom/powervision/user/ui/fragment/MessageDetailFragment$2;-><init>(Lcom/powervision/user/ui/fragment/MessageDetailFragment;)V

    invoke-virtual {v0, p1}, Lcom/powervision/user/ui/adapter/MessageDetailAdapter;->setOnItemClickListener(Lcom/powervision/user/ui/adapter/MessageDetailAdapter$OnItemClickListener;)V

    return-void
.end method
