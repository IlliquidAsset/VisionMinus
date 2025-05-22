.class public Lorg/apache/mina/filter/executor/IoEventQueueThrottle;
.super Ljava/lang/Object;
.source "IoEventQueueThrottle.java"

# interfaces
.implements Lorg/apache/mina/filter/executor/IoEventQueueHandler;


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private final counter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final eventSizeEstimator:Lorg/apache/mina/filter/executor/IoEventSizeEstimator;

.field private final lock:Ljava/lang/Object;

.field private volatile threshold:I

.field private waiters:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 49
    new-instance v0, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;

    invoke-direct {v0}, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;-><init>()V

    const/high16 v1, 0x10000

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;-><init>(Lorg/apache/mina/filter/executor/IoEventSizeEstimator;I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 53
    new-instance v0, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;

    invoke-direct {v0}, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;-><init>(Lorg/apache/mina/filter/executor/IoEventSizeEstimator;I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/filter/executor/IoEventSizeEstimator;I)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->lock:Ljava/lang/Object;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz p1, :cond_0

    .line 61
    iput-object p1, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->eventSizeEstimator:Lorg/apache/mina/filter/executor/IoEventSizeEstimator;

    .line 63
    invoke-virtual {p0, p2}, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->setThreshold(I)V

    return-void

    .line 58
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "eventSizeEstimator"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private estimateSize(Lorg/apache/mina/core/session/IoEvent;)I
    .locals 4

    .line 112
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->getEventSizeEstimator()Lorg/apache/mina/filter/executor/IoEventSizeEstimator;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/mina/filter/executor/IoEventSizeEstimator;->estimateSize(Lorg/apache/mina/core/session/IoEvent;)I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    .line 115
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lorg/apache/mina/filter/executor/IoEventSizeEstimator;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "a negative value ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "): "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private logState()V
    .locals 3

    .line 123
    sget-object v0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    sget-object v0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->LOGGER:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->getThreshold()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected block()V
    .locals 3

    .line 129
    sget-object v0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    sget-object v0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->LOGGER:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " blocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->threshold:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 133
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 134
    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->threshold:I

    if-lt v1, v2, :cond_1

    .line 135
    iget v1, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->waiters:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->waiters:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 137
    :try_start_1
    iget-object v1, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    :try_start_2
    iget v1, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->waiters:I

    :goto_1
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->waiters:I

    goto :goto_0

    :catchall_0
    move-exception v1

    iget v2, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->waiters:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->waiters:I

    throw v1

    :catch_0
    iget v1, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->waiters:I

    goto :goto_1

    .line 144
    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 146
    sget-object v0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    sget-object v0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->LOGGER:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " unblocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->threshold:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :cond_2
    return-void

    :catchall_1
    move-exception v1

    .line 144
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public getCounter()I
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getEventSizeEstimator()Lorg/apache/mina/filter/executor/IoEventSizeEstimator;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->eventSizeEstimator:Lorg/apache/mina/filter/executor/IoEventSizeEstimator;

    return-object v0
.end method

.method public getThreshold()I
    .locals 1

    .line 71
    iget v0, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->threshold:I

    return v0
.end method

.method public offered(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)V
    .locals 0

    .line 91
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->estimateSize(Lorg/apache/mina/core/session/IoEvent;)I

    move-result p1

    .line 92
    iget-object p2, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result p1

    .line 93
    invoke-direct {p0}, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->logState()V

    .line 95
    iget p2, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->threshold:I

    if-lt p1, p2, :cond_0

    .line 96
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->block()V

    :cond_0
    return-void
.end method

.method public polled(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)V
    .locals 0

    .line 101
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->estimateSize(Lorg/apache/mina/core/session/IoEvent;)I

    move-result p1

    .line 102
    iget-object p2, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int p1, p1

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result p1

    .line 104
    invoke-direct {p0}, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->logState()V

    .line 106
    iget p2, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->threshold:I

    if-ge p1, p2, :cond_0

    .line 107
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->unblock()V

    :cond_0
    return-void
.end method

.method public setThreshold(I)V
    .locals 3

    if-lez p1, :cond_0

    .line 83
    iput p1, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->threshold:I

    return-void

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "threshold: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected unblock()V
    .locals 2

    .line 152
    iget-object v0, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_0
    iget v1, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->waiters:I

    if-lez v1, :cond_0

    .line 154
    iget-object v1, p0, Lorg/apache/mina/filter/executor/IoEventQueueThrottle;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 156
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
