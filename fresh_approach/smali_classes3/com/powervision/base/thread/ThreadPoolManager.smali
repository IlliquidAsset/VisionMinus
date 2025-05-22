.class public Lcom/powervision/base/thread/ThreadPoolManager;
.super Ljava/lang/Object;
.source "ThreadPoolManager.java"


# static fields
.field private static mInstance:Lcom/powervision/base/thread/ThreadPoolManager;


# instance fields
.field private corePoolSize:I

.field private executor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private keepAliveTime:J

.field private maximumPoolSize:I

.field private unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/powervision/base/thread/ThreadPoolManager;

    invoke-direct {v0}, Lcom/powervision/base/thread/ThreadPoolManager;-><init>()V

    sput-object v0, Lcom/powervision/base/thread/ThreadPoolManager;->mInstance:Lcom/powervision/base/thread/ThreadPoolManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 10

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1

    .line 23
    iput-wide v0, p0, Lcom/powervision/base/thread/ThreadPoolManager;->keepAliveTime:J

    .line 24
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lcom/powervision/base/thread/ThreadPoolManager;->unit:Ljava/util/concurrent/TimeUnit;

    .line 31
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/powervision/base/thread/ThreadPoolManager;->corePoolSize:I

    .line 32
    iput v0, p0, Lcom/powervision/base/thread/ThreadPoolManager;->maximumPoolSize:I

    .line 33
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iget v2, p0, Lcom/powervision/base/thread/ThreadPoolManager;->corePoolSize:I

    iget v3, p0, Lcom/powervision/base/thread/ThreadPoolManager;->maximumPoolSize:I

    iget-wide v4, p0, Lcom/powervision/base/thread/ThreadPoolManager;->keepAliveTime:J

    iget-object v6, p0, Lcom/powervision/base/thread/ThreadPoolManager;->unit:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 39
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Lcom/powervision/base/thread/ThreadPoolManager;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public static getInstance()Lcom/powervision/base/thread/ThreadPoolManager;
    .locals 1

    .line 18
    sget-object v0, Lcom/powervision/base/thread/ThreadPoolManager;->mInstance:Lcom/powervision/base/thread/ThreadPoolManager;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/powervision/base/thread/ThreadPoolManager;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public remove(Ljava/lang/Runnable;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/powervision/base/thread/ThreadPoolManager;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    return-void
.end method
