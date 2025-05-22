.class public abstract Lorg/apache/mina/core/session/AbstractIoSession;
.super Ljava/lang/Object;
.source "AbstractIoSession.java"

# interfaces
.implements Lorg/apache/mina/core/session/IoSession;


# static fields
.field public static final CLOSE_REQUEST:Lorg/apache/mina/core/write/WriteRequest;

.field public static final MESSAGE_SENT_REQUEST:Lorg/apache/mina/core/write/WriteRequest;

.field private static final READY_READ_FUTURES_KEY:Lorg/apache/mina/core/session/AttributeKey;

.field private static final SCHEDULED_COUNTER_RESETTER:Lorg/apache/mina/core/future/IoFutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/mina/core/future/IoFutureListener<",
            "Lorg/apache/mina/core/future/CloseFuture;",
            ">;"
        }
    .end annotation
.end field

.field private static final WAITING_READ_FUTURES_KEY:Lorg/apache/mina/core/session/AttributeKey;

.field private static idGenerator:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private attributes:Lorg/apache/mina/core/session/IoSessionAttributeMap;

.field private final closeFuture:Lorg/apache/mina/core/future/CloseFuture;

.field private volatile closing:Z

.field protected config:Lorg/apache/mina/core/session/IoSessionConfig;

.field private final creationTime:J

.field private currentWriteRequest:Lorg/apache/mina/core/write/WriteRequest;

.field private deferDecreaseReadBuffer:Z

.field private final handler:Lorg/apache/mina/core/service/IoHandler;

.field private idleCountForBoth:Ljava/util/concurrent/atomic/AtomicInteger;

.field private idleCountForRead:Ljava/util/concurrent/atomic/AtomicInteger;

.field private idleCountForWrite:Ljava/util/concurrent/atomic/AtomicInteger;

.field private lastIdleTimeForBoth:J

.field private lastIdleTimeForRead:J

.field private lastIdleTimeForWrite:J

.field private lastReadBytes:J

.field private lastReadMessages:J

.field private lastReadTime:J

.field private lastThroughputCalculationTime:J

.field private lastWriteTime:J

.field private lastWrittenBytes:J

.field private lastWrittenMessages:J

.field private final lock:Ljava/lang/Object;

.field private readBytes:J

.field private readBytesThroughput:D

.field private readMessages:J

.field private readMessagesThroughput:D

.field private readSuspended:Z

.field private final scheduledForFlush:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final scheduledWriteBytes:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final scheduledWriteMessages:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final service:Lorg/apache/mina/core/service/IoService;

.field private sessionId:J

.field private writeRequestQueue:Lorg/apache/mina/core/write/WriteRequestQueue;

.field private writeSuspended:Z

.field private writtenBytes:J

.field private writtenBytesThroughput:D

.field private writtenMessages:J

.field private writtenMessagesThroughput:D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 75
    const-class v0, Lorg/apache/mina/core/session/AbstractIoSession;

    new-instance v1, Lorg/apache/mina/core/session/AttributeKey;

    const-string v2, "readyReadFutures"

    invoke-direct {v1, v0, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lorg/apache/mina/core/session/AbstractIoSession;->READY_READ_FUTURES_KEY:Lorg/apache/mina/core/session/AttributeKey;

    .line 78
    new-instance v1, Lorg/apache/mina/core/session/AttributeKey;

    const-string v2, "waitingReadFutures"

    invoke-direct {v1, v0, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lorg/apache/mina/core/session/AbstractIoSession;->WAITING_READ_FUTURES_KEY:Lorg/apache/mina/core/session/AttributeKey;

    .line 81
    new-instance v0, Lorg/apache/mina/core/session/AbstractIoSession$1;

    invoke-direct {v0}, Lorg/apache/mina/core/session/AbstractIoSession$1;-><init>()V

    sput-object v0, Lorg/apache/mina/core/session/AbstractIoSession;->SCHEDULED_COUNTER_RESETTER:Lorg/apache/mina/core/future/IoFutureListener;

    .line 98
    new-instance v0, Lorg/apache/mina/core/write/DefaultWriteRequest;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/mina/core/write/DefaultWriteRequest;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/apache/mina/core/session/AbstractIoSession;->CLOSE_REQUEST:Lorg/apache/mina/core/write/WriteRequest;

    .line 105
    new-instance v0, Lorg/apache/mina/core/write/DefaultWriteRequest;

    sget-object v1, Lorg/apache/mina/core/write/DefaultWriteRequest;->EMPTY_MESSAGE:[B

    invoke-direct {v0, v1}, Lorg/apache/mina/core/write/DefaultWriteRequest;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/apache/mina/core/session/AbstractIoSession;->MESSAGE_SENT_REQUEST:Lorg/apache/mina/core/write/WriteRequest;

    .line 119
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lorg/apache/mina/core/session/AbstractIoSession;->idGenerator:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method protected constructor <init>(Lorg/apache/mina/core/service/IoService;)V
    .locals 2

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->lock:Ljava/lang/Object;

    .line 127
    new-instance v0, Lorg/apache/mina/core/future/DefaultCloseFuture;

    invoke-direct {v0, p0}, Lorg/apache/mina/core/future/DefaultCloseFuture;-><init>(Lorg/apache/mina/core/session/IoSession;)V

    iput-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->closeFuture:Lorg/apache/mina/core/future/CloseFuture;

    const/4 v0, 0x0

    .line 132
    iput-boolean v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->readSuspended:Z

    .line 134
    iput-boolean v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->writeSuspended:Z

    .line 137
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->scheduledForFlush:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 139
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->scheduledWriteBytes:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 141
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->scheduledWriteMessages:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 173
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->idleCountForBoth:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 175
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->idleCountForRead:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 177
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->idleCountForWrite:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    .line 185
    iput-boolean v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->deferDecreaseReadBuffer:Z

    .line 193
    iput-object p1, p0, Lorg/apache/mina/core/session/AbstractIoSession;->service:Lorg/apache/mina/core/service/IoService;

    .line 194
    invoke-interface {p1}, Lorg/apache/mina/core/service/IoService;->getHandler()Lorg/apache/mina/core/service/IoHandler;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/core/session/AbstractIoSession;->handler:Lorg/apache/mina/core/service/IoHandler;

    .line 197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 198
    iput-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->creationTime:J

    .line 199
    iput-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->lastThroughputCalculationTime:J

    .line 200
    iput-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->lastReadTime:J

    .line 201
    iput-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->lastWriteTime:J

    .line 202
    iput-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->lastIdleTimeForBoth:J

    .line 203
    iput-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->lastIdleTimeForRead:J

    .line 204
    iput-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->lastIdleTimeForWrite:J

    .line 207
    iget-object p1, p0, Lorg/apache/mina/core/session/AbstractIoSession;->closeFuture:Lorg/apache/mina/core/future/CloseFuture;

    sget-object v0, Lorg/apache/mina/core/session/AbstractIoSession;->SCHEDULED_COUNTER_RESETTER:Lorg/apache/mina/core/future/IoFutureListener;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/future/CloseFuture;->addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/CloseFuture;

    .line 210
    sget-object p1, Lorg/apache/mina/core/session/AbstractIoSession;->idGenerator:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->sessionId:J

    return-void
.end method

.method static synthetic access$000(Lorg/apache/mina/core/session/AbstractIoSession;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 65
    iget-object p0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->scheduledWriteBytes:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$100(Lorg/apache/mina/core/session/AbstractIoSession;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 65
    iget-object p0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->scheduledWriteMessages:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$202(Lorg/apache/mina/core/session/AbstractIoSession;D)D
    .locals 0

    .line 65
    iput-wide p1, p0, Lorg/apache/mina/core/session/AbstractIoSession;->readBytesThroughput:D

    return-wide p1
.end method

.method static synthetic access$302(Lorg/apache/mina/core/session/AbstractIoSession;D)D
    .locals 0

    .line 65
    iput-wide p1, p0, Lorg/apache/mina/core/session/AbstractIoSession;->readMessagesThroughput:D

    return-wide p1
.end method

.method static synthetic access$402(Lorg/apache/mina/core/session/AbstractIoSession;D)D
    .locals 0

    .line 65
    iput-wide p1, p0, Lorg/apache/mina/core/session/AbstractIoSession;->writtenBytesThroughput:D

    return-wide p1
.end method

.method static synthetic access$502(Lorg/apache/mina/core/session/AbstractIoSession;D)D
    .locals 0

    .line 65
    iput-wide p1, p0, Lorg/apache/mina/core/session/AbstractIoSession;->writtenMessagesThroughput:D

    return-wide p1
.end method

.method private decreaseScheduledWriteMessages()V
    .locals 1

    .line 1001
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->scheduledWriteMessages:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1002
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/mina/core/service/AbstractIoService;

    if-eqz v0, :cond_0

    .line 1003
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/service/AbstractIoService;

    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoService;->getStatistics()Lorg/apache/mina/core/service/IoServiceStatistics;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/core/service/IoServiceStatistics;->decreaseScheduledWriteMessages()V

    :cond_0
    return-void
.end method

.method private getIdAsString()Ljava/lang/String;
    .locals 5

    .line 1341
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 1343
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-gt v1, v2, :cond_0

    .line 1344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    rsub-int/lit8 v3, v3, 0xa

    const-string v4, "0x00000000"

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1346
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getReadyReadFutures()Ljava/util/Queue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lorg/apache/mina/core/future/ReadFuture;",
            ">;"
        }
    .end annotation

    .line 479
    sget-object v0, Lorg/apache/mina/core/session/AbstractIoSession;->READY_READ_FUTURES_KEY:Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    if-nez v0, :cond_0

    .line 482
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 484
    sget-object v1, Lorg/apache/mina/core/session/AbstractIoSession;->READY_READ_FUTURES_KEY:Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p0, v1, v0}, Lorg/apache/mina/core/session/AbstractIoSession;->setAttributeIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    if-eqz v1, :cond_0

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method private getServiceName()Ljava/lang/String;
    .locals 3

    .line 1354
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "null"

    return-object v0

    .line 1359
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lorg/apache/mina/core/service/TransportMetadata;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/apache/mina/core/service/TransportMetadata;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getWaitingReadFutures()Ljava/util/Queue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lorg/apache/mina/core/future/ReadFuture;",
            ">;"
        }
    .end annotation

    .line 499
    sget-object v0, Lorg/apache/mina/core/session/AbstractIoSession;->WAITING_READ_FUTURES_KEY:Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    if-nez v0, :cond_0

    .line 502
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 504
    sget-object v1, Lorg/apache/mina/core/session/AbstractIoSession;->WAITING_READ_FUTURES_KEY:Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p0, v1, v0}, Lorg/apache/mina/core/session/AbstractIoSession;->setAttributeIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    if-eqz v1, :cond_0

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method private newReadFuture()Lorg/apache/mina/core/future/ReadFuture;
    .locals 2

    .line 459
    invoke-direct {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getReadyReadFutures()Ljava/util/Queue;

    move-result-object v0

    .line 460
    invoke-direct {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getWaitingReadFutures()Ljava/util/Queue;

    move-result-object v1

    .line 463
    monitor-enter v0

    .line 464
    :try_start_0
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/future/ReadFuture;

    if-nez v1, :cond_0

    .line 467
    new-instance v1, Lorg/apache/mina/core/future/DefaultReadFuture;

    invoke-direct {v1, p0}, Lorg/apache/mina/core/future/DefaultReadFuture;-><init>(Lorg/apache/mina/core/session/IoSession;)V

    .line 468
    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 470
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static notifyIdleSession(Lorg/apache/mina/core/session/IoSession;J)V
    .locals 10

    .line 1394
    invoke-interface {p0}, Lorg/apache/mina/core/session/IoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    sget-object v1, Lorg/apache/mina/core/session/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-interface {v0, v1}, Lorg/apache/mina/core/session/IoSessionConfig;->getIdleTimeInMillis(Lorg/apache/mina/core/session/IdleStatus;)J

    move-result-wide v5

    sget-object v7, Lorg/apache/mina/core/session/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    .line 1395
    invoke-interface {p0}, Lorg/apache/mina/core/session/IoSession;->getLastIoTime()J

    move-result-wide v0

    sget-object v2, Lorg/apache/mina/core/session/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-interface {p0, v2}, Lorg/apache/mina/core/session/IoSession;->getLastIdleTime(Lorg/apache/mina/core/session/IdleStatus;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    move-object v2, p0

    move-wide v3, p1

    .line 1394
    invoke-static/range {v2 .. v9}, Lorg/apache/mina/core/session/AbstractIoSession;->notifyIdleSession0(Lorg/apache/mina/core/session/IoSession;JJLorg/apache/mina/core/session/IdleStatus;J)V

    .line 1397
    invoke-interface {p0}, Lorg/apache/mina/core/session/IoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    sget-object v1, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-interface {v0, v1}, Lorg/apache/mina/core/session/IoSessionConfig;->getIdleTimeInMillis(Lorg/apache/mina/core/session/IdleStatus;)J

    move-result-wide v5

    sget-object v7, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    .line 1399
    invoke-interface {p0}, Lorg/apache/mina/core/session/IoSession;->getLastReadTime()J

    move-result-wide v0

    sget-object v2, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-interface {p0, v2}, Lorg/apache/mina/core/session/IoSession;->getLastIdleTime(Lorg/apache/mina/core/session/IdleStatus;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    move-object v2, p0

    move-wide v3, p1

    .line 1397
    invoke-static/range {v2 .. v9}, Lorg/apache/mina/core/session/AbstractIoSession;->notifyIdleSession0(Lorg/apache/mina/core/session/IoSession;JJLorg/apache/mina/core/session/IdleStatus;J)V

    .line 1401
    invoke-interface {p0}, Lorg/apache/mina/core/session/IoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    sget-object v1, Lorg/apache/mina/core/session/IdleStatus;->WRITER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-interface {v0, v1}, Lorg/apache/mina/core/session/IoSessionConfig;->getIdleTimeInMillis(Lorg/apache/mina/core/session/IdleStatus;)J

    move-result-wide v5

    sget-object v7, Lorg/apache/mina/core/session/IdleStatus;->WRITER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    .line 1403
    invoke-interface {p0}, Lorg/apache/mina/core/session/IoSession;->getLastWriteTime()J

    move-result-wide v0

    sget-object v2, Lorg/apache/mina/core/session/IdleStatus;->WRITER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-interface {p0, v2}, Lorg/apache/mina/core/session/IoSession;->getLastIdleTime(Lorg/apache/mina/core/session/IdleStatus;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    move-object v2, p0

    move-wide v3, p1

    .line 1401
    invoke-static/range {v2 .. v9}, Lorg/apache/mina/core/session/AbstractIoSession;->notifyIdleSession0(Lorg/apache/mina/core/session/IoSession;JJLorg/apache/mina/core/session/IdleStatus;J)V

    .line 1405
    invoke-static {p0, p1, p2}, Lorg/apache/mina/core/session/AbstractIoSession;->notifyWriteTimeout(Lorg/apache/mina/core/session/IoSession;J)V

    return-void
.end method

.method private static notifyIdleSession0(Lorg/apache/mina/core/session/IoSession;JJLorg/apache/mina/core/session/IdleStatus;J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_0

    cmp-long v2, p6, v0

    if-eqz v2, :cond_0

    sub-long/2addr p1, p6

    cmp-long p6, p1, p3

    if-ltz p6, :cond_0

    .line 1411
    invoke-interface {p0}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object p0

    invoke-interface {p0, p5}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireSessionIdle(Lorg/apache/mina/core/session/IdleStatus;)V

    :cond_0
    return-void
.end method

.method public static notifyIdleness(Ljava/util/Iterator;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Lorg/apache/mina/core/session/IoSession;",
            ">;J)V"
        }
    .end annotation

    .line 1377
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1378
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/session/IoSession;

    .line 1380
    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getCloseFuture()Lorg/apache/mina/core/future/CloseFuture;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/mina/core/future/CloseFuture;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1381
    invoke-static {v0, p1, p2}, Lorg/apache/mina/core/session/AbstractIoSession;->notifyIdleSession(Lorg/apache/mina/core/session/IoSession;J)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static notifyWriteTimeout(Lorg/apache/mina/core/session/IoSession;J)V
    .locals 5

    .line 1417
    invoke-interface {p0}, Lorg/apache/mina/core/session/IoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSessionConfig;->getWriteTimeoutInMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 1418
    invoke-interface {p0}, Lorg/apache/mina/core/session/IoSession;->getLastWriteTime()J

    move-result-wide v2

    sub-long/2addr p1, v2

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 1419
    invoke-interface {p0}, Lorg/apache/mina/core/session/IoSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object p1

    invoke-interface {p1, p0}, Lorg/apache/mina/core/write/WriteRequestQueue;->isEmpty(Lorg/apache/mina/core/session/IoSession;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1420
    invoke-interface {p0}, Lorg/apache/mina/core/session/IoSession;->getCurrentWriteRequest()Lorg/apache/mina/core/write/WriteRequest;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1422
    invoke-interface {p0, p2}, Lorg/apache/mina/core/session/IoSession;->setCurrentWriteRequest(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 1423
    new-instance p2, Lorg/apache/mina/core/write/WriteTimeoutException;

    invoke-direct {p2, p1}, Lorg/apache/mina/core/write/WriteTimeoutException;-><init>(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 1424
    invoke-interface {p1}, Lorg/apache/mina/core/write/WriteRequest;->getFuture()Lorg/apache/mina/core/future/WriteFuture;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/apache/mina/core/future/WriteFuture;->setException(Ljava/lang/Throwable;)V

    .line 1425
    invoke-interface {p0}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    .line 1427
    invoke-interface {p0}, Lorg/apache/mina/core/session/IoSession;->closeNow()Lorg/apache/mina/core/future/CloseFuture;

    :cond_0
    return-void
.end method


# virtual methods
.method public final close()Lorg/apache/mina/core/future/CloseFuture;
    .locals 1

    .line 323
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->closeNow()Lorg/apache/mina/core/future/CloseFuture;

    move-result-object v0

    return-object v0
.end method

.method public final close(Z)Lorg/apache/mina/core/future/CloseFuture;
    .locals 0

    if-eqz p1, :cond_0

    .line 313
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->closeNow()Lorg/apache/mina/core/future/CloseFuture;

    move-result-object p1

    return-object p1

    .line 315
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->closeOnFlush()Lorg/apache/mina/core/future/CloseFuture;

    move-result-object p1

    return-object p1
.end method

.method public final closeNow()Lorg/apache/mina/core/future/CloseFuture;
    .locals 3

    .line 342
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 343
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->isClosing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    iget-object v1, p0, Lorg/apache/mina/core/session/AbstractIoSession;->closeFuture:Lorg/apache/mina/core/future/CloseFuture;

    monitor-exit v0

    return-object v1

    :cond_0
    const/4 v1, 0x1

    .line 347
    iput-boolean v1, p0, Lorg/apache/mina/core/session/AbstractIoSession;->closing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 352
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v2

    .line 353
    invoke-interface {v2, v1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    .line 355
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 357
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireFilterClose()V

    .line 359
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->closeFuture:Lorg/apache/mina/core/future/CloseFuture;

    return-object v0

    :catchall_0
    move-exception v1

    .line 355
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public final closeOnFlush()Lorg/apache/mina/core/future/CloseFuture;
    .locals 2

    .line 330
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->isClosing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v0

    sget-object v1, Lorg/apache/mina/core/session/AbstractIoSession;->CLOSE_REQUEST:Lorg/apache/mina/core/write/WriteRequest;

    invoke-interface {v0, p0, v1}, Lorg/apache/mina/core/write/WriteRequestQueue;->offer(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 332
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getProcessor()Lorg/apache/mina/core/service/IoProcessor;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/apache/mina/core/service/IoProcessor;->flush(Lorg/apache/mina/core/session/IoSession;)V

    .line 335
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->closeFuture:Lorg/apache/mina/core/future/CloseFuture;

    return-object v0
.end method

.method public final containsAttribute(Ljava/lang/Object;)Z
    .locals 1

    .line 679
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->attributes:Lorg/apache/mina/core/session/IoSessionAttributeMap;

    invoke-interface {v0, p0, p1}, Lorg/apache/mina/core/session/IoSessionAttributeMap;->containsAttribute(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final decreaseReadBufferSize()V
    .locals 3

    .line 1083
    iget-boolean v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->deferDecreaseReadBuffer:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1084
    iput-boolean v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->deferDecreaseReadBuffer:Z

    return-void

    .line 1088
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSessionConfig;->getReadBufferSize()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/mina/core/session/IoSessionConfig;->getMinReadBufferSize()I

    move-result v1

    const/4 v2, 0x1

    if-le v0, v1, :cond_1

    .line 1089
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/mina/core/session/IoSessionConfig;->getReadBufferSize()I

    move-result v1

    ushr-int/2addr v1, v2

    invoke-interface {v0, v1}, Lorg/apache/mina/core/session/IoSessionConfig;->setReadBufferSize(I)V

    .line 1092
    :cond_1
    iput-boolean v2, p0, Lorg/apache/mina/core/session/AbstractIoSession;->deferDecreaseReadBuffer:Z

    return-void
.end method

.method public final decreaseScheduledBytesAndMessages(Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 1

    .line 1013
    invoke-interface {p1}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object p1

    .line 1015
    instance-of v0, p1, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v0, :cond_1

    .line 1016
    check-cast p1, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1018
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1019
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result p1

    neg-int p1, p1

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/session/AbstractIoSession;->increaseScheduledWriteBytes(I)V

    goto :goto_0

    .line 1021
    :cond_0
    invoke-direct {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->decreaseScheduledWriteMessages()V

    goto :goto_0

    .line 1024
    :cond_1
    invoke-direct {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->decreaseScheduledWriteMessages()V

    :goto_0
    return-void
.end method

.method protected destroy()V
    .locals 1

    .line 366
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->writeRequestQueue:Lorg/apache/mina/core/write/WriteRequestQueue;

    if-eqz v0, :cond_1

    .line 367
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->writeRequestQueue:Lorg/apache/mina/core/write/WriteRequestQueue;

    invoke-interface {v0, p0}, Lorg/apache/mina/core/write/WriteRequestQueue;->isEmpty(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 368
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->writeRequestQueue:Lorg/apache/mina/core/write/WriteRequestQueue;

    invoke-interface {v0, p0}, Lorg/apache/mina/core/write/WriteRequestQueue;->poll(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 371
    invoke-interface {v0}, Lorg/apache/mina/core/write/WriteRequest;->getFuture()Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 376
    invoke-interface {v0}, Lorg/apache/mina/core/future/WriteFuture;->setWritten()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1304
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getAttachment()Ljava/lang/Object;
    .locals 1

    const-string v0, ""

    .line 602
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getAttribute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 616
    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 623
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->attributes:Lorg/apache/mina/core/session/IoSessionAttributeMap;

    invoke-interface {v0, p0, p1, p2}, Lorg/apache/mina/core/session/IoSessionAttributeMap;->getAttribute(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getAttributeKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 686
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->attributes:Lorg/apache/mina/core/session/IoSessionAttributeMap;

    invoke-interface {v0, p0}, Lorg/apache/mina/core/session/IoSessionAttributeMap;->getAttributeKeys(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getAttributeMap()Lorg/apache/mina/core/session/IoSessionAttributeMap;
    .locals 1

    .line 693
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->attributes:Lorg/apache/mina/core/session/IoSessionAttributeMap;

    return-object v0
.end method

.method public final getBothIdleCount()I
    .locals 1

    .line 1240
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getIdleCount(Lorg/apache/mina/core/session/IdleStatus;)I

    move-result v0

    return v0
.end method

.method public final getCloseFuture()Lorg/apache/mina/core/future/CloseFuture;
    .locals 1

    .line 261
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->closeFuture:Lorg/apache/mina/core/future/CloseFuture;

    return-object v0
.end method

.method public getConfig()Lorg/apache/mina/core/session/IoSessionConfig;
    .locals 1

    .line 394
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->config:Lorg/apache/mina/core/session/IoSessionConfig;

    return-object v0
.end method

.method public final getCreationTime()J
    .locals 2

    .line 1099
    iget-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->creationTime:J

    return-wide v0
.end method

.method public final getCurrentWriteMessage()Ljava/lang/Object;
    .locals 1

    .line 1050
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getCurrentWriteRequest()Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1055
    :cond_0
    invoke-interface {v0}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getCurrentWriteRequest()Lorg/apache/mina/core/write/WriteRequest;
    .locals 1

    .line 1043
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->currentWriteRequest:Lorg/apache/mina/core/write/WriteRequest;

    return-object v0
.end method

.method public getHandler()Lorg/apache/mina/core/service/IoHandler;
    .locals 1

    .line 387
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->handler:Lorg/apache/mina/core/service/IoHandler;

    return-object v0
.end method

.method public final getId()J
    .locals 2

    .line 219
    iget-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->sessionId:J

    return-wide v0
.end method

.method public final getIdleCount(Lorg/apache/mina/core/session/IdleStatus;)I
    .locals 3

    .line 1167
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/mina/core/session/IoSessionConfig;->getIdleTime(Lorg/apache/mina/core/session/IdleStatus;)I

    move-result v0

    if-nez v0, :cond_2

    .line 1168
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 1169
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->idleCountForBoth:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1172
    :cond_0
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    if-ne p1, v0, :cond_1

    .line 1173
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->idleCountForRead:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1176
    :cond_1
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->WRITER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    if-ne p1, v0, :cond_2

    .line 1177
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->idleCountForWrite:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1181
    :cond_2
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    if-ne p1, v0, :cond_3

    .line 1182
    iget-object p1, p0, Lorg/apache/mina/core/session/AbstractIoSession;->idleCountForBoth:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    return p1

    .line 1185
    :cond_3
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    if-ne p1, v0, :cond_4

    .line 1186
    iget-object p1, p0, Lorg/apache/mina/core/session/AbstractIoSession;->idleCountForRead:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    return p1

    .line 1189
    :cond_4
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->WRITER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    if-ne p1, v0, :cond_5

    .line 1190
    iget-object p1, p0, Lorg/apache/mina/core/session/AbstractIoSession;->idleCountForWrite:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    return p1

    .line 1193
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown idle status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getLastBothIdleTime()J
    .locals 2

    .line 1247
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getLastIdleTime(Lorg/apache/mina/core/session/IdleStatus;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLastIdleTime(Lorg/apache/mina/core/session/IdleStatus;)J
    .locals 3

    .line 1200
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    if-ne p1, v0, :cond_0

    .line 1201
    iget-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->lastIdleTimeForBoth:J

    return-wide v0

    .line 1204
    :cond_0
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    if-ne p1, v0, :cond_1

    .line 1205
    iget-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->lastIdleTimeForRead:J

    return-wide v0

    .line 1208
    :cond_1
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->WRITER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    if-ne p1, v0, :cond_2

    .line 1209
    iget-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->lastIdleTimeForWrite:J

    return-wide v0

    .line 1212
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown idle status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getLastIoTime()J
    .locals 4

    .line 1106
    iget-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->lastReadTime:J

    iget-wide v2, p0, Lorg/apache/mina/core/session/AbstractIoSession;->lastWriteTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLastReadTime()J
    .locals 2

    .line 1113
    iget-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->lastReadTime:J

    return-wide v0
.end method

.method public final getLastReaderIdleTime()J
    .locals 2

    .line 1254
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getLastIdleTime(Lorg/apache/mina/core/session/IdleStatus;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLastWriteTime()J
    .locals 2

    .line 1120
    iget-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->lastWriteTime:J

    return-wide v0
.end method

.method public final getLastWriterIdleTime()J
    .locals 2

    .line 1261
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->WRITER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getLastIdleTime(Lorg/apache/mina/core/session/IdleStatus;)J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract getProcessor()Lorg/apache/mina/core/service/IoProcessor;
.end method

.method public final getReadBytes()J
    .locals 2

    .line 778
    iget-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->readBytes:J

    return-wide v0
.end method

.method public final getReadBytesThroughput()D
    .locals 2

    .line 806
    iget-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->readBytesThroughput:D

    return-wide v0
.end method

.method public final getReadMessages()J
    .locals 2

    .line 792
    iget-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->readMessages:J

    return-wide v0
.end method

.method public final getReadMessagesThroughput()D
    .locals 2

    .line 820
    iget-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->readMessagesThroughput:D

    return-wide v0
.end method

.method public final getReaderIdleCount()I
    .locals 1

    .line 1268
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getIdleCount(Lorg/apache/mina/core/session/IdleStatus;)I

    move-result v0

    return v0
.end method

.method public final getScheduledWriteBytes()J
    .locals 2

    .line 859
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->scheduledWriteBytes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final getScheduledWriteMessages()I
    .locals 1

    .line 866
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->scheduledWriteMessages:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getService()Lorg/apache/mina/core/service/IoService;
    .locals 1

    .line 1366
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->service:Lorg/apache/mina/core/service/IoService;

    return-object v0
.end method

.method public getServiceAddress()Ljava/net/SocketAddress;
    .locals 2

    .line 1282
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v0

    .line 1283
    instance-of v1, v0, Lorg/apache/mina/core/service/IoAcceptor;

    if-eqz v1, :cond_0

    .line 1284
    check-cast v0, Lorg/apache/mina/core/service/IoAcceptor;

    invoke-interface {v0}, Lorg/apache/mina/core/service/IoAcceptor;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0

    .line 1287
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public final getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;
    .locals 1

    .line 1032
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->writeRequestQueue:Lorg/apache/mina/core/write/WriteRequestQueue;

    if-eqz v0, :cond_0

    return-object v0

    .line 1033
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final getWriterIdleCount()I
    .locals 1

    .line 1275
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->WRITER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getIdleCount(Lorg/apache/mina/core/session/IdleStatus;)I

    move-result v0

    return v0
.end method

.method public final getWrittenBytes()J
    .locals 2

    .line 785
    iget-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->writtenBytes:J

    return-wide v0
.end method

.method public final getWrittenBytesThroughput()D
    .locals 2

    .line 813
    iget-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->writtenBytesThroughput:D

    return-wide v0
.end method

.method public final getWrittenMessages()J
    .locals 2

    .line 799
    iget-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->writtenMessages:J

    return-wide v0
.end method

.method public final getWrittenMessagesThroughput()D
    .locals 2

    .line 827
    iget-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->writtenMessagesThroughput:D

    return-wide v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1295
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final increaseIdleCount(Lorg/apache/mina/core/session/IdleStatus;J)V
    .locals 1

    .line 1222
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    if-ne p1, v0, :cond_0

    .line 1223
    iget-object p1, p0, Lorg/apache/mina/core/session/AbstractIoSession;->idleCountForBoth:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1224
    iput-wide p2, p0, Lorg/apache/mina/core/session/AbstractIoSession;->lastIdleTimeForBoth:J

    goto :goto_0

    .line 1225
    :cond_0
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    if-ne p1, v0, :cond_1

    .line 1226
    iget-object p1, p0, Lorg/apache/mina/core/session/AbstractIoSession;->idleCountForRead:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1227
    iput-wide p2, p0, Lorg/apache/mina/core/session/AbstractIoSession;->lastIdleTimeForRead:J

    goto :goto_0

    .line 1228
    :cond_1
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->WRITER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    if-ne p1, v0, :cond_2

    .line 1229
    iget-object p1, p0, Lorg/apache/mina/core/session/AbstractIoSession;->idleCountForWrite:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1230
    iput-wide p2, p0, Lorg/apache/mina/core/session/AbstractIoSession;->lastIdleTimeForWrite:J

    :goto_0
    return-void

    .line 1232
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown idle status: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final increaseReadBufferSize()V
    .locals 3

    .line 1069
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSessionConfig;->getReadBufferSize()I

    move-result v0

    const/4 v1, 0x1

    shl-int/2addr v0, v1

    .line 1070
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/core/session/IoSessionConfig;->getMaxReadBufferSize()I

    move-result v2

    if-gt v0, v2, :cond_0

    .line 1071
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/apache/mina/core/session/IoSessionConfig;->setReadBufferSize(I)V

    goto :goto_0

    .line 1073
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/core/session/IoSessionConfig;->getMaxReadBufferSize()I

    move-result v2

    invoke-interface {v0, v2}, Lorg/apache/mina/core/session/IoSessionConfig;->setReadBufferSize(I)V

    .line 1076
    :goto_0
    iput-boolean v1, p0, Lorg/apache/mina/core/session/AbstractIoSession;->deferDecreaseReadBuffer:Z

    return-void
.end method

.method public final increaseReadBytes(JJ)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-void

    .line 898
    :cond_0
    iget-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->readBytes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->readBytes:J

    .line 899
    iput-wide p3, p0, Lorg/apache/mina/core/session/AbstractIoSession;->lastReadTime:J

    .line 900
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->idleCountForBoth:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 901
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->idleCountForRead:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 903
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/mina/core/service/AbstractIoService;

    if-eqz v0, :cond_1

    .line 904
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/service/AbstractIoService;

    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoService;->getStatistics()Lorg/apache/mina/core/service/IoServiceStatistics;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/mina/core/service/IoServiceStatistics;->increaseReadBytes(JJ)V

    :cond_1
    return-void
.end method

.method public final increaseReadMessages(J)V
    .locals 4

    .line 914
    iget-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->readMessages:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->readMessages:J

    .line 915
    iput-wide p1, p0, Lorg/apache/mina/core/session/AbstractIoSession;->lastReadTime:J

    .line 916
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->idleCountForBoth:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 917
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->idleCountForRead:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 919
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/mina/core/service/AbstractIoService;

    if-eqz v0, :cond_0

    .line 920
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/service/AbstractIoService;

    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoService;->getStatistics()Lorg/apache/mina/core/service/IoServiceStatistics;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/core/service/IoServiceStatistics;->increaseReadMessages(J)V

    :cond_0
    return-void
.end method

.method public final increaseScheduledWriteBytes(I)V
    .locals 1

    .line 980
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->scheduledWriteBytes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 981
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/mina/core/service/AbstractIoService;

    if-eqz v0, :cond_0

    .line 982
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/service/AbstractIoService;

    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoService;->getStatistics()Lorg/apache/mina/core/service/IoServiceStatistics;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/service/IoServiceStatistics;->increaseScheduledWriteBytes(I)V

    :cond_0
    return-void
.end method

.method public final increaseScheduledWriteMessages()V
    .locals 1

    .line 990
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->scheduledWriteMessages:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 992
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/mina/core/service/AbstractIoService;

    if-eqz v0, :cond_0

    .line 993
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/service/AbstractIoService;

    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoService;->getStatistics()Lorg/apache/mina/core/service/IoServiceStatistics;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/core/service/IoServiceStatistics;->increaseScheduledWriteMessages()V

    :cond_0
    return-void
.end method

.method public final increaseWrittenBytes(IJ)V
    .locals 4

    if-gtz p1, :cond_0

    return-void

    .line 935
    :cond_0
    iget-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->writtenBytes:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->writtenBytes:J

    .line 936
    iput-wide p2, p0, Lorg/apache/mina/core/session/AbstractIoSession;->lastWriteTime:J

    .line 937
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->idleCountForBoth:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 938
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->idleCountForWrite:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 940
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/mina/core/service/AbstractIoService;

    if-eqz v0, :cond_1

    .line 941
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/service/AbstractIoService;

    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoService;->getStatistics()Lorg/apache/mina/core/service/IoServiceStatistics;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/mina/core/service/IoServiceStatistics;->increaseWrittenBytes(IJ)V

    :cond_1
    neg-int p1, p1

    .line 944
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/session/AbstractIoSession;->increaseScheduledWriteBytes(I)V

    return-void
.end method

.method public final increaseWrittenMessages(Lorg/apache/mina/core/write/WriteRequest;J)V
    .locals 4

    .line 954
    invoke-interface {p1}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object p1

    .line 956
    instance-of v0, p1, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v0, :cond_0

    .line 957
    check-cast p1, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 959
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 964
    :cond_0
    iget-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->writtenMessages:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->writtenMessages:J

    .line 965
    iput-wide p2, p0, Lorg/apache/mina/core/session/AbstractIoSession;->lastWriteTime:J

    .line 967
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object p1

    instance-of p1, p1, Lorg/apache/mina/core/service/AbstractIoService;

    if-eqz p1, :cond_1

    .line 968
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/core/service/AbstractIoService;

    invoke-virtual {p1}, Lorg/apache/mina/core/service/AbstractIoService;->getStatistics()Lorg/apache/mina/core/service/IoServiceStatistics;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lorg/apache/mina/core/service/IoServiceStatistics;->increaseWrittenMessages(J)V

    .line 971
    :cond_1
    invoke-direct {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->decreaseScheduledWriteMessages()V

    return-void
.end method

.method public isActive()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final isBothIdle()Z
    .locals 1

    .line 1146
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSession;->isIdle(Lorg/apache/mina/core/session/IdleStatus;)Z

    move-result v0

    return v0
.end method

.method public final isClosing()Z
    .locals 1

    .line 246
    iget-boolean v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->closing:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->closeFuture:Lorg/apache/mina/core/future/CloseFuture;

    invoke-interface {v0}, Lorg/apache/mina/core/future/CloseFuture;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final isConnected()Z
    .locals 1

    .line 231
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->closeFuture:Lorg/apache/mina/core/future/CloseFuture;

    invoke-interface {v0}, Lorg/apache/mina/core/future/CloseFuture;->isClosed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final isIdle(Lorg/apache/mina/core/session/IdleStatus;)Z
    .locals 3

    .line 1127
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    .line 1128
    iget-object p1, p0, Lorg/apache/mina/core/session/AbstractIoSession;->idleCountForBoth:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1131
    :cond_1
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    if-ne p1, v0, :cond_3

    .line 1132
    iget-object p1, p0, Lorg/apache/mina/core/session/AbstractIoSession;->idleCountForRead:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 1135
    :cond_3
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->WRITER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    if-ne p1, v0, :cond_5

    .line 1136
    iget-object p1, p0, Lorg/apache/mina/core/session/AbstractIoSession;->idleCountForWrite:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-lez p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    return v1

    .line 1139
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown idle status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isReadSuspended()Z
    .locals 1

    .line 764
    iget-boolean v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->readSuspended:Z

    return v0
.end method

.method public final isReaderIdle()Z
    .locals 1

    .line 1153
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSession;->isIdle(Lorg/apache/mina/core/session/IdleStatus;)Z

    move-result v0

    return v0
.end method

.method public final isScheduledForFlush()Z
    .locals 1

    .line 270
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->scheduledForFlush:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isSecured()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isWriteSuspended()Z
    .locals 1

    .line 771
    iget-boolean v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->writeSuspended:Z

    return v0
.end method

.method public final isWriterIdle()Z
    .locals 1

    .line 1160
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->WRITER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSession;->isIdle(Lorg/apache/mina/core/session/IdleStatus;)Z

    move-result v0

    return v0
.end method

.method public final offerClosedReadFuture()V
    .locals 2

    .line 448
    invoke-direct {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getReadyReadFutures()Ljava/util/Queue;

    move-result-object v0

    .line 450
    monitor-enter v0

    .line 451
    :try_start_0
    invoke-direct {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->newReadFuture()Lorg/apache/mina/core/future/ReadFuture;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/mina/core/future/ReadFuture;->setClosed()V

    .line 452
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final offerFailedReadFuture(Ljava/lang/Throwable;)V
    .locals 1

    .line 441
    invoke-direct {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->newReadFuture()Lorg/apache/mina/core/future/ReadFuture;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/mina/core/future/ReadFuture;->setException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final offerReadFuture(Ljava/lang/Object;)V
    .locals 1

    .line 432
    invoke-direct {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->newReadFuture()Lorg/apache/mina/core/future/ReadFuture;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/mina/core/future/ReadFuture;->setRead(Ljava/lang/Object;)V

    return-void
.end method

.method public final read()Lorg/apache/mina/core/future/ReadFuture;
    .locals 3

    .line 401
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 405
    invoke-direct {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getReadyReadFutures()Ljava/util/Queue;

    move-result-object v0

    .line 408
    monitor-enter v0

    .line 409
    :try_start_0
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/future/ReadFuture;

    if-eqz v1, :cond_0

    .line 412
    invoke-interface {v1}, Lorg/apache/mina/core/future/ReadFuture;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 414
    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 417
    :cond_0
    new-instance v1, Lorg/apache/mina/core/future/DefaultReadFuture;

    invoke-direct {v1, p0}, Lorg/apache/mina/core/future/DefaultReadFuture;-><init>(Lorg/apache/mina/core/session/IoSession;)V

    .line 418
    invoke-direct {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getWaitingReadFutures()Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 420
    :cond_1
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 402
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "useReadOperation is not enabled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 658
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->attributes:Lorg/apache/mina/core/session/IoSessionAttributeMap;

    invoke-interface {v0, p0, p1}, Lorg/apache/mina/core/session/IoSessionAttributeMap;->removeAttribute(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final removeAttribute(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 665
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->attributes:Lorg/apache/mina/core/session/IoSessionAttributeMap;

    invoke-interface {v0, p0, p1, p2}, Lorg/apache/mina/core/session/IoSessionAttributeMap;->removeAttribute(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final replaceAttribute(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 672
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->attributes:Lorg/apache/mina/core/session/IoSessionAttributeMap;

    invoke-interface {v0, p0, p1, p2, p3}, Lorg/apache/mina/core/session/IoSessionAttributeMap;->replaceAttribute(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final resumeRead()V
    .locals 1

    const/4 v0, 0x0

    .line 741
    iput-boolean v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->readSuspended:Z

    .line 742
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->isClosing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 745
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getProcessor()Lorg/apache/mina/core/service/IoProcessor;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/apache/mina/core/service/IoProcessor;->updateTrafficControl(Lorg/apache/mina/core/session/IoSession;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final resumeWrite()V
    .locals 1

    const/4 v0, 0x0

    .line 753
    iput-boolean v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->writeSuspended:Z

    .line 754
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->isClosing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 757
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getProcessor()Lorg/apache/mina/core/service/IoProcessor;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/apache/mina/core/service/IoProcessor;->updateTrafficControl(Lorg/apache/mina/core/session/IoSession;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final scheduledForFlush()V
    .locals 2

    .line 277
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->scheduledForFlush:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final setAttachment(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const-string v0, ""

    .line 609
    invoke-virtual {p0, v0, p1}, Lorg/apache/mina/core/session/AbstractIoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final setAttribute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 637
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/core/session/AbstractIoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 630
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->attributes:Lorg/apache/mina/core/session/IoSessionAttributeMap;

    invoke-interface {v0, p0, p1, p2}, Lorg/apache/mina/core/session/IoSessionAttributeMap;->setAttribute(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final setAttributeIfAbsent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 651
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/core/session/AbstractIoSession;->setAttributeIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final setAttributeIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 644
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->attributes:Lorg/apache/mina/core/session/IoSessionAttributeMap;

    invoke-interface {v0, p0, p1, p2}, Lorg/apache/mina/core/session/IoSessionAttributeMap;->setAttributeIfAbsent(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final setAttributeMap(Lorg/apache/mina/core/session/IoSessionAttributeMap;)V
    .locals 0

    .line 702
    iput-object p1, p0, Lorg/apache/mina/core/session/AbstractIoSession;->attributes:Lorg/apache/mina/core/session/IoSessionAttributeMap;

    return-void
.end method

.method public final setCurrentWriteRequest(Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 0

    .line 1062
    iput-object p1, p0, Lorg/apache/mina/core/session/AbstractIoSession;->currentWriteRequest:Lorg/apache/mina/core/write/WriteRequest;

    return-void
.end method

.method public final setScheduledForFlush(Z)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 301
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->scheduledForFlush:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    return p1

    .line 304
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->scheduledForFlush:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method protected setScheduledWriteBytes(I)V
    .locals 1

    .line 875
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->scheduledWriteBytes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method protected setScheduledWriteMessages(I)V
    .locals 1

    .line 884
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->scheduledWriteMessages:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public final setWriteRequestQueue(Lorg/apache/mina/core/write/WriteRequestQueue;)V
    .locals 0

    .line 711
    iput-object p1, p0, Lorg/apache/mina/core/session/AbstractIoSession;->writeRequestQueue:Lorg/apache/mina/core/write/WriteRequestQueue;

    return-void
.end method

.method public final suspendRead()V
    .locals 1

    const/4 v0, 0x1

    .line 718
    iput-boolean v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->readSuspended:Z

    .line 719
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->isClosing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 722
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getProcessor()Lorg/apache/mina/core/service/IoProcessor;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/apache/mina/core/service/IoProcessor;->updateTrafficControl(Lorg/apache/mina/core/session/IoSession;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final suspendWrite()V
    .locals 1

    const/4 v0, 0x1

    .line 729
    iput-boolean v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->writeSuspended:Z

    .line 730
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->isClosing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 733
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getProcessor()Lorg/apache/mina/core/service/IoProcessor;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/apache/mina/core/service/IoProcessor;->updateTrafficControl(Lorg/apache/mina/core/session/IoSession;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1312
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->isConnected()Z

    move-result v0

    const-string v1, "("

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->isClosing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1334
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getIdAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") Session disconnected ..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 1317
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 1319
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot get the remote address informations: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1323
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    nop

    .line 1327
    :goto_2
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v3

    instance-of v3, v3, Lorg/apache/mina/core/service/IoAcceptor;

    const/16 v4, 0x29

    const-string v5, " => "

    const-string v6, ": "

    if-eqz v3, :cond_2

    .line 1328
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getIdAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", server, "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1331
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getIdAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", client, "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unscheduledForFlush()V
    .locals 2

    .line 284
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->scheduledForFlush:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final updateThroughput(JZ)V
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    .line 834
    iget-wide v3, v0, Lorg/apache/mina/core/session/AbstractIoSession;->lastThroughputCalculationTime:J

    sub-long v3, v1, v3

    long-to-int v4, v3

    .line 836
    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/mina/core/session/IoSessionConfig;->getThroughputCalculationIntervalInMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_0

    int-to-long v7, v4

    cmp-long v3, v7, v5

    if-gez v3, :cond_1

    :cond_0
    if-nez p3, :cond_1

    return-void

    .line 842
    :cond_1
    iget-wide v5, v0, Lorg/apache/mina/core/session/AbstractIoSession;->readBytes:J

    iget-wide v7, v0, Lorg/apache/mina/core/session/AbstractIoSession;->lastReadBytes:J

    sub-long v7, v5, v7

    long-to-double v7, v7

    const-wide v9, 0x408f400000000000L    # 1000.0

    mul-double v7, v7, v9

    int-to-double v3, v4

    div-double/2addr v7, v3

    iput-wide v7, v0, Lorg/apache/mina/core/session/AbstractIoSession;->readBytesThroughput:D

    .line 843
    iget-wide v7, v0, Lorg/apache/mina/core/session/AbstractIoSession;->writtenBytes:J

    iget-wide v11, v0, Lorg/apache/mina/core/session/AbstractIoSession;->lastWrittenBytes:J

    sub-long v11, v7, v11

    long-to-double v11, v11

    mul-double v11, v11, v9

    div-double/2addr v11, v3

    iput-wide v11, v0, Lorg/apache/mina/core/session/AbstractIoSession;->writtenBytesThroughput:D

    .line 844
    iget-wide v11, v0, Lorg/apache/mina/core/session/AbstractIoSession;->readMessages:J

    iget-wide v13, v0, Lorg/apache/mina/core/session/AbstractIoSession;->lastReadMessages:J

    sub-long v13, v11, v13

    long-to-double v13, v13

    mul-double v13, v13, v9

    div-double/2addr v13, v3

    iput-wide v13, v0, Lorg/apache/mina/core/session/AbstractIoSession;->readMessagesThroughput:D

    .line 845
    iget-wide v13, v0, Lorg/apache/mina/core/session/AbstractIoSession;->writtenMessages:J

    iget-wide v9, v0, Lorg/apache/mina/core/session/AbstractIoSession;->lastWrittenMessages:J

    sub-long v9, v13, v9

    long-to-double v9, v9

    const-wide v15, 0x408f400000000000L    # 1000.0

    mul-double v9, v9, v15

    div-double/2addr v9, v3

    iput-wide v9, v0, Lorg/apache/mina/core/session/AbstractIoSession;->writtenMessagesThroughput:D

    .line 847
    iput-wide v5, v0, Lorg/apache/mina/core/session/AbstractIoSession;->lastReadBytes:J

    .line 848
    iput-wide v7, v0, Lorg/apache/mina/core/session/AbstractIoSession;->lastWrittenBytes:J

    .line 849
    iput-wide v11, v0, Lorg/apache/mina/core/session/AbstractIoSession;->lastReadMessages:J

    .line 850
    iput-wide v13, v0, Lorg/apache/mina/core/session/AbstractIoSession;->lastWrittenMessages:J

    .line 852
    iput-wide v1, v0, Lorg/apache/mina/core/session/AbstractIoSession;->lastThroughputCalculationTime:J

    return-void
.end method

.method public write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    .locals 1

    const/4 v0, 0x0

    .line 519
    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/core/session/AbstractIoSession;->write(Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object p1

    return-object p1
.end method

.method public write(Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/apache/mina/core/future/WriteFuture;
    .locals 9

    if-eqz p1, :cond_9

    .line 532
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/service/TransportMetadata;->isConnectionless()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 533
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 539
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->isClosing()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_3

    :cond_2
    const/4 v0, 0x0

    .line 552
    :try_start_0
    instance-of v1, p1, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v1, :cond_4

    move-object v1, p1

    check-cast v1, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 554
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "message is empty. Forgot to call flip()?"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 555
    :cond_4
    :goto_1
    instance-of v1, p1, Ljava/nio/channels/FileChannel;

    if-eqz v1, :cond_5

    .line 556
    move-object v3, p1

    check-cast v3, Ljava/nio/channels/FileChannel;

    .line 557
    new-instance p1, Lorg/apache/mina/core/file/DefaultFileRegion;

    const-wide/16 v4, 0x0

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lorg/apache/mina/core/file/DefaultFileRegion;-><init>(Ljava/nio/channels/FileChannel;JJ)V

    goto :goto_2

    .line 558
    :cond_5
    instance-of v1, p1, Ljava/io/File;

    if-eqz v1, :cond_6

    .line 559
    move-object v3, p1

    check-cast v3, Ljava/io/File;

    .line 560
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 561
    new-instance p1, Lorg/apache/mina/core/file/FilenameFileRegion;

    const-wide/16 v5, 0x0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    move-object v2, p1

    move-object v4, v0

    invoke-direct/range {v2 .. v8}, Lorg/apache/mina/core/file/FilenameFileRegion;-><init>(Ljava/io/File;Ljava/nio/channels/FileChannel;JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    :cond_6
    :goto_2
    new-instance v1, Lorg/apache/mina/core/future/DefaultWriteFuture;

    invoke-direct {v1, p0}, Lorg/apache/mina/core/future/DefaultWriteFuture;-><init>(Lorg/apache/mina/core/session/IoSession;)V

    .line 570
    new-instance v2, Lorg/apache/mina/core/write/DefaultWriteRequest;

    invoke-direct {v2, p1, v1, p2}, Lorg/apache/mina/core/write/DefaultWriteRequest;-><init>(Ljava/lang/Object;Lorg/apache/mina/core/future/WriteFuture;Ljava/net/SocketAddress;)V

    .line 573
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object p1

    .line 574
    invoke-interface {p1, v2}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireFilterWrite(Lorg/apache/mina/core/write/WriteRequest;)V

    if-eqz v0, :cond_7

    .line 583
    new-instance p1, Lorg/apache/mina/core/session/AbstractIoSession$2;

    invoke-direct {p1, p0, v0}, Lorg/apache/mina/core/session/AbstractIoSession$2;-><init>(Lorg/apache/mina/core/session/AbstractIoSession;Ljava/nio/channels/FileChannel;)V

    invoke-interface {v1, p1}, Lorg/apache/mina/core/future/WriteFuture;->addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/WriteFuture;

    :cond_7
    return-object v1

    :catch_0
    move-exception p1

    .line 564
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 565
    invoke-static {p0, p1}, Lorg/apache/mina/core/future/DefaultWriteFuture;->newNotWrittenFuture(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object p1

    return-object p1

    .line 540
    :cond_8
    :goto_3
    new-instance v0, Lorg/apache/mina/core/future/DefaultWriteFuture;

    invoke-direct {v0, p0}, Lorg/apache/mina/core/future/DefaultWriteFuture;-><init>(Lorg/apache/mina/core/session/IoSession;)V

    .line 541
    new-instance v1, Lorg/apache/mina/core/write/DefaultWriteRequest;

    invoke-direct {v1, p1, v0, p2}, Lorg/apache/mina/core/write/DefaultWriteRequest;-><init>(Ljava/lang/Object;Lorg/apache/mina/core/future/WriteFuture;Ljava/net/SocketAddress;)V

    .line 542
    new-instance p1, Lorg/apache/mina/core/write/WriteToClosedSessionException;

    invoke-direct {p1, v1}, Lorg/apache/mina/core/write/WriteToClosedSessionException;-><init>(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 543
    invoke-interface {v0, p1}, Lorg/apache/mina/core/future/WriteFuture;->setException(Ljava/lang/Throwable;)V

    return-object v0

    .line 527
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Trying to write a null message : not allowed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
