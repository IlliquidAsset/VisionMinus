.class public abstract Lcom/powervision/gcs/usb2/MsgHandle;
.super Ljava/lang/Object;
.source "MsgHandle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public Limate:I

.field firstAlawys:Z

.field isClear:Z

.field public queue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "TT;>;"
        }
    .end annotation
.end field

.field public running:Z

.field private sleepTime:J

.field stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile tag:Ljava/lang/Object;

.field private timeOutTime:I

.field public type:I

.field who:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/powervision/gcs/usb2/MsgHandle;->isClear:Z

    const/16 v1, 0x8c

    .line 16
    iput v1, p0, Lcom/powervision/gcs/usb2/MsgHandle;->Limate:I

    const/4 v1, 0x0

    .line 18
    iput-boolean v1, p0, Lcom/powervision/gcs/usb2/MsgHandle;->running:Z

    .line 21
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/powervision/gcs/usb2/MsgHandle;->queue:Ljava/util/LinkedList;

    .line 22
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lcom/powervision/gcs/usb2/MsgHandle;->stack:Ljava/util/Stack;

    const-wide/16 v2, 0x14

    .line 32
    iput-wide v2, p0, Lcom/powervision/gcs/usb2/MsgHandle;->sleepTime:J

    const/4 v2, -0x1

    .line 50
    iput v2, p0, Lcom/powervision/gcs/usb2/MsgHandle;->timeOutTime:I

    const/4 v2, 0x0

    .line 51
    iput-object v2, p0, Lcom/powervision/gcs/usb2/MsgHandle;->tag:Ljava/lang/Object;

    .line 67
    iput v0, p0, Lcom/powervision/gcs/usb2/MsgHandle;->type:I

    .line 72
    iput-boolean v1, p0, Lcom/powervision/gcs/usb2/MsgHandle;->firstAlawys:Z

    .line 86
    iput v1, p0, Lcom/powervision/gcs/usb2/MsgHandle;->who:I

    return-void
.end method


# virtual methods
.method public addAWork_queue(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/powervision/gcs/usb2/MsgHandle;->queue:Ljava/util/LinkedList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 100
    :try_start_0
    iput-boolean v1, p0, Lcom/powervision/gcs/usb2/MsgHandle;->isClear:Z

    .line 101
    iget-object v1, p0, Lcom/powervision/gcs/usb2/MsgHandle;->queue:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-virtual {p0}, Lcom/powervision/gcs/usb2/MsgHandle;->notifyTheMaster()V

    .line 103
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addAWork_queue_send(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "lzqSend"

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queue.size():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/gcs/usb2/MsgHandle;->queue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/powervision/gcs/usb2/MsgHandle;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/powervision/gcs/usb2/MsgHandle;->Limate:I

    if-le v0, v1, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    :try_start_0
    const-string v0, "lzqSend"

    const-string v1, " wait "

    .line 110
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x32

    .line 111
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 113
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 117
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/powervision/gcs/usb2/MsgHandle;->queue:Ljava/util/LinkedList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 118
    :try_start_1
    iput-boolean v1, p0, Lcom/powervision/gcs/usb2/MsgHandle;->isClear:Z

    .line 119
    iget-object v1, p0, Lcom/powervision/gcs/usb2/MsgHandle;->queue:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-virtual {p0}, Lcom/powervision/gcs/usb2/MsgHandle;->notifyTheMaster()V

    .line 121
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public addFastQueue(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/powervision/gcs/usb2/MsgHandle;->queue:Ljava/util/LinkedList;

    monitor-enter v0

    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/powervision/gcs/usb2/MsgHandle;->queue:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 132
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addWork_stack(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/powervision/gcs/usb2/MsgHandle;->stack:Ljava/util/Stack;

    monitor-enter v0

    const/4 v1, 0x0

    .line 137
    :try_start_0
    iput-boolean v1, p0, Lcom/powervision/gcs/usb2/MsgHandle;->isClear:Z

    .line 138
    iget-object v1, p0, Lcom/powervision/gcs/usb2/MsgHandle;->stack:Ljava/util/Stack;

    invoke-virtual {v1, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-virtual {p0}, Lcom/powervision/gcs/usb2/MsgHandle;->notifyTheMaster()V

    .line 140
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public abstract free()V
.end method

.method public getSleepTime()J
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/powervision/gcs/usb2/MsgHandle;->sleepTime:J

    return-wide v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/powervision/gcs/usb2/MsgHandle;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public getTimeOutTime()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/powervision/gcs/usb2/MsgHandle;->timeOutTime:I

    return v0
.end method

.method public getWho()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/powervision/gcs/usb2/MsgHandle;->who:I

    return v0
.end method

.method public logQueue(Ljava/lang/String;)V
    .locals 2

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addQueue len:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/gcs/usb2/MsgHandle;->queue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public abstract notifyTheMaster()V
.end method

.method public abstract onInit()V
.end method

.method public setGetFirstAlways(Z)V
    .locals 0

    .line 74
    iput-boolean p1, p0, Lcom/powervision/gcs/usb2/MsgHandle;->firstAlawys:Z

    return-void
.end method

.method public setQueueOrStack(I)V
    .locals 0

    .line 70
    iput p1, p0, Lcom/powervision/gcs/usb2/MsgHandle;->type:I

    return-void
.end method

.method public setSleepTime(J)V
    .locals 0

    .line 29
    iput-wide p1, p0, Lcom/powervision/gcs/usb2/MsgHandle;->sleepTime:J

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/powervision/gcs/usb2/MsgHandle;->tag:Ljava/lang/Object;

    return-void
.end method

.method public setTimeOutTime(I)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/powervision/gcs/usb2/MsgHandle;->timeOutTime:I

    return-void
.end method

.method public setWho(I)V
    .locals 0

    .line 83
    iput p1, p0, Lcom/powervision/gcs/usb2/MsgHandle;->who:I

    return-void
.end method

.method public abstract stopTheMasterInmedratily()V
.end method

.method public abstract work(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
