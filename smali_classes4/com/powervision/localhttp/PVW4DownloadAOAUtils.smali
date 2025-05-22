.class public Lcom/powervision/localhttp/PVW4DownloadAOAUtils;
.super Lcom/powervision/localhttp/PVW4DownloadManager;
.source "PVW4DownloadAOAUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/localhttp/PVW4DownloadAOAUtils$TimeoutRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "lzqPVW4DownloadAOAUtils"

.field public static final TIMEOUT_TIMES:I = 0x1388

.field private static mHandler:Landroid/os/Handler;

.field private static mInstance:Lcom/powervision/localhttp/PVW4DownloadAOAUtils;


# instance fields
.field private currentReceiveLength:I

.field private downloadFile:Ljava/io/File;

.field private isStart:Z

.field private mCurrentContentLength:J

.field private mCurrentContentRemainLength:J

.field private mCurrentContentTotalLength:J

.field private mFollowUpTimes:I

.field private mTimeoutRunnable:Lcom/powervision/localhttp/PVW4DownloadAOAUtils$TimeoutRunnable;

.field onCancelCallBack:Lcom/powervision/gcs/usb2/HttpUsbManager$OnSendStartCallBack;

.field onSendStartCallBack:Lcom/powervision/gcs/usb2/HttpUsbManager$OnSendStartCallBack;

.field private randomAccessFile:Ljava/io/RandomAccessFile;

.field retryWaitTime:I

.field private timer_speed:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;

    invoke-direct {v0}, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;-><init>()V

    sput-object v0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->mInstance:Lcom/powervision/localhttp/PVW4DownloadAOAUtils;

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 38
    invoke-direct {p0}, Lcom/powervision/localhttp/PVW4DownloadManager;-><init>()V

    const-wide/16 v0, 0x0

    .line 25
    iput-wide v0, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->mCurrentContentTotalLength:J

    .line 26
    iput-wide v0, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->mCurrentContentLength:J

    .line 27
    iput-wide v0, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->mCurrentContentRemainLength:J

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->mFollowUpTimes:I

    .line 36
    new-instance v1, Lcom/powervision/localhttp/PVW4DownloadAOAUtils$TimeoutRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/powervision/localhttp/PVW4DownloadAOAUtils$TimeoutRunnable;-><init>(Lcom/powervision/localhttp/PVW4DownloadAOAUtils;Lcom/powervision/localhttp/PVW4DownloadAOAUtils$1;)V

    iput-object v1, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->mTimeoutRunnable:Lcom/powervision/localhttp/PVW4DownloadAOAUtils$TimeoutRunnable;

    .line 161
    new-instance v1, Lcom/powervision/localhttp/PVW4DownloadAOAUtils$1;

    invoke-direct {v1, p0}, Lcom/powervision/localhttp/PVW4DownloadAOAUtils$1;-><init>(Lcom/powervision/localhttp/PVW4DownloadAOAUtils;)V

    iput-object v1, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->onCancelCallBack:Lcom/powervision/gcs/usb2/HttpUsbManager$OnSendStartCallBack;

    .line 236
    iput-boolean v0, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->isStart:Z

    .line 404
    iput v0, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->retryWaitTime:I

    .line 406
    new-instance v0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils$3;

    invoke-direct {v0, p0}, Lcom/powervision/localhttp/PVW4DownloadAOAUtils$3;-><init>(Lcom/powervision/localhttp/PVW4DownloadAOAUtils;)V

    iput-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->onSendStartCallBack:Lcom/powervision/gcs/usb2/HttpUsbManager$OnSendStartCallBack;

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/localhttp/PVW4DownloadAOAUtils;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->currentReceiveLength:I

    return p0
.end method

.method static synthetic access$200(Lcom/powervision/localhttp/PVW4DownloadAOAUtils;)J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->mCurrentContentTotalLength:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/powervision/localhttp/PVW4DownloadAOAUtils;J)J
    .locals 0

    .line 19
    iput-wide p1, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->mCurrentContentTotalLength:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/powervision/localhttp/PVW4DownloadAOAUtils;)J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->mCurrentContentLength:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/powervision/localhttp/PVW4DownloadAOAUtils;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->mFollowUpTimes:I

    return p0
.end method

.method static synthetic access$402(Lcom/powervision/localhttp/PVW4DownloadAOAUtils;I)I
    .locals 0

    .line 19
    iput p1, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->mFollowUpTimes:I

    return p1
.end method

.method static synthetic access$404(Lcom/powervision/localhttp/PVW4DownloadAOAUtils;)I
    .locals 1

    .line 19
    iget v0, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->mFollowUpTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->mFollowUpTimes:I

    return v0
.end method

.method static synthetic access$500()Landroid/os/Handler;
    .locals 1

    .line 19
    sget-object v0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static get()Lcom/powervision/localhttp/PVW4DownloadAOAUtils;
    .locals 1

    .line 46
    sget-object v0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->mInstance:Lcom/powervision/localhttp/PVW4DownloadAOAUtils;

    return-object v0
.end method

.method private timerCancel()V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->timer_speed:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancelCurrentDownloadTask(Z)V
    .locals 2

    .line 130
    invoke-super {p0, p1}, Lcom/powervision/localhttp/PVW4DownloadManager;->cancelCurrentDownloadTask(Z)V

    const-string v0, "lzqPVW4DownloadAOAUtils"

    const-string v1, "cancelCurrentDownloadTask: --------------------------"

    .line 131
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    .line 132
    iput-wide v0, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->mCurrentContentTotalLength:J

    .line 133
    sget-object v0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->randomAccessFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 137
    iput-object v1, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->randomAccessFile:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 140
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 144
    :cond_0
    :goto_0
    sget v0, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->DEVICE:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 145
    invoke-static {}, Lcom/powervision/localhttp/PVW4CameraAOAUtils;->get()Lcom/powervision/localhttp/PVW4CameraAOAUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/localhttp/PVW4CameraAOAUtils;->cancelDownloadRequest()V

    goto :goto_1

    .line 148
    :cond_1
    invoke-static {}, Lcom/powervision/localhttp/AP03CameraAOAUtils;->get()Lcom/powervision/localhttp/AP03CameraAOAUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/localhttp/AP03CameraAOAUtils;->cancelDownloadRequest()V

    .line 150
    :goto_1
    invoke-direct {p0}, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->timerCancel()V

    if-eqz p1, :cond_2

    .line 152
    iget-object p1, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->downloadFile:Ljava/io/File;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 153
    iget-object p1, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->downloadFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_2
    return-void
.end method

.method public currentDownloadTaskTimeout(Z)V
    .locals 2

    .line 103
    invoke-super {p0, p1}, Lcom/powervision/localhttp/PVW4DownloadManager;->currentDownloadTaskTimeout(Z)V

    const-wide/16 v0, 0x0

    .line 104
    iput-wide v0, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->mCurrentContentTotalLength:J

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->randomAccessFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->randomAccessFile:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 111
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 115
    :cond_0
    :goto_0
    sget v0, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->DEVICE:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 116
    invoke-static {}, Lcom/powervision/localhttp/PVW4CameraAOAUtils;->get()Lcom/powervision/localhttp/PVW4CameraAOAUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/localhttp/PVW4CameraAOAUtils;->cancelDownloadRequest()V

    goto :goto_1

    .line 118
    :cond_1
    invoke-static {}, Lcom/powervision/localhttp/AP03CameraAOAUtils;->get()Lcom/powervision/localhttp/AP03CameraAOAUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/localhttp/AP03CameraAOAUtils;->cancelDownloadRequest()V

    .line 120
    :goto_1
    invoke-direct {p0}, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->timerCancel()V

    if-eqz p1, :cond_2

    .line 122
    iget-object p1, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->downloadFile:Ljava/io/File;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 123
    iget-object p1, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->downloadFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_2
    return-void
.end method

.method public receiveIO([B)V
    .locals 12

    const-string v0, "lzqPVW4DownloadAOAUtils"

    .line 254
    iget-wide v1, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->mCurrentContentTotalLength:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    return-void

    .line 257
    :cond_0
    iget-wide v1, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->mCurrentContentRemainLength:J

    const/4 v5, 0x1

    cmp-long v6, v1, v3

    if-gtz v6, :cond_1

    .line 258
    invoke-virtual {p0, v5}, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->retryDownloadCurrentTask(Z)V

    return-void

    .line 262
    :cond_1
    array-length v1, p1

    iput v1, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->currentReceiveLength:I

    .line 266
    :try_start_0
    iget-object v1, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->randomAccessFile:Ljava/io/RandomAccessFile;

    if-nez v1, :cond_2

    .line 269
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->downloadFile:Ljava/io/File;

    const-string v6, "rwd"

    invoke-direct {v1, v2, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 270
    iget-wide v6, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->mCurrentContentLength:J

    invoke-virtual {v1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 274
    :cond_2
    iget-wide v1, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->mCurrentContentLength:J

    iget v6, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->currentReceiveLength:I

    int-to-long v6, v6

    add-long/2addr v1, v6

    iput-wide v1, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->mCurrentContentLength:J

    .line 276
    iget-wide v6, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->mCurrentContentTotalLength:J

    cmp-long v8, v6, v1

    if-gez v8, :cond_3

    return-void

    :cond_3
    const/4 v1, 0x0

    .line 280
    iput v1, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->mFollowUpTimes:I

    .line 281
    sget-object v2, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->mTimeoutRunnable:Lcom/powervision/localhttp/PVW4DownloadAOAUtils$TimeoutRunnable;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 282
    sget-object v2, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->mTimeoutRunnable:Lcom/powervision/localhttp/PVW4DownloadAOAUtils$TimeoutRunnable;

    const-wide/16 v7, 0x1388

    invoke-virtual {v2, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 284
    iget-object v2, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, p1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 285
    iget-boolean p1, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->isStart:Z

    if-eqz p1, :cond_4

    const-string p1, "receiveIO-isStart"

    .line 287
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 289
    :cond_4
    iput-boolean v5, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->isStart:Z

    .line 290
    new-instance v6, Ljava/util/Timer;

    invoke-direct {v6}, Ljava/util/Timer;-><init>()V

    iput-object v6, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->timer_speed:Ljava/util/Timer;

    .line 292
    new-instance v7, Lcom/powervision/localhttp/PVW4DownloadAOAUtils$2;

    invoke-direct {v7, p0}, Lcom/powervision/localhttp/PVW4DownloadAOAUtils$2;-><init>(Lcom/powervision/localhttp/PVW4DownloadAOAUtils;)V

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x3e8

    invoke-virtual/range {v6 .. v11}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 340
    :goto_0
    iget-wide v6, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->mCurrentContentTotalLength:J

    iget-wide v8, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->mCurrentContentLength:J

    cmp-long p1, v6, v8

    if-nez p1, :cond_7

    .line 341
    iput-wide v3, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->mCurrentContentTotalLength:J

    .line 342
    sget-object p1, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->mTimeoutRunnable:Lcom/powervision/localhttp/PVW4DownloadAOAUtils$TimeoutRunnable;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 343
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receiveIO: timer_speed != null -> "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->timer_speed:Ljava/util/Timer;

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object p1, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->timer_speed:Ljava/util/Timer;

    if-eqz p1, :cond_6

    .line 345
    iget-object p1, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->timer_speed:Ljava/util/Timer;

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 347
    :cond_6
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadHelper;->getInstance()Lcom/powervision/localhttp/PVW4DownloadHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/localhttp/PVW4DownloadHelper;->getDelivery()Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Lcom/powervision/localhttp/-$$Lambda$fzeRq3zcGjnPhbAxXKTEGRG_rE4;

    invoke-direct {v1, p0}, Lcom/powervision/localhttp/-$$Lambda$fzeRq3zcGjnPhbAxXKTEGRG_rE4;-><init>(Lcom/powervision/localhttp/PVW4DownloadAOAUtils;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 348
    iget-object p1, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->randomAccessFile:Ljava/io/RandomAccessFile;

    if-eqz p1, :cond_7

    .line 349
    iget-object p1, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V

    const/4 p1, 0x0

    .line 350
    iput-object p1, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->randomAccessFile:Ljava/io/RandomAccessFile;

    const-string p1, "receiveIO: close"

    .line 351
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    .line 355
    :goto_2
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receiveIO: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadHelper;->getInstance()Lcom/powervision/localhttp/PVW4DownloadHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/localhttp/PVW4DownloadHelper;->getDelivery()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/powervision/localhttp/-$$Lambda$eA9ZoCRHTxMleY-La1QBTP_h32I;

    invoke-direct {v0, p0}, Lcom/powervision/localhttp/-$$Lambda$eA9ZoCRHTxMleY-La1QBTP_h32I;-><init>(Lcom/powervision/localhttp/PVW4DownloadAOAUtils;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 358
    iget-object p1, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->timer_speed:Ljava/util/Timer;

    if-eqz p1, :cond_7

    .line 359
    iget-object p1, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->timer_speed:Ljava/util/Timer;

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    :goto_3
    return-void

    .line 361
    :goto_4
    throw p1
.end method

.method protected retryDownloadCurrentTask(Z)V
    .locals 2

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "retryDownloadCurrentTask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqPVW4DownloadAOAUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->downloadFile:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->downloadFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 216
    :cond_0
    invoke-super {p0, p1}, Lcom/powervision/localhttp/PVW4DownloadManager;->retryDownloadCurrentTask(Z)V

    return-void
.end method

.method public setContentLength(J)V
    .locals 2

    const/4 v0, 0x0

    .line 225
    iput-boolean v0, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->isStart:Z

    .line 226
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->timer_speed:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 229
    :cond_0
    iput-wide p1, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->mCurrentContentRemainLength:J

    .line 230
    iget-wide v0, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->mCurrentContentLength:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->mCurrentContentTotalLength:J

    .line 231
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setContentLength: mCurrentContentLength-> "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->mCurrentContentTotalLength:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "lzqPVW4DownloadAOAUtils"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startDownload: mCurrentContentRemainLength-> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->mCurrentContentRemainLength:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startDownload(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    .line 51
    invoke-super/range {p0 .. p7}, Lcom/powervision/localhttp/PVW4DownloadManager;->startDownload(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 52
    iput-object p4, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->downloadDir:Ljava/lang/String;

    .line 53
    iput-object p5, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->fileName:Ljava/lang/String;

    .line 54
    new-instance p7, Ljava/io/File;

    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->downloadDir:Ljava/lang/String;

    invoke-direct {p7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startDownload: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->downloadDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqPVW4DownloadAOAUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {p7}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p7}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const-string p7, "http"

    .line 60
    invoke-virtual {p3, p7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p7

    if-nez p7, :cond_1

    .line 62
    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/powervision/base/config/PVW4CameraConfig;->get()Lcom/powervision/base/config/PVW4CameraConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/config/PVW4CameraConfig;->getHttpServerIp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_1
    move-object v3, p3

    .line 64
    new-instance p3, Ljava/io/File;

    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    invoke-direct {p3, p7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->downloadFile:Ljava/io/File;

    const-wide/16 v4, 0x0

    .line 65
    iput-wide v4, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->mCurrentContentLength:J

    .line 66
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/powervision/localhttp/FileUtil;->isFileExist(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 67
    iget-object p3, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->downloadFile:Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide p3

    iput-wide p3, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->mCurrentContentLength:J

    cmp-long p5, p1, v4

    if-lez p5, :cond_2

    cmp-long p5, p3, p1

    if-lez p5, :cond_2

    .line 70
    iget-object p1, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->downloadFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 71
    iput-wide v4, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->mCurrentContentLength:J

    .line 74
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "startDownload: mCurrentContentLength->"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->mCurrentContentLength:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_3
    sget p1, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->DEVICE:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_4

    .line 78
    invoke-static {}, Lcom/powervision/localhttp/PVW4CameraAOAUtils;->get()Lcom/powervision/localhttp/PVW4CameraAOAUtils;

    move-result-object v2

    iget-wide v4, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->mCurrentContentLength:J

    const-wide/16 v6, -0x1

    invoke-virtual/range {v2 .. v7}, Lcom/powervision/localhttp/PVW4CameraAOAUtils;->postDownloadRequest(Ljava/lang/String;JJ)V

    goto :goto_1

    :cond_4
    const-string p1, "0-0"

    .line 81
    invoke-virtual {p1, p6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 82
    invoke-static {}, Lcom/powervision/localhttp/AP03CameraAOAUtils;->get()Lcom/powervision/localhttp/AP03CameraAOAUtils;

    move-result-object v2

    iget-wide v4, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->mCurrentContentLength:J

    const-wide/16 v6, -0x1

    invoke-virtual/range {v2 .. v7}, Lcom/powervision/localhttp/AP03CameraAOAUtils;->postDownloadRequest(Ljava/lang/String;JJ)V

    goto :goto_1

    .line 85
    :cond_5
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_6

    const-string p1, "-"

    .line 86
    invoke-virtual {p6, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 87
    aget-object p2, p1, p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const/4 p3, 0x1

    .line 88
    aget-object p1, p1, p3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    .line 90
    :goto_0
    invoke-static {}, Lcom/powervision/localhttp/AP03CameraAOAUtils;->get()Lcom/powervision/localhttp/AP03CameraAOAUtils;

    move-result-object v2

    int-to-long p2, p2

    iget-wide p4, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->mCurrentContentLength:J

    add-long v4, p2, p4

    int-to-long v6, p1

    invoke-virtual/range {v2 .. v7}, Lcom/powervision/localhttp/AP03CameraAOAUtils;->postDownloadRequest(Ljava/lang/String;JJ)V

    .line 93
    :goto_1
    sget-object p1, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->mTimeoutRunnable:Lcom/powervision/localhttp/PVW4DownloadAOAUtils$TimeoutRunnable;

    const-wide/16 p3, 0x1388

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
