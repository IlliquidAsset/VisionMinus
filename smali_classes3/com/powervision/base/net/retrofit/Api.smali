.class public Lcom/powervision/base/net/retrofit/Api;
.super Lcom/powervision/base/net/retrofit/RetrofitManager;
.source "Api.java"


# static fields
.field private static mInstance:Lcom/powervision/base/net/retrofit/Api;


# instance fields
.field private libraryService:Lcom/powervision/base/net/retrofit/LibraryService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/powervision/base/net/retrofit/Api;

    invoke-direct {v0}, Lcom/powervision/base/net/retrofit/Api;-><init>()V

    sput-object v0, Lcom/powervision/base/net/retrofit/Api;->mInstance:Lcom/powervision/base/net/retrofit/Api;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Lcom/powervision/base/net/retrofit/RetrofitManager;-><init>()V

    .line 18
    iget-object v0, p0, Lcom/powervision/base/net/retrofit/Api;->retrofit:Lretrofit2/Retrofit;

    const-class v1, Lcom/powervision/base/net/retrofit/LibraryService;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/net/retrofit/LibraryService;

    iput-object v0, p0, Lcom/powervision/base/net/retrofit/Api;->libraryService:Lcom/powervision/base/net/retrofit/LibraryService;

    return-void
.end method

.method public static get()Lcom/powervision/base/net/retrofit/Api;
    .locals 1

    .line 24
    sget-object v0, Lcom/powervision/base/net/retrofit/Api;->mInstance:Lcom/powervision/base/net/retrofit/Api;

    return-object v0
.end method


# virtual methods
.method public bindEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/powervision/base/net/retrofit/SimpleObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/powervision/base/net/retrofit/SimpleObserver<",
            "Lcom/powervision/base/model/EmptyModel;",
            ">;)V"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/powervision/base/net/retrofit/Api;->libraryService:Lcom/powervision/base/net/retrofit/LibraryService;

    invoke-interface {v0, p1, p2, p3}, Lcom/powervision/base/net/retrofit/LibraryService;->bindEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 117
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 118
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 119
    invoke-virtual {p1, p4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public bindPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/powervision/base/net/retrofit/SimpleObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/powervision/base/net/retrofit/SimpleObserver<",
            "Lcom/powervision/base/model/EmptyModel;",
            ">;)V"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/powervision/base/net/retrofit/Api;->libraryService:Lcom/powervision/base/net/retrofit/LibraryService;

    invoke-interface {v0, p1, p2, p3}, Lcom/powervision/base/net/retrofit/LibraryService;->bindPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 103
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 104
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 105
    invoke-virtual {p1, p4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public countryList(Lcom/powervision/base/net/retrofit/SimpleObserver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/powervision/base/net/retrofit/SimpleObserver<",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/net/CountryListModel;",
            ">;>;)V"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/powervision/base/net/retrofit/Api;->libraryService:Lcom/powervision/base/net/retrofit/LibraryService;

    invoke-interface {v0}, Lcom/powervision/base/net/retrofit/LibraryService;->countryList()Lio/reactivex/Observable;

    move-result-object v0

    .line 33
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 34
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 35
    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public emailValidationLogin(Ljava/lang/String;Ljava/lang/String;Lcom/powervision/base/net/retrofit/SimpleObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/powervision/base/net/retrofit/SimpleObserver<",
            "Lcom/powervision/base/model/UserModel;",
            ">;)V"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/powervision/base/net/retrofit/Api;->libraryService:Lcom/powervision/base/net/retrofit/LibraryService;

    invoke-interface {v0, p1, p2}, Lcom/powervision/base/net/retrofit/LibraryService;->emailValidationLogin(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 89
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 90
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 91
    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public phoneValidationLogin(Ljava/lang/String;Ljava/lang/String;Lcom/powervision/base/net/retrofit/SimpleObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/powervision/base/net/retrofit/SimpleObserver<",
            "Lcom/powervision/base/model/UserModel;",
            ">;)V"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/powervision/base/net/retrofit/Api;->libraryService:Lcom/powervision/base/net/retrofit/LibraryService;

    invoke-interface {v0, p1, p2}, Lcom/powervision/base/net/retrofit/LibraryService;->phoneValidationLogin(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 75
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 76
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 77
    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public registerFireBase(Ljava/lang/String;Ljava/lang/String;Lio/reactivex/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/reactivex/Observer<",
            "Lcom/powervision/base/net/retrofit/FireBaseResponse;",
            ">;)V"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/powervision/base/net/retrofit/Api;->libraryService:Lcom/powervision/base/net/retrofit/LibraryService;

    invoke-interface {v0, p1, p2}, Lcom/powervision/base/net/retrofit/LibraryService;->registerFirebase(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 130
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 131
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 132
    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public sendEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/powervision/base/net/retrofit/SimpleObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/powervision/base/net/retrofit/SimpleObserver<",
            "Lcom/powervision/base/model/net/SendEmailModel;",
            ">;)V"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/powervision/base/net/retrofit/Api;->libraryService:Lcom/powervision/base/net/retrofit/LibraryService;

    invoke-interface {v0, p1, p2, p3}, Lcom/powervision/base/net/retrofit/LibraryService;->sendEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 61
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 62
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 63
    invoke-virtual {p1, p4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public sendValidation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/powervision/base/net/retrofit/SimpleObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/powervision/base/net/retrofit/SimpleObserver<",
            "Lcom/powervision/base/model/net/SendValidationModel;",
            ">;)V"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/powervision/base/net/retrofit/Api;->libraryService:Lcom/powervision/base/net/retrofit/LibraryService;

    invoke-interface {v0, p1, p2, p3}, Lcom/powervision/base/net/retrofit/LibraryService;->sendValidation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 47
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 48
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 49
    invoke-virtual {p1, p4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
