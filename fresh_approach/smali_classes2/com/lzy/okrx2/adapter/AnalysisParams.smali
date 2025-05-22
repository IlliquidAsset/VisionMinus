.class Lcom/lzy/okrx2/adapter/AnalysisParams;
.super Ljava/lang/Object;
.source "AnalysisParams.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static analysis(Lcom/lzy/okgo/adapter/Call;Lcom/lzy/okgo/adapter/AdapterParam;)Lio/reactivex/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lzy/okgo/adapter/Call<",
            "TT;>;",
            "Lcom/lzy/okgo/adapter/AdapterParam;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/lzy/okgo/model/Response<",
            "TT;>;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 39
    new-instance p1, Lcom/lzy/okgo/adapter/AdapterParam;

    invoke-direct {p1}, Lcom/lzy/okgo/adapter/AdapterParam;-><init>()V

    .line 40
    :cond_0
    iget-boolean p1, p1, Lcom/lzy/okgo/adapter/AdapterParam;->isAsync:Z

    if-eqz p1, :cond_1

    .line 41
    new-instance p1, Lcom/lzy/okrx2/observable/CallEnqueueObservable;

    invoke-direct {p1, p0}, Lcom/lzy/okrx2/observable/CallEnqueueObservable;-><init>(Lcom/lzy/okgo/adapter/Call;)V

    goto :goto_0

    .line 43
    :cond_1
    new-instance p1, Lcom/lzy/okrx2/observable/CallExecuteObservable;

    invoke-direct {p1, p0}, Lcom/lzy/okrx2/observable/CallExecuteObservable;-><init>(Lcom/lzy/okgo/adapter/Call;)V

    :goto_0
    return-object p1
.end method
