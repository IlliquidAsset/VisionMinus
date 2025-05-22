.class public Lcom/powervision/gcs/http/Api;
.super Lcom/powervision/gcs/http/RetrofitManager;
.source "Api.java"


# static fields
.field private static mInstance:Lcom/powervision/gcs/http/Api;


# instance fields
.field private libraryService:Lcom/powervision/gcs/http/LibraryService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/powervision/gcs/http/Api;

    invoke-direct {v0}, Lcom/powervision/gcs/http/Api;-><init>()V

    sput-object v0, Lcom/powervision/gcs/http/Api;->mInstance:Lcom/powervision/gcs/http/Api;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Lcom/powervision/gcs/http/RetrofitManager;-><init>()V

    .line 30
    iget-object v0, p0, Lcom/powervision/gcs/http/Api;->retrofit:Lretrofit2/Retrofit;

    const-class v1, Lcom/powervision/gcs/http/LibraryService;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/http/LibraryService;

    iput-object v0, p0, Lcom/powervision/gcs/http/Api;->libraryService:Lcom/powervision/gcs/http/LibraryService;

    return-void
.end method

.method public static get()Lcom/powervision/gcs/http/Api;
    .locals 1

    .line 36
    sget-object v0, Lcom/powervision/gcs/http/Api;->mInstance:Lcom/powervision/gcs/http/Api;

    return-object v0
.end method


# virtual methods
.method public appDownLoad(Lcom/powervision/gcs/http/SimpleObserver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/powervision/gcs/http/SimpleObserver<",
            "Lcom/powervision/gcs/model/net/appDownLoadModel;",
            ">;)V"
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/powervision/gcs/http/Api;->libraryService:Lcom/powervision/gcs/http/LibraryService;

    invoke-interface {v0}, Lcom/powervision/gcs/http/LibraryService;->appDownLoad()Lio/reactivex/Observable;

    move-result-object v0

    .line 272
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 273
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 274
    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public changeEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/powervision/gcs/http/SimpleObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/powervision/gcs/http/SimpleObserver<",
            "Lcom/powervision/gcs/model/net/ChangeEmailModel;",
            ">;)V"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/powervision/gcs/http/Api;->libraryService:Lcom/powervision/gcs/http/LibraryService;

    invoke-interface {v0, p1, p2, p3}, Lcom/powervision/gcs/http/LibraryService;->changeEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 164
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 165
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 166
    invoke-virtual {p1, p4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public changePhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/powervision/gcs/http/SimpleObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/powervision/gcs/http/SimpleObserver<",
            "Lcom/powervision/gcs/model/net/ChangePhoneModel;",
            ">;)V"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/powervision/gcs/http/Api;->libraryService:Lcom/powervision/gcs/http/LibraryService;

    invoke-interface {v0, p1, p2, p3}, Lcom/powervision/gcs/http/LibraryService;->changePhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 150
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 151
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 152
    invoke-virtual {p1, p4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public changeUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/powervision/gcs/http/SimpleObserver;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/powervision/gcs/http/SimpleObserver<",
            "Lcom/powervision/gcs/model/net/ChangeUserInfoModel;",
            ">;)V"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/powervision/gcs/http/Api;->libraryService:Lcom/powervision/gcs/http/LibraryService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/powervision/gcs/http/LibraryService;->changeUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 220
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 221
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 222
    invoke-virtual {p1, p6}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public emailLogin(Ljava/lang/String;Ljava/lang/String;Lcom/powervision/gcs/http/SimpleObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/powervision/gcs/http/SimpleObserver<",
            "Lcom/powervision/gcs/model/net/LoginModel;",
            ">;)V"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/powervision/gcs/http/Api;->libraryService:Lcom/powervision/gcs/http/LibraryService;

    invoke-interface {v0, p1, p2}, Lcom/powervision/gcs/http/LibraryService;->emailLogin(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 136
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 137
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 138
    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public emailRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/powervision/gcs/http/SimpleObserver;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/powervision/gcs/http/SimpleObserver<",
            "Lcom/powervision/gcs/model/net/EmailRegisterModel;",
            ">;)V"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/powervision/gcs/http/Api;->libraryService:Lcom/powervision/gcs/http/LibraryService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/powervision/gcs/http/LibraryService;->emailRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 110
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 111
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 112
    invoke-virtual {p1, p7}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public firmwareQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/powervision/gcs/http/SimpleObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/powervision/gcs/http/SimpleObserver<",
            "Ljava/util/List<",
            "Lcom/powervision/gcs/model/net/FirmwareQueryModel;",
            ">;>;)V"
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/powervision/gcs/http/Api;->libraryService:Lcom/powervision/gcs/http/LibraryService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/powervision/gcs/http/LibraryService;->firmwareQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 265
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 266
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 267
    invoke-virtual {p1, p5}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public getSplashImage(Ljava/lang/String;Ljava/lang/String;Lcom/powervision/gcs/http/SimpleObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/powervision/gcs/http/SimpleObserver<",
            "Lcom/powervision/gcs/model/net/SplashImageModel;",
            ">;)V"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/powervision/gcs/http/Api;->libraryService:Lcom/powervision/gcs/http/LibraryService;

    invoke-interface {v0, p1, p2}, Lcom/powervision/gcs/http/LibraryService;->getSplashImage(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 48
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 49
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 50
    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public modiyPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/powervision/gcs/http/SimpleObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/powervision/gcs/http/SimpleObserver<",
            "Lcom/powervision/gcs/model/net/ModifyPasswordModel;",
            ">;)V"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/powervision/gcs/http/Api;->libraryService:Lcom/powervision/gcs/http/LibraryService;

    invoke-interface {v0, p1, p2, p3}, Lcom/powervision/gcs/http/LibraryService;->modiyPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 62
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 63
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 64
    invoke-virtual {p1, p4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public phoneLogin(Ljava/lang/String;Ljava/lang/String;Lcom/powervision/gcs/http/SimpleObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/powervision/gcs/http/SimpleObserver<",
            "Lcom/powervision/gcs/model/net/LoginModel;",
            ">;)V"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/powervision/gcs/http/Api;->libraryService:Lcom/powervision/gcs/http/LibraryService;

    invoke-interface {v0, p1, p2}, Lcom/powervision/gcs/http/LibraryService;->phoneLogin(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 123
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 124
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 125
    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public phoneRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/powervision/gcs/http/SimpleObserver;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/powervision/gcs/http/SimpleObserver<",
            "Lcom/powervision/gcs/model/net/PhoneRegisterModel;",
            ">;)V"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/powervision/gcs/http/Api;->libraryService:Lcom/powervision/gcs/http/LibraryService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/powervision/gcs/http/LibraryService;->phoneRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 93
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 94
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 95
    invoke-virtual {p1, p7}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public powerDolphinFirmwareQuery(Ljava/lang/String;Lcom/powervision/gcs/http/SimpleObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/powervision/gcs/http/SimpleObserver<",
            "Ljava/util/List<",
            "Lcom/powervision/gcs/manager/BodyFirmWareModel;",
            ">;>;)V"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/powervision/gcs/http/Api;->libraryService:Lcom/powervision/gcs/http/LibraryService;

    invoke-interface {v0, p1}, Lcom/powervision/gcs/http/LibraryService;->powerDolphinFirmwareQuery(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 244
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 245
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 246
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public retrieveEmailPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/powervision/gcs/http/SimpleObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/powervision/gcs/http/SimpleObserver<",
            "Lcom/powervision/gcs/model/net/RetrieveEmailPasswordModel;",
            ">;)V"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/powervision/gcs/http/Api;->libraryService:Lcom/powervision/gcs/http/LibraryService;

    invoke-interface {v0, p1, p2, p3}, Lcom/powervision/gcs/http/LibraryService;->retrieveEmailPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 192
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 193
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 194
    invoke-virtual {p1, p4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public retrieveMobilePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/powervision/gcs/http/SimpleObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/powervision/gcs/http/SimpleObserver<",
            "Lcom/powervision/gcs/model/net/RetrieveMobilePasswordModel;",
            ">;)V"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/powervision/gcs/http/Api;->libraryService:Lcom/powervision/gcs/http/LibraryService;

    invoke-interface {v0, p1, p2, p3}, Lcom/powervision/gcs/http/LibraryService;->retrieveMobilePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 178
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 179
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 180
    invoke-virtual {p1, p4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public sendEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/powervision/gcs/http/SimpleObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/powervision/gcs/http/SimpleObserver<",
            "Lcom/powervision/gcs/model/net/SendEmailModel;",
            ">;)V"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/powervision/gcs/http/Api;->libraryService:Lcom/powervision/gcs/http/LibraryService;

    invoke-interface {v0, p1, p2, p3}, Lcom/powervision/gcs/http/LibraryService;->sendEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 76
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 77
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 78
    invoke-virtual {p1, p4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public upload(Lokhttp3/MultipartBody$Part;Lcom/powervision/gcs/http/SimpleObserver;)V
    .locals 1
    .param p1    # Lokhttp3/MultipartBody$Part;
        .annotation runtime Lretrofit2/http/Part;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/MultipartBody$Part;",
            "Lcom/powervision/gcs/http/SimpleObserver<",
            "Lcom/powervision/gcs/model/net/UploadModel;",
            ">;)V"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/powervision/gcs/http/Api;->libraryService:Lcom/powervision/gcs/http/LibraryService;

    invoke-interface {v0, p1}, Lcom/powervision/gcs/http/LibraryService;->upload(Lokhttp3/MultipartBody$Part;)Lio/reactivex/Observable;

    move-result-object p1

    .line 232
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 233
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 234
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public verificationCode(Ljava/lang/String;Lcom/powervision/gcs/http/SimpleObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/powervision/gcs/http/SimpleObserver<",
            "Lcom/powervision/gcs/model/net/VerificationCodeModel;",
            ">;)V"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/powervision/gcs/http/Api;->libraryService:Lcom/powervision/gcs/http/LibraryService;

    invoke-interface {v0, p1}, Lcom/powervision/gcs/http/LibraryService;->verificationCode(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 204
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 205
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 206
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
