.class public Lorg/apache/mina/util/ExpiringMap$Expirer;
.super Ljava/lang/Object;
.source "ExpiringMap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/util/ExpiringMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Expirer"
.end annotation


# instance fields
.field private expirationIntervalMillis:J

.field private final expirerThread:Ljava/lang/Thread;

.field private running:Z

.field private final stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field final synthetic this$0:Lorg/apache/mina/util/ExpiringMap;

.field private timeToLiveMillis:J


# direct methods
.method public constructor <init>(Lorg/apache/mina/util/ExpiringMap;)V
    .locals 2

    .line 278
    iput-object p1, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->this$0:Lorg/apache/mina/util/ExpiringMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    new-instance p1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object p1, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    const/4 p1, 0x0

    .line 270
    iput-boolean p1, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->running:Z

    .line 279
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExpiringMapExpirer-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/apache/mina/util/ExpiringMap;->access$008()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->expirerThread:Ljava/lang/Thread;

    const/4 v0, 0x1

    .line 280
    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-void
.end method

.method private processExpires()V
    .locals 9

    .line 296
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 298
    iget-object v2, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->this$0:Lorg/apache/mina/util/ExpiringMap;

    invoke-static {v2}, Lorg/apache/mina/util/ExpiringMap;->access$100(Lorg/apache/mina/util/ExpiringMap;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/mina/util/ExpiringMap$ExpiringObject;

    .line 300
    iget-wide v4, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->timeToLiveMillis:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-gtz v8, :cond_1

    goto :goto_0

    .line 304
    :cond_1
    invoke-virtual {v3}, Lorg/apache/mina/util/ExpiringMap$ExpiringObject;->getLastAccessTime()J

    move-result-wide v4

    sub-long v4, v0, v4

    .line 306
    iget-wide v6, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->timeToLiveMillis:J

    cmp-long v8, v4, v6

    if-ltz v8, :cond_0

    .line 307
    iget-object v4, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->this$0:Lorg/apache/mina/util/ExpiringMap;

    invoke-static {v4}, Lorg/apache/mina/util/ExpiringMap;->access$100(Lorg/apache/mina/util/ExpiringMap;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v3}, Lorg/apache/mina/util/ExpiringMap$ExpiringObject;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    iget-object v4, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->this$0:Lorg/apache/mina/util/ExpiringMap;

    invoke-static {v4}, Lorg/apache/mina/util/ExpiringMap;->access$200(Lorg/apache/mina/util/ExpiringMap;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/mina/util/ExpirationListener;

    .line 310
    invoke-virtual {v3}, Lorg/apache/mina/util/ExpiringMap$ExpiringObject;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/mina/util/ExpirationListener;->expired(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public getExpirationInterval()I
    .locals 2

    .line 427
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 430
    :try_start_0
    iget-wide v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->expirationIntervalMillis:J

    long-to-int v1, v0

    div-int/lit16 v1, v1, 0x3e8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getTimeToLive()I
    .locals 2

    .line 394
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 397
    :try_start_0
    iget-wide v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->timeToLiveMillis:J

    long-to-int v1, v0

    div-int/lit16 v1, v1, 0x3e8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public isRunning()Z
    .locals 2

    .line 381
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 384
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->running:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    iget-object v1, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public run()V
    .locals 2

    .line 284
    :goto_0
    iget-boolean v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->running:Z

    if-eqz v0, :cond_0

    .line 285
    invoke-direct {p0}, Lorg/apache/mina/util/ExpiringMap$Expirer;->processExpires()V

    .line 288
    :try_start_0
    iget-wide v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->expirationIntervalMillis:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setExpirationInterval(J)V
    .locals 2

    .line 444
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    .line 447
    :try_start_0
    iput-wide p1, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->expirationIntervalMillis:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    iget-object p1, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public setTimeToLive(J)V
    .locals 2

    .line 410
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    .line 413
    :try_start_0
    iput-wide p1, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->timeToLiveMillis:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    iget-object p1, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public startExpiring()V
    .locals 2

    .line 321
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 324
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->running:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 325
    iput-boolean v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->running:Z

    .line 326
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->expirerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public startExpiringIfNotStarted()V
    .locals 2

    .line 338
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 340
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->running:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 347
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 349
    :try_start_1
    iget-boolean v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->running:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 350
    iput-boolean v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->running:Z

    .line 351
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->expirerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 354
    :cond_1
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :catchall_1
    move-exception v0

    .line 344
    iget-object v1, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public stopExpiring()V
    .locals 2

    .line 362
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 365
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->running:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 366
    iput-boolean v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->running:Z

    .line 367
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->expirerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
