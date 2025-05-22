.class public Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter;
.super Lcom/powervision/base/base/BasePresenter;
.source "InputVerifyCodePresenter.java"

# interfaces
.implements Lcom/powervision/login/presenter/IInputVerifyCodePresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BasePresenter<",
        "Lcom/powervision/login/ui/view/IInputVerifyCodeView;",
        "Lcom/powervision/login/model/ILoginModel;",
        ">;",
        "Lcom/powervision/login/presenter/IInputVerifyCodePresenter;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/powervision/base/base/BasePresenter;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method private emailLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 78
    invoke-static {}, Lcom/powervision/base/net/retrofit/Api;->get()Lcom/powervision/base/net/retrofit/Api;

    move-result-object v0

    new-instance v1, Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter$2;

    invoke-direct {v1, p0}, Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter$2;-><init>(Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/powervision/base/net/retrofit/Api;->emailValidationLogin(Ljava/lang/String;Ljava/lang/String;Lcom/powervision/base/net/retrofit/SimpleObserver;)V

    return-void
.end method

.method private phoneLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 61
    invoke-static {}, Lcom/powervision/base/net/retrofit/Api;->get()Lcom/powervision/base/net/retrofit/Api;

    move-result-object v0

    new-instance v1, Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter$1;

    invoke-direct {v1, p0}, Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter$1;-><init>(Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/powervision/base/net/retrofit/Api;->phoneValidationLogin(Ljava/lang/String;Ljava/lang/String;Lcom/powervision/base/net/retrofit/SimpleObserver;)V

    return-void
.end method

.method private sendEmailValidation(Ljava/lang/String;)V
    .locals 4

    .line 121
    invoke-static {}, Lcom/powervision/base/net/retrofit/Api;->get()Lcom/powervision/base/net/retrofit/Api;

    move-result-object v0

    invoke-static {}, Lcom/powervision/base/utils/LanguageUtils;->getLanguage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter$4;

    invoke-direct {v2, p0}, Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter$4;-><init>(Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter;)V

    const-string v3, "1"

    invoke-virtual {v0, v3, v1, p1, v2}, Lcom/powervision/base/net/retrofit/Api;->sendEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/powervision/base/net/retrofit/SimpleObserver;)V

    return-void
.end method

.method private sendPhoneValidation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 100
    invoke-static {}, Lcom/powervision/base/net/retrofit/Api;->get()Lcom/powervision/base/net/retrofit/Api;

    move-result-object v0

    new-instance v1, Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter$3;

    invoke-direct {v1, p0}, Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter$3;-><init>(Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/powervision/base/net/retrofit/Api;->sendValidation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/powervision/base/net/retrofit/SimpleObserver;)V

    return-void
.end method


# virtual methods
.method public getVerifyCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"

    .line 47
    invoke-static {v0, p1}, Lcom/powervision/base/utils/RegexUtils;->match(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-direct {p0, p1}, Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter;->sendEmailValidation(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter;->sendPhoneValidation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"

    .line 38
    invoke-static {v0, p1}, Lcom/powervision/base/utils/RegexUtils;->match(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter;->emailLogin(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter;->phoneLogin(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public umRnrQueryHadDevice()V
    .locals 2

    .line 139
    invoke-static {}, Lcom/powervision/user/api/UrnManager;->getInstance()Lcom/powervision/user/api/UrnManager;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lcom/powervision/user/api/UrnManager;->getUserApi()Lcom/powervision/user/api/UserApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getUserInfo()Lcom/powervision/base/model/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/base/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/powervision/user/api/UserApi;->umRnrQueryHadDevice(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 143
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 144
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter$5;

    invoke-direct {v1, p0}, Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter$5;-><init>(Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter;)V

    .line 145
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    :cond_0
    return-void
.end method
