.class public Lcom/lzy/okrx2/adapter/SingleBody;
.super Ljava/lang/Object;
.source "SingleBody.java"

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
        "Lio/reactivex/Single<",
        "TT;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adapt(Lcom/lzy/okgo/adapter/Call;Lcom/lzy/okgo/adapter/AdapterParam;)Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/adapter/Call<",
            "TT;>;",
            "Lcom/lzy/okgo/adapter/AdapterParam;",
            ")",
            "Lio/reactivex/Single<",
            "TT;>;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/lzy/okrx2/adapter/ObservableBody;

    invoke-direct {v0}, Lcom/lzy/okrx2/adapter/ObservableBody;-><init>()V

    .line 37
    invoke-virtual {v0, p1, p2}, Lcom/lzy/okrx2/adapter/ObservableBody;->adapt(Lcom/lzy/okgo/adapter/Call;Lcom/lzy/okgo/adapter/AdapterParam;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Observable;->singleOrError()Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adapt(Lcom/lzy/okgo/adapter/Call;Lcom/lzy/okgo/adapter/AdapterParam;)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/lzy/okrx2/adapter/SingleBody;->adapt(Lcom/lzy/okgo/adapter/Call;Lcom/lzy/okgo/adapter/AdapterParam;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method
