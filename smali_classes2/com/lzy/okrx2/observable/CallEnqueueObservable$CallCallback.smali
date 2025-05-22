.class final Lcom/lzy/okrx2/observable/CallEnqueueObservable$CallCallback;
.super Ljava/lang/Object;
.source "CallEnqueueObservable.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;
.implements Lcom/lzy/okgo/callback/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzy/okrx2/observable/CallEnqueueObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/disposables/Disposable;",
        "Lcom/lzy/okgo/callback/Callback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final call:Lcom/lzy/okgo/adapter/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/adapter/Call<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final observer:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-",
            "Lcom/lzy/okgo/model/Response<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field terminated:Z


# direct methods
.method constructor <init>(Lcom/lzy/okgo/adapter/Call;Lio/reactivex/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/adapter/Call<",
            "TT;>;",
            "Lio/reactivex/Observer<",
            "-",
            "Lcom/lzy/okgo/model/Response<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/lzy/okrx2/observable/CallEnqueueObservable$CallCallback;->terminated:Z

    .line 62
    iput-object p1, p0, Lcom/lzy/okrx2/observable/CallEnqueueObservable$CallCallback;->call:Lcom/lzy/okgo/adapter/Call;

    .line 63
    iput-object p2, p0, Lcom/lzy/okrx2/observable/CallEnqueueObservable$CallCallback;->observer:Lio/reactivex/Observer;

    return-void
.end method


# virtual methods
.method public convertResponse(Lokhttp3/Response;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Response;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public dispose()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/lzy/okrx2/observable/CallEnqueueObservable$CallCallback;->call:Lcom/lzy/okgo/adapter/Call;

    invoke-interface {v0}, Lcom/lzy/okgo/adapter/Call;->cancel()V

    return-void
.end method

.method public downloadProgress(Lcom/lzy/okgo/model/Progress;)V
    .locals 0

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/lzy/okrx2/observable/CallEnqueueObservable$CallCallback;->call:Lcom/lzy/okgo/adapter/Call;

    invoke-interface {v0}, Lcom/lzy/okgo/adapter/Call;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public onCacheSuccess(Lcom/lzy/okgo/model/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/Response<",
            "TT;>;)V"
        }
    .end annotation

    .line 103
    invoke-virtual {p0, p1}, Lcom/lzy/okrx2/observable/CallEnqueueObservable$CallCallback;->onSuccess(Lcom/lzy/okgo/model/Response;)V

    return-void
.end method

.method public onError(Lcom/lzy/okgo/model/Response;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/Response<",
            "TT;>;)V"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/lzy/okrx2/observable/CallEnqueueObservable$CallCallback;->call:Lcom/lzy/okgo/adapter/Call;

    invoke-interface {v0}, Lcom/lzy/okgo/adapter/Call;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 110
    :cond_0
    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->getException()Ljava/lang/Throwable;

    move-result-object p1

    const/4 v0, 0x1

    .line 112
    :try_start_0
    iput-boolean v0, p0, Lcom/lzy/okrx2/observable/CallEnqueueObservable$CallCallback;->terminated:Z

    .line 113
    iget-object v1, p0, Lcom/lzy/okrx2/observable/CallEnqueueObservable$CallCallback;->observer:Lio/reactivex/Observer;

    invoke-interface {v1, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 115
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 116
    new-instance v2, Lio/reactivex/exceptions/CompositeException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object v1, v3, v0

    invoke-direct {v2, v3}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v2}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onFinish()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/lzy/okrx2/observable/CallEnqueueObservable$CallCallback;->call:Lcom/lzy/okgo/adapter/Call;

    invoke-interface {v0}, Lcom/lzy/okgo/adapter/Call;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 125
    :try_start_0
    iput-boolean v0, p0, Lcom/lzy/okrx2/observable/CallEnqueueObservable$CallCallback;->terminated:Z

    .line 126
    iget-object v0, p0, Lcom/lzy/okrx2/observable/CallEnqueueObservable$CallCallback;->observer:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 128
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 129
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onStart(Lcom/lzy/okgo/request/base/Request;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/request/base/Request<",
            "TT;+",
            "Lcom/lzy/okgo/request/base/Request;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onSuccess(Lcom/lzy/okgo/model/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/Response<",
            "TT;>;)V"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/lzy/okrx2/observable/CallEnqueueObservable$CallCallback;->call:Lcom/lzy/okgo/adapter/Call;

    invoke-interface {v0}, Lcom/lzy/okgo/adapter/Call;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 91
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okrx2/observable/CallEnqueueObservable$CallCallback;->observer:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 93
    iget-boolean v1, p0, Lcom/lzy/okrx2/observable/CallEnqueueObservable$CallCallback;->terminated:Z

    if-eqz v1, :cond_1

    .line 94
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {p0, p1}, Lcom/lzy/okrx2/observable/CallEnqueueObservable$CallCallback;->onError(Lcom/lzy/okgo/model/Response;)V

    :goto_0
    return-void
.end method

.method public uploadProgress(Lcom/lzy/okgo/model/Progress;)V
    .locals 0

    return-void
.end method
