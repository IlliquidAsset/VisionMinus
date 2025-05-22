.class Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils$MsgHandle;
.super Ljava/lang/Thread;
.source "W4RemoteSdkSendParamUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MsgHandle"
.end annotation


# instance fields
.field isClear:Ljava/util/concurrent/atomic/AtomicBoolean;

.field msgTool:Lcom/powervision/natives/connect/W4BodySdkSendParamUtils$MsgTool;

.field queue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/natives/connect/ParamMsg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 92
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils$MsgHandle;->isClear:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils$MsgHandle;->queue:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils$MsgHandle;->msgTool:Lcom/powervision/natives/connect/W4BodySdkSendParamUtils$MsgTool;

    return-void
.end method

.method synthetic constructor <init>(Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils$1;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils$MsgHandle;-><init>()V

    return-void
.end method


# virtual methods
.method public addAWork(Lcom/powervision/natives/connect/ParamMsg;)V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils$MsgHandle;->queue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils$MsgHandle;->isClear:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 100
    iget-object v1, p0, Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils$MsgHandle;->queue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    invoke-virtual {p0}, Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils$MsgHandle;->notifyThis()V

    return-void

    :catchall_0
    move-exception p1

    .line 101
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

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
    .locals 4

    .line 115
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 118
    :try_start_0
    invoke-virtual {p0}, Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils$MsgHandle;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 125
    iget-object v1, p0, Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils$MsgHandle;->queue:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :try_start_1
    iget-object v2, p0, Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils$MsgHandle;->queue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 127
    iget-object v0, p0, Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils$MsgHandle;->queue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 128
    iget-object v2, p0, Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils$MsgHandle;->isClear:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 129
    iget-object v2, p0, Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils$MsgHandle;->queue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 131
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 135
    :try_start_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    .line 136
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/natives/connect/ParamMsg;

    .line 137
    iget v2, v1, Lcom/powervision/natives/connect/ParamMsg;->waitTime:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 138
    iget-object v2, v1, Lcom/powervision/natives/connect/ParamMsg;->param:Ljava/lang/String;

    .line 139
    iget-object v2, p0, Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils$MsgHandle;->msgTool:Lcom/powervision/natives/connect/W4BodySdkSendParamUtils$MsgTool;

    if-eqz v2, :cond_2

    .line 140
    iget-object v2, p0, Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils$MsgHandle;->msgTool:Lcom/powervision/natives/connect/W4BodySdkSendParamUtils$MsgTool;

    invoke-interface {v2, v1}, Lcom/powervision/natives/connect/W4BodySdkSendParamUtils$MsgTool;->work(Lcom/powervision/natives/connect/ParamMsg;)V

    goto :goto_1

    .line 143
    :cond_3
    iget-object v0, p0, Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils$MsgHandle;->isClear:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils$MsgHandle;->queue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 144
    :cond_4
    invoke-virtual {p0}, Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils$MsgHandle;->lockThis()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 131
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 119
    :cond_5
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return-void
.end method

.method public setmsgTool(Lcom/powervision/natives/connect/W4BodySdkSendParamUtils$MsgTool;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils$MsgHandle;->msgTool:Lcom/powervision/natives/connect/W4BodySdkSendParamUtils$MsgTool;

    return-void
.end method
