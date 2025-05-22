.class public Lcom/powervision/natives/connect/ConnectTask;
.super Ljava/lang/Thread;
.source "ConnectTask.java"


# instance fields
.field connectTool:Lcom/powervision/natives/connect/ConnectTool;

.field isfirstAlways:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/powervision/natives/connect/ConnectTask;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/powervision/natives/connect/ConnectTask;->isfirstAlways:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/powervision/natives/connect/ConnectTask;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lcom/powervision/natives/connect/ConnectTask;->isfirstAlways:Z

    return-void
.end method


# virtual methods
.method public lockThis()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 160
    monitor-enter p0

    .line 161
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 162
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notifyThis()V
    .locals 1

    .line 154
    monitor-enter p0

    .line 155
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 156
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 2

    .line 34
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 38
    :try_start_0
    invoke-virtual {p0}, Lcom/powervision/natives/connect/ConnectTask;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectTask;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectTask;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    iget v0, v0, Lcom/powervision/natives/connect/ConnectTool;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/powervision/natives/connect/ConnectTask;->work_queue()V

    goto :goto_0

    :cond_0
    const-string v0, "lzqStack"

    const-string v1, "\u6253\u5f00\u6808\u7ebf\u7a0b"

    .line 44
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-virtual {p0}, Lcom/powervision/natives/connect/ConnectTask;->work_stack()V

    goto :goto_0

    .line 39
    :cond_1
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :catch_0
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectTask;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectTool;->free()V

    :goto_0
    return-void
.end method

.method public setConnectTool(Lcom/powervision/natives/connect/ConnectTool;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/powervision/natives/connect/ConnectTask;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    return-void
.end method

.method public work_queue()V
    .locals 4

    .line 62
    :try_start_0
    invoke-virtual {p0}, Lcom/powervision/natives/connect/ConnectTask;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_7

    .line 67
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/powervision/natives/connect/ConnectTask;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 71
    iget-object v1, p0, Lcom/powervision/natives/connect/ConnectTask;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    iget-object v1, v1, Lcom/powervision/natives/connect/ConnectTool;->queue:Ljava/util/LinkedList;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :try_start_1
    iget-object v2, p0, Lcom/powervision/natives/connect/ConnectTask;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    iget-object v2, v2, Lcom/powervision/natives/connect/ConnectTool;->queue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 74
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectTask;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    iget-object v0, v0, Lcom/powervision/natives/connect/ConnectTool;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 75
    iget-object v2, p0, Lcom/powervision/natives/connect/ConnectTask;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    iget-object v2, v2, Lcom/powervision/natives/connect/ConnectTool;->isClear:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 76
    iget-object v2, p0, Lcom/powervision/natives/connect/ConnectTask;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    iget-object v2, v2, Lcom/powervision/natives/connect/ConnectTool;->queue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 78
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    if-eqz v0, :cond_4

    .line 81
    :try_start_2
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 82
    invoke-virtual {p0}, Lcom/powervision/natives/connect/ConnectTask;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    .line 85
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/natives/connect/Ask;

    .line 87
    iget v2, v1, Lcom/powervision/natives/connect/Ask;->time:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 88
    iget v1, v1, Lcom/powervision/natives/connect/Ask;->questNum:I

    .line 89
    iget-object v2, p0, Lcom/powervision/natives/connect/ConnectTask;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    if-eqz v2, :cond_2

    .line 90
    iget-object v2, p0, Lcom/powervision/natives/connect/ConnectTask;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    invoke-virtual {v2, v1}, Lcom/powervision/natives/connect/ConnectTool;->work(I)V

    goto :goto_1

    .line 83
    :cond_3
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 94
    :cond_4
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectTask;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    iget-object v0, v0, Lcom/powervision/natives/connect/ConnectTool;->isClear:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectTask;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    iget-object v0, v0, Lcom/powervision/natives/connect/ConnectTool;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 96
    :cond_5
    invoke-virtual {p0}, Lcom/powervision/natives/connect/ConnectTask;->lockThis()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 78
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 68
    :cond_6
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 64
    :cond_7
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 102
    :catch_0
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectTask;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectTool;->free()V

    return-void
.end method

.method public work_stack()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 111
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/powervision/natives/connect/ConnectTask;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 115
    iget-object v1, p0, Lcom/powervision/natives/connect/ConnectTask;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    if-nez v1, :cond_1

    return-void

    .line 119
    :cond_1
    iget-object v1, v1, Lcom/powervision/natives/connect/ConnectTool;->stack:Ljava/util/Stack;

    monitor-enter v1

    .line 120
    :try_start_0
    iget-object v2, p0, Lcom/powervision/natives/connect/ConnectTask;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    iget-object v2, v2, Lcom/powervision/natives/connect/ConnectTool;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 121
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectTask;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    iget-object v0, v0, Lcom/powervision/natives/connect/ConnectTool;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    .line 122
    iget-object v2, p0, Lcom/powervision/natives/connect/ConnectTask;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    iget-object v2, v2, Lcom/powervision/natives/connect/ConnectTool;->isClear:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 123
    iget-object v2, p0, Lcom/powervision/natives/connect/ConnectTask;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    iget-object v2, v2, Lcom/powervision/natives/connect/ConnectTool;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->clear()V

    .line 125
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_1
    if-eqz v0, :cond_6

    .line 128
    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 129
    invoke-virtual {p0}, Lcom/powervision/natives/connect/ConnectTask;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_5

    .line 133
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/natives/connect/Ask;

    .line 135
    iget-object v2, p0, Lcom/powervision/natives/connect/ConnectTask;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    iget-boolean v2, v2, Lcom/powervision/natives/connect/ConnectTool;->firstAlawys:Z

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 136
    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 140
    :cond_4
    iget v2, v1, Lcom/powervision/natives/connect/Ask;->time:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 141
    iget-object v2, p0, Lcom/powervision/natives/connect/ConnectTask;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    if-eqz v2, :cond_3

    .line 142
    iget v1, v1, Lcom/powervision/natives/connect/Ask;->questNum:I

    invoke-virtual {v2, v1}, Lcom/powervision/natives/connect/ConnectTool;->work(I)V

    goto :goto_1

    .line 130
    :cond_5
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 146
    :cond_6
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectTask;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    iget-object v0, v0, Lcom/powervision/natives/connect/ConnectTool;->isClear:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectTask;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    iget-object v0, v0, Lcom/powervision/natives/connect/ConnectTool;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 147
    :cond_7
    invoke-virtual {p0}, Lcom/powervision/natives/connect/ConnectTask;->lockThis()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 125
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 112
    :cond_8
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method
