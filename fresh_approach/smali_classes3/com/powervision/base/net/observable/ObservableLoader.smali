.class public Lcom/powervision/base/net/observable/ObservableLoader;
.super Ljava/lang/Object;
.source "ObservableLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/base/net/observable/ObservableLoader$ResultFunction;,
        Lcom/powervision/base/net/observable/ObservableLoader$ErrorResumeFunction;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Observable<",
            "Lcom/powervision/base/base/entity/BaseResultEntity<",
            "TT;>;>;)",
            "Lio/reactivex/Observable<",
            "Lcom/powervision/base/base/entity/BaseResultEntity<",
            "TT;>;>;"
        }
    .end annotation

    .line 23
    new-instance v0, Lcom/powervision/base/net/observable/ObservableLoader$ErrorResumeFunction;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/powervision/base/net/observable/ObservableLoader$ErrorResumeFunction;-><init>(Lcom/powervision/base/net/observable/ObservableLoader$1;)V

    .line 24
    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    new-instance v0, Lcom/powervision/base/net/observable/ObservableLoader$ResultFunction;

    invoke-direct {v0, v1}, Lcom/powervision/base/net/observable/ObservableLoader$ResultFunction;-><init>(Lcom/powervision/base/net/observable/ObservableLoader$1;)V

    .line 25
    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    .line 26
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    .line 27
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->unsubscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    .line 28
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method
