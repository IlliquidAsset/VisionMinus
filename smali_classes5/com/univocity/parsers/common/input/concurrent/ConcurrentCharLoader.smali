.class Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;
.super Ljava/lang/Object;
.source "ConcurrentCharLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private active:Z

.field private activeExecution:Ljava/lang/Thread;

.field private final buckets:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private currentBucket:Lcom/univocity/parsers/common/input/concurrent/Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/univocity/parsers/common/input/concurrent/Entry<",
            "Lcom/univocity/parsers/common/input/concurrent/CharBucket;",
            ">;"
        }
    .end annotation
.end field

.field private final end:Lcom/univocity/parsers/common/input/concurrent/CharBucket;

.field private error:Ljava/lang/Exception;

.field private finished:Z

.field private final instances:Lcom/univocity/parsers/common/input/concurrent/FixedInstancePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/univocity/parsers/common/input/concurrent/FixedInstancePool<",
            "Lcom/univocity/parsers/common/input/concurrent/CharBucket;",
            ">;"
        }
    .end annotation
.end field

.field reader:Ljava/io/Reader;


# direct methods
.method public constructor <init>(Ljava/io/Reader;II)V
    .locals 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->finished:Z

    .line 53
    new-instance v1, Lcom/univocity/parsers/common/input/concurrent/CharBucket;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lcom/univocity/parsers/common/input/concurrent/CharBucket;-><init>(I)V

    iput-object v1, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->end:Lcom/univocity/parsers/common/input/concurrent/CharBucket;

    .line 54
    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v1, p3}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v1, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->buckets:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 56
    iput-object p1, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->reader:Ljava/io/Reader;

    .line 58
    new-instance p1, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader$1;

    invoke-direct {p1, p0, p3, p2}, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader$1;-><init>(Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;II)V

    iput-object p1, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->instances:Lcom/univocity/parsers/common/input/concurrent/FixedInstancePool;

    .line 65
    iput-boolean v0, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->finished:Z

    const/4 p1, 0x1

    .line 66
    iput-boolean p1, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->active:Z

    return-void
.end method

.method private readBucket()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->instances:Lcom/univocity/parsers/common/input/concurrent/FixedInstancePool;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/input/concurrent/FixedInstancePool;->allocate()Lcom/univocity/parsers/common/input/concurrent/Entry;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/univocity/parsers/common/input/concurrent/Entry;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/univocity/parsers/common/input/concurrent/CharBucket;

    iget-object v2, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->reader:Ljava/io/Reader;

    invoke-virtual {v1, v2}, Lcom/univocity/parsers/common/input/concurrent/CharBucket;->fill(Ljava/io/Reader;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->buckets:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0

    .line 75
    :cond_0
    iget-object v2, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->instances:Lcom/univocity/parsers/common/input/concurrent/FixedInstancePool;

    invoke-virtual {v2, v0}, Lcom/univocity/parsers/common/input/concurrent/FixedInstancePool;->release(Lcom/univocity/parsers/common/input/concurrent/Entry;)V

    :goto_0
    return v1
.end method

.method private setError(Ljava/lang/Exception;)V
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->active:Z

    if-eqz v0, :cond_0

    .line 104
    iput-object p1, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->error:Ljava/lang/Exception;

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized nextBucket()Lcom/univocity/parsers/common/input/concurrent/CharBucket;
    .locals 4

    monitor-enter p0

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->activeExecution:Ljava/lang/Thread;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->finished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_2

    const/4 v0, -0x1

    .line 118
    :try_start_1
    invoke-direct {p0}, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->readBucket()I

    move-result v2
    :try_end_1
    .catch Lcom/univocity/parsers/common/input/BomInput$BytesProcessedNotification; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ltz v2, :cond_0

    const/4 v3, 0x4

    if-gt v2, v3, :cond_0

    .line 120
    :try_start_2
    invoke-direct {p0}, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->readBucket()I

    move-result v2
    :try_end_2
    .catch Lcom/univocity/parsers/common/input/BomInput$BytesProcessedNotification; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    const/4 v2, -0x1

    .line 125
    :goto_0
    :try_start_3
    invoke-direct {p0, v3}, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->setError(Ljava/lang/Exception;)V

    :cond_0
    :goto_1
    if-eq v2, v0, :cond_1

    .line 129
    new-instance v0, Ljava/lang/Thread;

    const-string v2, "unVocity-parsers input reading thread"

    invoke-direct {v0, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->activeExecution:Ljava/lang/Thread;

    .line 130
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_4

    .line 132
    :cond_1
    iput-boolean v1, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->finished:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 134
    :try_start_4
    iget-object v0, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->buckets:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v2, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->end:Lcom/univocity/parsers/common/input/concurrent/CharBucket;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 138
    :goto_2
    :try_start_5
    invoke-virtual {p0}, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->stopReading()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_3

    .line 136
    :catch_2
    :try_start_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 138
    :goto_3
    :try_start_7
    invoke-virtual {p0}, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->stopReading()V

    throw v0

    :catch_3
    move-exception v0

    .line 123
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 144
    :cond_2
    :goto_4
    :try_start_8
    iget-boolean v0, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->finished:Z

    if-eqz v0, :cond_3

    .line 145
    iget-object v0, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->buckets:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v0

    if-gt v0, v1, :cond_3

    .line 146
    iget-object v0, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->end:Lcom/univocity/parsers/common/input/concurrent/CharBucket;
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    monitor-exit p0

    return-object v0

    .line 149
    :cond_3
    :try_start_9
    iget-object v0, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->currentBucket:Lcom/univocity/parsers/common/input/concurrent/Entry;

    if-eqz v0, :cond_4

    .line 150
    iget-object v0, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->instances:Lcom/univocity/parsers/common/input/concurrent/FixedInstancePool;

    iget-object v2, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->currentBucket:Lcom/univocity/parsers/common/input/concurrent/Entry;

    invoke-virtual {v0, v2}, Lcom/univocity/parsers/common/input/concurrent/FixedInstancePool;->release(Lcom/univocity/parsers/common/input/concurrent/Entry;)V

    .line 153
    :cond_4
    iget-object v0, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->buckets:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    .line 154
    iget-object v2, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->end:Lcom/univocity/parsers/common/input/concurrent/CharBucket;

    if-ne v0, v2, :cond_5

    .line 155
    iput-boolean v1, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->finished:Z

    .line 156
    iget-object v0, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->end:Lcom/univocity/parsers/common/input/concurrent/CharBucket;
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    monitor-exit p0

    return-object v0

    .line 158
    :cond_5
    :try_start_a
    check-cast v0, Lcom/univocity/parsers/common/input/concurrent/Entry;

    iput-object v0, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->currentBucket:Lcom/univocity/parsers/common/input/concurrent/Entry;

    .line 160
    invoke-virtual {v0}, Lcom/univocity/parsers/common/input/concurrent/Entry;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/univocity/parsers/common/input/concurrent/CharBucket;
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    monitor-exit p0

    return-object v0

    .line 162
    :catch_4
    :try_start_b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 163
    iput-boolean v1, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->finished:Z

    .line 164
    iget-object v0, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->end:Lcom/univocity/parsers/common/input/concurrent/CharBucket;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method reportError()V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->error:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 190
    invoke-static {v0}, Lcom/univocity/parsers/common/ArgumentUtils;->throwUnchecked(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 3

    .line 88
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->active:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->readBucket()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->buckets:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v1, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->end:Lcom/univocity/parsers/common/input/concurrent/CharBucket;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->buckets:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v2, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->end:Lcom/univocity/parsers/common/input/concurrent/CharBucket;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    const/4 v1, 0x1

    .line 95
    :try_start_2
    iput-boolean v1, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->finished:Z

    .line 96
    invoke-direct {p0, v0}, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->setError(Ljava/lang/Exception;)V

    goto :goto_2

    .line 93
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    :goto_2
    invoke-virtual {p0}, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->stopReading()V

    return-void

    :goto_3
    invoke-virtual {p0}, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->stopReading()V

    throw v0
.end method

.method public stopReading()V
    .locals 4

    const-string v0, "Error stopping input reader thread"

    const/4 v1, 0x0

    .line 172
    iput-boolean v1, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->active:Z

    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->reader:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 179
    :try_start_1
    iget-object v1, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->activeExecution:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->activeExecution:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 183
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catchall_1
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 176
    :try_start_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Error closing input"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 179
    :goto_0
    :try_start_3
    iget-object v2, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->activeExecution:Ljava/lang/Thread;

    if-eqz v2, :cond_1

    .line 180
    iget-object v2, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->activeExecution:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 183
    :cond_1
    throw v1

    :catchall_2
    move-exception v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
