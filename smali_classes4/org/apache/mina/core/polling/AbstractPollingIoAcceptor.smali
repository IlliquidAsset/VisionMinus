.class public abstract Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;
.super Lorg/apache/mina/core/service/AbstractIoAcceptor;
.source "AbstractPollingIoAcceptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lorg/apache/mina/core/session/AbstractIoSession;",
        "H:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/mina/core/service/AbstractIoAcceptor;"
    }
.end annotation


# instance fields
.field private acceptorRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<",
            "TS;TH;>.Acceptor;>;"
        }
    .end annotation
.end field

.field protected backlog:I

.field private final boundHandles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/net/SocketAddress;",
            "TH;>;"
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

.field private final createdProcessor:Z

.field private final disposalFuture:Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

.field private final lock:Ljava/util/concurrent/Semaphore;

.field private final processor:Lorg/apache/mina/core/service/IoProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/mina/core/service/IoProcessor<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final registerQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;",
            ">;"
        }
    .end annotation
.end field

.field protected reuseAddress:Z

.field private volatile selectable:Z


# direct methods
.method protected constructor <init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSessionConfig;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "TS;>;>;)V"
        }
    .end annotation

    .line 115
    new-instance v3, Lorg/apache/mina/core/service/SimpleIoProcessorPool;

    invoke-direct {v3, p2}, Lorg/apache/mina/core/service/SimpleIoProcessorPool;-><init>(Ljava/lang/Class;)V

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;Lorg/apache/mina/core/service/IoProcessor;ZLjava/nio/channels/spi/SelectorProvider;)V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/lang/Class;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSessionConfig;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "TS;>;>;I)V"
        }
    .end annotation

    .line 134
    new-instance v3, Lorg/apache/mina/core/service/SimpleIoProcessorPool;

    invoke-direct {v3, p2, p3}, Lorg/apache/mina/core/service/SimpleIoProcessorPool;-><init>(Ljava/lang/Class;I)V

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;Lorg/apache/mina/core/service/IoProcessor;ZLjava/nio/channels/spi/SelectorProvider;)V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/lang/Class;ILjava/nio/channels/spi/SelectorProvider;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSessionConfig;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "TS;>;>;I",
            "Ljava/nio/channels/spi/SelectorProvider;",
            ")V"
        }
    .end annotation

    .line 154
    new-instance v3, Lorg/apache/mina/core/service/SimpleIoProcessorPool;

    invoke-direct {v3, p2, p3, p4}, Lorg/apache/mina/core/service/SimpleIoProcessorPool;-><init>(Ljava/lang/Class;ILjava/nio/channels/spi/SelectorProvider;)V

    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;Lorg/apache/mina/core/service/IoProcessor;ZLjava/nio/channels/spi/SelectorProvider;)V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;Lorg/apache/mina/core/service/IoProcessor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSessionConfig;",
            "Ljava/util/concurrent/Executor;",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "TS;>;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 193
    invoke-direct/range {v0 .. v5}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;Lorg/apache/mina/core/service/IoProcessor;ZLjava/nio/channels/spi/SelectorProvider;)V

    return-void
.end method

.method private constructor <init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;Lorg/apache/mina/core/service/IoProcessor;ZLjava/nio/channels/spi/SelectorProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSessionConfig;",
            "Ljava/util/concurrent/Executor;",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "TS;>;Z",
            "Ljava/nio/channels/spi/SelectorProvider;",
            ")V"
        }
    .end annotation

    .line 220
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/service/AbstractIoAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;)V

    .line 73
    new-instance p1, Ljava/util/concurrent/Semaphore;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    .line 79
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->registerQueue:Ljava/util/Queue;

    .line 81
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->cancelQueue:Ljava/util/Queue;

    .line 83
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->boundHandles:Ljava/util/Map;

    .line 85
    new-instance p1, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    invoke-direct {p1}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;-><init>()V

    iput-object p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->disposalFuture:Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    .line 91
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->acceptorRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p1, 0x0

    .line 93
    iput-boolean p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->reuseAddress:Z

    const/16 p1, 0x32

    .line 99
    iput p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->backlog:I

    if-eqz p3, :cond_2

    .line 226
    iput-object p3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->processor:Lorg/apache/mina/core/service/IoProcessor;

    .line 227
    iput-boolean p4, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->createdProcessor:Z

    .line 231
    :try_start_0
    invoke-virtual {p0, p5}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->init(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 235
    iput-boolean p2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->selectable:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    iget-boolean p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->selectable:Z

    if-nez p1, :cond_0

    .line 243
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 245
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

    .line 239
    :try_start_2
    new-instance p2, Lorg/apache/mina/core/RuntimeIoException;

    const-string p3, "Failed to initialize."

    invoke-direct {p2, p3, p1}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 237
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 241
    :goto_1
    iget-boolean p2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->selectable:Z

    if-nez p2, :cond_1

    .line 243
    :try_start_3
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->destroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception p2

    .line 245
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object p3

    invoke-virtual {p3, p2}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 246
    :cond_1
    :goto_2
    throw p1

    .line 223
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "processor"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected constructor <init>(Lorg/apache/mina/core/session/IoSessionConfig;Lorg/apache/mina/core/service/IoProcessor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSessionConfig;",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "TS;>;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    .line 170
    invoke-direct/range {v0 .. v5}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;Lorg/apache/mina/core/service/IoProcessor;ZLjava/nio/channels/spi/SelectorProvider;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 71
    iget-object p0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->acceptorRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Ljava/lang/Object;
    .locals 0

    .line 71
    iget-object p0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->disposalLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;
    .locals 0

    .line 71
    iget-object p0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->disposalFuture:Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;Lorg/apache/mina/core/session/IoSessionInitializer;)V
    .locals 0

    .line 71
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->initSession(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;Lorg/apache/mina/core/session/IoSessionInitializer;)V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Ljava/util/concurrent/Semaphore;
    .locals 0

    .line 71
    iget-object p0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method static synthetic access$300(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->selectable:Z

    return p0
.end method

.method static synthetic access$302(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->selectable:Z

    return p1
.end method

.method static synthetic access$400(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)I
    .locals 0

    .line 71
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->registerHandles()I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Ljava/util/Queue;
    .locals 0

    .line 71
    iget-object p0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->registerQueue:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic access$600(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Ljava/util/Queue;
    .locals 0

    .line 71
    iget-object p0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->cancelQueue:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic access$700(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)I
    .locals 0

    .line 71
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->unregisterHandles()I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->createdProcessor:Z

    return p0
.end method

.method static synthetic access$900(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Lorg/apache/mina/core/service/IoProcessor;
    .locals 0

    .line 71
    iget-object p0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->processor:Lorg/apache/mina/core/service/IoProcessor;

    return-object p0
.end method

.method private registerHandles()I
    .locals 5

    .line 571
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->registerQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 580
    :cond_1
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 581
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getLocalAddresses()Ljava/util/List;

    move-result-object v2

    .line 585
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

    .line 586
    invoke-virtual {p0, v3}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->open(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v3

    .line 587
    invoke-virtual {p0, v3}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->localAddress(Ljava/lang/Object;)Ljava/net/SocketAddress;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 592
    :cond_2
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->boundHandles:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 595
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->setDone()V

    .line 597
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 603
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 604
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

    .line 606
    :try_start_1
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->close(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 608
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 614
    :cond_3
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->wakeup()V

    :cond_4
    return v2

    :catchall_0
    move-exception v2

    goto :goto_4

    :catch_1
    move-exception v2

    .line 600
    :try_start_2
    invoke-virtual {v0, v2}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->setException(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 603
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 604
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

    .line 606
    :try_start_3
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->close(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v1

    .line 608
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 614
    :cond_5
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->wakeup()V

    goto/16 :goto_0

    .line 603
    :goto_4
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 604
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

    .line 606
    :try_start_4
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->close(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :catch_3
    move-exception v1

    .line 608
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 614
    :cond_6
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->wakeup()V

    :cond_7
    throw v2
.end method

.method private startupAcceptor()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 394
    iget-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->selectable:Z

    if-nez v0, :cond_0

    .line 395
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->registerQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 396
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->cancelQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 400
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->acceptorRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;

    if-nez v0, :cond_2

    .line 403
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 404
    new-instance v0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;-><init>(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$1;)V

    .line 406
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->acceptorRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 407
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->executeWorker(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 409
    :cond_1
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_2
    :goto_0
    return-void
.end method

.method private unregisterHandles()I
    .locals 5

    const/4 v0, 0x0

    .line 629
    :goto_0
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->cancelQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;

    if-nez v1, :cond_0

    return v0

    .line 635
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

    .line 636
    iget-object v4, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->boundHandles:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 643
    :cond_1
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->close(Ljava/lang/Object;)V

    .line 644
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->wakeup()V
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

    .line 646
    :try_start_1
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 648
    :goto_3
    throw v0

    .line 652
    :cond_2
    invoke-virtual {v1}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->setDone()V

    goto :goto_0
.end method


# virtual methods
.method protected abstract accept(Lorg/apache/mina/core/service/IoProcessor;Ljava/lang/Object;)Lorg/apache/mina/core/session/AbstractIoSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "TS;>;TH;)TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected final bindInternal(Ljava/util/List;)Ljava/util/Set;
    .locals 2
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

    .line 343
    new-instance v0, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;

    invoke-direct {v0, p1}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;-><init>(Ljava/util/List;)V

    .line 347
    iget-object p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->registerQueue:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 351
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->startupAcceptor()V

    .line 357
    :try_start_0
    iget-object p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 359
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->wakeup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    iget-object p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 365
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/IoFuture;

    .line 367
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object p1

    if-nez p1, :cond_1

    .line 374
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 376
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->boundHandles:Ljava/util/Map;

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

    .line 377
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->localAddress(Ljava/lang/Object;)Ljava/net/SocketAddress;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1

    .line 368
    :cond_1
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    .line 361
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    throw p1
.end method

.method protected abstract close(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract destroy()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected dispose0()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 330
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->unbind()V

    .line 332
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->startupAcceptor()V

    .line 333
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->wakeup()V

    return-void
.end method

.method public getBacklog()I
    .locals 1

    .line 670
    iget v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->backlog:I

    return v0
.end method

.method public bridge synthetic getSessionConfig()Lorg/apache/mina/core/session/IoSessionConfig;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->getSessionConfig()Lorg/apache/mina/transport/socket/SocketSessionConfig;

    move-result-object v0

    return-object v0
.end method

.method public getSessionConfig()Lorg/apache/mina/transport/socket/SocketSessionConfig;
    .locals 1

    .line 717
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->sessionConfig:Lorg/apache/mina/core/session/IoSessionConfig;

    check-cast v0, Lorg/apache/mina/transport/socket/SocketSessionConfig;

    return-object v0
.end method

.method protected abstract init()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract init(Ljava/nio/channels/spi/SelectorProvider;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public isReuseAddress()Z
    .locals 1

    .line 693
    iget-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->reuseAddress:Z

    return v0
.end method

.method protected abstract localAddress(Ljava/lang/Object;)Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;)",
            "Ljava/net/SocketAddress;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final newSession(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lorg/apache/mina/core/session/IoSession;
    .locals 0

    .line 663
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method protected abstract open(Ljava/net/SocketAddress;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
            ")TH;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract select()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract selectedHandles()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TH;>;"
        }
    .end annotation
.end method

.method public setBacklog(I)V
    .locals 2

    .line 680
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->bindLock:Ljava/lang/Object;

    monitor-enter v0

    .line 681
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->isActive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 685
    iput p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->backlog:I

    .line 686
    monitor-exit v0

    return-void

    .line 682
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "backlog can\'t be set while the acceptor is bound."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 686
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setReuseAddress(Z)V
    .locals 2

    .line 703
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->bindLock:Ljava/lang/Object;

    monitor-enter v0

    .line 704
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->isActive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 708
    iput-boolean p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->reuseAddress:Z

    .line 709
    monitor-exit v0

    return-void

    .line 705
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "backlog can\'t be set while the acceptor is bound."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 709
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

    .line 419
    new-instance v0, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;

    invoke-direct {v0, p1}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;-><init>(Ljava/util/List;)V

    .line 421
    iget-object p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->cancelQueue:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 422
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->startupAcceptor()V

    .line 423
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->wakeup()V

    .line 425
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/IoFuture;

    .line 426
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 427
    :cond_0
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object p1

    throw p1
.end method

.method protected abstract wakeup()V
.end method
