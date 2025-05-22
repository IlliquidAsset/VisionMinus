.class public Lcom/powervision/base/utils/RxUtils;
.super Ljava/lang/Object;
.source "RxUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$rxSchedulerHelper$0(Lio/reactivex/Flowable;)Lorg/reactivestreams/Publisher;
    .locals 1

    .line 21
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    return-object p0
.end method

.method public static rxSchedulerHelper()Lio/reactivex/FlowableTransformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/FlowableTransformer<",
            "TT;TT;>;"
        }
    .end annotation

    .line 21
    sget-object v0, Lcom/powervision/base/utils/-$$Lambda$RxUtils$yJ2jTgyYaYsFbQquP0bxYNnmKQM;->INSTANCE:Lcom/powervision/base/utils/-$$Lambda$RxUtils$yJ2jTgyYaYsFbQquP0bxYNnmKQM;

    return-object v0
.end method
