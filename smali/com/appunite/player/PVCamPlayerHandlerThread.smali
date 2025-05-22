.class public Lcom/appunite/player/PVCamPlayerHandlerThread;
.super Ljava/lang/Thread;
.source "PVCamPlayerHandlerThread.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field mLooper:Landroid/os/Looper;

.field mPriority:I

.field mTid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 22
    iput p1, p0, Lcom/appunite/player/PVCamPlayerHandlerThread;->mTid:I

    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lcom/appunite/player/PVCamPlayerHandlerThread;->mPriority:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 22
    iput p1, p0, Lcom/appunite/player/PVCamPlayerHandlerThread;->mTid:I

    .line 39
    iput p2, p0, Lcom/appunite/player/PVCamPlayerHandlerThread;->mPriority:I

    return-void
.end method


# virtual methods
.method public getLooper()Landroid/os/Looper;
    .locals 1

    .line 78
    invoke-virtual {p0}, Lcom/appunite/player/PVCamPlayerHandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 83
    :cond_0
    monitor-enter p0

    .line 84
    :catch_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/appunite/player/PVCamPlayerHandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appunite/player/PVCamPlayerHandlerThread;->mLooper:Landroid/os/Looper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 86
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 90
    :cond_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    iget-object v0, p0, Lcom/appunite/player/PVCamPlayerHandlerThread;->mLooper:Landroid/os/Looper;

    return-object v0

    :catchall_0
    move-exception v0

    .line 90
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public getThreadHandler()Landroid/os/Handler;
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/appunite/player/PVCamPlayerHandlerThread;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/appunite/player/PVCamPlayerHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/appunite/player/PVCamPlayerHandlerThread;->mHandler:Landroid/os/Handler;

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/appunite/player/PVCamPlayerHandlerThread;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getThreadId()I
    .locals 1

    .line 164
    iget v0, p0, Lcom/appunite/player/PVCamPlayerHandlerThread;->mTid:I

    return v0
.end method

.method protected onLooperPrepared()V
    .locals 0

    return-void
.end method

.method public quit()Z
    .locals 1

    .line 125
    invoke-virtual {p0}, Lcom/appunite/player/PVCamPlayerHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public quitSafely()Z
    .locals 1

    .line 152
    invoke-virtual {p0}, Lcom/appunite/player/PVCamPlayerHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public run()V
    .locals 1

    .line 59
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iput v0, p0, Lcom/appunite/player/PVCamPlayerHandlerThread;->mTid:I

    .line 60
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 61
    monitor-enter p0

    .line 62
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/appunite/player/PVCamPlayerHandlerThread;->mLooper:Landroid/os/Looper;

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 64
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    iget v0, p0, Lcom/appunite/player/PVCamPlayerHandlerThread;->mPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 66
    invoke-virtual {p0}, Lcom/appunite/player/PVCamPlayerHandlerThread;->onLooperPrepared()V

    .line 67
    invoke-static {}, Landroid/os/Looper;->loop()V

    const/4 v0, -0x1

    .line 68
    iput v0, p0, Lcom/appunite/player/PVCamPlayerHandlerThread;->mTid:I

    return-void

    :catchall_0
    move-exception v0

    .line 64
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setCustomerHandler(Landroid/os/Handler;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/appunite/player/PVCamPlayerHandlerThread;->mHandler:Landroid/os/Handler;

    return-void
.end method
