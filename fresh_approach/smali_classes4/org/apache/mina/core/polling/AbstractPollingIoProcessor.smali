.class public abstract Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;
.super Ljava/lang/Object;
.source "AbstractPollingIoProcessor.java"

# interfaces
.implements Lorg/apache/mina/core/service/IoProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lorg/apache/mina/core/session/AbstractIoSession;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/mina/core/service/IoProcessor<",
        "TS;>;"
    }
.end annotation


# static fields
.field private static final LOG:Lorg/slf4j/Logger;

.field private static final SELECT_TIMEOUT:J = 0x3e8L

.field private static final threadIds:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final disposalFuture:Lorg/apache/mina/core/future/DefaultIoFuture;

.field private final disposalLock:Ljava/lang/Object;

.field private volatile disposed:Z

.field private volatile disposing:Z

.field private final executor:Ljava/util/concurrent/Executor;

.field private final flushingSessions:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TS;>;"
        }
    .end annotation
.end field

.field private lastIdleCheckTime:J

.field private final newSessions:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final processorRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<",
            "TS;>.Processor;>;"
        }
    .end annotation
.end field

.field private final removingSessions:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final threadName:Ljava/lang/String;

.field private final trafficControllingSessions:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TS;>;"
        }
    .end annotation
.end field

.field protected wakeupCalled:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    const-class v0, Lorg/apache/mina/core/service/IoProcessor;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->LOG:Lorg/slf4j/Logger;

    .line 79
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->threadIds:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method protected constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->newSessions:Ljava/util/Queue;

    .line 91
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->removingSessions:Ljava/util/Queue;

    .line 94
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->flushingSessions:Ljava/util/Queue;

    .line 100
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->trafficControllingSessions:Ljava/util/Queue;

    .line 103
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->processorRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 107
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposalLock:Ljava/lang/Object;

    .line 113
    new-instance v0, Lorg/apache/mina/core/future/DefaultIoFuture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/mina/core/future/DefaultIoFuture;-><init>(Lorg/apache/mina/core/session/IoSession;)V

    iput-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposalFuture:Lorg/apache/mina/core/future/DefaultIoFuture;

    .line 115
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->wakeupCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p1, :cond_0

    .line 129
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->nextThreadName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->threadName:Ljava/lang/String;

    .line 130
    iput-object p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->executor:Ljava/util/concurrent/Executor;

    return-void

    .line 126
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "executor"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$100(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->processorRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/util/Queue;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->newSessions:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->scheduleRemove(Lorg/apache/mina/core/session/AbstractIoSession;)V

    return-void
.end method

.method static synthetic access$1200(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/lang/Object;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposalLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposing:Z

    return p0
.end method

.method static synthetic access$1400(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Lorg/apache/mina/core/future/DefaultIoFuture;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposalFuture:Lorg/apache/mina/core/future/DefaultIoFuture;

    return-object p0
.end method

.method static synthetic access$202(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;J)J
    .locals 0

    .line 68
    iput-wide p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->lastIdleCheckTime:J

    return-wide p1
.end method

.method static synthetic access$300()Lorg/slf4j/Logger;
    .locals 1

    .line 68
    sget-object v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->LOG:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)I
    .locals 0

    .line 68
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->handleNewSessions()I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->updateTrafficMask()V

    return-void
.end method

.method static synthetic access$600(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->process()V

    return-void
.end method

.method static synthetic access$700(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;J)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->flush(J)V

    return-void
.end method

.method static synthetic access$800(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)I
    .locals 0

    .line 68
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->removeSessions()I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->notifyIdleSessions(J)V

    return-void
.end method

.method private addNow(Lorg/apache/mina/core/session/AbstractIoSession;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 507
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->init(Lorg/apache/mina/core/session/AbstractIoSession;)V

    const/4 v1, 0x1

    .line 511
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/core/service/IoService;->getFilterChainBuilder()Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;

    move-result-object v2

    .line 512
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;->buildFilterChain(Lorg/apache/mina/core/filterchain/IoFilterChain;)V

    .line 517
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v2

    check-cast v2, Lorg/apache/mina/core/service/AbstractIoService;

    invoke-virtual {v2}, Lorg/apache/mina/core/service/AbstractIoService;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v2

    .line 518
    invoke-virtual {v2, p1}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->fireSessionCreated(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 520
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 523
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->destroy(Lorg/apache/mina/core/session/AbstractIoSession;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 525
    :try_start_2
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    return v0

    .line 527
    :goto_1
    throw p1
.end method

.method private clearWriteRequestQueue(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 601
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v0

    .line 604
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 606
    invoke-interface {v0, p1}, Lorg/apache/mina/core/write/WriteRequestQueue;->poll(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 607
    invoke-interface {v2}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v3

    .line 609
    instance-of v4, v3, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v4, :cond_1

    .line 610
    check-cast v3, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 614
    invoke-virtual {v3}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 615
    invoke-virtual {v3}, Lorg/apache/mina/core/buffer/IoBuffer;->reset()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 616
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 618
    :cond_0
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v3

    .line 619
    invoke-interface {v3, v2}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireMessageSent(Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0

    .line 622
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    :goto_0
    invoke-interface {v0, p1}, Lorg/apache/mina/core/write/WriteRequestQueue;->poll(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 627
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 632
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 633
    new-instance v0, Lorg/apache/mina/core/write/WriteToClosedSessionException;

    invoke-direct {v0, v1}, Lorg/apache/mina/core/write/WriteToClosedSessionException;-><init>(Ljava/util/Collection;)V

    .line 635
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/mina/core/write/WriteRequest;

    .line 636
    invoke-virtual {p1, v2}, Lorg/apache/mina/core/session/AbstractIoSession;->decreaseScheduledBytesAndMessages(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 637
    invoke-interface {v2}, Lorg/apache/mina/core/write/WriteRequest;->getFuture()Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/apache/mina/core/future/WriteFuture;->setException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 640
    :cond_3
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object p1

    .line 641
    invoke-interface {p1, v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method private fireMessageSent(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 982
    invoke-virtual {p1, v0}, Lorg/apache/mina/core/session/AbstractIoSession;->setCurrentWriteRequest(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 983
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object p1

    .line 984
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireMessageSent(Lorg/apache/mina/core/write/WriteRequest;)V

    return-void
.end method

.method private flush(J)V
    .locals 4

    .line 745
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->flushingSessions:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 750
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->flushingSessions:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/session/AbstractIoSession;

    if-nez v0, :cond_1

    goto :goto_1

    .line 760
    :cond_1
    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->unscheduledForFlush()V

    .line 762
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->getState(Lorg/apache/mina/core/session/AbstractIoSession;)Lorg/apache/mina/core/session/SessionState;

    move-result-object v1

    .line 764
    sget-object v2, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$1;->$SwitchMap$org$apache$mina$core$session$SessionState:[I

    invoke-virtual {v1}, Lorg/apache/mina/core/session/SessionState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/4 p1, 0x3

    if-ne v2, p1, :cond_2

    .line 790
    invoke-direct {p0, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->scheduleFlush(Lorg/apache/mina/core/session/AbstractIoSession;)V

    return-void

    .line 794
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 767
    :cond_3
    :try_start_0
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->flushNow(Lorg/apache/mina/core/session/AbstractIoSession;J)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 769
    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/mina/core/write/WriteRequestQueue;->isEmpty(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 770
    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->isScheduledForFlush()Z

    move-result v1

    if-nez v1, :cond_4

    .line 771
    invoke-direct {p0, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->scheduleFlush(Lorg/apache/mina/core/session/AbstractIoSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 774
    invoke-direct {p0, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->scheduleRemove(Lorg/apache/mina/core/session/AbstractIoSession;)V

    .line 775
    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->closeNow()Lorg/apache/mina/core/future/CloseFuture;

    .line 776
    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v0

    .line 777
    invoke-interface {v0, v1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    .line 797
    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->flushingSessions:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    return-void
.end method

.method private flushNow(Lorg/apache/mina/core/session/AbstractIoSession;J)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;J)Z"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 801
    invoke-virtual/range {p1 .. p1}, Lorg/apache/mina/core/session/AbstractIoSession;->isConnected()Z

    move-result v0

    const/4 v10, 0x0

    if-nez v0, :cond_0

    .line 802
    invoke-direct/range {p0 .. p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->scheduleRemove(Lorg/apache/mina/core/session/AbstractIoSession;)V

    return v10

    .line 806
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/service/TransportMetadata;->hasFragmentation()Z

    move-result v0

    .line 808
    invoke-virtual/range {p1 .. p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v11

    .line 813
    invoke-virtual/range {p1 .. p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/mina/core/session/IoSessionConfig;->getMaxReadBufferSize()I

    move-result v1

    .line 814
    invoke-virtual/range {p1 .. p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/core/session/IoSessionConfig;->getMaxReadBufferSize()I

    move-result v2

    const/4 v12, 0x1

    ushr-int/2addr v2, v12

    add-int v13, v1, v2

    const/4 v1, 0x0

    .line 820
    :try_start_0
    invoke-virtual {v8, v9, v10}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->setInterestedInWrite(Lorg/apache/mina/core/session/AbstractIoSession;Z)V

    const/4 v14, 0x0

    .line 824
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getCurrentWriteRequest()Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v1

    if-nez v1, :cond_2

    .line 827
    invoke-interface {v11, v9}, Lorg/apache/mina/core/write/WriteRequestQueue;->poll(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    .line 833
    :cond_1
    invoke-virtual {v9, v1}, Lorg/apache/mina/core/session/AbstractIoSession;->setCurrentWriteRequest(Lorg/apache/mina/core/write/WriteRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    move-object v15, v1

    .line 837
    :try_start_1
    invoke-interface {v15}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v6

    .line 839
    instance-of v1, v6, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v1, :cond_3

    sub-int v5, v13, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v15

    move v4, v0

    move-object v10, v6

    move-wide/from16 v6, p2

    .line 840
    invoke-direct/range {v1 .. v7}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->writeBuffer(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/write/WriteRequest;ZIJ)I

    move-result v1

    if-lez v1, :cond_4

    .line 843
    move-object v6, v10

    check-cast v6, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v6}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 846
    invoke-virtual {v8, v9, v12}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->setInterestedInWrite(Lorg/apache/mina/core/session/AbstractIoSession;Z)V

    const/4 v1, 0x0

    return v1

    :cond_3
    move-object v10, v6

    .line 849
    instance-of v1, v10, Lorg/apache/mina/core/file/FileRegion;

    if-eqz v1, :cond_9

    sub-int v5, v13, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v15

    move v4, v0

    move-wide/from16 v6, p2

    .line 850
    invoke-direct/range {v1 .. v7}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->writeFile(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/write/WriteRequest;ZIJ)I

    move-result v1

    if-lez v1, :cond_4

    .line 858
    move-object v6, v10

    check-cast v6, Lorg/apache/mina/core/file/FileRegion;

    invoke-interface {v6}, Lorg/apache/mina/core/file/FileRegion;->getRemainingBytes()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_4

    .line 860
    invoke-virtual {v8, v9, v12}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->setInterestedInWrite(Lorg/apache/mina/core/session/AbstractIoSession;Z)V

    const/4 v1, 0x0

    return v1

    :cond_4
    if-nez v1, :cond_5

    .line 871
    sget-object v1, Lorg/apache/mina/core/session/AbstractIoSession;->MESSAGE_SENT_REQUEST:Lorg/apache/mina/core/write/WriteRequest;

    invoke-virtual {v15, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 872
    invoke-virtual {v8, v9, v12}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->setInterestedInWrite(Lorg/apache/mina/core/session/AbstractIoSession;Z)V

    const/4 v1, 0x0

    return v1

    :cond_5
    add-int/2addr v14, v1

    if-lt v14, v13, :cond_6

    .line 880
    invoke-direct/range {p0 .. p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->scheduleFlush(Lorg/apache/mina/core/session/AbstractIoSession;)V

    const/4 v1, 0x0

    return v1

    .line 885
    :cond_6
    instance-of v1, v10, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v1, :cond_7

    .line 886
    move-object v6, v10

    check-cast v6, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v6}, Lorg/apache/mina/core/buffer/IoBuffer;->free()V

    :cond_7
    if-lt v14, v13, :cond_8

    :goto_1
    return v12

    :cond_8
    move-object v1, v15

    const/4 v10, 0x0

    goto/16 :goto_0

    .line 864
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Don\'t know how to handle message of type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'.  Are you missing a protocol encoder?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    move-object v1, v15

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_2
    if-eqz v1, :cond_a

    .line 891
    invoke-interface {v1}, Lorg/apache/mina/core/write/WriteRequest;->getFuture()Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/mina/core/future/WriteFuture;->setException(Ljava/lang/Throwable;)V

    .line 894
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v1

    .line 895
    invoke-interface {v1, v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    return v1
.end method

.method private handleNewSessions()I
    .locals 2

    .line 486
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->newSessions:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/session/AbstractIoSession;

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 487
    invoke-direct {p0, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->addNow(Lorg/apache/mina/core/session/AbstractIoSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 486
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->newSessions:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/session/AbstractIoSession;

    goto :goto_0

    :cond_1
    return v1
.end method

.method private nextThreadName()Ljava/lang/String;
    .locals 4

    .line 142
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 145
    sget-object v1, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->threadIds:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v1, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    .line 155
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private notifyIdleSessions(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 735
    iget-wide v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->lastIdleCheckTime:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 736
    iput-wide p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->lastIdleCheckTime:J

    .line 737
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->allSessions()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/apache/mina/core/session/AbstractIoSession;->notifyIdleness(Ljava/util/Iterator;J)V

    :cond_0
    return-void
.end method

.method private process()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 646
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->selectedSessions()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 647
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/session/AbstractIoSession;

    .line 648
    invoke-direct {p0, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->process(Lorg/apache/mina/core/session/AbstractIoSession;)V

    .line 649
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private process(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 658
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->isReadable(Lorg/apache/mina/core/session/AbstractIoSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->isReadSuspended()Z

    move-result v0

    if-nez v0, :cond_0

    .line 659
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->read(Lorg/apache/mina/core/session/AbstractIoSession;)V

    .line 663
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->isWritable(Lorg/apache/mina/core/session/AbstractIoSession;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->isWriteSuspended()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/apache/mina/core/session/AbstractIoSession;->setScheduledForFlush(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 665
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->flushingSessions:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private read(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 670
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    .line 671
    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSessionConfig;->getReadBufferSize()I

    move-result v1

    .line 672
    invoke-static {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    .line 674
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/core/service/TransportMetadata;->hasFragmentation()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 683
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->read(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/buffer/IoBuffer;)I

    move-result v4

    if-lez v4, :cond_2

    add-int/2addr v3, v4

    .line 686
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_2

    .line 691
    :cond_1
    invoke-virtual {p0, p1, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->read(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/buffer/IoBuffer;)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v4, :cond_2

    move v3, v4

    .line 698
    :cond_2
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    if-lez v3, :cond_4

    .line 702
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v5

    .line 703
    invoke-interface {v5, v1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireMessageReceived(Ljava/lang/Object;)V

    if-eqz v2, :cond_4

    shl-int/lit8 v1, v3, 0x1

    .line 707
    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSessionConfig;->getReadBufferSize()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 708
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->decreaseReadBufferSize()V

    goto :goto_1

    .line 709
    :cond_3
    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSessionConfig;->getReadBufferSize()I

    move-result v1

    if-ne v3, v1, :cond_4

    .line 710
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->increaseReadBufferSize()V

    :cond_4
    :goto_1
    if-gez v4, :cond_7

    .line 716
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v1

    .line 717
    invoke-interface {v1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireInputClosed()V

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_3

    .line 698
    :goto_2
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 720
    :goto_3
    instance-of v2, v1, Ljava/io/IOException;

    if-eqz v2, :cond_6

    .line 721
    instance-of v2, v1, Ljava/net/PortUnreachableException;

    if-eqz v2, :cond_5

    const-class v2, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;

    .line 722
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_5

    check-cast v0, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;

    .line 723
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->isCloseOnPortUnreachable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 724
    :cond_5
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->scheduleRemove(Lorg/apache/mina/core/session/AbstractIoSession;)V

    .line 728
    :cond_6
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object p1

    .line 729
    invoke-interface {p1, v1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    :cond_7
    :goto_4
    return-void
.end method

.method private removeNow(Lorg/apache/mina/core/session/AbstractIoSession;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation

    .line 576
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->clearWriteRequestQueue(Lorg/apache/mina/core/session/AbstractIoSession;)V

    .line 579
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->destroy(Lorg/apache/mina/core/session/AbstractIoSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 586
    :try_start_1
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->clearWriteRequestQueue(Lorg/apache/mina/core/session/AbstractIoSession;)V

    .line 587
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/service/AbstractIoService;

    invoke-virtual {v1}, Lorg/apache/mina/core/service/AbstractIoService;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->fireSessionDestroyed(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 592
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object p1

    .line 593
    invoke-interface {p1, v1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 582
    :try_start_2
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v1

    .line 583
    invoke-interface {v1, v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 586
    :try_start_3
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->clearWriteRequestQueue(Lorg/apache/mina/core/session/AbstractIoSession;)V

    .line 587
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/service/AbstractIoService;

    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoService;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->fireSessionDestroyed(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 592
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object p1

    .line 593
    invoke-interface {p1, v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    :goto_1
    const/4 p1, 0x0

    return p1

    .line 586
    :goto_2
    :try_start_4
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->clearWriteRequestQueue(Lorg/apache/mina/core/session/AbstractIoSession;)V

    .line 587
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/service/AbstractIoService;

    invoke-virtual {v1}, Lorg/apache/mina/core/service/AbstractIoService;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->fireSessionDestroyed(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    .line 592
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object p1

    .line 593
    invoke-interface {p1, v1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    .line 594
    :goto_3
    throw v0
.end method

.method private removeSessions()I
    .locals 5

    .line 537
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->removingSessions:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/session/AbstractIoSession;

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 538
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->getState(Lorg/apache/mina/core/session/AbstractIoSession;)Lorg/apache/mina/core/session/SessionState;

    move-result-object v2

    .line 541
    sget-object v3, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$1;->$SwitchMap$org$apache$mina$core$session$SessionState:[I

    invoke-virtual {v2}, Lorg/apache/mina/core/session/SessionState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 559
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->newSessions:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 561
    invoke-direct {p0, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->removeNow(Lorg/apache/mina/core/session/AbstractIoSession;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 568
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 544
    :cond_2
    invoke-direct {p0, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->removeNow(Lorg/apache/mina/core/session/AbstractIoSession;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 537
    :cond_3
    :goto_2
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->removingSessions:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/session/AbstractIoSession;

    goto :goto_0

    :cond_4
    return v1
.end method

.method private scheduleFlush(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 423
    invoke-virtual {p1, v0}, Lorg/apache/mina/core/session/AbstractIoSession;->setScheduledForFlush(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->flushingSessions:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private scheduleRemove(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 388
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->removingSessions:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 389
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->removingSessions:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private startupProcessor()V
    .locals 4

    .line 443
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->processorRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;

    if-nez v0, :cond_0

    .line 446
    new-instance v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;-><init>(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$1;)V

    .line 448
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->processorRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 449
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->executor:Ljava/util/concurrent/Executor;

    new-instance v2, Lorg/apache/mina/util/NamePreservingRunnable;

    iget-object v3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->threadName:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lorg/apache/mina/util/NamePreservingRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 455
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->wakeup()V

    return-void
.end method

.method private updateTrafficMask()V
    .locals 5

    .line 991
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->trafficControllingSessions:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    :goto_0
    if-lez v0, :cond_4

    .line 994
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->trafficControllingSessions:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/session/AbstractIoSession;

    if-nez v1, :cond_0

    return-void

    .line 1001
    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->getState(Lorg/apache/mina/core/session/AbstractIoSession;)Lorg/apache/mina/core/session/SessionState;

    move-result-object v2

    .line 1003
    sget-object v3, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$1;->$SwitchMap$org$apache$mina$core$session$SessionState:[I

    invoke-virtual {v2}, Lorg/apache/mina/core/session/SessionState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 1017
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->trafficControllingSessions:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1021
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1005
    :cond_2
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->updateTrafficControl(Lorg/apache/mina/core/session/AbstractIoSession;)V

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private writeBuffer(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/write/WriteRequest;ZIJ)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lorg/apache/mina/core/write/WriteRequest;",
            "ZIJ)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 904
    invoke-interface {p2}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 907
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz p3, :cond_0

    .line 911
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v1

    invoke-static {v1, p4}, Ljava/lang/Math;->min(II)I

    move-result p4

    goto :goto_0

    .line 913
    :cond_0
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result p4

    .line 917
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1, v0, p4}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->write(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/buffer/IoBuffer;I)I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 921
    :catch_0
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->free()V

    .line 922
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->closeNow()Lorg/apache/mina/core/future/CloseFuture;

    .line 923
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->removeNow(Lorg/apache/mina/core/session/AbstractIoSession;)Z

    return v2

    .line 929
    :cond_1
    :goto_1
    invoke-virtual {p1, v2, p5, p6}, Lorg/apache/mina/core/session/AbstractIoSession;->increaseWrittenBytes(IJ)V

    .line 932
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result p4

    if-eqz p4, :cond_2

    if-nez p3, :cond_4

    if-eqz v2, :cond_4

    .line 934
    :cond_2
    invoke-interface {p2}, Lorg/apache/mina/core/write/WriteRequest;->getOriginalRequest()Lorg/apache/mina/core/write/WriteRequest;

    move-result-object p3

    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object p3

    .line 936
    instance-of p3, p3, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz p3, :cond_3

    .line 937
    invoke-interface {p2}, Lorg/apache/mina/core/write/WriteRequest;->getOriginalRequest()Lorg/apache/mina/core/write/WriteRequest;

    move-result-object p3

    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 939
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result p4

    .line 940
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->reset()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 941
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->fireMessageSent(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 943
    invoke-virtual {p3, p4}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_2

    .line 945
    :cond_3
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->fireMessageSent(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    :cond_4
    :goto_2
    return v2
.end method

.method private writeFile(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/write/WriteRequest;ZIJ)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lorg/apache/mina/core/write/WriteRequest;",
            "ZIJ)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 955
    invoke-interface {p2}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/file/FileRegion;

    .line 957
    invoke-interface {v0}, Lorg/apache/mina/core/file/FileRegion;->getRemainingBytes()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    if-eqz p3, :cond_0

    .line 961
    invoke-interface {v0}, Lorg/apache/mina/core/file/FileRegion;->getRemainingBytes()J

    move-result-wide v1

    int-to-long v5, p4

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/32 v1, 0x7fffffff

    .line 963
    invoke-interface {v0}, Lorg/apache/mina/core/file/FileRegion;->getRemainingBytes()J

    move-result-wide v5

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    :goto_0
    long-to-int p4, v1

    .line 966
    invoke-virtual {p0, p1, v0, p4}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->transferFile(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/file/FileRegion;I)I

    move-result p4

    int-to-long v1, p4

    .line 967
    invoke-interface {v0, v1, v2}, Lorg/apache/mina/core/file/FileRegion;->update(J)V

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    .line 972
    :goto_1
    invoke-virtual {p1, p4, p5, p6}, Lorg/apache/mina/core/session/AbstractIoSession;->increaseWrittenBytes(IJ)V

    .line 974
    invoke-interface {v0}, Lorg/apache/mina/core/file/FileRegion;->getRemainingBytes()J

    move-result-wide p5

    cmp-long v0, p5, v3

    if-lez v0, :cond_2

    if-nez p3, :cond_3

    if-eqz p4, :cond_3

    .line 975
    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->fireMessageSent(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    :cond_3
    return p4
.end method


# virtual methods
.method public final add(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 369
    iget-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposing:Z

    if-nez v0, :cond_0

    .line 374
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->newSessions:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 375
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->startupProcessor()V

    return-void

    .line 370
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already disposed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic add(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .line 68
    check-cast p1, Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->add(Lorg/apache/mina/core/session/AbstractIoSession;)V

    return-void
.end method

.method protected abstract allSessions()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TS;>;"
        }
    .end annotation
.end method

.method protected abstract destroy(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final dispose()V
    .locals 2

    .line 179
    iget-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposing:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposalLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 184
    :try_start_0
    iput-boolean v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposing:Z

    .line 185
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->startupProcessor()V

    .line 186
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposalFuture:Lorg/apache/mina/core/future/DefaultIoFuture;

    invoke-virtual {v0}, Lorg/apache/mina/core/future/DefaultIoFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/IoFuture;

    .line 189
    iput-boolean v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposed:Z

    return-void

    :catchall_0
    move-exception v1

    .line 186
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method protected abstract doDispose()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final flush(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 414
    invoke-virtual {p1, v0}, Lorg/apache/mina/core/session/AbstractIoSession;->setScheduledForFlush(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->flushingSessions:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 416
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->wakeup()V

    :cond_0
    return-void
.end method

.method public bridge synthetic flush(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .line 68
    check-cast p1, Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->flush(Lorg/apache/mina/core/session/AbstractIoSession;)V

    return-void
.end method

.method protected abstract getState(Lorg/apache/mina/core/session/AbstractIoSession;)Lorg/apache/mina/core/session/SessionState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Lorg/apache/mina/core/session/SessionState;"
        }
    .end annotation
.end method

.method protected abstract init(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract isBrokenConnection()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final isDisposed()Z
    .locals 1

    .line 171
    iget-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposed:Z

    return v0
.end method

.method public final isDisposing()Z
    .locals 1

    .line 163
    iget-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposing:Z

    return v0
.end method

.method protected abstract isInterestedInRead(Lorg/apache/mina/core/session/AbstractIoSession;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation
.end method

.method protected abstract isInterestedInWrite(Lorg/apache/mina/core/session/AbstractIoSession;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation
.end method

.method protected abstract isReadable(Lorg/apache/mina/core/session/AbstractIoSession;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation
.end method

.method protected abstract isSelectorEmpty()Z
.end method

.method protected abstract isWritable(Lorg/apache/mina/core/session/AbstractIoSession;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation
.end method

.method protected abstract read(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/buffer/IoBuffer;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lorg/apache/mina/core/buffer/IoBuffer;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract registerNewSelector()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final remove(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 383
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->scheduleRemove(Lorg/apache/mina/core/session/AbstractIoSession;)V

    .line 384
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->startupProcessor()V

    return-void
.end method

.method public bridge synthetic remove(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .line 68
    check-cast p1, Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->remove(Lorg/apache/mina/core/session/AbstractIoSession;)V

    return-void
.end method

.method protected abstract select()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract select(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract selectedSessions()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TS;>;"
        }
    .end annotation
.end method

.method protected abstract setInterestedInRead(Lorg/apache/mina/core/session/AbstractIoSession;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract setInterestedInWrite(Lorg/apache/mina/core/session/AbstractIoSession;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract transferFile(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/file/FileRegion;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lorg/apache/mina/core/file/FileRegion;",
            "I)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public updateTrafficControl(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1040
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->isReadSuspended()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, p1, v2}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->setInterestedInRead(Lorg/apache/mina/core/session/AbstractIoSession;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 1042
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v3

    .line 1043
    invoke-interface {v3, v2}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    .line 1048
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v2

    invoke-interface {v2, p1}, Lorg/apache/mina/core/write/WriteRequestQueue;->isEmpty(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->isWriteSuspended()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    .line 1047
    :goto_2
    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->setInterestedInWrite(Lorg/apache/mina/core/session/AbstractIoSession;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 1050
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object p1

    .line 1051
    invoke-interface {p1, v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method public bridge synthetic updateTrafficControl(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .line 68
    check-cast p1, Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->updateTrafficControl(Lorg/apache/mina/core/session/AbstractIoSession;)V

    return-void
.end method

.method public final updateTrafficMask(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 434
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->trafficControllingSessions:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 435
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->wakeup()V

    return-void
.end method

.method protected abstract wakeup()V
.end method

.method protected abstract write(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/buffer/IoBuffer;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lorg/apache/mina/core/buffer/IoBuffer;",
            "I)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public write(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ")V"
        }
    .end annotation

    .line 398
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v0

    .line 400
    invoke-interface {v0, p1, p2}, Lorg/apache/mina/core/write/WriteRequestQueue;->offer(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 402
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->isWriteSuspended()Z

    move-result p2

    if-nez p2, :cond_0

    .line 403
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->flush(Lorg/apache/mina/core/session/AbstractIoSession;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic write(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 0

    .line 68
    check-cast p1, Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->write(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    return-void
.end method
