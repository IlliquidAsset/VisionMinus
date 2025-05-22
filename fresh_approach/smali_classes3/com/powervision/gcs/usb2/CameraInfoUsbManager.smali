.class public Lcom/powervision/gcs/usb2/CameraInfoUsbManager;
.super Ljava/lang/Object;
.source "CameraInfoUsbManager.java"


# static fields
.field private static final NORMAL_DATE:I = 0x0

.field private static final RECEIVE_START:I = 0x2

.field private static final START_CONNECT:I = 0x1

.field private static cameraInfoUsbManager:Lcom/powervision/gcs/usb2/CameraInfoUsbManager; = null

.field private static final timeOut:I = 0xfa0


# instance fields
.field commonCallback:Lorg/xutils/common/Callback$CommonCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/common/Callback$CommonCallback<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field msgReceiveHandle:Lcom/powervision/gcs/usb2/MsgHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/powervision/gcs/usb2/MsgHandle<",
            "Lcom/powervision/gcs/usb2/Msg;",
            ">;"
        }
    .end annotation
.end field

.field msgTask:Lcom/powervision/gcs/usb2/MsgTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/powervision/gcs/usb2/MsgTask<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private timeOutLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/usb2/CameraInfoUsbManager;->timeOutLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/powervision/gcs/usb2/CameraInfoUsbManager;->commonCallback:Lorg/xutils/common/Callback$CommonCallback;

    .line 62
    new-instance v1, Lcom/powervision/gcs/usb2/CameraInfoUsbManager$1;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/usb2/CameraInfoUsbManager$1;-><init>(Lcom/powervision/gcs/usb2/CameraInfoUsbManager;)V

    iput-object v1, p0, Lcom/powervision/gcs/usb2/CameraInfoUsbManager;->msgReceiveHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    .line 134
    iput-object v0, p0, Lcom/powervision/gcs/usb2/CameraInfoUsbManager;->msgTask:Lcom/powervision/gcs/usb2/MsgTask;

    return-void
.end method

.method public static get()Lcom/powervision/gcs/usb2/CameraInfoUsbManager;
    .locals 1

    .line 22
    sget-object v0, Lcom/powervision/gcs/usb2/CameraInfoUsbManager;->cameraInfoUsbManager:Lcom/powervision/gcs/usb2/CameraInfoUsbManager;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/powervision/gcs/usb2/CameraInfoUsbManager;

    invoke-direct {v0}, Lcom/powervision/gcs/usb2/CameraInfoUsbManager;-><init>()V

    sput-object v0, Lcom/powervision/gcs/usb2/CameraInfoUsbManager;->cameraInfoUsbManager:Lcom/powervision/gcs/usb2/CameraInfoUsbManager;

    .line 26
    :cond_0
    sget-object v0, Lcom/powervision/gcs/usb2/CameraInfoUsbManager;->cameraInfoUsbManager:Lcom/powervision/gcs/usb2/CameraInfoUsbManager;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized connect()V
    .locals 4

    monitor-enter p0

    .line 140
    :try_start_0
    new-instance v0, Lcom/powervision/gcs/usb2/Msg;

    const/16 v1, 0x2947

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/powervision/gcs/usb2/Msg;-><init>(I[BI)V

    .line 141
    iget-object v1, p0, Lcom/powervision/gcs/usb2/CameraInfoUsbManager;->msgReceiveHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    invoke-virtual {v1, v0}, Lcom/powervision/gcs/usb2/MsgHandle;->addAWork_queue(Ljava/lang/Object;)V

    .line 142
    iget-object v0, p0, Lcom/powervision/gcs/usb2/CameraInfoUsbManager;->msgTask:Lcom/powervision/gcs/usb2/MsgTask;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Lcom/powervision/gcs/usb2/MsgTask;

    invoke-direct {v0}, Lcom/powervision/gcs/usb2/MsgTask;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/usb2/CameraInfoUsbManager;->msgTask:Lcom/powervision/gcs/usb2/MsgTask;

    .line 144
    iget-object v1, p0, Lcom/powervision/gcs/usb2/CameraInfoUsbManager;->msgReceiveHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/MsgTask;->setConnectHandle(Lcom/powervision/gcs/usb2/MsgHandle;)V

    .line 145
    iget-object v0, p0, Lcom/powervision/gcs/usb2/CameraInfoUsbManager;->msgTask:Lcom/powervision/gcs/usb2/MsgTask;

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/MsgTask;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disConnect()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "lzq567"

    const-string v1, "\u65ad\u8fde"

    .line 151
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/powervision/gcs/usb2/CameraInfoUsbManager;->msgTask:Lcom/powervision/gcs/usb2/MsgTask;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/powervision/gcs/usb2/CameraInfoUsbManager;->msgTask:Lcom/powervision/gcs/usb2/MsgTask;

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/MsgTask;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public receiveCancel()V
    .locals 2

    const-string v0, "lzq567"

    const-string v1, "\u63a5\u5230Cancel"

    .line 167
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2947

    .line 168
    invoke-static {v0}, Lcom/powervision/gcs/usb2/GcsUsbManager;->sendStartLinkCommand(I)V

    return-void
.end method

.method public receiveNormal([B)V
    .locals 4

    const-string v0, "lzq567"

    const-string v1, "\u63a5\u5230Normal_DATA"

    .line 159
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/powervision/gcs/usb2/CameraInfoUsbManager;->msgReceiveHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    if-eqz v0, :cond_0

    .line 161
    new-instance v1, Lcom/powervision/gcs/usb2/Msg;

    const/16 v2, 0x2947

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lcom/powervision/gcs/usb2/Msg;-><init>(I[BI)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/MsgHandle;->addAWork_queue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public receiveStart()V
    .locals 4

    .line 182
    iget-object v0, p0, Lcom/powervision/gcs/usb2/CameraInfoUsbManager;->msgReceiveHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    if-eqz v0, :cond_0

    .line 184
    new-instance v0, Lcom/powervision/gcs/usb2/Msg;

    const/16 v1, 0x2947

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/powervision/gcs/usb2/Msg;-><init>(I[BI)V

    .line 185
    iget-object v1, p0, Lcom/powervision/gcs/usb2/CameraInfoUsbManager;->msgReceiveHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    invoke-virtual {v1, v0}, Lcom/powervision/gcs/usb2/MsgHandle;->addAWork_queue(Ljava/lang/Object;)V

    .line 186
    invoke-virtual {p0}, Lcom/powervision/gcs/usb2/CameraInfoUsbManager;->timeOutNotify()V

    :cond_0
    return-void
.end method

.method public sendNormalData([B)V
    .locals 2

    .line 174
    array-length v0, p1

    const/16 v1, 0x2947

    invoke-static {v1, v0}, Lcom/powervision/gcs/usb2/GcsUsbManager;->intToByteArray(II)[B

    move-result-object v0

    .line 176
    invoke-static {v0, p1}, Lcom/powervision/gcs/usb2/GcsUsbManager;->concat([B[B)[B

    move-result-object p1

    .line 177
    invoke-static {}, Lcom/powervision/gcs/usb2/GcsUsbManager;->getInstance()Lcom/powervision/gcs/usb2/GcsUsbManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/usb2/GcsUsbManager;->send([B)V

    return-void
.end method

.method public setDataReceiveCallback(Lorg/xutils/common/Callback$CommonCallback;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/powervision/gcs/usb2/CameraInfoUsbManager;->commonCallback:Lorg/xutils/common/Callback$CommonCallback;

    return-void
.end method

.method public timeOutLock()V
    .locals 4

    .line 39
    iget-object v0, p0, Lcom/powervision/gcs/usb2/CameraInfoUsbManager;->timeOutLock:Ljava/lang/Object;

    monitor-enter v0

    .line 41
    :try_start_0
    iget-object v1, p0, Lcom/powervision/gcs/usb2/CameraInfoUsbManager;->timeOutLock:Ljava/lang/Object;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 43
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 45
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public timeOutNotify()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/powervision/gcs/usb2/CameraInfoUsbManager;->timeOutLock:Ljava/lang/Object;

    monitor-enter v0

    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/powervision/gcs/usb2/CameraInfoUsbManager;->timeOutLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 52
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
