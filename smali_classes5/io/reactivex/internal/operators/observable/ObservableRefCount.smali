.class public final Lio/reactivex/internal/operators/observable/ObservableRefCount;
.super Lio/reactivex/Observable;
.source "ObservableRefCount.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableRefCount$RefCountObserver;,
        Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Observable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field connection:Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;

.field final n:I

.field final scheduler:Lio/reactivex/Scheduler;

.field final source:Lio/reactivex/observables/ConnectableObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/observables/ConnectableObservable<",
            "TT;>;"
        }
    .end annotation
.end field

.field final timeout:J

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Lio/reactivex/observables/ConnectableObservable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/observables/ConnectableObservable<",
            "TT;>;)V"
        }
    .end annotation

    .line 49
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->trampoline()Lio/reactivex/Scheduler;

    move-result-object v6

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lio/reactivex/internal/operators/observable/ObservableRefCount;-><init>(Lio/reactivex/observables/ConnectableObservable;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V

    return-void
.end method

.method public constructor <init>(Lio/reactivex/observables/ConnectableObservable;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/observables/ConnectableObservable<",
            "TT;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler;",
            ")V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    .line 54
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->source:Lio/reactivex/observables/ConnectableObservable;

    .line 55
    iput p2, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->n:I

    .line 56
    iput-wide p3, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->timeout:J

    .line 57
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->unit:Ljava/util/concurrent/TimeUnit;

    .line 58
    iput-object p6, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->scheduler:Lio/reactivex/Scheduler;

    return-void
.end method


# virtual methods
.method cancel(Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;)V
    .locals 5

    .line 94
    monitor-enter p0

    .line 95
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->connection:Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->connection:Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;

    if-eq v0, p1, :cond_0

    goto :goto_1

    .line 98
    :cond_0
    iget-wide v0, p1, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;->subscriberCount:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 99
    iput-wide v0, p1, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;->subscriberCount:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    .line 100
    iget-boolean v0, p1, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;->connected:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 103
    :cond_1
    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->timeout:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 104
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableRefCount;->timeout(Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;)V

    .line 105
    monitor-exit p0

    return-void

    .line 107
    :cond_2
    new-instance v0, Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-direct {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;-><init>()V

    .line 108
    iput-object v0, p1, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;->timer:Lio/reactivex/disposables/Disposable;

    .line 109
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->scheduler:Lio/reactivex/Scheduler;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->timeout:J

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, v2, v3, v4}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/disposables/Disposable;)Z

    return-void

    .line 101
    :cond_3
    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    .line 96
    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 109
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected subscribeActual(Lio/reactivex/Observer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 67
    monitor-enter p0

    .line 68
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->connection:Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;-><init>(Lio/reactivex/internal/operators/observable/ObservableRefCount;)V

    .line 71
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->connection:Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;

    .line 74
    :cond_0
    iget-wide v1, v0, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;->subscriberCount:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 75
    iget-object v3, v0, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;->timer:Lio/reactivex/disposables/Disposable;

    if-eqz v3, :cond_1

    .line 76
    iget-object v3, v0, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;->timer:Lio/reactivex/disposables/Disposable;

    invoke-interface {v3}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_1
    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    .line 78
    iput-wide v1, v0, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;->subscriberCount:J

    .line 79
    iget-boolean v3, v0, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;->connected:Z

    const/4 v4, 0x1

    if-nez v3, :cond_2

    iget v3, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->n:I

    int-to-long v5, v3

    cmp-long v3, v1, v5

    if-nez v3, :cond_2

    .line 81
    iput-boolean v4, v0, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;->connected:Z

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 83
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->source:Lio/reactivex/observables/ConnectableObservable;

    new-instance v2, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefCountObserver;

    invoke-direct {v2, p1, p0, v0}, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefCountObserver;-><init>(Lio/reactivex/Observer;Lio/reactivex/internal/operators/observable/ObservableRefCount;Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;)V

    invoke-virtual {v1, v2}, Lio/reactivex/observables/ConnectableObservable;->subscribe(Lio/reactivex/Observer;)V

    if-eqz v4, :cond_3

    .line 88
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->source:Lio/reactivex/observables/ConnectableObservable;

    invoke-virtual {p1, v0}, Lio/reactivex/observables/ConnectableObservable;->connect(Lio/reactivex/functions/Consumer;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 83
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method terminated(Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;)V
    .locals 5

    .line 115
    monitor-enter p0

    .line 116
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->connection:Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->connection:Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->connection:Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;

    .line 118
    iget-object v0, p1, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;->timer:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p1, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;->timer:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 122
    :cond_0
    iget-wide v0, p1, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;->subscriberCount:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;->subscriberCount:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 123
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->source:Lio/reactivex/observables/ConnectableObservable;

    instance-of v0, v0, Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    .line 124
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->source:Lio/reactivex/observables/ConnectableObservable;

    check-cast p1, Lio/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    goto :goto_0

    .line 125
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->source:Lio/reactivex/observables/ConnectableObservable;

    instance-of v0, v0, Lio/reactivex/internal/disposables/ResettableConnectable;

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->source:Lio/reactivex/observables/ConnectableObservable;

    check-cast v0, Lio/reactivex/internal/disposables/ResettableConnectable;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/disposables/Disposable;

    invoke-interface {v0, p1}, Lio/reactivex/internal/disposables/ResettableConnectable;->resetIf(Lio/reactivex/disposables/Disposable;)V

    .line 129
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method timeout(Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;)V
    .locals 5

    .line 133
    monitor-enter p0

    .line 134
    :try_start_0
    iget-wide v0, p1, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;->subscriberCount:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->connection:Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;

    if-ne p1, v0, :cond_2

    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->connection:Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;

    .line 136
    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 137
    invoke-static {p1}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 139
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->source:Lio/reactivex/observables/ConnectableObservable;

    instance-of v1, v1, Lio/reactivex/disposables/Disposable;

    if-eqz v1, :cond_0

    .line 140
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->source:Lio/reactivex/observables/ConnectableObservable;

    check-cast p1, Lio/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    goto :goto_0

    .line 141
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->source:Lio/reactivex/observables/ConnectableObservable;

    instance-of v1, v1, Lio/reactivex/internal/disposables/ResettableConnectable;

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 143
    iput-boolean v0, p1, Lio/reactivex/internal/operators/observable/ObservableRefCount$RefConnection;->disconnectedEarly:Z

    goto :goto_0

    .line 145
    :cond_1
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->source:Lio/reactivex/observables/ConnectableObservable;

    check-cast p1, Lio/reactivex/internal/disposables/ResettableConnectable;

    invoke-interface {p1, v0}, Lio/reactivex/internal/disposables/ResettableConnectable;->resetIf(Lio/reactivex/disposables/Disposable;)V

    .line 149
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
