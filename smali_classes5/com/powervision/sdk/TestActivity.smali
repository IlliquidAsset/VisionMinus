.class public Lcom/powervision/sdk/TestActivity;
.super Landroid/app/Activity;
.source "TestActivity.java"


# instance fields
.field powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private rxjava()V
    .locals 2

    .line 115
    new-instance v0, Lcom/powervision/sdk/TestActivity$1;

    invoke-direct {v0, p0}, Lcom/powervision/sdk/TestActivity$1;-><init>(Lcom/powervision/sdk/TestActivity;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    .line 122
    new-instance v1, Lcom/powervision/sdk/TestActivity$2;

    invoke-direct {v1, p0}, Lcom/powervision/sdk/TestActivity$2;-><init>(Lcom/powervision/sdk/TestActivity;)V

    .line 151
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    const-string v0, ""

    .line 153
    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/powervision/sdk/TestActivity$3;

    invoke-direct {v1, p0}, Lcom/powervision/sdk/TestActivity$3;-><init>(Lcom/powervision/sdk/TestActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 109
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/sdk/TestActivity;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    return-void
.end method
