.class public abstract Lcom/powervision/gcs/utils/CountDownTimer;
.super Ljava/lang/Object;
.source "CountDownTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/utils/CountDownTimer$CountHandler;
    }
.end annotation


# static fields
.field private static final MSG:I = 0x1


# instance fields
.field private mCancelled:Z

.field private final mCountdownInterval:J

.field private mHandler:Lcom/powervision/gcs/utils/CountDownTimer$CountHandler;

.field private final mMillisInFuture:J

.field private mStopTimeInFuture:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/powervision/gcs/utils/CountDownTimer;->mCancelled:Z

    .line 131
    new-instance v0, Lcom/powervision/gcs/utils/CountDownTimer$CountHandler;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/utils/CountDownTimer$CountHandler;-><init>(Lcom/powervision/gcs/utils/CountDownTimer;)V

    iput-object v0, p0, Lcom/powervision/gcs/utils/CountDownTimer;->mHandler:Lcom/powervision/gcs/utils/CountDownTimer$CountHandler;

    .line 77
    iput-wide p1, p0, Lcom/powervision/gcs/utils/CountDownTimer;->mMillisInFuture:J

    .line 78
    iput-wide p3, p0, Lcom/powervision/gcs/utils/CountDownTimer;->mCountdownInterval:J

    return-void
.end method


# virtual methods
.method public final declared-synchronized cancel()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    .line 85
    :try_start_0
    iput-boolean v0, p0, Lcom/powervision/gcs/utils/CountDownTimer;->mCancelled:Z

    .line 86
    iget-object v1, p0, Lcom/powervision/gcs/utils/CountDownTimer;->mHandler:Lcom/powervision/gcs/utils/CountDownTimer$CountHandler;

    invoke-virtual {v1, v0}, Lcom/powervision/gcs/utils/CountDownTimer$CountHandler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 136
    monitor-enter p0

    .line 137
    :try_start_0
    iget-boolean p1, p0, Lcom/powervision/gcs/utils/CountDownTimer;->mCancelled:Z

    if-eqz p1, :cond_0

    .line 138
    monitor-exit p0

    return-void

    .line 141
    :cond_0
    iget-wide v0, p0, Lcom/powervision/gcs/utils/CountDownTimer;->mStopTimeInFuture:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_1

    .line 144
    invoke-virtual {p0}, Lcom/powervision/gcs/utils/CountDownTimer;->onFinish()V

    goto :goto_1

    .line 145
    :cond_1
    iget-wide v4, p0, Lcom/powervision/gcs/utils/CountDownTimer;->mCountdownInterval:J

    const/4 p1, 0x1

    cmp-long v6, v0, v4

    if-gez v6, :cond_2

    .line 147
    iget-object v2, p0, Lcom/powervision/gcs/utils/CountDownTimer;->mHandler:Lcom/powervision/gcs/utils/CountDownTimer$CountHandler;

    iget-object v3, p0, Lcom/powervision/gcs/utils/CountDownTimer;->mHandler:Lcom/powervision/gcs/utils/CountDownTimer$CountHandler;

    invoke-virtual {v3, p1}, Lcom/powervision/gcs/utils/CountDownTimer$CountHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v2, p1, v0, v1}, Lcom/powervision/gcs/utils/CountDownTimer$CountHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 149
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 150
    invoke-virtual {p0, v0, v1}, Lcom/powervision/gcs/utils/CountDownTimer;->onTick(J)V

    .line 153
    iget-wide v0, p0, Lcom/powervision/gcs/utils/CountDownTimer;->mCountdownInterval:J

    add-long/2addr v4, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v4, v0

    :goto_0
    cmp-long v0, v4, v2

    if-gez v0, :cond_3

    .line 157
    iget-wide v0, p0, Lcom/powervision/gcs/utils/CountDownTimer;->mCountdownInterval:J

    add-long/2addr v4, v0

    goto :goto_0

    .line 159
    :cond_3
    iget-object v0, p0, Lcom/powervision/gcs/utils/CountDownTimer;->mHandler:Lcom/powervision/gcs/utils/CountDownTimer$CountHandler;

    iget-object v1, p0, Lcom/powervision/gcs/utils/CountDownTimer;->mHandler:Lcom/powervision/gcs/utils/CountDownTimer$CountHandler;

    invoke-virtual {v1, p1}, Lcom/powervision/gcs/utils/CountDownTimer$CountHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, v4, v5}, Lcom/powervision/gcs/utils/CountDownTimer$CountHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 161
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public abstract onFinish()V
.end method

.method public abstract onTick(J)V
.end method

.method public final declared-synchronized start()Lcom/powervision/gcs/utils/CountDownTimer;
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    .line 93
    :try_start_0
    iput-boolean v0, p0, Lcom/powervision/gcs/utils/CountDownTimer;->mCancelled:Z

    .line 94
    iget-wide v0, p0, Lcom/powervision/gcs/utils/CountDownTimer;->mMillisInFuture:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/powervision/gcs/utils/CountDownTimer;->onFinish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-object p0

    .line 98
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/powervision/gcs/utils/CountDownTimer;->mMillisInFuture:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/powervision/gcs/utils/CountDownTimer;->mStopTimeInFuture:J

    .line 99
    iget-object v0, p0, Lcom/powervision/gcs/utils/CountDownTimer;->mHandler:Lcom/powervision/gcs/utils/CountDownTimer$CountHandler;

    iget-object v1, p0, Lcom/powervision/gcs/utils/CountDownTimer;->mHandler:Lcom/powervision/gcs/utils/CountDownTimer$CountHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/powervision/gcs/utils/CountDownTimer$CountHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/utils/CountDownTimer$CountHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
