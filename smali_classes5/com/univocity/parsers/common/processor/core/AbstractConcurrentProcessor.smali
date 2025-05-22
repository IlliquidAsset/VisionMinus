.class public abstract Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;
.super Ljava/lang/Object;
.source "AbstractConcurrentProcessor.java"

# interfaces
.implements Lcom/univocity/parsers/common/processor/core/Processor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/univocity/parsers/common/Context;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/univocity/parsers/common/processor/core/Processor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private contextCopyingEnabled:Z

.field private currentContext:Lcom/univocity/parsers/common/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private ended:Z

.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private volatile input:J

.field private inputQueue:Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$Node<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final limit:I

.field private final lock:Ljava/lang/Object;

.field private volatile output:J

.field private volatile outputQueue:Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$Node<",
            "TT;>;"
        }
    .end annotation
.end field

.field private process:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final processor:Lcom/univocity/parsers/common/processor/core/Processor;

.field private volatile rowCount:J


# direct methods
.method public constructor <init>(Lcom/univocity/parsers/common/processor/core/Processor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/univocity/parsers/common/processor/core/Processor<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, -0x1

    .line 72
    invoke-direct {p0, p1, v0}, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;-><init>(Lcom/univocity/parsers/common/processor/core/Processor;I)V

    return-void
.end method

.method public constructor <init>(Lcom/univocity/parsers/common/processor/core/Processor;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/univocity/parsers/common/processor/core/Processor<",
            "TT;>;I)V"
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->ended:Z

    .line 52
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->executor:Ljava/util/concurrent/ExecutorService;

    .line 64
    iput-boolean v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->contextCopyingEnabled:Z

    if-eqz p1, :cond_0

    .line 85
    iput-object p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->processor:Lcom/univocity/parsers/common/processor/core/Processor;

    const-wide/16 v0, 0x0

    .line 86
    iput-wide v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->input:J

    .line 87
    iput-wide v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->output:J

    .line 88
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->lock:Ljava/lang/Object;

    .line 89
    iput p2, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->limit:I

    return-void

    .line 83
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Row processor cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;)Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$Node;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->outputQueue:Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$Node;

    return-object p0
.end method

.method static synthetic access$002(Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$Node;)Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$Node;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->outputQueue:Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$Node;

    return-object p1
.end method

.method static synthetic access$100(Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->ended:Z

    return p0
.end method

.method static synthetic access$208(Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;)J
    .locals 4

    .line 35
    iget-wide v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->rowCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->rowCount:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;)Lcom/univocity/parsers/common/processor/core/Processor;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->processor:Lcom/univocity/parsers/common/processor/core/Processor;

    return-object p0
.end method

.method static synthetic access$408(Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;)J
    .locals 4

    .line 35
    iget-wide v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->output:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->output:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->limit:I

    return p0
.end method

.method static synthetic access$600(Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;)Ljava/lang/Object;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method private grabContext(Lcom/univocity/parsers/common/Context;)Lcom/univocity/parsers/common/Context;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 223
    iget-boolean v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->contextCopyingEnabled:Z

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->copyContext(Lcom/univocity/parsers/common/Context;)Lcom/univocity/parsers/common/Context;

    move-result-object p1

    return-object p1

    .line 226
    :cond_0
    iget-object p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->currentContext:Lcom/univocity/parsers/common/Context;

    return-object p1
.end method

.method private startProcess()V
    .locals 2

    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->ended:Z

    const-wide/16 v0, 0x0

    .line 131
    iput-wide v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->rowCount:J

    .line 133
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$1;

    invoke-direct {v1, p0}, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$1;-><init>(Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->process:Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method protected abstract copyContext(Lcom/univocity/parsers/common/Context;)Lcom/univocity/parsers/common/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation
.end method

.method protected final getRowCount()J
    .locals 2

    .line 231
    iget-wide v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->rowCount:J

    return-wide v0
.end method

.method public isContextCopyingEnabled()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->contextCopyingEnabled:Z

    return v0
.end method

.method public final processEnded(Lcom/univocity/parsers/common/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 200
    iput-boolean v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->ended:Z

    .line 201
    iget v1, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->limit:I

    if-le v1, v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 203
    :try_start_0
    iget-object v1, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 204
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 208
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->process:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 215
    :try_start_2
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->processor:Lcom/univocity/parsers/common/processor/core/Processor;

    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->grabContext(Lcom/univocity/parsers/common/Context;)Lcom/univocity/parsers/common/Context;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/univocity/parsers/common/processor/core/Processor;->processEnded(Lcom/univocity/parsers/common/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 217
    :goto_1
    iget-object p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto :goto_2

    :catchall_1
    move-exception p1

    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    throw p1

    :catchall_2
    move-exception v0

    goto :goto_3

    .line 212
    :catch_0
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 215
    :try_start_4
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->processor:Lcom/univocity/parsers/common/processor/core/Processor;

    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->grabContext(Lcom/univocity/parsers/common/Context;)Lcom/univocity/parsers/common/Context;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/univocity/parsers/common/processor/core/Processor;->processEnded(Lcom/univocity/parsers/common/Context;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_1

    :goto_2
    return-void

    :catchall_3
    move-exception p1

    .line 217
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    throw p1

    :catch_1
    move-exception v0

    .line 210
    :try_start_5
    new-instance v1, Lcom/univocity/parsers/common/DataProcessingException;

    const-string v2, "Error executing process"

    invoke-direct {v1, v2, v0}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 215
    :goto_3
    :try_start_6
    iget-object v1, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->processor:Lcom/univocity/parsers/common/processor/core/Processor;

    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->grabContext(Lcom/univocity/parsers/common/Context;)Lcom/univocity/parsers/common/Context;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/univocity/parsers/common/processor/core/Processor;->processEnded(Lcom/univocity/parsers/common/Context;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 217
    iget-object p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    throw v0

    :catchall_4
    move-exception p1

    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    throw p1
.end method

.method public final processStarted(Lcom/univocity/parsers/common/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 122
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->wrapContext(Lcom/univocity/parsers/common/Context;)Lcom/univocity/parsers/common/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->currentContext:Lcom/univocity/parsers/common/Context;

    .line 124
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->processor:Lcom/univocity/parsers/common/processor/core/Processor;

    invoke-interface {v0, p1}, Lcom/univocity/parsers/common/processor/core/Processor;->processStarted(Lcom/univocity/parsers/common/Context;)V

    .line 126
    invoke-direct {p0}, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->startProcess()V

    return-void
.end method

.method public final rowProcessed([Ljava/lang/String;Lcom/univocity/parsers/common/Context;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->inputQueue:Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$Node;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$Node;

    invoke-direct {p0, p2}, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->grabContext(Lcom/univocity/parsers/common/Context;)Lcom/univocity/parsers/common/Context;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$Node;-><init>([Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->inputQueue:Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$Node;

    .line 177
    iput-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->outputQueue:Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$Node;

    goto :goto_2

    .line 179
    :cond_0
    iget v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->limit:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 180
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 182
    :try_start_0
    iget-wide v2, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->input:J

    iget-wide v4, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->output:J

    sub-long/2addr v2, v4

    iget v4, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->limit:I

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1

    .line 183
    iget-object v2, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->lock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :cond_1
    :try_start_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 186
    :catch_0
    iput-boolean v1, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->ended:Z

    .line 187
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 188
    monitor-exit v0

    return-void

    .line 190
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 192
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->inputQueue:Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$Node;

    new-instance v1, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$Node;

    invoke-direct {p0, p2}, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->grabContext(Lcom/univocity/parsers/common/Context;)Lcom/univocity/parsers/common/Context;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$Node;-><init>([Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$Node;->next:Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$Node;

    .line 193
    iget-object p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->inputQueue:Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$Node;

    iget-object p1, p1, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$Node;->next:Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$Node;

    iput-object p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->inputQueue:Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$Node;

    .line 195
    :goto_2
    iget-wide p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->input:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->input:J

    return-void
.end method

.method public setContextCopyingEnabled(Z)V
    .locals 0

    .line 117
    iput-boolean p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;->contextCopyingEnabled:Z

    return-void
.end method

.method protected abstract wrapContext(Lcom/univocity/parsers/common/Context;)Lcom/univocity/parsers/common/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation
.end method
