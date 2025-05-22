.class public Lcom/powervision/user/ui/fragment/MessageFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "MessageFragment.java"

# interfaces
.implements Lcom/powervision/user/ui/view/IMessageView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseFragment<",
        "Lcom/powervision/user/presenter/impl/MessagePresenter;",
        "Lcom/powervision/user/modle/impl/MessageModel;",
        ">;",
        "Lcom/powervision/user/ui/view/IMessageView;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MessageFragment"


# instance fields
.field private adapter:Lcom/powervision/user/ui/adapter/MessageAdapter;

.field private mImageClear:Landroid/widget/ImageView;

.field private mTextTitle:Landroid/widget/TextView;

.field private mToolbar:Landroidx/appcompat/widget/Toolbar;

.field private progressBar:Lcom/powervision/base/views/LoadingProgressBar;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/user/ui/fragment/MessageFragment;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/powervision/user/ui/fragment/MessageFragment;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method private initToolbar()V
    .locals 2

    .line 71
    sget v0, Lcom/powervision/user/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lcom/powervision/user/ui/fragment/MessageFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p0, Lcom/powervision/user/ui/fragment/MessageFragment;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 72
    sget v0, Lcom/powervision/user/R$id;->text_title:I

    invoke-virtual {p0, v0}, Lcom/powervision/user/ui/fragment/MessageFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/user/ui/fragment/MessageFragment;->mTextTitle:Landroid/widget/TextView;

    .line 73
    sget v0, Lcom/powervision/user/R$id;->image_clear:I

    invoke-virtual {p0, v0}, Lcom/powervision/user/ui/fragment/MessageFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/user/ui/fragment/MessageFragment;->mImageClear:Landroid/widget/ImageView;

    .line 74
    iget-object v0, p0, Lcom/powervision/user/ui/fragment/MessageFragment;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    sget v1, Lcom/powervision/user/R$mipmap;->icon_back_black:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    .line 75
    iget-object v0, p0, Lcom/powervision/user/ui/fragment/MessageFragment;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lcom/powervision/user/ui/fragment/MessageFragment;->mTextTitle:Landroid/widget/TextView;

    sget v1, Lcom/powervision/user/R$string;->APP_Message_1:I

    invoke-virtual {p0, v1}, Lcom/powervision/user/ui/fragment/MessageFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/powervision/user/ui/fragment/MessageFragment;->mImageClear:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/user/ui/fragment/-$$Lambda$MessageFragment$4yCb1gfhgrm_tnYrl487AdX18_4;

    invoke-direct {v1, p0}, Lcom/powervision/user/ui/fragment/-$$Lambda$MessageFragment$4yCb1gfhgrm_tnYrl487AdX18_4;-><init>(Lcom/powervision/user/ui/fragment/MessageFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    invoke-virtual {p0}, Lcom/powervision/user/ui/fragment/MessageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/powervision/user/ui/fragment/MessageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    iget-object v1, p0, Lcom/powervision/user/ui/fragment/MessageFragment;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/powervision/user/ui/fragment/MessageFragment;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    new-instance v1, Lcom/powervision/user/ui/fragment/MessageFragment$1;

    invoke-direct {v1, p0}, Lcom/powervision/user/ui/fragment/MessageFragment$1;-><init>(Lcom/powervision/user/ui/fragment/MessageFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showClearDialog()V
    .locals 2

    .line 99
    new-instance v0, Lcom/powervision/base/dialog/CommonDialog;

    invoke-virtual {p0}, Lcom/powervision/user/ui/fragment/MessageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/powervision/base/dialog/CommonDialog;-><init>(Landroid/content/Context;)V

    .line 100
    sget v1, Lcom/powervision/user/R$string;->APP_Message_5:I

    invoke-virtual {p0, v1}, Lcom/powervision/user/ui/fragment/MessageFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/base/dialog/CommonDialog;->setMessage(Ljava/lang/String;)Lcom/powervision/base/dialog/CommonDialog;

    .line 101
    sget v1, Lcom/powervision/user/R$string;->AP03_AI_2:I

    invoke-virtual {v0, v1}, Lcom/powervision/base/dialog/CommonDialog;->setNegative(I)Lcom/powervision/base/dialog/CommonDialog;

    .line 102
    sget v1, Lcom/powervision/user/R$string;->AP03_AI_3:I

    invoke-virtual {v0, v1}, Lcom/powervision/base/dialog/CommonDialog;->setPositive(I)Lcom/powervision/base/dialog/CommonDialog;

    .line 103
    new-instance v1, Lcom/powervision/user/ui/fragment/MessageFragment$2;

    invoke-direct {v1, p0, v0}, Lcom/powervision/user/ui/fragment/MessageFragment$2;-><init>(Lcom/powervision/user/ui/fragment/MessageFragment;Lcom/powervision/base/dialog/CommonDialog;)V

    invoke-virtual {v0, v1}, Lcom/powervision/base/dialog/CommonDialog;->setOnClickBottomListener(Lcom/powervision/base/dialog/CommonDialog$OnClickBottomListener;)Lcom/powervision/base/dialog/CommonDialog;

    .line 115
    invoke-virtual {v0}, Lcom/powervision/base/dialog/CommonDialog;->show()V

    return-void
.end method

.method private showClearSuccessDialog()V
    .locals 2

    .line 119
    new-instance v0, Lcom/powervision/base/dialog/CommonDialog;

    invoke-virtual {p0}, Lcom/powervision/user/ui/fragment/MessageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/powervision/base/dialog/CommonDialog;-><init>(Landroid/content/Context;)V

    .line 120
    sget v1, Lcom/powervision/user/R$string;->APP_Message_6:I

    invoke-virtual {p0, v1}, Lcom/powervision/user/ui/fragment/MessageFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/base/dialog/CommonDialog;->setMessage(Ljava/lang/String;)Lcom/powervision/base/dialog/CommonDialog;

    .line 121
    sget v1, Lcom/powervision/user/R$string;->AP03_AI_3:I

    invoke-virtual {v0, v1}, Lcom/powervision/base/dialog/CommonDialog;->setPositive(I)Lcom/powervision/base/dialog/CommonDialog;

    const/4 v1, 0x1

    .line 122
    invoke-virtual {v0, v1}, Lcom/powervision/base/dialog/CommonDialog;->setSingle(Z)Lcom/powervision/base/dialog/CommonDialog;

    .line 123
    new-instance v1, Lcom/powervision/user/ui/fragment/MessageFragment$3;

    invoke-direct {v1, p0, v0}, Lcom/powervision/user/ui/fragment/MessageFragment$3;-><init>(Lcom/powervision/user/ui/fragment/MessageFragment;Lcom/powervision/base/dialog/CommonDialog;)V

    invoke-virtual {v0, v1}, Lcom/powervision/base/dialog/CommonDialog;->setOnClickBottomListener(Lcom/powervision/base/dialog/CommonDialog$OnClickBottomListener;)Lcom/powervision/base/dialog/CommonDialog;

    .line 134
    invoke-virtual {v0}, Lcom/powervision/base/dialog/CommonDialog;->show()V

    return-void
.end method


# virtual methods
.method public clearUnReadSuccess(Ljava/lang/String;)V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/powervision/user/ui/fragment/MessageFragment;->adapter:Lcom/powervision/user/ui/adapter/MessageAdapter;

    invoke-virtual {v0, p1}, Lcom/powervision/user/ui/adapter/MessageAdapter;->setReadAll(Ljava/lang/String;)V

    const-string v0, "0"

    .line 184
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/powervision/user/ui/fragment/MessageFragment;->showClearSuccessDialog()V

    :cond_0
    return-void
.end method

.method public dismissLoading()V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/powervision/user/ui/fragment/MessageFragment;->progressBar:Lcom/powervision/base/views/LoadingProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/powervision/user/ui/fragment/MessageFragment;->progressBar:Lcom/powervision/base/views/LoadingProgressBar;

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->dismiss()V

    :cond_0
    return-void
.end method

.method protected getLayoutResId()I
    .locals 1

    .line 42
    sget v0, Lcom/powervision/user/R$layout;->user_fragment_message:I

    return v0
.end method

.method protected initData()V
    .locals 2

    const-string v0, "MessageFragment"

    const-string v1, "initData: ------------"

    .line 54
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lcom/powervision/user/ui/fragment/MessageFragment;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/user/presenter/impl/MessagePresenter;

    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getUserInfo()Lcom/powervision/base/model/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/base/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/user/presenter/impl/MessagePresenter;->fetch(Ljava/lang/String;)V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Lcom/powervision/user/ui/fragment/MessageFragment;->initToolbar()V

    .line 48
    sget p1, Lcom/powervision/user/R$id;->recycler_view:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/fragment/MessageFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/powervision/user/ui/fragment/MessageFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 49
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/powervision/user/ui/fragment/MessageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public synthetic lambda$initToolbar$0$MessageFragment(Landroid/view/View;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/powervision/user/ui/fragment/MessageFragment;->showClearDialog()V

    return-void
.end method

.method public synthetic lambda$showMessage$1$MessageFragment(Landroid/view/View;Lcom/powervision/base/net/retrofit/message/response/MessageBean;I)V
    .locals 1

    .line 150
    invoke-static {}, Lcom/powervision/user/ui/fragment/MessageFragmentDirections;->userActionUserMessagefragmentToUserMessagedetailfragment()Lcom/powervision/user/ui/fragment/MessageFragmentDirections$UserActionUserMessagefragmentToUserMessagedetailfragment;

    move-result-object p3

    .line 151
    iget-object v0, p2, Lcom/powervision/base/net/retrofit/message/response/MessageBean;->type:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/powervision/user/ui/fragment/MessageFragmentDirections$UserActionUserMessagefragmentToUserMessagedetailfragment;->setMsgType(Ljava/lang/String;)Lcom/powervision/user/ui/fragment/MessageFragmentDirections$UserActionUserMessagefragmentToUserMessagedetailfragment;

    .line 152
    invoke-static {p1}, Landroidx/navigation/Navigation;->findNavController(Landroid/view/View;)Landroidx/navigation/NavController;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDirections;)V

    .line 154
    iget p1, p2, Lcom/powervision/base/net/retrofit/message/response/MessageBean;->unread_count:I

    if-lez p1, :cond_0

    .line 156
    iget-object p1, p0, Lcom/powervision/user/ui/fragment/MessageFragment;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast p1, Lcom/powervision/user/presenter/impl/MessagePresenter;

    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object p3

    invoke-virtual {p3}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getUserInfo()Lcom/powervision/base/model/UserInfo;

    move-result-object p3

    invoke-virtual {p3}, Lcom/powervision/base/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object p3

    iget-object p2, p2, Lcom/powervision/base/net/retrofit/message/response/MessageBean;->type:Ljava/lang/String;

    invoke-virtual {p1, p3, p2}, Lcom/powervision/user/presenter/impl/MessagePresenter;->updateMsgStatus(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onLazyLoad()V
    .locals 2

    .line 65
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onLazyLoad()V

    const-string v0, "MessageFragment"

    const-string v1, "onLazyLoad: ----------------"

    .line 66
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 60
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onResume()V

    return-void
.end method

.method public showLoadError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public showLoading()V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/powervision/user/ui/fragment/MessageFragment;->progressBar:Lcom/powervision/base/views/LoadingProgressBar;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Lcom/powervision/base/views/LoadingProgressBar;

    invoke-virtual {p0}, Lcom/powervision/user/ui/fragment/MessageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/powervision/base/views/LoadingProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powervision/user/ui/fragment/MessageFragment;->progressBar:Lcom/powervision/base/views/LoadingProgressBar;

    .line 170
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
            "Lcom/powervision/base/net/retrofit/message/response/MessageBean;",
            ">;)V"
        }
    .end annotation

    .line 146
    new-instance v0, Lcom/powervision/user/ui/adapter/MessageAdapter;

    invoke-direct {v0, p1}, Lcom/powervision/user/ui/adapter/MessageAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/powervision/user/ui/fragment/MessageFragment;->adapter:Lcom/powervision/user/ui/adapter/MessageAdapter;

    .line 147
    iget-object p1, p0, Lcom/powervision/user/ui/fragment/MessageFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 148
    iget-object p1, p0, Lcom/powervision/user/ui/fragment/MessageFragment;->adapter:Lcom/powervision/user/ui/adapter/MessageAdapter;

    new-instance v0, Lcom/powervision/user/ui/fragment/-$$Lambda$MessageFragment$JkIPQ3V6t1oavCb6SgATa1tKVPg;

    invoke-direct {v0, p0}, Lcom/powervision/user/ui/fragment/-$$Lambda$MessageFragment$JkIPQ3V6t1oavCb6SgATa1tKVPg;-><init>(Lcom/powervision/user/ui/fragment/MessageFragment;)V

    invoke-virtual {p1, v0}, Lcom/powervision/user/ui/adapter/MessageAdapter;->setOnItemClickListener(Lcom/powervision/user/ui/adapter/MessageAdapter$OnItemClickListener;)V

    return-void
.end method

.method public updateUnReadCount(I)V
    .locals 3

    .line 141
    invoke-static {}, Lcom/powervision/base/databus/LiveDataBusX;->getInstance()Lcom/powervision/base/databus/LiveDataBusX;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    const-string v2, "message_count"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/databus/LiveDataBusX;->with(Ljava/lang/String;Ljava/lang/Class;)Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
