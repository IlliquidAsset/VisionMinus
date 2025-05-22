.class public Lorg/apache/mina/filter/executor/ExecutorFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "ExecutorFilter.java"


# static fields
.field private static final BASE_THREAD_NUMBER:I = 0x0

.field private static final DEFAULT_EVENT_SET:[Lorg/apache/mina/core/session/IoEventType;

.field private static final DEFAULT_KEEPALIVE_TIME:J = 0x1eL

.field private static final DEFAULT_MAX_POOL_SIZE:I = 0x10

.field private static final MANAGEABLE_EXECUTOR:Z = true

.field private static final NOT_MANAGEABLE_EXECUTOR:Z = false


# instance fields
.field private eventTypes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lorg/apache/mina/core/session/IoEventType;",
            ">;"
        }
    .end annotation
.end field

.field private executor:Ljava/util/concurrent/Executor;

.field private manageableExecutor:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/apache/mina/core/session/IoEventType;

    .line 141
    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->EXCEPTION_CAUGHT:Lorg/apache/mina/core/session/IoEventType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_RECEIVED:Lorg/apache/mina/core/session/IoEventType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_SENT:Lorg/apache/mina/core/session/IoEventType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_CLOSED:Lorg/apache/mina/core/session/IoEventType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_IDLE:Lorg/apache/mina/core/session/IoEventType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_OPENED:Lorg/apache/mina/core/session/IoEventType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/mina/filter/executor/ExecutorFilter;->DEFAULT_EVENT_SET:[Lorg/apache/mina/core/session/IoEventType;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 151
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 153
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 154
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    const/4 v1, 0x0

    const/16 v2, 0x10

    const-wide/16 v3, 0x1e

    const/4 v7, 0x0

    move-object v0, p0

    .line 153
    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/ExecutorFilter;->createDefaultExecutor(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-array v1, v1, [Lorg/apache/mina/core/session/IoEventType;

    const/4 v2, 0x1

    .line 157
    invoke-direct {p0, v0, v2, v1}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 8

    .line 168
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 170
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 171
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    const/4 v1, 0x0

    const-wide/16 v3, 0x1e

    const/4 v7, 0x0

    move-object v0, p0

    move v2, p1

    .line 170
    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/ExecutorFilter;->createDefaultExecutor(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)Ljava/util/concurrent/Executor;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/mina/core/session/IoEventType;

    const/4 v1, 0x1

    .line 174
    invoke-direct {p0, p1, v1, v0}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 8

    .line 186
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 188
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 189
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    const-wide/16 v3, 0x1e

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 188
    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/ExecutorFilter;->createDefaultExecutor(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)Ljava/util/concurrent/Executor;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Lorg/apache/mina/core/session/IoEventType;

    const/4 v0, 0x1

    .line 192
    invoke-direct {p0, p1, v0, p2}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;)V
    .locals 8

    .line 204
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 207
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    .line 206
    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/ExecutorFilter;->createDefaultExecutor(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)Ljava/util/concurrent/Executor;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Lorg/apache/mina/core/session/IoEventType;

    const/4 p3, 0x1

    .line 210
    invoke-direct {p0, p1, p3, p2}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V
    .locals 8

    .line 244
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    .line 246
    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/ExecutorFilter;->createDefaultExecutor(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)Ljava/util/concurrent/Executor;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Lorg/apache/mina/core/session/IoEventType;

    const/4 p3, 0x1

    .line 250
    invoke-direct {p0, p1, p3, p2}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V
    .locals 9

    .line 265
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 267
    new-instance v8, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    move-object v0, v8

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/mina/core/session/IoEventType;

    const/4 v1, 0x1

    move-object v2, p0

    .line 271
    invoke-direct {p0, v8, v1, v0}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    return-void
.end method

.method public varargs constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;[Lorg/apache/mina/core/session/IoEventType;)V
    .locals 9

    .line 397
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 399
    new-instance v8, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    move-object v0, v8

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V

    const/4 v0, 0x1

    move-object v1, p0

    move-object/from16 v2, p8

    .line 403
    invoke-direct {p0, v8, v0, v2}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    return-void
.end method

.method public varargs constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;[Lorg/apache/mina/core/session/IoEventType;)V
    .locals 8

    .line 375
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    .line 377
    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/ExecutorFilter;->createDefaultExecutor(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)Ljava/util/concurrent/Executor;

    move-result-object p1

    const/4 p2, 0x1

    .line 381
    invoke-direct {p0, p1, p2, p7}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V
    .locals 8

    .line 224
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 227
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v7, p6

    .line 226
    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/ExecutorFilter;->createDefaultExecutor(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)Ljava/util/concurrent/Executor;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Lorg/apache/mina/core/session/IoEventType;

    const/4 p3, 0x1

    .line 230
    invoke-direct {p0, p1, p3, p2}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    return-void
.end method

.method public varargs constructor <init>(IIJLjava/util/concurrent/TimeUnit;Lorg/apache/mina/filter/executor/IoEventQueueHandler;[Lorg/apache/mina/core/session/IoEventType;)V
    .locals 8

    .line 354
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 357
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v7, p6

    .line 356
    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/ExecutorFilter;->createDefaultExecutor(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)Ljava/util/concurrent/Executor;

    move-result-object p1

    const/4 p2, 0x1

    .line 360
    invoke-direct {p0, p1, p2, p7}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    return-void
.end method

.method public varargs constructor <init>(IIJLjava/util/concurrent/TimeUnit;[Lorg/apache/mina/core/session/IoEventType;)V
    .locals 8

    .line 333
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 336
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    .line 335
    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/ExecutorFilter;->createDefaultExecutor(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)Ljava/util/concurrent/Executor;

    move-result-object p1

    const/4 p2, 0x1

    .line 339
    invoke-direct {p0, p1, p2, p6}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    return-void
.end method

.method public varargs constructor <init>(II[Lorg/apache/mina/core/session/IoEventType;)V
    .locals 8

    .line 313
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 315
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 316
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    const-wide/16 v3, 0x1e

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 315
    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/ExecutorFilter;->createDefaultExecutor(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)Ljava/util/concurrent/Executor;

    move-result-object p1

    const/4 p2, 0x1

    .line 319
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    return-void
.end method

.method public varargs constructor <init>(I[Lorg/apache/mina/core/session/IoEventType;)V
    .locals 8

    .line 296
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 298
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 299
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    const/4 v1, 0x0

    const-wide/16 v3, 0x1e

    const/4 v7, 0x0

    move-object v0, p0

    move v2, p1

    .line 298
    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/ExecutorFilter;->createDefaultExecutor(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)Ljava/util/concurrent/Executor;

    move-result-object p1

    const/4 v0, 0x1

    .line 302
    invoke-direct {p0, p1, v0, p2}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 411
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Lorg/apache/mina/core/session/IoEventType;

    .line 413
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/util/concurrent/Executor;[Lorg/apache/mina/core/session/IoEventType;)V
    .locals 1

    .line 422
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    const/4 v0, 0x0

    .line 424
    invoke-direct {p0, p1, v0, p2}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    return-void
.end method

.method public varargs constructor <init>([Lorg/apache/mina/core/session/IoEventType;)V
    .locals 8

    .line 280
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 282
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 283
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    const/4 v1, 0x0

    const/16 v2, 0x10

    const-wide/16 v3, 0x1e

    const/4 v7, 0x0

    move-object v0, p0

    .line 282
    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/ExecutorFilter;->createDefaultExecutor(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)Ljava/util/concurrent/Executor;

    move-result-object v0

    const/4 v1, 0x1

    .line 286
    invoke-direct {p0, v0, v1, p1}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    return-void
.end method

.method private createDefaultExecutor(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)Ljava/util/concurrent/Executor;
    .locals 9

    .line 441
    new-instance v8, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    move-object v0, v8

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V

    return-object v8
.end method

.method private varargs init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 481
    invoke-direct {p0, p3}, Lorg/apache/mina/filter/executor/ExecutorFilter;->initEventTypes([Lorg/apache/mina/core/session/IoEventType;)V

    .line 482
    iput-object p1, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->executor:Ljava/util/concurrent/Executor;

    .line 483
    iput-boolean p2, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->manageableExecutor:Z

    return-void

    .line 478
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "executor"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private varargs initEventTypes([Lorg/apache/mina/core/session/IoEventType;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 454
    array-length v0, p1

    if-nez v0, :cond_1

    .line 455
    :cond_0
    sget-object p1, Lorg/apache/mina/filter/executor/ExecutorFilter;->DEFAULT_EVENT_SET:[Lorg/apache/mina/core/session/IoEventType;

    :cond_1
    const/4 v0, 0x0

    .line 459
    aget-object v0, p1, v0

    invoke-static {v0, p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->eventTypes:Ljava/util/EnumSet;

    .line 462
    sget-object v0, Lorg/apache/mina/core/session/IoEventType;->SESSION_CREATED:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 463
    iput-object p1, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->eventTypes:Ljava/util/EnumSet;

    .line 464
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_CREATED:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is not allowed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 492
    iget-boolean v0, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->manageableExecutor:Z

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->executor:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_0
    return-void
.end method

.method public final exceptionCaught(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V
    .locals 2

    .line 568
    iget-object v0, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->eventTypes:Ljava/util/EnumSet;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->EXCEPTION_CAUGHT:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    new-instance v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->EXCEPTION_CAUGHT:Lorg/apache/mina/core/session/IoEventType;

    invoke-direct {v0, p1, v1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilterEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 570
    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/executor/ExecutorFilter;->fireEvent(Lorg/apache/mina/core/filterchain/IoFilterEvent;)V

    goto :goto_0

    .line 572
    :cond_0
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->exceptionCaught(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final filterClose(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 620
    iget-object v0, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->eventTypes:Ljava/util/EnumSet;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->CLOSE:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 621
    new-instance v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->CLOSE:Lorg/apache/mina/core/session/IoEventType;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p2, v2}, Lorg/apache/mina/core/filterchain/IoFilterEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 622
    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/executor/ExecutorFilter;->fireEvent(Lorg/apache/mina/core/filterchain/IoFilterEvent;)V

    goto :goto_0

    .line 624
    :cond_0
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterClose(Lorg/apache/mina/core/session/IoSession;)V

    :goto_0
    return-void
.end method

.method public final filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 2

    .line 607
    iget-object v0, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->eventTypes:Ljava/util/EnumSet;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->WRITE:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    new-instance v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->WRITE:Lorg/apache/mina/core/session/IoEventType;

    invoke-direct {v0, p1, v1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilterEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 609
    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/executor/ExecutorFilter;->fireEvent(Lorg/apache/mina/core/filterchain/IoFilterEvent;)V

    goto :goto_0

    .line 611
    :cond_0
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    :goto_0
    return-void
.end method

.method protected fireEvent(Lorg/apache/mina/core/filterchain/IoFilterEvent;)V
    .locals 1

    .line 510
    iget-object v0, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 501
    iget-object v0, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 2

    .line 581
    iget-object v0, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->eventTypes:Ljava/util/EnumSet;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_RECEIVED:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    new-instance v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_RECEIVED:Lorg/apache/mina/core/session/IoEventType;

    invoke-direct {v0, p1, v1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilterEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 583
    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/executor/ExecutorFilter;->fireEvent(Lorg/apache/mina/core/filterchain/IoFilterEvent;)V

    goto :goto_0

    .line 585
    :cond_0
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final messageSent(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 2

    .line 594
    iget-object v0, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->eventTypes:Ljava/util/EnumSet;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_SENT:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    new-instance v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_SENT:Lorg/apache/mina/core/session/IoEventType;

    invoke-direct {v0, p1, v1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilterEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 596
    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/executor/ExecutorFilter;->fireEvent(Lorg/apache/mina/core/filterchain/IoFilterEvent;)V

    goto :goto_0

    .line 598
    :cond_0
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageSent(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    :goto_0
    return-void
.end method

.method public onPreAdd(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 518
    invoke-interface {p1, p0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->contains(Lorg/apache/mina/core/filterchain/IoFilter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 519
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "You can\'t add the same filter instance more than once.  Create another instance and add it."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final sessionClosed(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 3

    .line 542
    iget-object v0, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->eventTypes:Ljava/util/EnumSet;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_CLOSED:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    new-instance v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_CLOSED:Lorg/apache/mina/core/session/IoEventType;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p2, v2}, Lorg/apache/mina/core/filterchain/IoFilterEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 544
    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/executor/ExecutorFilter;->fireEvent(Lorg/apache/mina/core/filterchain/IoFilterEvent;)V

    goto :goto_0

    .line 546
    :cond_0
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionClosed(Lorg/apache/mina/core/session/IoSession;)V

    :goto_0
    return-void
.end method

.method public final sessionIdle(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 2

    .line 555
    iget-object v0, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->eventTypes:Ljava/util/EnumSet;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_IDLE:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    new-instance v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_IDLE:Lorg/apache/mina/core/session/IoEventType;

    invoke-direct {v0, p1, v1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilterEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 557
    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/executor/ExecutorFilter;->fireEvent(Lorg/apache/mina/core/filterchain/IoFilterEvent;)V

    goto :goto_0

    .line 559
    :cond_0
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionIdle(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V

    :goto_0
    return-void
.end method

.method public final sessionOpened(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 3

    .line 529
    iget-object v0, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->eventTypes:Ljava/util/EnumSet;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_OPENED:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    new-instance v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_OPENED:Lorg/apache/mina/core/session/IoEventType;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p2, v2}, Lorg/apache/mina/core/filterchain/IoFilterEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 531
    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/executor/ExecutorFilter;->fireEvent(Lorg/apache/mina/core/filterchain/IoFilterEvent;)V

    goto :goto_0

    .line 533
    :cond_0
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionOpened(Lorg/apache/mina/core/session/IoSession;)V

    :goto_0
    return-void
.end method
