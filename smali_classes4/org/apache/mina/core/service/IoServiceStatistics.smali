.class public Lorg/apache/mina/core/service/IoServiceStatistics;
.super Ljava/lang/Object;
.source "IoServiceStatistics.java"


# instance fields
.field private largestReadBytesThroughput:D

.field private largestReadMessagesThroughput:D

.field private largestWrittenBytesThroughput:D

.field private largestWrittenMessagesThroughput:D

.field private lastReadBytes:J

.field private lastReadMessages:J

.field private lastReadTime:J

.field private lastThroughputCalculationTime:J

.field private lastWriteTime:J

.field private lastWrittenBytes:J

.field private lastWrittenMessages:J

.field private readBytes:J

.field private readBytesThroughput:D

.field private readMessages:J

.field private readMessagesThroughput:D

.field private scheduledWriteBytes:I

.field private scheduledWriteMessages:I

.field private service:Lorg/apache/mina/core/service/AbstractIoService;

.field private final throughputCalculationInterval:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

.field private writtenBytes:J

.field private writtenBytesThroughput:D

.field private writtenMessages:J

.field private writtenMessagesThroughput:D


# direct methods
.method public constructor <init>(Lorg/apache/mina/core/service/AbstractIoService;)V
    .locals 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationInterval:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 95
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    .line 98
    iput-object p1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->service:Lorg/apache/mina/core/service/AbstractIoService;

    return-void
.end method

.method private resetThroughput()V
    .locals 2

    .line 389
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->service:Lorg/apache/mina/core/service/AbstractIoService;

    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoService;->getManagedSessionCount()I

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 390
    iput-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->readBytesThroughput:D

    .line 391
    iput-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenBytesThroughput:D

    .line 392
    iput-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->readMessagesThroughput:D

    .line 393
    iput-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenMessagesThroughput:D

    :cond_0
    return-void
.end method


# virtual methods
.method public final decreaseScheduledWriteMessages()V
    .locals 2

    .line 584
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 587
    :try_start_0
    iget v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->scheduledWriteMessages:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->scheduledWriteMessages:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final getCumulativeManagedSessionCount()J
    .locals 2

    .line 115
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->service:Lorg/apache/mina/core/service/AbstractIoService;

    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoService;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->getCumulativeManagedSessionCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLargestManagedSessionCount()I
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->service:Lorg/apache/mina/core/service/AbstractIoService;

    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoService;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->getLargestManagedSessionCount()I

    move-result v0

    return v0
.end method

.method public final getLargestReadBytesThroughput()D
    .locals 3

    .line 271
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 274
    :try_start_0
    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->largestReadBytesThroughput:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    iget-object v2, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final getLargestReadMessagesThroughput()D
    .locals 3

    .line 299
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 302
    :try_start_0
    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->largestReadMessagesThroughput:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    iget-object v2, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final getLargestWrittenBytesThroughput()D
    .locals 3

    .line 285
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 288
    :try_start_0
    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->largestWrittenBytesThroughput:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    iget-object v2, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final getLargestWrittenMessagesThroughput()D
    .locals 3

    .line 313
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 316
    :try_start_0
    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->largestWrittenMessagesThroughput:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    iget-object v2, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final getLastIoTime()J
    .locals 4

    .line 123
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 126
    :try_start_0
    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastReadTime:J

    iget-wide v2, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastWriteTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    iget-object v2, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final getLastReadTime()J
    .locals 3

    .line 136
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 139
    :try_start_0
    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastReadTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    iget-object v2, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final getLastWriteTime()J
    .locals 3

    .line 149
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 152
    :try_start_0
    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastWriteTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    iget-object v2, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final getReadBytes()J
    .locals 3

    .line 162
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 165
    :try_start_0
    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->readBytes:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    iget-object v2, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final getReadBytesThroughput()D
    .locals 3

    .line 214
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 217
    :try_start_0
    invoke-direct {p0}, Lorg/apache/mina/core/service/IoServiceStatistics;->resetThroughput()V

    .line 218
    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->readBytesThroughput:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    iget-object v2, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final getReadMessages()J
    .locals 3

    .line 188
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 191
    :try_start_0
    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->readMessages:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    iget-object v2, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final getReadMessagesThroughput()D
    .locals 3

    .line 242
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 245
    :try_start_0
    invoke-direct {p0}, Lorg/apache/mina/core/service/IoServiceStatistics;->resetThroughput()V

    .line 246
    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->readMessagesThroughput:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    iget-object v2, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final getScheduledWriteBytes()I
    .locals 2

    .line 530
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 533
    :try_start_0
    iget v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->scheduledWriteBytes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    iget-object v1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final getScheduledWriteMessages()I
    .locals 2

    .line 558
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 561
    :try_start_0
    iget v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->scheduledWriteMessages:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    iget-object v1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final getThroughputCalculationInterval()I
    .locals 1

    .line 327
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationInterval:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public final getThroughputCalculationIntervalInMillis()J
    .locals 4

    .line 335
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationInterval:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public final getWrittenBytes()J
    .locals 3

    .line 175
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 178
    :try_start_0
    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenBytes:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    iget-object v2, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final getWrittenBytesThroughput()D
    .locals 3

    .line 228
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 231
    :try_start_0
    invoke-direct {p0}, Lorg/apache/mina/core/service/IoServiceStatistics;->resetThroughput()V

    .line 232
    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenBytesThroughput:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    iget-object v2, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final getWrittenMessages()J
    .locals 3

    .line 201
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 204
    :try_start_0
    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenMessages:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    iget-object v2, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final getWrittenMessagesThroughput()D
    .locals 3

    .line 256
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 259
    :try_start_0
    invoke-direct {p0}, Lorg/apache/mina/core/service/IoServiceStatistics;->resetThroughput()V

    .line 260
    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenMessagesThroughput:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    iget-object v2, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final increaseReadBytes(JJ)V
    .locals 2

    .line 460
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 463
    :try_start_0
    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->readBytes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->readBytes:J

    .line 464
    iput-wide p3, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastReadTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    iget-object p1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final increaseReadMessages(J)V
    .locals 4

    .line 478
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 481
    :try_start_0
    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->readMessages:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->readMessages:J

    .line 482
    iput-wide p1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastReadTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    iget-object p1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final increaseScheduledWriteBytes(I)V
    .locals 1

    .line 545
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 548
    :try_start_0
    iget v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->scheduledWriteBytes:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->scheduledWriteBytes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 550
    iget-object p1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final increaseScheduledWriteMessages()V
    .locals 2

    .line 571
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 574
    :try_start_0
    iget v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->scheduledWriteMessages:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->scheduledWriteMessages:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 576
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final increaseWrittenBytes(IJ)V
    .locals 4

    .line 498
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 501
    :try_start_0
    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenBytes:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenBytes:J

    .line 502
    iput-wide p2, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastWriteTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    iget-object p1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final increaseWrittenMessages(J)V
    .locals 4

    .line 516
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 519
    :try_start_0
    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenMessages:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenMessages:J

    .line 520
    iput-wide p1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastWriteTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    iget-object p1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method protected final setLastReadTime(J)V
    .locals 1

    .line 359
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 362
    :try_start_0
    iput-wide p1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastReadTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    iget-object p1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method protected setLastThroughputCalculationTime(J)V
    .locals 1

    .line 599
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 602
    :try_start_0
    iput-wide p1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastThroughputCalculationTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 604
    iget-object p1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method protected final setLastWriteTime(J)V
    .locals 1

    .line 375
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 378
    :try_start_0
    iput-wide p1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastWriteTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    iget-object p1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final setThroughputCalculationInterval(I)V
    .locals 3

    if-ltz p1, :cond_0

    .line 349
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationInterval:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    .line 346
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "throughputCalculationInterval: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateThroughput(J)V
    .locals 18

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    .line 403
    iget-object v0, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 406
    :try_start_0
    iget-wide v4, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->lastThroughputCalculationTime:J

    sub-long v4, v2, v4

    long-to-int v0, v4

    .line 407
    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/core/service/IoServiceStatistics;->getThroughputCalculationIntervalInMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_5

    int-to-long v6, v0

    cmp-long v8, v6, v4

    if-gez v8, :cond_0

    goto/16 :goto_0

    .line 413
    :cond_0
    iget-wide v4, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->readBytes:J

    .line 414
    iget-wide v6, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenBytes:J

    .line 415
    iget-wide v8, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->readMessages:J

    .line 416
    iget-wide v10, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenMessages:J

    .line 418
    iget-wide v12, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->lastReadBytes:J

    sub-long v12, v4, v12

    long-to-double v12, v12

    const-wide v14, 0x408f400000000000L    # 1000.0

    mul-double v12, v12, v14

    int-to-double v14, v0

    div-double/2addr v12, v14

    iput-wide v12, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->readBytesThroughput:D

    .line 419
    iget-wide v2, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->lastWrittenBytes:J

    sub-long v2, v6, v2

    long-to-double v2, v2

    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v2, v2, v16

    div-double/2addr v2, v14

    iput-wide v2, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenBytesThroughput:D

    .line 420
    iget-wide v2, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->lastReadMessages:J

    sub-long v2, v8, v2

    long-to-double v2, v2

    mul-double v2, v2, v16

    div-double/2addr v2, v14

    iput-wide v2, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->readMessagesThroughput:D

    .line 421
    iget-wide v2, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->lastWrittenMessages:J

    sub-long v2, v10, v2

    long-to-double v2, v2

    mul-double v2, v2, v16

    div-double/2addr v2, v14

    iput-wide v2, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenMessagesThroughput:D

    .line 423
    iget-wide v2, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->largestReadBytesThroughput:D

    cmpl-double v0, v12, v2

    if-lez v0, :cond_1

    .line 424
    iput-wide v12, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->largestReadBytesThroughput:D

    .line 427
    :cond_1
    iget-wide v2, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenBytesThroughput:D

    iget-wide v12, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->largestWrittenBytesThroughput:D

    cmpl-double v0, v2, v12

    if-lez v0, :cond_2

    .line 428
    iget-wide v2, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenBytesThroughput:D

    iput-wide v2, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->largestWrittenBytesThroughput:D

    .line 431
    :cond_2
    iget-wide v2, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->readMessagesThroughput:D

    iget-wide v12, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->largestReadMessagesThroughput:D

    cmpl-double v0, v2, v12

    if-lez v0, :cond_3

    .line 432
    iget-wide v2, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->readMessagesThroughput:D

    iput-wide v2, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->largestReadMessagesThroughput:D

    .line 435
    :cond_3
    iget-wide v2, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenMessagesThroughput:D

    iget-wide v12, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->largestWrittenMessagesThroughput:D

    cmpl-double v0, v2, v12

    if-lez v0, :cond_4

    .line 436
    iget-wide v2, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenMessagesThroughput:D

    iput-wide v2, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->largestWrittenMessagesThroughput:D

    .line 439
    :cond_4
    iput-wide v4, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->lastReadBytes:J

    .line 440
    iput-wide v6, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->lastWrittenBytes:J

    .line 441
    iput-wide v8, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->lastReadMessages:J

    .line 442
    iput-wide v10, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->lastWrittenMessages:J

    move-wide/from16 v2, p1

    .line 444
    iput-wide v2, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->lastThroughputCalculationTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    iget-object v0, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_5
    :goto_0
    iget-object v0, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v2, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
