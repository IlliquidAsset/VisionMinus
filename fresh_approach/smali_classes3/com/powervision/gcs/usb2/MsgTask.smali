.class public Lcom/powervision/gcs/usb2/MsgTask;
.super Ljava/lang/Thread;
.source "MsgTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Thread;"
    }
.end annotation


# instance fields
.field connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    return-void
.end method


# virtual methods
.method public lockThis()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 295
    monitor-enter p0

    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/MsgHandle;->getTimeOutTime()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 299
    iget-object v0, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/MsgHandle;->getTimeOutTime()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    .line 302
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 305
    :goto_0
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

    .line 282
    monitor-enter p0

    .line 283
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 284
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notifyThis(I)V
    .locals 1

    .line 287
    iget-object p1, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    iget-object p1, p1, Lcom/powervision/gcs/usb2/MsgHandle;->queue:Ljava/util/LinkedList;

    monitor-enter p1

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    iget-object v0, v0, Lcom/powervision/gcs/usb2/MsgHandle;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 289
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 2

    .line 39
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 40
    iget-object v0, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/MsgHandle;->onInit()V

    .line 46
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/powervision/gcs/usb2/MsgTask;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_6

    .line 49
    iget-object v0, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    iget v0, v0, Lcom/powervision/gcs/usb2/MsgHandle;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 50
    invoke-virtual {p0}, Lcom/powervision/gcs/usb2/MsgTask;->work_queque()V

    goto :goto_0

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    iget v0, v0, Lcom/powervision/gcs/usb2/MsgHandle;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const-string v0, "lzqStack"

    const-string v1, "\u6253\u5f00\u6808\u7ebf\u7a0b"

    .line 52
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {p0}, Lcom/powervision/gcs/usb2/MsgTask;->work_stack()V

    goto :goto_0

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    iget v0, v0, Lcom/powervision/gcs/usb2/MsgHandle;->type:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_3

    .line 55
    invoke-virtual {p0}, Lcom/powervision/gcs/usb2/MsgTask;->work_noClone()V

    goto :goto_0

    .line 56
    :cond_3
    iget-object v0, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    iget v0, v0, Lcom/powervision/gcs/usb2/MsgHandle;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 57
    invoke-virtual {p0}, Lcom/powervision/gcs/usb2/MsgTask;->work_Fast()V

    goto :goto_0

    .line 58
    :cond_4
    iget-object v0, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    iget v0, v0, Lcom/powervision/gcs/usb2/MsgHandle;->type:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_5

    .line 59
    invoke-virtual {p0}, Lcom/powervision/gcs/usb2/MsgTask;->work_noClone2()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/MsgHandle;->free()V

    return-void

    .line 47
    :cond_6
    :try_start_1
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 64
    :catch_0
    iget-object v0, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/MsgHandle;->free()V

    return-void
.end method

.method public setConnectHandle(Lcom/powervision/gcs/usb2/MsgHandle;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    return-void
.end method

.method public declared-synchronized shutDown()V
    .locals 2

    monitor-enter p0

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/powervision/gcs/usb2/MsgHandle;->running:Z

    .line 28
    invoke-virtual {p0, v1}, Lcom/powervision/gcs/usb2/MsgTask;->notifyThis(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .locals 2

    monitor-enter p0

    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/powervision/gcs/usb2/MsgHandle;->running:Z

    .line 22
    :cond_0
    invoke-super {p0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public work_Fast()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/gcs/usb2/MsgTask;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    .line 251
    iget-object v1, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    iget-object v1, v1, Lcom/powervision/gcs/usb2/MsgHandle;->queue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 252
    :try_start_0
    iget-object v2, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    iget-object v2, v2, Lcom/powervision/gcs/usb2/MsgHandle;->queue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 253
    iget-object v0, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    iget-object v0, v0, Lcom/powervision/gcs/usb2/MsgHandle;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 254
    iget-object v2, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/powervision/gcs/usb2/MsgHandle;->isClear:Z

    .line 255
    iget-object v2, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    iget-object v2, v2, Lcom/powervision/gcs/usb2/MsgHandle;->queue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 258
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/powervision/gcs/usb2/MsgTask;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    .line 265
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    .line 268
    iget-object v2, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    if-eqz v2, :cond_2

    .line 269
    invoke-virtual {v2, v1}, Lcom/powervision/gcs/usb2/MsgHandle;->work(Ljava/lang/Object;)V

    goto :goto_0

    .line 263
    :cond_3
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    .line 258
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 246
    :cond_4
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public work_noClone()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 207
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/powervision/gcs/usb2/MsgTask;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_5

    .line 212
    iget-object v0, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    iget-object v0, v0, Lcom/powervision/gcs/usb2/MsgHandle;->queue:Ljava/util/LinkedList;

    monitor-enter v0

    .line 214
    :try_start_0
    iget-object v1, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    iget-object v1, v1, Lcom/powervision/gcs/usb2/MsgHandle;->queue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 216
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    iget-object v1, v1, Lcom/powervision/gcs/usb2/MsgHandle;->queue:Ljava/util/LinkedList;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    iget-object v1, v1, Lcom/powervision/gcs/usb2/MsgHandle;->queue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 217
    invoke-virtual {p0}, Lcom/powervision/gcs/usb2/MsgTask;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_2

    .line 223
    iget-object v1, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    iget-object v1, v1, Lcom/powervision/gcs/usb2/MsgHandle;->queue:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    .line 224
    iget-object v2, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    if-eqz v2, :cond_1

    .line 226
    iget-object v2, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    invoke-virtual {v2, v1}, Lcom/powervision/gcs/usb2/MsgHandle;->work(Ljava/lang/Object;)V

    goto :goto_1

    .line 218
    :cond_2
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 231
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    iget-object v0, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    iget-boolean v0, v0, Lcom/powervision/gcs/usb2/MsgHandle;->isClear:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    iget-object v0, v0, Lcom/powervision/gcs/usb2/MsgHandle;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 234
    :cond_4
    invoke-virtual {p0}, Lcom/powervision/gcs/usb2/MsgTask;->lockThis()V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 231
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 208
    :cond_5
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public work_noClone2()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 74
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    if-eqz v0, :cond_3

    iget-boolean v0, v0, Lcom/powervision/gcs/usb2/MsgHandle;->running:Z

    if-eqz v0, :cond_3

    .line 75
    invoke-virtual {p0}, Lcom/powervision/gcs/usb2/MsgTask;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 79
    iget-object v1, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    iget-object v1, v1, Lcom/powervision/gcs/usb2/MsgHandle;->queue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 80
    :try_start_0
    iget-object v2, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    iget-object v2, v2, Lcom/powervision/gcs/usb2/MsgHandle;->queue:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    iget-object v2, v2, Lcom/powervision/gcs/usb2/MsgHandle;->queue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 81
    iget-object v0, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    iget-object v0, v0, Lcom/powervision/gcs/usb2/MsgHandle;->queue:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 85
    :cond_1
    iget-object v2, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    iget-object v2, v2, Lcom/powervision/gcs/usb2/MsgHandle;->queue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 88
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    iget-object v1, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v1, v0}, Lcom/powervision/gcs/usb2/MsgHandle;->work(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 88
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 76
    :cond_2
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_3
    return-void
.end method

.method public work_queque()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 100
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/powervision/gcs/usb2/MsgTask;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 104
    iget-object v1, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    iget-object v1, v1, Lcom/powervision/gcs/usb2/MsgHandle;->queue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 105
    :try_start_0
    iget-object v2, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    iget-object v2, v2, Lcom/powervision/gcs/usb2/MsgHandle;->queue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 106
    iget-object v0, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    iget-object v0, v0, Lcom/powervision/gcs/usb2/MsgHandle;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 107
    iget-object v2, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/powervision/gcs/usb2/MsgHandle;->isClear:Z

    .line 108
    iget-object v2, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    iget-object v2, v2, Lcom/powervision/gcs/usb2/MsgHandle;->queue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 110
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    if-eqz v0, :cond_4

    .line 113
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 114
    invoke-virtual {p0}, Lcom/powervision/gcs/usb2/MsgTask;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    .line 117
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    .line 120
    iget-object v2, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    if-eqz v2, :cond_2

    .line 121
    invoke-virtual {v2, v1}, Lcom/powervision/gcs/usb2/MsgHandle;->work(Ljava/lang/Object;)V

    goto :goto_1

    .line 115
    :cond_3
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 124
    :cond_4
    iget-object v0, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    iget-boolean v0, v0, Lcom/powervision/gcs/usb2/MsgHandle;->isClear:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    iget-object v0, v0, Lcom/powervision/gcs/usb2/MsgHandle;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 125
    :cond_5
    invoke-virtual {p0}, Lcom/powervision/gcs/usb2/MsgTask;->lockThis()V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 110
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 101
    :cond_6
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public work_stack()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 167
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/powervision/gcs/usb2/MsgTask;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    .line 172
    iget-object v1, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    iget-object v1, v1, Lcom/powervision/gcs/usb2/MsgHandle;->stack:Ljava/util/Stack;

    monitor-enter v1

    .line 173
    :try_start_0
    iget-object v2, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    iget-object v2, v2, Lcom/powervision/gcs/usb2/MsgHandle;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 174
    iget-object v0, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    iget-object v0, v0, Lcom/powervision/gcs/usb2/MsgHandle;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    .line 175
    iget-object v2, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/powervision/gcs/usb2/MsgHandle;->isClear:Z

    .line 176
    iget-object v2, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    iget-object v2, v2, Lcom/powervision/gcs/usb2/MsgHandle;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->clear()V

    .line 178
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    if-eqz v0, :cond_5

    .line 181
    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 182
    invoke-virtual {p0}, Lcom/powervision/gcs/usb2/MsgTask;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_4

    .line 186
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    .line 188
    iget-object v2, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    iget-boolean v2, v2, Lcom/powervision/gcs/usb2/MsgHandle;->firstAlawys:Z

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 189
    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 193
    :cond_3
    iget-object v2, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    if-eqz v2, :cond_2

    .line 194
    invoke-virtual {v2, v1}, Lcom/powervision/gcs/usb2/MsgHandle;->work(Ljava/lang/Object;)V

    goto :goto_1

    .line 183
    :cond_4
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 198
    :cond_5
    iget-object v0, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    iget-boolean v0, v0, Lcom/powervision/gcs/usb2/MsgHandle;->isClear:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    iget-object v0, v0, Lcom/powervision/gcs/usb2/MsgHandle;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 199
    :cond_6
    invoke-virtual {p0}, Lcom/powervision/gcs/usb2/MsgTask;->lockThis()V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 178
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 168
    :cond_7
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public work_withTimeOutMode()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 131
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/powervision/gcs/usb2/MsgTask;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 135
    iget-object v1, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    iget-object v1, v1, Lcom/powervision/gcs/usb2/MsgHandle;->queue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 136
    :try_start_0
    iget-object v2, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    iget-object v2, v2, Lcom/powervision/gcs/usb2/MsgHandle;->queue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 137
    iget-object v0, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    iget-object v0, v0, Lcom/powervision/gcs/usb2/MsgHandle;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 138
    iget-object v2, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/powervision/gcs/usb2/MsgHandle;->isClear:Z

    .line 139
    iget-object v2, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    iget-object v2, v2, Lcom/powervision/gcs/usb2/MsgHandle;->queue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 141
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    if-eqz v0, :cond_4

    .line 144
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 145
    invoke-virtual {p0}, Lcom/powervision/gcs/usb2/MsgTask;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    .line 148
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    .line 151
    iget-object v2, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    if-eqz v2, :cond_2

    .line 152
    invoke-virtual {v2, v1}, Lcom/powervision/gcs/usb2/MsgHandle;->work(Ljava/lang/Object;)V

    goto :goto_1

    .line 146
    :cond_3
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 155
    :cond_4
    iget-object v0, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    iget-boolean v0, v0, Lcom/powervision/gcs/usb2/MsgHandle;->isClear:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/powervision/gcs/usb2/MsgTask;->connectHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    iget-object v0, v0, Lcom/powervision/gcs/usb2/MsgHandle;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 156
    :cond_5
    invoke-virtual {p0}, Lcom/powervision/gcs/usb2/MsgTask;->lockThis()V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 141
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 132
    :cond_6
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method
