.class public Lcom/mob/tools/utils/FileLocker;
.super Ljava/lang/Object;
.source "FileLocker.java"


# instance fields
.field private fos:Ljava/io/FileOutputStream;

.field private lock:Ljava/nio/channels/FileLock;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getLock(Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 129
    iget-object p1, p0, Lcom/mob/tools/utils/FileLocker;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object p1

    iput-object p1, p0, Lcom/mob/tools/utils/FileLocker;->lock:Ljava/nio/channels/FileLock;

    goto :goto_0

    .line 131
    :cond_0
    iget-object p1, p0, Lcom/mob/tools/utils/FileLocker;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object p1

    iput-object p1, p0, Lcom/mob/tools/utils/FileLocker;->lock:Ljava/nio/channels/FileLock;

    .line 133
    :goto_0
    iget-object p1, p0, Lcom/mob/tools/utils/FileLocker;->lock:Ljava/nio/channels/FileLock;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method


# virtual methods
.method public declared-synchronized lock(Ljava/lang/Runnable;Z)V
    .locals 0

    monitor-enter p0

    .line 143
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/mob/tools/utils/FileLocker;->lock(Z)Z

    move-result p2

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 144
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized lock(Z)Z
    .locals 8

    monitor-enter p0

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x3e8

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1f4

    :goto_0
    move-wide v4, v0

    const-wide/16 v6, 0x10

    move-object v2, p0

    move v3, p1

    .line 62
    :try_start_0
    invoke-virtual/range {v2 .. v7}, Lcom/mob/tools/utils/FileLocker;->lock(ZJJ)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized lock(ZJJ)Z
    .locals 8

    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/FileLocker;->fos:Ljava/io/FileOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 75
    monitor-exit p0

    return v1

    .line 79
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/FileLocker;->getLock(Z)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception v0

    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-lez v4, :cond_4

    .line 81
    :try_start_2
    instance-of v4, v0, Ljava/nio/channels/OverlappingFileLockException;

    if-eqz v4, :cond_4

    .line 83
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    add-long/2addr v4, p2

    :cond_1
    :goto_0
    cmp-long v6, p2, v2

    if-lez v6, :cond_3

    .line 88
    :try_start_3
    invoke-static {p4, p5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 90
    :catchall_1
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    sub-long p2, v4, p2

    .line 91
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/FileLocker;->getLock(Z)Z

    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v6

    .line 94
    :try_start_5
    instance-of v6, v6, Ljava/nio/channels/OverlappingFileLockException;

    if-eqz v6, :cond_2

    cmp-long v6, p2, v2

    if-gtz v6, :cond_1

    .line 96
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v6

    const-string v7, "OverlappingFileLockException and timeout"

    invoke-virtual {v6, v7}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/String;)I

    goto :goto_0

    .line 99
    :cond_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    const-wide/16 p2, -0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_1
    cmp-long p4, p2, v2

    if-lez p4, :cond_5

    .line 105
    monitor-exit p0

    return p1

    .line 108
    :cond_4
    :try_start_6
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 110
    :cond_5
    iget-object p1, p0, Lcom/mob/tools/utils/FileLocker;->lock:Ljava/nio/channels/FileLock;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    const/4 p2, 0x0

    if-eqz p1, :cond_6

    .line 112
    :try_start_7
    iget-object p1, p0, Lcom/mob/tools/utils/FileLocker;->lock:Ljava/nio/channels/FileLock;

    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 114
    :catchall_3
    :try_start_8
    iput-object p2, p0, Lcom/mob/tools/utils/FileLocker;->lock:Ljava/nio/channels/FileLock;

    .line 116
    :cond_6
    iget-object p1, p0, Lcom/mob/tools/utils/FileLocker;->fos:Ljava/io/FileOutputStream;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-eqz p1, :cond_7

    .line 118
    :try_start_9
    iget-object p1, p0, Lcom/mob/tools/utils/FileLocker;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 120
    :catchall_4
    :try_start_a
    iput-object p2, p0, Lcom/mob/tools/utils/FileLocker;->fos:Ljava/io/FileOutputStream;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 124
    :cond_7
    monitor-exit p0

    return v1

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized release()V
    .locals 1

    monitor-enter p0

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/FileLocker;->fos:Ljava/io/FileOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 161
    monitor-exit p0

    return-void

    .line 164
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/mob/tools/utils/FileLocker;->unlock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 167
    :try_start_2
    iget-object v0, p0, Lcom/mob/tools/utils/FileLocker;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    const/4 v0, 0x0

    .line 169
    :try_start_3
    iput-object v0, p0, Lcom/mob/tools/utils/FileLocker;->fos:Ljava/io/FileOutputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 170
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLockFile(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 41
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mob/tools/utils/FileLocker;->fos:Ljava/io/FileOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 43
    :catchall_0
    :try_start_1
    iget-object p1, p0, Lcom/mob/tools/utils/FileLocker;->fos:Ljava/io/FileOutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz p1, :cond_0

    .line 45
    :try_start_2
    iget-object p1, p0, Lcom/mob/tools/utils/FileLocker;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    const/4 p1, 0x0

    .line 47
    :try_start_3
    iput-object p1, p0, Lcom/mob/tools/utils/FileLocker;->fos:Ljava/io/FileOutputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 50
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unlock()V
    .locals 1

    monitor-enter p0

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/FileLocker;->lock:Ljava/nio/channels/FileLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 150
    monitor-exit p0

    return-void

    .line 154
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mob/tools/utils/FileLocker;->lock:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    const/4 v0, 0x0

    .line 156
    :try_start_2
    iput-object v0, p0, Lcom/mob/tools/utils/FileLocker;->lock:Ljava/nio/channels/FileLock;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 157
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
