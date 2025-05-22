.class public abstract Lcom/powervision/natives/connect/ConnectTool;
.super Ljava/lang/Object;
.source "ConnectTool.java"


# instance fields
.field public firstAlawys:Z

.field isClear:Ljava/util/concurrent/atomic/AtomicBoolean;

.field queue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/powervision/natives/connect/Ask;",
            ">;"
        }
    .end annotation
.end field

.field stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/powervision/natives/connect/Ask;",
            ">;"
        }
    .end annotation
.end field

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/powervision/natives/connect/ConnectTool;->isClear:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    iput v1, p0, Lcom/powervision/natives/connect/ConnectTool;->type:I

    .line 15
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/powervision/natives/connect/ConnectTool;->queue:Ljava/util/LinkedList;

    .line 16
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/powervision/natives/connect/ConnectTool;->stack:Ljava/util/Stack;

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/powervision/natives/connect/ConnectTool;->firstAlawys:Z

    return-void
.end method


# virtual methods
.method public addQueue(Lcom/powervision/natives/connect/Ask;)V
    .locals 3

    .line 27
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectTool;->queue:Ljava/util/LinkedList;

    monitor-enter v0

    .line 28
    :try_start_0
    iget-object v1, p0, Lcom/powervision/natives/connect/ConnectTool;->isClear:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 29
    iget-object v1, p0, Lcom/powervision/natives/connect/ConnectTool;->queue:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 30
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addStack(Lcom/powervision/natives/connect/Ask;)V
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectTool;->stack:Ljava/util/Stack;

    monitor-enter v0

    .line 35
    :try_start_0
    iget-object v1, p0, Lcom/powervision/natives/connect/ConnectTool;->isClear:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 36
    iget-object v1, p0, Lcom/powervision/natives/connect/ConnectTool;->stack:Ljava/util/Stack;

    invoke-virtual {v1, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 37
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public clearBuffer()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectTool;->queue:Ljava/util/LinkedList;

    monitor-enter v0

    .line 43
    :try_start_0
    iget-object v1, p0, Lcom/powervision/natives/connect/ConnectTool;->queue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 44
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 45
    iget-object v1, p0, Lcom/powervision/natives/connect/ConnectTool;->stack:Ljava/util/Stack;

    monitor-enter v1

    .line 46
    :try_start_1
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectTool;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 47
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 44
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public abstract free()V
.end method

.method public abstract notifyTheMaster()V
.end method

.method public abstract stopTheMasterInmedratily()V
.end method

.method public abstract work(I)V
.end method
