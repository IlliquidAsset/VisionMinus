.class public Lcom/lzy/okrx2/adapter/ObservableResult;
.super Ljava/lang/Object;
.source "ObservableResult.java"

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
        "Lio/reactivex/Observable<",
        "Lcom/lzy/okgo/model/Result<",
        "TT;>;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adapt(Lcom/lzy/okgo/adapter/Call;Lcom/lzy/okgo/adapter/AdapterParam;)Lio/reactivex/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/adapter/Call<",
            "TT;>;",
            "Lcom/lzy/okgo/adapter/AdapterParam;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/lzy/okgo/model/Result<",
            "TT;>;>;"
        }
    .end annotation

    .line 39
    invoke-static {p1, p2}, Lcom/lzy/okrx2/adapter/AnalysisParams;->analysis(Lcom/lzy/okgo/adapter/Call;Lcom/lzy/okgo/adapter/AdapterParam;)Lio/reactivex/Observable;

    move-result-object p1

    .line 40
    new-instance p2, Lcom/lzy/okrx2/observable/ResultObservable;

    invoke-direct {p2, p1}, Lcom/lzy/okrx2/observable/ResultObservable;-><init>(Lio/reactivex/Observable;)V

    return-object p2
.end method

.method public bridge synthetic adapt(Lcom/lzy/okgo/adapter/Call;Lcom/lzy/okgo/adapter/AdapterParam;)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/lzy/okrx2/adapter/ObservableResult;->adapt(Lcom/lzy/okgo/adapter/Call;Lcom/lzy/okgo/adapter/AdapterParam;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
