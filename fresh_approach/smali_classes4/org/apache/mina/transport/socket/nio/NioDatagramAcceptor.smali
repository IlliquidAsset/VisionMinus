.class public final Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;
.super Lorg/apache/mina/core/service/AbstractIoAcceptor;
.source "NioDatagramAcceptor.java"

# interfaces
.implements Lorg/apache/mina/transport/socket/DatagramAcceptor;
.implements Lorg/apache/mina/core/service/IoProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/mina/core/service/AbstractIoAcceptor;",
        "Lorg/apache/mina/transport/socket/DatagramAcceptor;",
        "Lorg/apache/mina/core/service/IoProcessor<",
        "Lorg/apache/mina/transport/socket/nio/NioSession;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_RECYCLER:Lorg/apache/mina/core/session/IoSessionRecycler;

.field private static final SELECT_TIMEOUT:J = 0x3e8L


# instance fields
.field private acceptor:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;

.field private final boundHandles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/net/SocketAddress;",
            "Ljava/nio/channels/DatagramChannel;",
            ">;"
        }
    .end annotation
.end field

.field private final cancelQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;",
            ">;"
        }
    .end annotation
.end field

.field private final disposalFuture:Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

.field private final flushingSessions:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/mina/transport/socket/nio/NioSession;",
            ">;"
        }
    .end annotation
.end field

.field private lastIdleCheckTime:J

.field private final lock:Ljava/util/concurrent/Semaphore;

.field private final registerQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;",
            ">;"
        }
    .end annotation
.end field

.field private volatile selectable:Z

.field private volatile selector:Ljava/nio/channels/Selector;

.field private sessionRecycler:Lorg/apache/mina/core/session/IoSessionRecycler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    new-instance v0, Lorg/apache/mina/core/session/ExpiringSessionRecycler;

    invoke-direct {v0}, Lorg/apache/mina/core/session/ExpiringSessionRecycler;-><init>()V

    sput-object v0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->DEFAULT_RECYCLER:Lorg/apache/mina/core/session/IoSessionRecycler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 111
    new-instance v0, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;

    invoke-direct {v0}, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 120
    new-instance v0, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;

    invoke-direct {v0}, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private constructor <init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 127
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/service/AbstractIoAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;)V

    .line 81
    new-instance p1, Ljava/util/concurrent/Semaphore;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    .line 84
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->registerQueue:Ljava/util/Queue;

    .line 86
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->cancelQueue:Ljava/util/Queue;

    .line 88
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->flushingSessions:Ljava/util/Queue;

    .line 90
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 91
    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->boundHandles:Ljava/util/Map;

    .line 93
    sget-object p1, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->DEFAULT_RECYCLER:Lorg/apache/mina/core/session/IoSessionRecycler;

    iput-object p1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->sessionRecycler:Lorg/apache/mina/core/session/IoSessionRecycler;

    .line 95
    new-instance p1, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    invoke-direct {p1}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;-><init>()V

    iput-object p1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->disposalFuture:Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    .line 130
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->init()V

    .line 131
    iput-boolean p2, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selectable:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    iget-boolean p1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selectable:Z

    if-nez p1, :cond_0

    .line 139
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 141
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 135
    :try_start_2
    new-instance p2, Lorg/apache/mina/core/RuntimeIoException;

    const-string v0, "Failed to initialize."

    invoke-direct {p2, v0, p1}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 133
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    :goto_1
    iget-boolean p2, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selectable:Z

    if-nez p2, :cond_1

    .line 139
    :try_start_3
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->destroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception p2

    .line 141
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 142
    :cond_1
    :goto_2
    throw p1
.end method

.method static synthetic access$002(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;J)J
    .locals 0

    .line 68
    iput-wide p1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->lastIdleCheckTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;)Ljava/util/concurrent/Semaphore;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;J)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->notifyIdleSessions(J)V

    return-void
.end method

.method static synthetic access$1100(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;)Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->disposalFuture:Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    return-object p0
.end method

.method static synthetic access$200(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selectable:Z

    return p0
.end method

.method static synthetic access$202(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selectable:Z

    return p1
.end method

.method static synthetic access$300(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;)I
    .locals 0

    .line 68
    invoke-direct {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->registerHandles()I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;)Ljava/util/Queue;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->registerQueue:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic access$500(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;)Ljava/util/Queue;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->cancelQueue:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic access$602(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;)Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->acceptor:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;

    return-object p1
.end method

.method static synthetic access$700(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;Ljava/util/Set;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->processReadySessions(Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$800(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;J)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->flushSessions(J)V

    return-void
.end method

.method static synthetic access$900(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;)I
    .locals 0

    .line 68
    invoke-direct {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->unregisterHandles()I

    move-result p0

    return p0
.end method

.method private flush(Lorg/apache/mina/transport/socket/nio/NioSession;J)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 368
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v0

    .line 369
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/mina/core/session/IoSessionConfig;->getMaxReadBufferSize()I

    move-result v1

    .line 370
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/core/session/IoSessionConfig;->getMaxReadBufferSize()I

    move-result v2

    const/4 v3, 0x1

    ushr-int/2addr v2, v3

    add-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 376
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getCurrentWriteRequest()Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v5

    if-nez v5, :cond_1

    .line 379
    invoke-interface {v0, p1}, Lorg/apache/mina/core/write/WriteRequestQueue;->poll(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v5

    if-nez v5, :cond_0

    .line 382
    invoke-virtual {p0, p1, v2}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->setInterestedInWrite(Lorg/apache/mina/transport/socket/nio/NioSession;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    invoke-virtual {p1, v4, p2, p3}, Lorg/apache/mina/transport/socket/nio/NioSession;->increaseWrittenBytes(IJ)V

    return v3

    .line 386
    :cond_0
    :try_start_1
    invoke-virtual {p1, v5}, Lorg/apache/mina/transport/socket/nio/NioSession;->setCurrentWriteRequest(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 389
    :cond_1
    invoke-interface {v5}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 391
    invoke-virtual {v6}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_2

    .line 393
    invoke-virtual {p1, v8}, Lorg/apache/mina/transport/socket/nio/NioSession;->setCurrentWriteRequest(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 394
    invoke-virtual {v6}, Lorg/apache/mina/core/buffer/IoBuffer;->reset()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 395
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v6

    invoke-interface {v6, v5}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireMessageSent(Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0

    .line 399
    :cond_2
    invoke-interface {v5}, Lorg/apache/mina/core/write/WriteRequest;->getDestination()Ljava/net/SocketAddress;

    move-result-object v7

    if-nez v7, :cond_3

    .line 402
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v7

    .line 405
    :cond_3
    invoke-virtual {p0, p1, v6, v7}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->send(Lorg/apache/mina/transport/socket/nio/NioSession;Lorg/apache/mina/core/buffer/IoBuffer;Ljava/net/SocketAddress;)I

    move-result v7

    if-eqz v7, :cond_5

    if-lt v4, v1, :cond_4

    goto :goto_1

    .line 413
    :cond_4
    invoke-virtual {p0, p1, v2}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->setInterestedInWrite(Lorg/apache/mina/transport/socket/nio/NioSession;Z)V

    .line 416
    invoke-virtual {p1, v8}, Lorg/apache/mina/transport/socket/nio/NioSession;->setCurrentWriteRequest(Lorg/apache/mina/core/write/WriteRequest;)V

    add-int/2addr v4, v7

    .line 418
    invoke-virtual {v6}, Lorg/apache/mina/core/buffer/IoBuffer;->reset()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 419
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v6

    invoke-interface {v6, v5}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireMessageSent(Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0

    .line 409
    :cond_5
    :goto_1
    invoke-virtual {p0, p1, v3}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->setInterestedInWrite(Lorg/apache/mina/transport/socket/nio/NioSession;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 423
    invoke-virtual {p1, v4, p2, p3}, Lorg/apache/mina/transport/socket/nio/NioSession;->increaseWrittenBytes(IJ)V

    return v2

    :catchall_0
    move-exception v0

    invoke-virtual {p1, v4, p2, p3}, Lorg/apache/mina/transport/socket/nio/NioSession;->increaseWrittenBytes(IJ)V

    throw v0
.end method

.method private flushSessions(J)V
    .locals 2

    .line 345
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->flushingSessions:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/transport/socket/nio/NioSession;

    if-nez v0, :cond_1

    return-void

    .line 353
    :cond_1
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/nio/NioSession;->unscheduledForFlush()V

    .line 356
    :try_start_0
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->flush(Lorg/apache/mina/transport/socket/nio/NioSession;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/nio/NioSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/mina/core/write/WriteRequestQueue;->isEmpty(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/nio/NioSession;->isScheduledForFlush()Z

    move-result v1

    if-nez v1, :cond_0

    .line 359
    invoke-direct {p0, v0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->scheduleFlush(Lorg/apache/mina/transport/socket/nio/NioSession;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 362
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/nio/NioSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private newSessionWithoutLock(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lorg/apache/mina/core/session/IoSession;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->boundHandles:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/DatagramChannel;

    if-eqz v0, :cond_1

    .line 318
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->sessionRecycler:Lorg/apache/mina/core/session/IoSessionRecycler;

    monitor-enter v1

    .line 319
    :try_start_0
    iget-object p2, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->sessionRecycler:Lorg/apache/mina/core/session/IoSessionRecycler;

    invoke-interface {p2, p1}, Lorg/apache/mina/core/session/IoSessionRecycler;->recycle(Ljava/net/SocketAddress;)Lorg/apache/mina/core/session/IoSession;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 322
    monitor-exit v1

    return-object p2

    .line 326
    :cond_0
    invoke-virtual {p0, p0, v0, p1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->newSession(Lorg/apache/mina/core/service/IoProcessor;Ljava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;)Lorg/apache/mina/transport/socket/nio/NioSession;

    move-result-object p1

    .line 327
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->getSessionRecycler()Lorg/apache/mina/core/session/IoSessionRecycler;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/apache/mina/core/session/IoSessionRecycler;->put(Lorg/apache/mina/core/session/IoSession;)V

    .line 329
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x0

    .line 331
    invoke-virtual {p0, p1, p2, p2}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->initSession(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;Lorg/apache/mina/core/session/IoSessionInitializer;)V

    .line 334
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->getFilterChainBuilder()Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;

    move-result-object p2

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;->buildFilterChain(Lorg/apache/mina/core/filterchain/IoFilterChain;)V

    .line 335
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->fireSessionCreated(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 337
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    :goto_0
    return-object p1

    :catchall_0
    move-exception p1

    .line 329
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 313
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown local address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private notifyIdleSessions(J)V
    .locals 5

    .line 464
    iget-wide v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->lastIdleCheckTime:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 465
    iput-wide p1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->lastIdleCheckTime:J

    .line 466
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->getManagedSessions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/apache/mina/core/session/AbstractIoSession;->notifyIdleness(Ljava/util/Iterator;J)V

    :cond_0
    return-void
.end method

.method private processReadySessions(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/nio/channels/SelectionKey;",
            ">;)V"
        }
    .end annotation

    .line 260
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 262
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 263
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    .line 264
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/DatagramChannel;

    .line 265
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 268
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 269
    invoke-direct {p0, v1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->readHandle(Ljava/nio/channels/DatagramChannel;)V

    .line 272
    :cond_1
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->getManagedSessions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/session/IoSession;

    .line 274
    check-cast v1, Lorg/apache/mina/transport/socket/nio/NioSession;

    invoke-direct {p0, v1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->scheduleFlush(Lorg/apache/mina/transport/socket/nio/NioSession;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 278
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private readHandle(Ljava/nio/channels/DatagramChannel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 296
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->getSessionConfig()Lorg/apache/mina/transport/socket/DatagramSessionConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/transport/socket/DatagramSessionConfig;->getReadBufferSize()I

    move-result v0

    invoke-static {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 298
    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->receive(Ljava/nio/channels/DatagramChannel;Lorg/apache/mina/core/buffer/IoBuffer;)Ljava/net/SocketAddress;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 301
    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->localAddress(Ljava/nio/channels/DatagramChannel;)Ljava/net/SocketAddress;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->newSessionWithoutLock(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lorg/apache/mina/core/session/IoSession;

    move-result-object p1

    .line 303
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 305
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object p1

    invoke-interface {p1, v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireMessageReceived(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private registerHandles()I
    .locals 5

    .line 217
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->registerQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 223
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 224
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getLocalAddresses()Ljava/util/List;

    move-result-object v2

    .line 227
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/SocketAddress;

    .line 228
    invoke-virtual {p0, v3}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->open(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;

    move-result-object v3

    .line 229
    invoke-virtual {p0, v3}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->localAddress(Ljava/nio/channels/DatagramChannel;)Ljava/net/SocketAddress;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 232
    :cond_2
    iget-object v2, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->boundHandles:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 234
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->fireServiceActivated()V

    .line 235
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->setDone()V

    .line 237
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 243
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/DatagramChannel;

    .line 245
    :try_start_1
    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->close(Ljava/nio/channels/DatagramChannel;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 247
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 251
    :cond_3
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->wakeup()V

    :cond_4
    return v2

    :catchall_0
    move-exception v2

    goto :goto_4

    :catch_1
    move-exception v2

    .line 239
    :try_start_2
    invoke-virtual {v0, v2}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->setException(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 242
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/DatagramChannel;

    .line 245
    :try_start_3
    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->close(Ljava/nio/channels/DatagramChannel;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v1

    .line 247
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 251
    :cond_5
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->wakeup()V

    goto/16 :goto_0

    .line 242
    :goto_4
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 243
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/DatagramChannel;

    .line 245
    :try_start_4
    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->close(Ljava/nio/channels/DatagramChannel;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :catch_3
    move-exception v1

    .line 247
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 251
    :cond_6
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->wakeup()V

    :cond_7
    throw v2
.end method

.method private scheduleFlush(Lorg/apache/mina/transport/socket/nio/NioSession;)Z
    .locals 2

    const/4 v0, 0x1

    .line 287
    invoke-virtual {p1, v0}, Lorg/apache/mina/transport/socket/nio/NioSession;->setScheduledForFlush(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->flushingSessions:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private startupAcceptor()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 474
    iget-boolean v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selectable:Z

    if-nez v0, :cond_0

    .line 475
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->registerQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 476
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->cancelQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 477
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->flushingSessions:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 480
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 482
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->acceptor:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;

    if-nez v0, :cond_1

    .line 483
    new-instance v0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;-><init>(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$1;)V

    iput-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->acceptor:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;

    .line 484
    invoke-virtual {p0, v0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->executeWorker(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 486
    :cond_1
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    :goto_0
    return-void
.end method

.method private unregisterHandles()I
    .locals 5

    const/4 v0, 0x0

    .line 433
    :goto_0
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->cancelQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;

    if-nez v1, :cond_0

    return v0

    .line 439
    :cond_0
    invoke-virtual {v1}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getLocalAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/SocketAddress;

    .line 440
    iget-object v4, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->boundHandles:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/channels/DatagramChannel;

    if-nez v3, :cond_1

    goto :goto_1

    .line 447
    :cond_1
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->close(Ljava/nio/channels/DatagramChannel;)V

    .line 448
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->wakeup()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v3

    .line 450
    :try_start_1
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 452
    :goto_3
    throw v0

    .line 456
    :cond_2
    invoke-virtual {v1}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->setDone()V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic add(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .line 68
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->add(Lorg/apache/mina/transport/socket/nio/NioSession;)V

    return-void
.end method

.method public add(Lorg/apache/mina/transport/socket/nio/NioSession;)V
    .locals 0

    return-void
.end method

.method protected final bindInternal(Ljava/util/List;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/net/SocketAddress;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 508
    new-instance v0, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;

    invoke-direct {v0, p1}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;-><init>(Ljava/util/List;)V

    .line 512
    iget-object p1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->registerQueue:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 516
    invoke-direct {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->startupAcceptor()V

    .line 522
    :try_start_0
    iget-object p1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->acquire()V

    const-wide/16 v1, 0xa

    .line 525
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 526
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->wakeup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    iget-object p1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 532
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/IoFuture;

    .line 534
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object p1

    if-nez p1, :cond_1

    .line 541
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 543
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->boundHandles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/DatagramChannel;

    .line 544
    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->localAddress(Ljava/nio/channels/DatagramChannel;)Ljava/net/SocketAddress;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1

    .line 535
    :cond_1
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    .line 528
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    throw p1
.end method

.method protected close(Ljava/nio/channels/DatagramChannel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 551
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p1, v0}, Ljava/nio/channels/DatagramChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 554
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 557
    :cond_0
    invoke-virtual {p1}, Ljava/nio/channels/DatagramChannel;->disconnect()Ljava/nio/channels/DatagramChannel;

    .line 558
    invoke-virtual {p1}, Ljava/nio/channels/DatagramChannel;->close()V

    return-void
.end method

.method protected destroy()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 562
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V

    :cond_0
    return-void
.end method

.method protected dispose0()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 572
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->unbind()V

    .line 573
    invoke-direct {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->startupAcceptor()V

    .line 574
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->wakeup()V

    return-void
.end method

.method public bridge synthetic flush(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .line 68
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->flush(Lorg/apache/mina/transport/socket/nio/NioSession;)V

    return-void
.end method

.method public flush(Lorg/apache/mina/transport/socket/nio/NioSession;)V
    .locals 0

    .line 581
    invoke-direct {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->scheduleFlush(Lorg/apache/mina/transport/socket/nio/NioSession;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 582
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->wakeup()V

    :cond_0
    return-void
.end method

.method public getDefaultLocalAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 588
    invoke-super {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->getDefaultLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic getDefaultLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->getDefaultLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 593
    invoke-super {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSessionConfig()Lorg/apache/mina/core/session/IoSessionConfig;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->getSessionConfig()Lorg/apache/mina/transport/socket/DatagramSessionConfig;

    move-result-object v0

    return-object v0
.end method

.method public getSessionConfig()Lorg/apache/mina/transport/socket/DatagramSessionConfig;
    .locals 1

    .line 600
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->sessionConfig:Lorg/apache/mina/core/session/IoSessionConfig;

    check-cast v0, Lorg/apache/mina/transport/socket/DatagramSessionConfig;

    return-object v0
.end method

.method public final getSessionRecycler()Lorg/apache/mina/core/session/IoSessionRecycler;
    .locals 1

    .line 604
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->sessionRecycler:Lorg/apache/mina/core/session/IoSessionRecycler;

    return-object v0
.end method

.method public getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;
    .locals 1

    .line 608
    sget-object v0, Lorg/apache/mina/transport/socket/nio/NioDatagramSession;->METADATA:Lorg/apache/mina/core/service/TransportMetadata;

    return-object v0
.end method

.method protected init()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 491
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    return-void
.end method

.method protected isReadable(Ljava/nio/channels/DatagramChannel;)Z
    .locals 1

    .line 612
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p1, v0}, Ljava/nio/channels/DatagramChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 614
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 618
    :cond_0
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected isWritable(Ljava/nio/channels/DatagramChannel;)Z
    .locals 1

    .line 622
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p1, v0}, Ljava/nio/channels/DatagramChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 624
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 628
    :cond_0
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected localAddress(Ljava/nio/channels/DatagramChannel;)Ljava/net/SocketAddress;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 632
    invoke-virtual {p1}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/DatagramSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object p1

    check-cast p1, Ljava/net/InetSocketAddress;

    .line 633
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 635
    instance-of v1, v0, Ljava/net/Inet6Address;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/net/Inet6Address;

    invoke-virtual {v0}, Ljava/net/Inet6Address;->isIPv4CompatibleAddress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 639
    invoke-virtual {v0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    const/4 v1, 0x4

    new-array v2, v1, [B

    const/16 v3, 0xc

    const/4 v4, 0x0

    .line 642
    invoke-static {v0, v3, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 644
    invoke-static {v2}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    .line 645
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p1

    invoke-direct {v1, v0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v1

    :cond_0
    return-object p1
.end method

.method public final newSession(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lorg/apache/mina/core/session/IoSession;
    .locals 2

    .line 669
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->isDisposing()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 677
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->bindLock:Ljava/lang/Object;

    monitor-enter v0

    .line 678
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->isActive()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 683
    :try_start_1
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->newSessionWithoutLock(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lorg/apache/mina/core/session/IoSession;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p1

    :catch_0
    move-exception p1

    .line 689
    new-instance p2, Lorg/apache/mina/core/RuntimeIoException;

    const-string v1, "Failed to create a session."

    invoke-direct {p2, v1, p1}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 687
    throw p1

    :catch_2
    move-exception p1

    .line 685
    throw p1

    .line 679
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can\'t create a session from a unbound service."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 691
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 674
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "remoteAddress"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 670
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The Acceptor is being disposed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected newSession(Lorg/apache/mina/core/service/IoProcessor;Ljava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;)Lorg/apache/mina/transport/socket/nio/NioSession;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "Lorg/apache/mina/transport/socket/nio/NioSession;",
            ">;",
            "Ljava/nio/channels/DatagramChannel;",
            "Ljava/net/SocketAddress;",
            ")",
            "Lorg/apache/mina/transport/socket/nio/NioSession;"
        }
    .end annotation

    .line 653
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p2, v0}, Ljava/nio/channels/DatagramChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 655
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 659
    :cond_0
    new-instance v1, Lorg/apache/mina/transport/socket/nio/NioDatagramSession;

    invoke-direct {v1, p0, p2, p1, p3}, Lorg/apache/mina/transport/socket/nio/NioDatagramSession;-><init>(Lorg/apache/mina/core/service/IoService;Ljava/nio/channels/DatagramChannel;Lorg/apache/mina/core/service/IoProcessor;Ljava/net/SocketAddress;)V

    .line 660
    invoke-virtual {v1, v0}, Lorg/apache/mina/transport/socket/nio/NioDatagramSession;->setSelectionKey(Ljava/nio/channels/SelectionKey;)V

    return-object v1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected open(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 695
    invoke-static {}, Ljava/nio/channels/DatagramChannel;->open()Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    .line 698
    :try_start_0
    new-instance v1, Lorg/apache/mina/transport/socket/nio/NioDatagramSessionConfig;

    invoke-direct {v1, v0}, Lorg/apache/mina/transport/socket/nio/NioDatagramSessionConfig;-><init>(Ljava/nio/channels/DatagramChannel;)V

    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->getSessionConfig()Lorg/apache/mina/transport/socket/DatagramSessionConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/mina/transport/socket/nio/NioDatagramSessionConfig;->setAll(Lorg/apache/mina/core/session/IoSessionConfig;)V

    const/4 v1, 0x0

    .line 699
    invoke-virtual {v0, v1}, Ljava/nio/channels/DatagramChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 702
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 717
    :try_start_2
    iget-object p1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Ljava/nio/channels/DatagramChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    return-object v0

    :catch_0
    move-exception v1

    .line 706
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while binding on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "original message : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 708
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 709
    invoke-virtual {v1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/Exception;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 712
    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->close()V

    .line 714
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    .line 721
    invoke-virtual {p0, v0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->close(Ljava/nio/channels/DatagramChannel;)V

    throw p1
.end method

.method protected receive(Ljava/nio/channels/DatagramChannel;Lorg/apache/mina/core/buffer/IoBuffer;)Ljava/net/SocketAddress;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 729
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/channels/DatagramChannel;->receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic remove(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .line 68
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->remove(Lorg/apache/mina/transport/socket/nio/NioSession;)V

    return-void
.end method

.method public remove(Lorg/apache/mina/transport/socket/nio/NioSession;)V
    .locals 1

    .line 736
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->getSessionRecycler()Lorg/apache/mina/core/session/IoSessionRecycler;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/mina/core/session/IoSessionRecycler;->remove(Lorg/apache/mina/core/session/IoSession;)V

    .line 737
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->fireSessionDestroyed(Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method protected select()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 741
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->select()I

    move-result v0

    return v0
.end method

.method protected select(J)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 745
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/Selector;->select(J)I

    move-result p1

    return p1
.end method

.method protected selectedHandles()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation

    .line 749
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected send(Lorg/apache/mina/transport/socket/nio/NioSession;Lorg/apache/mina/core/buffer/IoBuffer;Ljava/net/SocketAddress;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 753
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object p1

    check-cast p1, Ljava/nio/channels/DatagramChannel;

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Ljava/nio/channels/DatagramChannel;->send(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I

    move-result p1

    return p1
.end method

.method public setDefaultLocalAddress(Ljava/net/InetSocketAddress;)V
    .locals 0

    .line 757
    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->setDefaultLocalAddress(Ljava/net/SocketAddress;)V

    return-void
.end method

.method protected setInterestedInWrite(Lorg/apache/mina/transport/socket/nio/NioSession;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 761
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 767
    :cond_0
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v0

    if-eqz p2, :cond_1

    or-int/lit8 p2, v0, 0x4

    goto :goto_0

    :cond_1
    and-int/lit8 p2, v0, -0x5

    .line 775
    :goto_0
    invoke-virtual {p1, p2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    return-void
.end method

.method public final setSessionRecycler(Lorg/apache/mina/core/session/IoSessionRecycler;)V
    .locals 2

    .line 779
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->bindLock:Ljava/lang/Object;

    monitor-enter v0

    .line 780
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    .line 785
    sget-object p1, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->DEFAULT_RECYCLER:Lorg/apache/mina/core/session/IoSessionRecycler;

    .line 788
    :cond_0
    iput-object p1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->sessionRecycler:Lorg/apache/mina/core/session/IoSessionRecycler;

    .line 789
    monitor-exit v0

    return-void

    .line 781
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "sessionRecycler can\'t be set while the acceptor is bound."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 789
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected final unbind0(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/net/SocketAddress;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 797
    new-instance v0, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;

    invoke-direct {v0, p1}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;-><init>(Ljava/util/List;)V

    .line 799
    iget-object p1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->cancelQueue:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 800
    invoke-direct {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->startupAcceptor()V

    .line 801
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->wakeup()V

    .line 803
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/IoFuture;

    .line 805
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 806
    :cond_0
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object p1

    throw p1
.end method

.method public bridge synthetic updateTrafficControl(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .line 68
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->updateTrafficControl(Lorg/apache/mina/transport/socket/nio/NioSession;)V

    return-void
.end method

.method public updateTrafficControl(Lorg/apache/mina/transport/socket/nio/NioSession;)V
    .locals 0

    .line 814
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method protected wakeup()V
    .locals 1

    .line 818
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    return-void
.end method

.method public bridge synthetic write(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 0

    .line 68
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->write(Lorg/apache/mina/transport/socket/nio/NioSession;Lorg/apache/mina/core/write/WriteRequest;)V

    return-void
.end method

.method public write(Lorg/apache/mina/transport/socket/nio/NioSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 9

    .line 826
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 827
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v2

    .line 828
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/mina/core/session/IoSessionConfig;->getMaxReadBufferSize()I

    move-result v3

    .line 829
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/mina/core/session/IoSessionConfig;->getMaxReadBufferSize()I

    move-result v4

    const/4 v5, 0x1

    ushr-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 835
    invoke-interface {p2}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 837
    invoke-virtual {v4}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    .line 839
    invoke-virtual {p1, v7}, Lorg/apache/mina/transport/socket/nio/NioSession;->setCurrentWriteRequest(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 840
    invoke-virtual {v4}, Lorg/apache/mina/core/buffer/IoBuffer;->reset()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 841
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireMessageSent(Lorg/apache/mina/core/write/WriteRequest;)V

    return-void

    :cond_0
    :goto_0
    const/4 v4, 0x0

    if-nez p2, :cond_2

    .line 849
    :try_start_0
    invoke-interface {v2, p1}, Lorg/apache/mina/core/write/WriteRequestQueue;->poll(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/write/WriteRequest;

    move-result-object p2

    if-nez p2, :cond_1

    .line 852
    invoke-virtual {p0, p1, v4}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->setInterestedInWrite(Lorg/apache/mina/transport/socket/nio/NioSession;Z)V

    goto :goto_2

    .line 856
    :cond_1
    invoke-virtual {p1, p2}, Lorg/apache/mina/transport/socket/nio/NioSession;->setCurrentWriteRequest(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 859
    :cond_2
    invoke-interface {p2}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 861
    invoke-virtual {v6}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v8

    if-nez v8, :cond_3

    .line 863
    invoke-virtual {p1, v7}, Lorg/apache/mina/transport/socket/nio/NioSession;->setCurrentWriteRequest(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 864
    invoke-virtual {v6}, Lorg/apache/mina/core/buffer/IoBuffer;->reset()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 865
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v6

    invoke-interface {v6, p2}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireMessageSent(Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0

    .line 869
    :cond_3
    invoke-interface {p2}, Lorg/apache/mina/core/write/WriteRequest;->getDestination()Ljava/net/SocketAddress;

    move-result-object v8

    if-nez v8, :cond_4

    .line 872
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v8

    .line 875
    :cond_4
    invoke-virtual {p0, p1, v6, v8}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->send(Lorg/apache/mina/transport/socket/nio/NioSession;Lorg/apache/mina/core/buffer/IoBuffer;Ljava/net/SocketAddress;)I

    move-result v8

    if-eqz v8, :cond_6

    if-gtz v3, :cond_5

    goto :goto_1

    .line 884
    :cond_5
    invoke-virtual {p0, p1, v4}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->setInterestedInWrite(Lorg/apache/mina/transport/socket/nio/NioSession;Z)V

    .line 887
    invoke-virtual {p1, v7}, Lorg/apache/mina/transport/socket/nio/NioSession;->setCurrentWriteRequest(Lorg/apache/mina/core/write/WriteRequest;)V

    add-int/2addr v4, v8

    .line 889
    invoke-virtual {v6}, Lorg/apache/mina/core/buffer/IoBuffer;->reset()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 890
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v2

    invoke-interface {v2, p2}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireMessageSent(Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_2

    .line 879
    :cond_6
    :goto_1
    invoke-virtual {p0, p1, v5}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->setInterestedInWrite(Lorg/apache/mina/transport/socket/nio/NioSession;Z)V

    .line 881
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v6

    invoke-interface {v6, p1, p2}, Lorg/apache/mina/core/write/WriteRequestQueue;->offer(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 882
    invoke-direct {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->scheduleFlush(Lorg/apache/mina/transport/socket/nio/NioSession;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_3

    :catch_0
    move-exception p2

    .line 896
    :try_start_1
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v2

    invoke-interface {v2, p2}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 898
    :goto_2
    invoke-virtual {p1, v4, v0, v1}, Lorg/apache/mina/transport/socket/nio/NioSession;->increaseWrittenBytes(IJ)V

    return-void

    :goto_3
    invoke-virtual {p1, v4, v0, v1}, Lorg/apache/mina/transport/socket/nio/NioSession;->increaseWrittenBytes(IJ)V

    throw p2
.end method
