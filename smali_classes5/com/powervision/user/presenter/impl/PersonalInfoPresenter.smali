.class public Lcom/powervision/user/presenter/impl/PersonalInfoPresenter;
.super Lcom/powervision/base/base/BasePresenter;
.source "PersonalInfoPresenter.java"

# interfaces
.implements Lcom/powervision/user/presenter/IPersonalInfoPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BasePresenter<",
        "Lcom/powervision/user/ui/view/IPersonalInfoView;",
        "Lcom/powervision/base/base/BaseModel;",
        ">;",
        "Lcom/powervision/user/presenter/IPersonalInfoPresenter;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/powervision/base/base/BasePresenter;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/user/presenter/impl/PersonalInfoPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/powervision/user/presenter/impl/PersonalInfoPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/user/presenter/impl/PersonalInfoPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/powervision/user/presenter/impl/PersonalInfoPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/user/presenter/impl/PersonalInfoPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/powervision/user/presenter/impl/PersonalInfoPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/user/presenter/impl/PersonalInfoPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/powervision/user/presenter/impl/PersonalInfoPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/powervision/user/presenter/impl/PersonalInfoPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/powervision/user/presenter/impl/PersonalInfoPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method


# virtual methods
.method public modifyPersonalInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 76
    invoke-static {}, Lcom/powervision/user/api/UserManager;->getInstance()Lcom/powervision/user/api/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/user/api/UserManager;->getUserApi()Lcom/powervision/user/api/UserApi;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/powervision/user/api/UserApi;->changeUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/net/observable/ObservableLoader;->getObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/powervision/user/presenter/impl/PersonalInfoPresenter$2;

    invoke-direct {p2, p0}, Lcom/powervision/user/presenter/impl/PersonalInfoPresenter$2;-><init>(Lcom/powervision/user/presenter/impl/PersonalInfoPresenter;)V

    .line 78
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public uploadPicture(Ljava/lang/String;)V
    .locals 2

    .line 39
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string p1, "multipart/form-data"

    .line 40
    invoke-static {p1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p1

    invoke-static {p1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".jpg"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-static {v1, v0, p1}, Lokhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object p1

    .line 42
    invoke-static {}, Lcom/powervision/user/api/UserManager;->getInstance()Lcom/powervision/user/api/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/user/api/UserManager;->getUserApi()Lcom/powervision/user/api/UserApi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/powervision/user/api/UserApi;->upload(Lokhttp3/MultipartBody$Part;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/net/observable/ObservableLoader;->getObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/powervision/user/presenter/impl/PersonalInfoPresenter$1;

    invoke-direct {v0, p0}, Lcom/powervision/user/presenter/impl/PersonalInfoPresenter$1;-><init>(Lcom/powervision/user/presenter/impl/PersonalInfoPresenter;)V

    .line 44
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
