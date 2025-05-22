.class public Lcom/lzy/okrx2/observable/CallEnqueueObservable;
.super Lio/reactivex/Observable;
.source "CallEnqueueObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzy/okrx2/observable/CallEnqueueObservable$CallCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Observable<",
        "Lcom/lzy/okgo/model/Response<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final originalCall:Lcom/lzy/okgo/adapter/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/adapter/Call<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/lzy/okgo/adapter/Call;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/adapter/Call<",
            "TT;>;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/lzy/okrx2/observable/CallEnqueueObservable;->originalCall:Lcom/lzy/okgo/adapter/Call;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/Observer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-",
            "Lcom/lzy/okgo/model/Response<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/lzy/okrx2/observable/CallEnqueueObservable;->originalCall:Lcom/lzy/okgo/adapter/Call;

    invoke-interface {v0}, Lcom/lzy/okgo/adapter/Call;->clone()Lcom/lzy/okgo/adapter/Call;

    move-result-object v0

    .line 51
    new-instance v1, Lcom/lzy/okrx2/observable/CallEnqueueObservable$CallCallback;

    invoke-direct {v1, v0, p1}, Lcom/lzy/okrx2/observable/CallEnqueueObservable$CallCallback;-><init>(Lcom/lzy/okgo/adapter/Call;Lio/reactivex/Observer;)V

    .line 52
    invoke-interface {p1, v1}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 53
    invoke-interface {v0, v1}, Lcom/lzy/okgo/adapter/Call;->execute(Lcom/lzy/okgo/callback/Callback;)V

    return-void
.end method
