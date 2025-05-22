.class public Lcom/lzy/okrx2/adapter/FlowableResult;
.super Ljava/lang/Object;
.source "FlowableResult.java"

# interfaces
.implements Lcom/lzy/okgo/adapter/CallAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/lzy/okgo/adapter/CallAdapter<",
        "TT;",
        "Lio/reactivex/Flowable<",
        "Lcom/lzy/okgo/model/Result<",
        "TT;>;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adapt(Lcom/lzy/okgo/adapter/Call;Lcom/lzy/okgo/adapter/AdapterParam;)Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/adapter/Call<",
            "TT;>;",
            "Lcom/lzy/okgo/adapter/AdapterParam;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lcom/lzy/okgo/model/Result<",
            "TT;>;>;"
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/lzy/okrx2/adapter/ObservableResult;

    invoke-direct {v0}, Lcom/lzy/okrx2/adapter/ObservableResult;-><init>()V

    .line 39
    invoke-virtual {v0, p1, p2}, Lcom/lzy/okrx2/adapter/ObservableResult;->adapt(Lcom/lzy/okgo/adapter/Call;Lcom/lzy/okgo/adapter/AdapterParam;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object p2, Lio/reactivex/BackpressureStrategy;->LATEST:Lio/reactivex/BackpressureStrategy;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->toFlowable(Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adapt(Lcom/lzy/okgo/adapter/Call;Lcom/lzy/okgo/adapter/AdapterParam;)Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/lzy/okrx2/adapter/FlowableResult;->adapt(Lcom/lzy/okgo/adapter/Call;Lcom/lzy/okgo/adapter/AdapterParam;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method
