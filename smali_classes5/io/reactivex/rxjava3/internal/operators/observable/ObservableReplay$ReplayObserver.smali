.class final Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$ReplayObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ObservableReplay.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/Observer;
.implements Lio/reactivex/rxjava3/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReplayObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        ">;",
        "Lio/reactivex/rxjava3/core/Observer<",
        "TT;>;",
        "Lio/reactivex/rxjava3/disposables/Disposable;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$InnerDisposable;

.field static final TERMINATED:[Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$InnerDisposable;

.field private static final serialVersionUID:J = -0x7686330d232fac3L


# instance fields
.field final buffer:Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$ReplayBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$ReplayBuffer<",
            "TT;>;"
        }
    .end annotation
.end field

.field final current:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$ReplayObserver<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field done:Z

.field final observers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$InnerDisposable;",
            ">;"
        }
    .end annotation
.end field

.field final shouldConnect:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$InnerDisposable;

    .line 231
    sput-object v1, Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$ReplayObserver;->EMPTY:[Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$InnerDisposable;

    new-array v0, v0, [Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$InnerDisposable;

    .line 233
    sput-object v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$ReplayObserver;->TERMINATED:[Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$InnerDisposable;

    return-void
.end method

.method constructor <init>(Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$ReplayBuffer;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "current"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$ReplayBuffer<",
            "TT;>;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$ReplayObserver<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 246
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 247
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$ReplayObserver;->buffer:Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$ReplayBuffer;

    .line 248
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$ReplayObserver;->current:Ljava/util/concurrent/atomic/AtomicReference;

    .line 250
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p2, Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$ReplayObserver;->EMPTY:[Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$InnerDisposable;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$ReplayObserver;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    .line 251
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$ReplayObserver;->shouldConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method add(Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$InnerDisposable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "producer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$InnerDisposable<",
            "TT;>;)Z"
        }
    .end annotation

    .line 278
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$ReplayObserver;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$InnerDisposable;

    .line 281
    sget-object v1, Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$ReplayObserver;->TERMINATED:[Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$InnerDisposable;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return v2

    .line 285
    :cond_1
    array-length v1, v0

    add-int/lit8 v3, v1, 0x1

    .line 286
    new-array v3, v3, [Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$InnerDisposable;

    .line 287
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 288
    aput-object p1, v3, v1

    .line 290
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$ReplayObserver;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method public dispose()V
    .locals 2

    .line 261
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$ReplayObserver;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$ReplayObserver;->TERMINATED:[Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$InnerDisposable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 262
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$ReplayObserver;->current:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 265
    invoke-static {p0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public isDisposed()Z
    .locals 2

    .line 256
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$ReplayObserver;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$ReplayObserver;->TERMINATED:[Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$InnerDisposable;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 381
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$ReplayObserver;->done:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 382
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$ReplayObserver;->done:Z

    .line 383
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$ReplayObserver;->buffer:Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$ReplayBuffer;

    invoke-interface {v0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$ReplayBuffer;->complete()V

    .line 384
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$ReplayObserver;->replayFinal()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 368
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$ReplayObserver;->done:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 369
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$ReplayObserver;->done:Z

    .line 370
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$ReplayObserver;->buffer:Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$ReplayBuffer;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$ReplayBuffer;->error(Ljava/lang/Throwable;)V

    .line 371
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$ReplayObserver;->replayFinal()V

    goto :goto_0

    .line 373
    :cond_0
    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 358
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$ReplayObserver;->done:Z

    if-nez v0, :cond_0

    .line 359
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$ReplayObserver;->buffer:Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$ReplayBuffer;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$ReplayBuffer;->next(Ljava/lang/Object;)V

    .line 360
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$ReplayObserver;->replay()V

    :cond_0
    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 351
    invoke-static {p0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/rxjava3/disposables/Disposable;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 352
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$ReplayObserver;->replay()V

    :cond_0
    return-void
.end method

.method remove(Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$InnerDisposable;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "producer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$InnerDisposable<",
            "TT;>;)V"
        }
    .end annotation

    .line 306
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$ReplayObserver;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$InnerDisposable;

    .line 308
    array-length v1, v0

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    .line 317
    aget-object v5, v0, v4

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-gez v2, :cond_4

    return-void

    :cond_4
    const/4 v4, 0x1

    if-ne v1, v4, :cond_5

    .line 331
    sget-object v1, Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$ReplayObserver;->EMPTY:[Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$InnerDisposable;

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v1, -0x1

    .line 334
    new-array v5, v5, [Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$InnerDisposable;

    .line 336
    invoke-static {v0, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v4

    .line 338
    invoke-static {v0, v3, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    .line 341
    :goto_2
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$ReplayObserver;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method replay()V
    .locals 5

    .line 393
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$ReplayObserver;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$InnerDisposable;

    .line 394
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 395
    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$ReplayObserver;->buffer:Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$ReplayBuffer;

    invoke-interface {v4, v3}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$ReplayBuffer;->replay(Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$InnerDisposable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method replayFinal()V
    .locals 5

    .line 404
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$ReplayObserver;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$ReplayObserver;->TERMINATED:[Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$InnerDisposable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$InnerDisposable;

    .line 405
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 406
    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$ReplayObserver;->buffer:Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$ReplayBuffer;

    invoke-interface {v4, v3}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$ReplayBuffer;->replay(Lio/reactivex/rxjava3/internal/operators/observable/ObservableReplay$InnerDisposable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
