.class public Lorg/apache/mina/core/future/DefaultIoFuture;
.super Ljava/lang/Object;
.source "DefaultIoFuture.java"

# interfaces
.implements Lorg/apache/mina/core/future/IoFuture;


# static fields
.field private static final DEAD_LOCK_CHECK_INTERVAL:J = 0x1388L


# instance fields
.field private firstListener:Lorg/apache/mina/core/future/IoFutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/mina/core/future/IoFutureListener<",
            "*>;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private otherListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/mina/core/future/IoFutureListener<",
            "*>;>;"
        }
    .end annotation
.end field

.field private ready:Z

.field private result:Ljava/lang/Object;

.field private final session:Lorg/apache/mina/core/session/IoSession;

.field private waiters:I


# direct methods
.method public constructor <init>(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->session:Lorg/apache/mina/core/session/IoSession;

    .line 70
    iput-object p0, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->lock:Ljava/lang/Object;

    return-void
.end method

.method private await0(JZ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    .line 191
    :cond_0
    iget-object v4, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 194
    :try_start_0
    iget-boolean v5, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->ready:Z

    if-nez v5, :cond_7

    cmp-long v5, p1, v2

    if-gtz v5, :cond_1

    goto :goto_4

    .line 199
    :cond_1
    iget v2, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->waiters:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->waiters:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    const-wide/16 v2, 0x1388

    .line 204
    :try_start_1
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 209
    iget-object v5, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->lock:Ljava/lang/Object;

    invoke-virtual {v5, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception v2

    if-nez p3, :cond_5

    .line 216
    :goto_1
    :try_start_2
    iget-boolean v2, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->ready:Z

    if-nez v2, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v5, v0, v2

    if-gez v5, :cond_2

    goto :goto_2

    .line 220
    :cond_2
    invoke-direct {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->checkDeadLock()V

    goto :goto_0

    .line 217
    :cond_3
    :goto_2
    iget-boolean p1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->ready:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 229
    :try_start_3
    iget p2, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->waiters:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->waiters:I

    .line 231
    iget-boolean p2, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->ready:Z

    if-nez p2, :cond_4

    .line 232
    invoke-direct {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->checkDeadLock()V

    :cond_4
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return p1

    .line 212
    :cond_5
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 229
    :goto_3
    :try_start_5
    iget p2, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->waiters:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->waiters:I

    .line 231
    iget-boolean p2, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->ready:Z

    if-nez p2, :cond_6

    .line 232
    invoke-direct {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->checkDeadLock()V

    :cond_6
    throw p1

    .line 195
    :cond_7
    :goto_4
    iget-boolean p1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->ready:Z

    monitor-exit v4

    return p1

    :catchall_1
    move-exception p1

    .line 235
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method

.method private checkDeadLock()V
    .locals 10

    .line 244
    instance-of v0, p0, Lorg/apache/mina/core/future/CloseFuture;

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/apache/mina/core/future/WriteFuture;

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/apache/mina/core/future/ReadFuture;

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/apache/mina/core/future/ConnectFuture;

    if-nez v0, :cond_0

    return-void

    .line 254
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 257
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const-string v4, " or configure a proper thread model alternatively."

    const-string v5, "Please use "

    const-string v6, ".await() was invoked from an I/O processor thread.  "

    const-string v7, "DEAD LOCK: "

    if-ge v3, v1, :cond_2

    aget-object v8, v0, v3

    .line 258
    const-class v9, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 259
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "t"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 261
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lorg/apache/mina/core/future/IoFuture;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lorg/apache/mina/core/future/IoFutureListener;

    .line 263
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_2
    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 270
    :try_start_0
    const-class v8, Lorg/apache/mina/core/future/DefaultIoFuture;

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 272
    const-class v8, Lorg/apache/mina/core/service/IoProcessor;

    invoke-virtual {v8, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    .line 273
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v9, Lorg/apache/mina/core/future/IoFuture;

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v9, Lorg/apache/mina/core/future/IoFutureListener;

    .line 275
    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private notifyListener(Lorg/apache/mina/core/future/IoFutureListener;)V
    .locals 1

    .line 411
    :try_start_0
    invoke-interface {p1, p0}, Lorg/apache/mina/core/future/IoFutureListener;->operationComplete(Lorg/apache/mina/core/future/IoFuture;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 413
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private notifyListeners()V
    .locals 3

    .line 394
    iget-object v0, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->firstListener:Lorg/apache/mina/core/future/IoFutureListener;

    if-eqz v0, :cond_1

    .line 395
    invoke-direct {p0, v0}, Lorg/apache/mina/core/future/DefaultIoFuture;->notifyListener(Lorg/apache/mina/core/future/IoFutureListener;)V

    const/4 v0, 0x0

    .line 396
    iput-object v0, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->firstListener:Lorg/apache/mina/core/future/IoFutureListener;

    .line 398
    iget-object v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->otherListeners:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 399
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/mina/core/future/IoFutureListener;

    .line 400
    invoke-direct {p0, v2}, Lorg/apache/mina/core/future/DefaultIoFuture;->notifyListener(Lorg/apache/mina/core/future/IoFutureListener;)V

    goto :goto_0

    .line 403
    :cond_0
    iput-object v0, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->otherListeners:Ljava/util/List;

    :cond_1
    return-void
.end method


# virtual methods
.method public addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/IoFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/future/IoFutureListener<",
            "*>;)",
            "Lorg/apache/mina/core/future/IoFuture;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 339
    iget-object v0, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 340
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->ready:Z

    if-eqz v1, :cond_0

    .line 345
    invoke-direct {p0, p1}, Lorg/apache/mina/core/future/DefaultIoFuture;->notifyListener(Lorg/apache/mina/core/future/IoFutureListener;)V

    goto :goto_0

    .line 347
    :cond_0
    iget-object v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->firstListener:Lorg/apache/mina/core/future/IoFutureListener;

    if-nez v1, :cond_1

    .line 348
    iput-object p1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->firstListener:Lorg/apache/mina/core/future/IoFutureListener;

    goto :goto_0

    .line 350
    :cond_1
    iget-object v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->otherListeners:Ljava/util/List;

    if-nez v1, :cond_2

    .line 351
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->otherListeners:Ljava/util/List;

    .line 354
    :cond_2
    iget-object v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->otherListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 336
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public await()Lorg/apache/mina/core/future/IoFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 101
    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->ready:Z

    if-nez v1, :cond_2

    .line 102
    iget v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->waiters:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->waiters:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 108
    :try_start_1
    iget-object v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->lock:Ljava/lang/Object;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    :try_start_2
    iget v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->waiters:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->waiters:I

    .line 112
    iget-boolean v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->ready:Z

    if-nez v1, :cond_0

    .line 113
    invoke-direct {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->checkDeadLock()V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 110
    iget v2, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->waiters:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->waiters:I

    .line 112
    iget-boolean v2, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->ready:Z

    if-nez v2, :cond_1

    .line 113
    invoke-direct {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->checkDeadLock()V

    :cond_1
    throw v1

    .line 117
    :cond_2
    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public await(J)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 133
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/mina/core/future/DefaultIoFuture;->await0(JZ)Z

    move-result p1

    return p1
.end method

.method public await(JLjava/util/concurrent/TimeUnit;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 126
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/mina/core/future/DefaultIoFuture;->await0(JZ)Z

    move-result p1

    return p1
.end method

.method public awaitUninterruptibly()Lorg/apache/mina/core/future/IoFuture;
    .locals 3

    const-wide v0, 0x7fffffffffffffffL

    const/4 v2, 0x0

    .line 141
    :try_start_0
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/mina/core/future/DefaultIoFuture;->await0(JZ)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method public awaitUninterruptibly(J)Z
    .locals 1

    const/4 v0, 0x0

    .line 165
    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/mina/core/future/DefaultIoFuture;->await0(JZ)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 167
    :catch_0
    new-instance p1, Ljava/lang/InternalError;

    invoke-direct {p1}, Ljava/lang/InternalError;-><init>()V

    throw p1
.end method

.method public awaitUninterruptibly(JLjava/util/concurrent/TimeUnit;)Z
    .locals 0

    .line 154
    :try_start_0
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/mina/core/future/DefaultIoFuture;->await0(JZ)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 156
    :catch_0
    new-instance p1, Ljava/lang/InternalError;

    invoke-direct {p1}, Ljava/lang/InternalError;-><init>()V

    throw p1
.end method

.method public getSession()Lorg/apache/mina/core/session/IoSession;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->session:Lorg/apache/mina/core/session/IoSession;

    return-object v0
.end method

.method protected getValue()Ljava/lang/Object;
    .locals 2

    .line 326
    iget-object v0, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 327
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->result:Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 328
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isDone()Z
    .locals 2

    .line 288
    iget-object v0, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 289
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->ready:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 290
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public join()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 85
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/IoFuture;

    return-void
.end method

.method public join(J)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 93
    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/core/future/DefaultIoFuture;->awaitUninterruptibly(J)Z

    move-result p1

    return p1
.end method

.method public removeListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/IoFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/future/IoFutureListener<",
            "*>;)",
            "Lorg/apache/mina/core/future/IoFuture;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 370
    iget-object v0, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 371
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->ready:Z

    if-nez v1, :cond_2

    .line 372
    iget-object v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->firstListener:Lorg/apache/mina/core/future/IoFutureListener;

    if-ne p1, v1, :cond_1

    .line 373
    iget-object p1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->otherListeners:Ljava/util/List;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->otherListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 374
    iget-object p1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->otherListeners:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/core/future/IoFutureListener;

    iput-object p1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->firstListener:Lorg/apache/mina/core/future/IoFutureListener;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 376
    iput-object p1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->firstListener:Lorg/apache/mina/core/future/IoFutureListener;

    goto :goto_0

    .line 378
    :cond_1
    iget-object v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->otherListeners:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 379
    iget-object v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->otherListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 382
    :cond_2
    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 367
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setValue(Ljava/lang/Object;)Z
    .locals 2

    .line 301
    iget-object v0, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 303
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->ready:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 304
    monitor-exit v0

    return p1

    .line 307
    :cond_0
    iput-object p1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->result:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 308
    iput-boolean p1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->ready:Z

    .line 311
    iget v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->waiters:I

    if-lez v1, :cond_1

    .line 312
    iget-object v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 314
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    invoke-direct {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->notifyListeners()V

    return p1

    :catchall_0
    move-exception p1

    .line 314
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
