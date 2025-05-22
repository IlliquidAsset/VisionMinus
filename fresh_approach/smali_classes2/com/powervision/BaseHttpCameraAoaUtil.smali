.class public abstract Lcom/powervision/BaseHttpCameraAoaUtil;
.super Ljava/lang/Object;
.source "BaseHttpCameraAoaUtil.java"


# static fields
.field public static final HOST:Ljava/lang/String; = "192.168.1.10"

.field public static TAG:Ljava/lang/String; = "lzqHttp"

.field public static final urlHead:Ljava/lang/String; = "http://192.168.1.10/"


# instance fields
.field msgHandle:Lcom/powervision/gcs/usb2/MsgHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/powervision/gcs/usb2/MsgHandle<",
            "Lcom/powervision/localhttp/entity/Request;",
            ">;"
        }
    .end annotation
.end field

.field msgTask:Lcom/powervision/gcs/usb2/MsgTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/powervision/gcs/usb2/MsgTask<",
            "Lcom/powervision/localhttp/entity/Request;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/powervision/BaseHttpCameraAoaUtil;->msgTask:Lcom/powervision/gcs/usb2/MsgTask;

    .line 99
    new-instance v0, Lcom/powervision/BaseHttpCameraAoaUtil$2;

    invoke-direct {v0, p0}, Lcom/powervision/BaseHttpCameraAoaUtil$2;-><init>(Lcom/powervision/BaseHttpCameraAoaUtil;)V

    iput-object v0, p0, Lcom/powervision/BaseHttpCameraAoaUtil;->msgHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    .line 30
    invoke-static {}, Lcom/powervision/gcs/usb2/HttpUsbManager;->getInstance()Lcom/powervision/gcs/usb2/HttpUsbManager;

    move-result-object v0

    new-instance v1, Lcom/powervision/BaseHttpCameraAoaUtil$1;

    invoke-direct {v1, p0}, Lcom/powervision/BaseHttpCameraAoaUtil$1;-><init>(Lcom/powervision/BaseHttpCameraAoaUtil;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/HttpUsbManager;->setCommonCallback(Lorg/xutils/common/Callback$CommonCallback;)V

    return-void
.end method


# virtual methods
.method public cancelDownloadRequest()V
    .locals 5

    .line 162
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x2760

    const/4 v2, 0x0

    .line 165
    invoke-static {v0, v2}, Lcom/powervision/gcs/usb2/GcsUsbManager;->intToByteArray(II)[B

    move-result-object v0

    .line 166
    new-instance v3, Ljava/lang/String;

    const-string v4, "C"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aget-byte v2, v3, v2

    aput-byte v2, v0, v1

    const-string v1, "lzqHttp"

    const-string v2, "\u53d1\u9001Cancel-1"

    .line 168
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-static {}, Lcom/powervision/gcs/usb2/GcsUsbManager;->getInstance()Lcom/powervision/gcs/usb2/GcsUsbManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/powervision/gcs/usb2/GcsUsbManager;->send([B)V

    return-void
.end method

.method public abstract getDownloadPath(Ljava/lang/String;Ljava/lang/String;JJ)Ljava/lang/String;
.end method

.method public getPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GET "

    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " HTTP/1.1\r\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Host: "

    .line 196
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public notify_failed()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/powervision/BaseHttpCameraAoaUtil;->msgHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/MsgHandle;->notifyTheMaster()V

    :cond_0
    return-void
.end method

.method public notify_success()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/powervision/BaseHttpCameraAoaUtil;->msgHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/MsgHandle;->notifyTheMaster()V

    :cond_0
    return-void
.end method

.method public declared-synchronized postDownloadRequest(Ljava/lang/String;JJ)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "lzqHttp_1"

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postDownloadRequest \u6dfb\u52a0\u4e00\u4e2a\u4e0b\u8f7d\u4efb\u52a1 url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v0, Lcom/powervision/localhttp/entity/Request;

    invoke-direct {v0}, Lcom/powervision/localhttp/entity/Request;-><init>()V

    const/4 v1, 0x1

    .line 72
    iput-boolean v1, v0, Lcom/powervision/localhttp/entity/Request;->isDownLoad:Z

    .line 73
    iput-object p1, v0, Lcom/powervision/localhttp/entity/Request;->url:Ljava/lang/String;

    .line 74
    iput-wide p2, v0, Lcom/powervision/localhttp/entity/Request;->startPoint:J

    .line 75
    iput-wide p4, v0, Lcom/powervision/localhttp/entity/Request;->endPoint:J

    .line 76
    iget-object p1, p0, Lcom/powervision/BaseHttpCameraAoaUtil;->msgTask:Lcom/powervision/gcs/usb2/MsgTask;

    if-nez p1, :cond_0

    .line 77
    new-instance p1, Lcom/powervision/gcs/usb2/MsgTask;

    invoke-direct {p1}, Lcom/powervision/gcs/usb2/MsgTask;-><init>()V

    iput-object p1, p0, Lcom/powervision/BaseHttpCameraAoaUtil;->msgTask:Lcom/powervision/gcs/usb2/MsgTask;

    .line 79
    iget-object p2, p0, Lcom/powervision/BaseHttpCameraAoaUtil;->msgHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/usb2/MsgTask;->setConnectHandle(Lcom/powervision/gcs/usb2/MsgHandle;)V

    .line 80
    iget-object p1, p0, Lcom/powervision/BaseHttpCameraAoaUtil;->msgTask:Lcom/powervision/gcs/usb2/MsgTask;

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/MsgTask;->start()V

    .line 82
    :cond_0
    iget-object p1, p0, Lcom/powervision/BaseHttpCameraAoaUtil;->msgHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/usb2/MsgHandle;->addAWork_queue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized postRequest(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 54
    :try_start_0
    new-instance v0, Lcom/powervision/localhttp/entity/Request;

    invoke-direct {v0}, Lcom/powervision/localhttp/entity/Request;-><init>()V

    const/4 v1, 0x0

    .line 55
    iput-boolean v1, v0, Lcom/powervision/localhttp/entity/Request;->isDownLoad:Z

    .line 56
    iput-object p1, v0, Lcom/powervision/localhttp/entity/Request;->url:Ljava/lang/String;

    const-string p1, "lzqHttp_1"

    const-string v1, " postRequest \u6765\u4e86\u4e00\u4e2a\u65b0\u8bf7\u6c42 "

    .line 57
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object p1, p0, Lcom/powervision/BaseHttpCameraAoaUtil;->msgTask:Lcom/powervision/gcs/usb2/MsgTask;

    if-nez p1, :cond_0

    .line 60
    new-instance p1, Lcom/powervision/gcs/usb2/MsgTask;

    invoke-direct {p1}, Lcom/powervision/gcs/usb2/MsgTask;-><init>()V

    iput-object p1, p0, Lcom/powervision/BaseHttpCameraAoaUtil;->msgTask:Lcom/powervision/gcs/usb2/MsgTask;

    .line 62
    iget-object v1, p0, Lcom/powervision/BaseHttpCameraAoaUtil;->msgHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    invoke-virtual {p1, v1}, Lcom/powervision/gcs/usb2/MsgTask;->setConnectHandle(Lcom/powervision/gcs/usb2/MsgHandle;)V

    .line 63
    iget-object p1, p0, Lcom/powervision/BaseHttpCameraAoaUtil;->msgTask:Lcom/powervision/gcs/usb2/MsgTask;

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/MsgTask;->start()V

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/powervision/BaseHttpCameraAoaUtil;->msgHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/usb2/MsgHandle;->addAWork_queue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
