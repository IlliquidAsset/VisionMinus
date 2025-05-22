.class Lcom/powervision/gcs/usb2/RtspUsbManager$RtspTimeOutLoop;
.super Ljava/lang/Thread;
.source "RtspUsbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/usb2/RtspUsbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RtspTimeOutLoop"
.end annotation


# instance fields
.field lock:Ljava/lang/Object;

.field receiveStart:Z

.field timeOutListener:Lcom/powervision/gcs/usb2/RtspUsbManager$TimeOutListener;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/usb2/RtspUsbManager$TimeOutListener;)V
    .locals 1

    .line 212
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 209
    iput-boolean v0, p0, Lcom/powervision/gcs/usb2/RtspUsbManager$RtspTimeOutLoop;->receiveStart:Z

    .line 210
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/usb2/RtspUsbManager$RtspTimeOutLoop;->lock:Ljava/lang/Object;

    .line 213
    iput-object p1, p0, Lcom/powervision/gcs/usb2/RtspUsbManager$RtspTimeOutLoop;->timeOutListener:Lcom/powervision/gcs/usb2/RtspUsbManager$TimeOutListener;

    return-void
.end method


# virtual methods
.method public notifyThis()V
    .locals 1

    .line 217
    monitor-enter p0

    .line 218
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 219
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

    .line 223
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 225
    :try_start_0
    invoke-virtual {p0}, Lcom/powervision/gcs/usb2/RtspUsbManager$RtspTimeOutLoop;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    const-wide/16 v0, 0xa28

    .line 229
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 231
    iget-object v0, p0, Lcom/powervision/gcs/usb2/RtspUsbManager$RtspTimeOutLoop;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :try_start_1
    iget-boolean v1, p0, Lcom/powervision/gcs/usb2/RtspUsbManager$RtspTimeOutLoop;->receiveStart:Z

    if-eqz v1, :cond_0

    .line 233
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 234
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 235
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1

    .line 237
    :cond_0
    iget-object v1, p0, Lcom/powervision/gcs/usb2/RtspUsbManager$RtspTimeOutLoop;->timeOutListener:Lcom/powervision/gcs/usb2/RtspUsbManager$TimeOutListener;

    invoke-interface {v1}, Lcom/powervision/gcs/usb2/RtspUsbManager$TimeOutListener;->onTimeOut()V

    .line 239
    :goto_1
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1

    .line 226
    :cond_1
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 243
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-void
.end method

.method public setReceiveStart(Z)V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/powervision/gcs/usb2/RtspUsbManager$RtspTimeOutLoop;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 205
    :try_start_0
    iput-boolean p1, p0, Lcom/powervision/gcs/usb2/RtspUsbManager$RtspTimeOutLoop;->receiveStart:Z

    .line 206
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
