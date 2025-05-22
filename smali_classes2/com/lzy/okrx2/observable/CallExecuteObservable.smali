.class public Lcom/lzy/okrx2/observable/CallExecuteObservable;
.super Lio/reactivex/Observable;
.source "CallExecuteObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzy/okrx2/observable/CallExecuteObservable$CallDisposable;
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

    .line 40
    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/lzy/okrx2/observable/CallExecuteObservable;->originalCall:Lcom/lzy/okgo/adapter/Call;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/Observer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-",
            "Lcom/lzy/okgo/model/Response<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/lzy/okrx2/observable/CallExecuteObservable;->originalCall:Lcom/lzy/okgo/adapter/Call;

    invoke-interface {v0}, Lcom/lzy/okgo/adapter/Call;->clone()Lcom/lzy/okgo/adapter/Call;

    move-result-object v0

    .line 48
    new-instance v1, Lcom/lzy/okrx2/observable/CallExecuteObservable$CallDisposable;

    invoke-direct {v1, v0}, Lcom/lzy/okrx2/observable/CallExecuteObservable$CallDisposable;-><init>(Lcom/lzy/okgo/adapter/Call;)V

    invoke-interface {p1, v1}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 52
    :try_start_0
    invoke-interface {v0}, Lcom/lzy/okgo/adapter/Call;->execute()Lcom/lzy/okgo/model/Response;

    move-result-object v3

    .line 53
    invoke-interface {v0}, Lcom/lzy/okgo/adapter/Call;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 54
    invoke-interface {p1, v3}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 56
    :cond_0
    invoke-interface {v0}, Lcom/lzy/okgo/adapter/Call;->isCanceled()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v3, :cond_2

    .line 58
    :try_start_1
    invoke-interface {p1}, Lio/reactivex/Observer;->onComplete()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    const/4 v4, 0x1

    goto :goto_0

    :catchall_1
    move-exception v3

    const/4 v4, 0x0

    .line 61
    :goto_0
    invoke-static {v3}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    if-eqz v4, :cond_1

    .line 63
    invoke-static {v3}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 64
    :cond_1
    invoke-interface {v0}, Lcom/lzy/okgo/adapter/Call;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 66
    :try_start_2
    invoke-interface {p1, v3}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    .line 68
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 69
    new-instance v0, Lio/reactivex/exceptions/CompositeException;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Throwable;

    aput-object v3, v4, v2

    aput-object p1, v4, v1

    invoke-direct {v0, v4}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method
