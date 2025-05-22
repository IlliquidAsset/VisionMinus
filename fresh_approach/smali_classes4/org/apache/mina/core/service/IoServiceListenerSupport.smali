.class public Lorg/apache/mina/core/service/IoServiceListenerSupport;
.super Ljava/lang/Object;
.source "IoServiceListenerSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/core/service/IoServiceListenerSupport$LockNotifyingListener;
    }
.end annotation


# instance fields
.field private final activated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile activationTime:J

.field private cumulativeManagedSessionCount:Ljava/util/concurrent/atomic/AtomicLong;

.field private volatile largestManagedSessionCount:I

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/mina/core/service/IoServiceListener;",
            ">;"
        }
    .end annotation
.end field

.field private final managedSessions:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Long;",
            "Lorg/apache/mina/core/session/IoSession;",
            ">;"
        }
    .end annotation
.end field

.field private final readOnlyManagedSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lorg/apache/mina/core/session/IoSession;",
            ">;"
        }
    .end annotation
.end field

.field private final service:Lorg/apache/mina/core/service/IoService;


# direct methods
.method public constructor <init>(Lorg/apache/mina/core/service/IoService;)V
    .locals 3

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->listeners:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->managedSessions:Ljava/util/concurrent/ConcurrentMap;

    .line 54
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->readOnlyManagedSessions:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->activated:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->largestManagedSessionCount:I

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->cumulativeManagedSessionCount:Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz p1, :cond_0

    .line 77
    iput-object p1, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->service:Lorg/apache/mina/core/service/IoService;

    return-void

    .line 74
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "service"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private disconnectSessions()V
    .locals 4

    .line 278
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->service:Lorg/apache/mina/core/service/IoService;

    instance-of v1, v0, Lorg/apache/mina/core/service/IoAcceptor;

    if-nez v1, :cond_0

    return-void

    .line 283
    :cond_0
    check-cast v0, Lorg/apache/mina/core/service/IoAcceptor;

    invoke-interface {v0}, Lorg/apache/mina/core/service/IoAcceptor;->isCloseOnDeactivation()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 287
    :cond_1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 288
    new-instance v1, Lorg/apache/mina/core/service/IoServiceListenerSupport$LockNotifyingListener;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/service/IoServiceListenerSupport$LockNotifyingListener;-><init>(Ljava/lang/Object;)V

    .line 290
    iget-object v2, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->managedSessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/mina/core/session/IoSession;

    .line 291
    invoke-interface {v3}, Lorg/apache/mina/core/session/IoSession;->closeNow()Lorg/apache/mina/core/future/CloseFuture;

    move-result-object v3

    invoke-interface {v3, v1}, Lorg/apache/mina/core/future/CloseFuture;->addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/CloseFuture;

    goto :goto_0

    .line 295
    :cond_2
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :goto_1
    :try_start_1
    iget-object v1, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->managedSessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const-wide/16 v1, 0x1f4

    .line 297
    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    goto :goto_1

    .line 299
    :cond_3
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_2
    return-void
.end method


# virtual methods
.method public add(Lorg/apache/mina/core/service/IoServiceListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 87
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public fireServiceActivated()V
    .locals 3

    .line 145
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->activated:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 150
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->activationTime:J

    .line 153
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/service/IoServiceListener;

    .line 155
    :try_start_0
    iget-object v2, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->service:Lorg/apache/mina/core/service/IoService;

    invoke-interface {v1, v2}, Lorg/apache/mina/core/service/IoServiceListener;->serviceActivated(Lorg/apache/mina/core/service/IoService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 157
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public fireServiceDeactivated()V
    .locals 3

    .line 167
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->activated:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 174
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/service/IoServiceListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    :try_start_1
    iget-object v2, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->service:Lorg/apache/mina/core/service/IoService;

    invoke-interface {v1, v2}, Lorg/apache/mina/core/service/IoServiceListener;->serviceDeactivated(Lorg/apache/mina/core/service/IoService;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 178
    :try_start_2
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 182
    :cond_1
    invoke-direct {p0}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->disconnectSessions()V

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->disconnectSessions()V

    throw v0
.end method

.method public fireSessionCreated(Lorg/apache/mina/core/session/IoSession;)V
    .locals 4

    .line 194
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/mina/core/service/IoConnector;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->managedSessions:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v0

    .line 196
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->managedSessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v1

    .line 197
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 v1, 0x0

    .line 201
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->managedSessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-eqz v1, :cond_2

    .line 207
    invoke-virtual {p0}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->fireServiceActivated()V

    .line 211
    :cond_2
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v0

    .line 212
    invoke-interface {v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireSessionCreated()V

    .line 213
    invoke-interface {v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireSessionOpened()V

    .line 215
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->managedSessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    .line 217
    iget v1, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->largestManagedSessionCount:I

    if-le v0, v1, :cond_3

    .line 218
    iput v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->largestManagedSessionCount:I

    .line 221
    :cond_3
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->cumulativeManagedSessionCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 224
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/service/IoServiceListener;

    .line 226
    :try_start_1
    invoke-interface {v1, p1}, Lorg/apache/mina/core/service/IoServiceListener;->sessionCreated(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 228
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public fireSessionDestroyed(Lorg/apache/mina/core/session/IoSession;)V
    .locals 3

    .line 240
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->managedSessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 245
    :cond_0
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireSessionClosed()V

    .line 249
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/service/IoServiceListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 251
    :try_start_1
    invoke-interface {v1, p1}, Lorg/apache/mina/core/service/IoServiceListener;->sessionDestroyed(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 253
    :try_start_2
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 258
    :cond_1
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object p1

    instance-of p1, p1, Lorg/apache/mina/core/service/IoConnector;

    if-eqz p1, :cond_2

    .line 261
    iget-object p1, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->managedSessions:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter p1

    .line 262
    :try_start_3
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->managedSessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    .line 263
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_2

    .line 266
    invoke-virtual {p0}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->fireServiceDeactivated()V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 263
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_2
    :goto_1
    return-void

    :catchall_1
    move-exception v0

    .line 258
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object p1

    instance-of p1, p1, Lorg/apache/mina/core/service/IoConnector;

    if-eqz p1, :cond_3

    .line 261
    iget-object p1, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->managedSessions:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter p1

    .line 262
    :try_start_5
    iget-object v1, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->managedSessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v1

    .line 263
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_3

    .line 266
    invoke-virtual {p0}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->fireServiceDeactivated()V

    goto :goto_2

    :catchall_2
    move-exception v0

    .line 263
    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 268
    :cond_3
    :goto_2
    throw v0
.end method

.method public getActivationTime()J
    .locals 2

    .line 106
    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->activationTime:J

    return-wide v0
.end method

.method public getCumulativeManagedSessionCount()J
    .locals 2

    .line 130
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->cumulativeManagedSessionCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLargestManagedSessionCount()I
    .locals 1

    .line 122
    iget v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->largestManagedSessionCount:I

    return v0
.end method

.method public getManagedSessionCount()I
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->managedSessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    return v0
.end method

.method public getManagedSessions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lorg/apache/mina/core/session/IoSession;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->readOnlyManagedSessions:Ljava/util/Map;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->activated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public remove(Lorg/apache/mina/core/service/IoServiceListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 98
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
