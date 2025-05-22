.class Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;
.super Ljava/lang/Object;
.source "UnorderedThreadPoolExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation


# instance fields
.field private completedTaskCount:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

.field private thread:Ljava/lang/Thread;


# direct methods
.method private constructor <init>(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)V
    .locals 2

    .line 398
    iput-object p1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->completedTaskCount:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$1;)V
    .locals 0

    .line 398
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;-><init>(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    .line 398
    iget-object p0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->completedTaskCount:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method private fetchTask()Ljava/lang/Runnable;
    .locals 10

    .line 447
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 448
    iget-object v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->getKeepAliveTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    add-long/2addr v2, v0

    const/4 v4, 0x0

    :goto_0
    sub-long v5, v2, v0

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-gtz v9, :cond_0

    goto :goto_2

    .line 457
    :cond_0
    :try_start_0
    iget-object v7, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    invoke-virtual {v7}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v7

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v7, v5, v6, v8}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    .line 461
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-object v4, v5

    goto :goto_0

    :cond_1
    :goto_1
    move-object v4, v5

    :goto_2
    return-object v4

    :catchall_0
    move-exception v5

    if-nez v4, :cond_2

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :cond_2
    throw v5
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    nop

    goto :goto_0
.end method

.method private runTask(Ljava/lang/Runnable;)V
    .locals 3

    .line 473
    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    iget-object v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->thread:Ljava/lang/Thread;

    invoke-static {v0, v1, p1}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$800(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 476
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x1

    .line 478
    :try_start_1
    iget-object v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$900(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 479
    iget-object v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->completedTaskCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    .line 482
    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    invoke-static {v0, p1, v1}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$1000(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 484
    :cond_0
    throw v1
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 405
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->thread:Ljava/lang/Thread;

    .line 409
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->fetchTask()Ljava/lang/Runnable;

    move-result-object v0

    .line 411
    iget-object v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    invoke-static {v1}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$200(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    if-nez v0, :cond_1

    .line 414
    iget-object v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    invoke-static {v1}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$300(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 415
    :try_start_1
    iget-object v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    invoke-static {v2}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$300(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    iget-object v3, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    invoke-static {v3}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$400(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)I

    move-result v3

    if-le v2, v3, :cond_0

    .line 417
    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    invoke-static {v0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$300(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 418
    monitor-exit v1

    goto :goto_2

    .line 420
    :cond_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 423
    :cond_1
    :goto_1
    invoke-static {}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$500()Ljava/lang/Runnable;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-ne v0, v1, :cond_2

    .line 437
    :goto_2
    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    invoke-static {v0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$300(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 438
    :try_start_3
    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    invoke-static {v0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$300(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 439
    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    invoke-static {v0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$700(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)J

    move-result-wide v2

    iget-object v4, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->completedTaskCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$702(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;J)J

    .line 440
    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    invoke-static {v0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$300(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 441
    monitor-exit v1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_2
    if-eqz v0, :cond_3

    .line 429
    :try_start_4
    iget-object v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    invoke-static {v1}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$600(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    move-object v3, v0

    check-cast v3, Lorg/apache/mina/core/session/IoEvent;

    invoke-interface {v1, v2, v3}, Lorg/apache/mina/filter/executor/IoEventQueueHandler;->polled(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)V

    .line 430
    invoke-direct {p0, v0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->runTask(Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    .line 433
    :try_start_5
    iget-object v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    invoke-static {v1}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$200(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    throw v0

    :cond_3
    :goto_3
    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    invoke-static {v0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$200(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    .line 437
    iget-object v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    invoke-static {v1}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$300(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 438
    :try_start_6
    iget-object v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    invoke-static {v2}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$300(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 439
    iget-object v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    invoke-static {v2}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$700(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)J

    move-result-wide v3

    iget-object v5, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->completedTaskCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-static {v2, v3, v4}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$702(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;J)J

    .line 440
    iget-object v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    invoke-static {v2}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->access$300(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 441
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v0
.end method
