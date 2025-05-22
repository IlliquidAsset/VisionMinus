.class public Lcom/powervision/user/presenter/impl/BindPresenter;
.super Lcom/powervision/base/base/BasePresenter;
.source "BindPresenter.java"

# interfaces
.implements Lcom/powervision/user/presenter/IBindPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BasePresenter<",
        "Lcom/powervision/user/ui/view/IBindView;",
        "Lcom/powervision/base/base/BaseModel;",
        ">;",
        "Lcom/powervision/user/presenter/IBindPresenter;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/powervision/base/base/BasePresenter;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/user/presenter/impl/BindPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/powervision/user/presenter/impl/BindPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/user/presenter/impl/BindPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/powervision/user/presenter/impl/BindPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/user/presenter/impl/BindPresenter;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/powervision/user/presenter/impl/BindPresenter;->bindAccountSucceed(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/powervision/user/presenter/impl/BindPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/powervision/user/presenter/impl/BindPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/powervision/user/presenter/impl/BindPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/powervision/user/presenter/impl/BindPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method private bindAccountSucceed(Ljava/lang/String;)V
    .locals 3

    .line 116
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getUserInfo()Lcom/powervision/base/model/UserInfo;

    move-result-object v1

    const-string v2, "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"

    .line 118
    invoke-static {v2, p1}, Lcom/powervision/base/utils/RegexUtils;->match(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    invoke-virtual {v1, p1}, Lcom/powervision/base/model/UserInfo;->setUseremail(Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {v1, p1}, Lcom/powervision/base/model/UserInfo;->setUserphone(Ljava/lang/String;)V

    .line 124
    :goto_0
    invoke-virtual {v0, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveUserInfo(Lcom/powervision/base/model/UserInfo;)V

    .line 125
    iget-object p1, p0, Lcom/powervision/user/presenter/impl/BindPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast p1, Lcom/powervision/user/ui/view/IBindView;

    const/16 v0, 0xc8

    invoke-interface {p1, v0}, Lcom/powervision/user/ui/view/IBindView;->success(I)V

    return-void
.end method

.method private bindEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 74
    invoke-static {}, Lcom/powervision/base/net/retrofit/Api;->get()Lcom/powervision/base/net/retrofit/Api;

    move-result-object v0

    new-instance v1, Lcom/powervision/user/presenter/impl/BindPresenter$2;

    invoke-direct {v1, p0, p1}, Lcom/powervision/user/presenter/impl/BindPresenter$2;-><init>(Lcom/powervision/user/presenter/impl/BindPresenter;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/powervision/base/net/retrofit/Api;->bindEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/powervision/base/net/retrofit/SimpleObserver;)V

    return-void
.end method

.method private bindPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 96
    invoke-static {}, Lcom/powervision/base/net/retrofit/Api;->get()Lcom/powervision/base/net/retrofit/Api;

    move-result-object v0

    new-instance v1, Lcom/powervision/user/presenter/impl/BindPresenter$3;

    invoke-direct {v1, p0, p1}, Lcom/powervision/user/presenter/impl/BindPresenter$3;-><init>(Lcom/powervision/user/presenter/impl/BindPresenter;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/powervision/base/net/retrofit/Api;->bindPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/powervision/base/net/retrofit/SimpleObserver;)V

    return-void
.end method


# virtual methods
.method public changeBindAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "1[3456789]{1}[\\d]{9}"

    .line 35
    invoke-static {v0, p1}, Lcom/powervision/base/utils/RegexUtils;->match(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/powervision/user/presenter/impl/BindPresenter;->bindPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/powervision/user/presenter/impl/BindPresenter;->bindEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public verificationCode(Ljava/lang/String;)V
    .locals 3

    const-string v0, "1[3456789]{1}[\\d]{9}"

    .line 45
    invoke-static {v0, p1}, Lcom/powervision/base/utils/RegexUtils;->match(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-static {}, Lcom/powervision/user/api/UserManager;->getInstance()Lcom/powervision/user/api/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/user/api/UserManager;->getUserApi()Lcom/powervision/user/api/UserApi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/powervision/user/api/UserApi;->getVerifyCode(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    .line 48
    :cond_0
    invoke-static {}, Lcom/powervision/base/utils/LanguageUtils;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {}, Lcom/powervision/user/api/UserManager;->getInstance()Lcom/powervision/user/api/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/user/api/UserManager;->getUserApi()Lcom/powervision/user/api/UserApi;

    move-result-object v1

    const-string v2, "3"

    invoke-interface {v1, v2, v0, p1}, Lcom/powervision/user/api/UserApi;->getEmailVerifyCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 51
    :goto_0
    invoke-static {p1}, Lcom/powervision/base/net/observable/ObservableLoader;->getObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/powervision/user/presenter/impl/BindPresenter$1;

    invoke-direct {v0, p0}, Lcom/powervision/user/presenter/impl/BindPresenter$1;-><init>(Lcom/powervision/user/presenter/impl/BindPresenter;)V

    .line 53
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
