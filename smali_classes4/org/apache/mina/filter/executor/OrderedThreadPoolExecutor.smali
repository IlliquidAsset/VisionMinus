.class public Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "OrderedThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;,
        Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;
    }
.end annotation


# static fields
.field private static final DEFAULT_INITIAL_THREAD_POOL_SIZE:I = 0x0

.field private static final DEFAULT_KEEP_ALIVE:I = 0x1e

.field private static final DEFAULT_MAX_THREAD_POOL:I = 0x10

.field private static final EXIT_SIGNAL:Lorg/apache/mina/core/session/IoSession;

.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private final TASKS_QUEUE:Lorg/apache/mina/core/session/AttributeKey;

.field private completedTaskCount:J

.field private final eventQueueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

.field private final idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile largestPoolSize:I

.field private volatile shutdown:Z

.field private final waitingSessions:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lorg/apache/mina/core/session/IoSession;",
            ">;"
        }
    .end annotation
.end field

.field private final workers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-class v0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->LOGGER:Lorg/slf4j/Logger;

    .line 68
    new-instance v0, Lorg/apache/mina/core/session/DummySession;

    invoke-direct {v0}, Lorg/apache/mina/core/session/DummySession;-><init>()V

    sput-object v0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->EXIT_SIGNAL:Lorg/apache/mina/core/session/IoSession;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 97
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 98
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    const/4 v1, 0x0

    const/16 v2, 0x10

    const-wide/16 v3, 0x1e

    const/4 v7, 0x0

    move-object v0, p0

    .line 97
    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 8

    .line 111
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 112
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    const/4 v1, 0x0

    const-wide/16 v3, 0x1e

    const/4 v7, 0x0

    move-object v0, p0

    move v2, p1

    .line 111
    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 8

    .line 125
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    const-wide/16 v3, 0x1e

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V

    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;)V
    .locals 8

    .line 140
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V

    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    .line 170
    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V

    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V
    .locals 13

    move-object v9, p0

    move v10, p1

    move v11, p2

    move-object/from16 v12, p7

    .line 188
    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object v0, p0

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 71
    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "tasksQueue"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, v9, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->TASKS_QUEUE:Lorg/apache/mina/core/session/AttributeKey;

    .line 74
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, v9, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->waitingSessions:Ljava/util/concurrent/BlockingQueue;

    .line 76
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v9, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    .line 80
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, v9, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    if-ltz v10, :cond_2

    if-eqz v11, :cond_1

    if-lt v11, v10, :cond_1

    .line 200
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 201
    invoke-super {p0, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    if-nez v12, :cond_0

    .line 205
    sget-object v0, Lorg/apache/mina/filter/executor/IoEventQueueHandler;->NOOP:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    iput-object v0, v9, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->eventQueueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    goto :goto_0

    .line 207
    :cond_0
    iput-object v12, v9, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->eventQueueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    :goto_0
    return-void

    .line 196
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maximumPoolSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "corePoolSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V
    .locals 8

    .line 155
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V

    return-void
.end method

.method static synthetic access$1000(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 55
    iget-object p0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->waitingSessions:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;)Lorg/apache/mina/filter/executor/IoEventQueueHandler;
    .locals 0

    .line 55
    iget-object p0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->eventQueueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 0

    .line 55
    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1300(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 0

    .line 55
    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$1400(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 0

    .line 55
    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$500(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 55
    iget-object p0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$600(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;)Ljava/util/Set;
    .locals 0

    .line 55
    iget-object p0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$700()Lorg/apache/mina/core/session/IoSession;
    .locals 1

    .line 55
    sget-object v0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->EXIT_SIGNAL:Lorg/apache/mina/core/session/IoSession;

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->getSessionTasksQueue(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;)J
    .locals 2

    .line 55
    iget-wide v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->completedTaskCount:J

    return-wide v0
.end method

.method static synthetic access$902(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;J)J
    .locals 0

    .line 55
    iput-wide p1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->completedTaskCount:J

    return-wide p1
.end method

.method private addWorker()V
    .locals 4

    .line 249
    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    .line 250
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getMaximumPoolSize()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 251
    monitor-exit v0

    return-void

    .line 255
    :cond_0
    new-instance v1, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;-><init>(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$1;)V

    .line 256
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v2

    .line 259
    iget-object v3, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 262
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 263
    iget-object v2, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 265
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget v2, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->largestPoolSize:I

    if-le v1, v2, :cond_1

    .line 266
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iput v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->largestPoolSize:I

    .line 268
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private addWorkerIfNecessary()V
    .locals 2

    .line 275
    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_2

    .line 276
    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    .line 277
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_1

    .line 278
    :cond_0
    invoke-direct {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->addWorker()V

    .line 280
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_0
    return-void
.end method

.method private checkTaskType(Ljava/lang/Runnable;)V
    .locals 1

    .line 503
    instance-of p1, p1, Lorg/apache/mina/core/session/IoEvent;

    if-eqz p1, :cond_0

    return-void

    .line 504
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "task must be an IoEvent or its subclass."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getSessionTasksQueue(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;
    .locals 2

    .line 215
    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->TASKS_QUEUE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;-><init>(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$1;)V

    .line 219
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->TASKS_QUEUE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v1, v0}, Lorg/apache/mina/core/session/IoSession;->setAttributeIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;

    if-eqz p1, :cond_0

    move-object v0, p1

    :cond_0
    return-object v0
.end method

.method private print(Ljava/util/Queue;Lorg/apache/mina/core/session/IoEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Lorg/apache/mina/core/session/IoEvent;",
            ")V"
        }
    .end annotation

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding event "

    .line 419
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/apache/mina/core/session/IoEvent;->getType()Lorg/apache/mina/core/session/IoEventType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/apache/mina/core/session/IoEvent;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "\nQueue : ["

    .line 421
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-interface {p1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    const-string v2, ", "

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_1

    .line 426
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    :goto_1
    check-cast v1, Lorg/apache/mina/core/session/IoEvent;

    invoke-virtual {v1}, Lorg/apache/mina/core/session/IoEvent;->getType()Lorg/apache/mina/core/session/IoEventType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p1, "]\n"

    .line 431
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    sget-object p1, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method private rejectTask(Ljava/lang/Runnable;)V
    .locals 1

    .line 499
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->getRejectedExecutionHandler()Ljava/util/concurrent/RejectedExecutionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Ljava/util/concurrent/RejectedExecutionHandler;->rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V

    return-void
.end method

.method private removeWorker()V
    .locals 3

    .line 285
    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    .line 286
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 287
    monitor-exit v0

    return-void

    .line 289
    :cond_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->waitingSessions:Ljava/util/concurrent/BlockingQueue;

    sget-object v2, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->EXIT_SIGNAL:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 290
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 326
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    add-long/2addr v0, p1

    .line 328
    iget-object p1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter p1

    .line 329
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->isTerminated()Z

    move-result p2

    if-nez p2, :cond_1

    .line 330
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long p2, v0, p2

    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-gtz v4, :cond_0

    goto :goto_1

    .line 335
    :cond_0
    iget-object v2, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-virtual {v2, p2, p3}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    .line 337
    :cond_1
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->isTerminated()Z

    move-result p1

    return p1

    :catchall_0
    move-exception p2

    .line 337
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 6

    .line 440
    iget-boolean v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->shutdown:Z

    if-eqz v0, :cond_0

    .line 441
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->rejectTask(Ljava/lang/Runnable;)V

    .line 445
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->checkTaskType(Ljava/lang/Runnable;)V

    .line 447
    check-cast p1, Lorg/apache/mina/core/session/IoEvent;

    .line 450
    invoke-virtual {p1}, Lorg/apache/mina/core/session/IoEvent;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    .line 453
    invoke-direct {p0, v0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->getSessionTasksQueue(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;

    move-result-object v1

    .line 454
    invoke-static {v1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;->access$200(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;)Ljava/util/Queue;

    move-result-object v2

    .line 461
    iget-object v3, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->eventQueueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    invoke-interface {v3, p0, p1}, Lorg/apache/mina/filter/executor/IoEventQueueHandler;->accept(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 465
    monitor-enter v2

    .line 467
    :try_start_0
    invoke-interface {v2, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 469
    invoke-static {v1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;->access$300(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 470
    invoke-static {v1, v4}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;->access$302(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;Z)Z

    const/4 v1, 0x1

    const/4 v4, 0x1

    .line 476
    :cond_1
    sget-object v1, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 477
    invoke-direct {p0, v2, p1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->print(Ljava/util/Queue;Lorg/apache/mina/core/session/IoEvent;)V

    .line 479
    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_0
    if-eqz v4, :cond_4

    .line 488
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->waitingSessions:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 491
    :cond_4
    invoke-direct {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->addWorkerIfNecessary()V

    if-eqz v3, :cond_5

    .line 494
    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->eventQueueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    invoke-interface {v0, p0, p1}, Lorg/apache/mina/filter/executor/IoEventQueueHandler;->offered(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)V

    :cond_5
    return-void
.end method

.method public getActiveCount()I
    .locals 3

    .line 513
    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    .line 514
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget-object v2, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    sub-int/2addr v1, v2

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 515
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCompletedTaskCount()J
    .locals 6

    .line 523
    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    .line 524
    :try_start_0
    iget-wide v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->completedTaskCount:J

    .line 525
    iget-object v3, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;

    .line 526
    invoke-static {v4}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->access$400(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    add-long/2addr v1, v4

    goto :goto_0

    .line 529
    :cond_0
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 530
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCorePoolSize()I
    .locals 1

    .line 648
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v0

    return v0
.end method

.method public getLargestPoolSize()I
    .locals 1

    .line 538
    iget v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->largestPoolSize:I

    return v0
.end method

.method public getMaximumPoolSize()I
    .locals 1

    .line 298
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getMaximumPoolSize()I

    move-result v0

    return v0
.end method

.method public getPoolSize()I
    .locals 2

    .line 546
    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    .line 547
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 548
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getQueue()Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 604
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getQueueHandler()Lorg/apache/mina/filter/executor/IoEventQueueHandler;
    .locals 1

    .line 233
    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->eventQueueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    return-object v0
.end method

.method public getTaskCount()J
    .locals 2

    .line 556
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public isShutdown()Z
    .locals 1

    .line 346
    iget-boolean v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->shutdown:Z

    return v0
.end method

.method public isTerminated()Z
    .locals 2

    .line 354
    iget-boolean v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->shutdown:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 358
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    .line 359
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 360
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isTerminating()Z
    .locals 2

    .line 564
    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    .line 565
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->isTerminated()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 566
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public prestartAllCoreThreads()I
    .locals 3

    .line 575
    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    .line 576
    :try_start_0
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v1

    iget-object v2, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    :goto_0
    if-lez v1, :cond_0

    .line 577
    invoke-direct {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->addWorker()V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 580
    :cond_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public prestartCoreThread()Z
    .locals 3

    .line 589
    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    .line 590
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 591
    invoke-direct {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->addWorker()V

    const/4 v1, 0x1

    .line 592
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    .line 594
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 596
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public purge()V
    .locals 0

    return-void
.end method

.method public remove(Ljava/lang/Runnable;)Z
    .locals 3

    .line 620
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->checkTaskType(Ljava/lang/Runnable;)V

    .line 621
    move-object v0, p1

    check-cast v0, Lorg/apache/mina/core/session/IoEvent;

    .line 622
    invoke-virtual {v0}, Lorg/apache/mina/core/session/IoEvent;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v1

    .line 623
    iget-object v2, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->TASKS_QUEUE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {v1, v2}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 630
    :cond_0
    invoke-static {v1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;->access$200(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;)Ljava/util/Queue;

    move-result-object v1

    .line 632
    monitor-enter v1

    .line 633
    :try_start_0
    invoke-interface {v1, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    move-result p1

    .line 634
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 637
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->getQueueHandler()Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Lorg/apache/mina/filter/executor/IoEventQueueHandler;->polled(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)V

    :cond_1
    return p1

    :catchall_0
    move-exception p1

    .line 634
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setCorePoolSize(I)V
    .locals 3

    if-ltz p1, :cond_2

    .line 659
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getMaximumPoolSize()I

    move-result v0

    if-gt p1, v0, :cond_1

    .line 663
    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    .line 664
    :try_start_0
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 665
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v1

    sub-int/2addr v1, p1

    :goto_0
    if-lez v1, :cond_0

    .line 666
    invoke-direct {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->removeWorker()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 669
    :cond_0
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 670
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 660
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "corePoolSize exceeds maximumPoolSize"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 657
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "corePoolSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMaximumPoolSize(I)V
    .locals 3

    if-lez p1, :cond_1

    .line 306
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 310
    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    .line 311
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    .line 312
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    sub-int/2addr v1, p1

    :goto_0
    if-lez v1, :cond_0

    .line 314
    invoke-direct {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->removeWorker()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 317
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 307
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maximumPoolSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 0

    return-void
.end method

.method public shutdown()V
    .locals 4

    .line 368
    iget-boolean v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->shutdown:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 372
    iput-boolean v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->shutdown:Z

    .line 374
    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    .line 375
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    :goto_0
    if-lez v1, :cond_1

    .line 376
    iget-object v2, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->waitingSessions:Ljava/util/concurrent/BlockingQueue;

    sget-object v3, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->EXIT_SIGNAL:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v2, v3}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 378
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 386
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->shutdown()V

    .line 388
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 391
    :goto_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->waitingSessions:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/session/IoSession;

    if-eqz v1, :cond_2

    .line 392
    sget-object v2, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->EXIT_SIGNAL:Lorg/apache/mina/core/session/IoSession;

    if-ne v1, v2, :cond_0

    .line 393
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->waitingSessions:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 394
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    .line 398
    :cond_0
    iget-object v2, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->TASKS_QUEUE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {v1, v2}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;

    .line 400
    invoke-static {v1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;->access$200(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;)Ljava/util/Queue;

    move-result-object v2

    monitor-enter v2

    .line 402
    :try_start_0
    invoke-static {v1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;->access$200(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;)Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    .line 403
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->getQueueHandler()Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    move-result-object v5

    move-object v6, v4

    check-cast v6, Lorg/apache/mina/core/session/IoEvent;

    invoke-interface {v5, p0, v6}, Lorg/apache/mina/filter/executor/IoEventQueueHandler;->polled(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)V

    .line 404
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 407
    :cond_1
    invoke-static {v1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;->access$200(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 408
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    return-object v0
.end method
