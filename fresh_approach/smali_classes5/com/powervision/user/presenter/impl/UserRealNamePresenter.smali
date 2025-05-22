.class public Lcom/powervision/user/presenter/impl/UserRealNamePresenter;
.super Lcom/powervision/base/base/BasePresenter;
.source "UserRealNamePresenter.java"

# interfaces
.implements Lcom/powervision/user/presenter/IUserRealNamePresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BasePresenter<",
        "Lcom/powervision/user/ui/view/IUserRealNameView;",
        "Lcom/powervision/base/base/BaseModel;",
        ">;",
        "Lcom/powervision/user/presenter/IUserRealNamePresenter;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/powervision/base/base/BasePresenter;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/user/presenter/impl/UserRealNamePresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/user/presenter/impl/UserRealNamePresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/powervision/user/presenter/impl/UserRealNamePresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/powervision/user/presenter/impl/UserRealNamePresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/user/presenter/impl/UserRealNamePresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/user/presenter/impl/UserRealNamePresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/powervision/user/presenter/impl/UserRealNamePresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/powervision/user/presenter/impl/UserRealNamePresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/powervision/user/presenter/impl/UserRealNamePresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/powervision/user/presenter/impl/UserRealNamePresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/powervision/user/presenter/impl/UserRealNamePresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/powervision/user/presenter/impl/UserRealNamePresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method


# virtual methods
.method public reEditRnrSaveDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "id"

    .line 178
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "deviceName"

    .line 179
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "devicePsn"

    .line 180
    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "realRegisterNumber"

    .line 181
    invoke-virtual {v0, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-static {}, Lcom/powervision/user/api/UrnManager;->getInstance()Lcom/powervision/user/api/UrnManager;

    move-result-object p1

    .line 183
    invoke-virtual {p1}, Lcom/powervision/user/api/UrnManager;->getUserApi()Lcom/powervision/user/api/UserApi;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 185
    invoke-interface {p1, v0}, Lcom/powervision/user/api/UserApi;->reEditRnrSaveDevice(Ljava/util/HashMap;)Lio/reactivex/Observable;

    move-result-object p1

    .line 186
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 187
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$4;

    invoke-direct {p2, p0}, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$4;-><init>(Lcom/powervision/user/presenter/impl/UserRealNamePresenter;)V

    .line 188
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    :cond_0
    return-void
.end method

.method public umRnrDeleteDevice(I)V
    .locals 1

    .line 81
    invoke-static {}, Lcom/powervision/user/api/UrnManager;->getInstance()Lcom/powervision/user/api/UrnManager;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcom/powervision/user/api/UrnManager;->getUserApi()Lcom/powervision/user/api/UserApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    invoke-interface {v0, p1}, Lcom/powervision/user/api/UserApi;->umRnrDeleteDevice(I)Lio/reactivex/Observable;

    move-result-object p1

    .line 85
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 86
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$2;

    invoke-direct {v0, p0}, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$2;-><init>(Lcom/powervision/user/presenter/impl/UserRealNamePresenter;)V

    .line 87
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    :cond_0
    return-void
.end method

.method public umRnrQueryDeviceList()V
    .locals 2

    .line 228
    invoke-static {}, Lcom/powervision/user/api/UrnManager;->getInstance()Lcom/powervision/user/api/UrnManager;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Lcom/powervision/user/api/UrnManager;->getUserApi()Lcom/powervision/user/api/UserApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 231
    invoke-interface {v0}, Lcom/powervision/user/api/UserApi;->umRnrQueryDeviceList()Lio/reactivex/Observable;

    move-result-object v0

    .line 232
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 233
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$5;

    invoke-direct {v1, p0}, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$5;-><init>(Lcom/powervision/user/presenter/impl/UserRealNamePresenter;)V

    .line 234
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    :cond_0
    return-void
.end method

.method public umRnrQueryHadDevice()V
    .locals 2

    .line 32
    invoke-static {}, Lcom/powervision/user/api/UrnManager;->getInstance()Lcom/powervision/user/api/UrnManager;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/powervision/user/api/UrnManager;->getUserApi()Lcom/powervision/user/api/UserApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getUserInfo()Lcom/powervision/base/model/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/base/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/powervision/user/api/UserApi;->umRnrQueryHadDevice(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 36
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 37
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$1;

    invoke-direct {v1, p0}, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$1;-><init>(Lcom/powervision/user/presenter/impl/UserRealNamePresenter;)V

    .line 38
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    :cond_0
    return-void
.end method

.method public umRnrSaveDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "deviceId"

    .line 129
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "deviceName"

    .line 130
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "devicePsn"

    .line 131
    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "realRegisterNumber"

    .line 132
    invoke-virtual {v0, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getUserInfo()Lcom/powervision/base/model/UserInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/base/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "userId"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-static {}, Lcom/powervision/user/api/UrnManager;->getInstance()Lcom/powervision/user/api/UrnManager;

    move-result-object p1

    .line 135
    invoke-virtual {p1}, Lcom/powervision/user/api/UrnManager;->getUserApi()Lcom/powervision/user/api/UserApi;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 137
    invoke-interface {p1, v0}, Lcom/powervision/user/api/UserApi;->umRnrSaveDevice(Ljava/util/HashMap;)Lio/reactivex/Observable;

    move-result-object p1

    .line 138
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 139
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$3;

    invoke-direct {p2, p0}, Lcom/powervision/user/presenter/impl/UserRealNamePresenter$3;-><init>(Lcom/powervision/user/presenter/impl/UserRealNamePresenter;)V

    .line 140
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    :cond_0
    return-void
.end method
