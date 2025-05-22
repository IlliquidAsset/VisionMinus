.class Lcom/powervision/BaseHttpCameraAoaUtil$2;
.super Lcom/powervision/gcs/usb2/MsgHandle;
.source "BaseHttpCameraAoaUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/BaseHttpCameraAoaUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/gcs/usb2/MsgHandle<",
        "Lcom/powervision/localhttp/entity/Request;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/BaseHttpCameraAoaUtil;


# direct methods
.method constructor <init>(Lcom/powervision/BaseHttpCameraAoaUtil;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/powervision/BaseHttpCameraAoaUtil$2;->this$0:Lcom/powervision/BaseHttpCameraAoaUtil;

    invoke-direct {p0}, Lcom/powervision/gcs/usb2/MsgHandle;-><init>()V

    return-void
.end method


# virtual methods
.method public free()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/powervision/BaseHttpCameraAoaUtil$2;->this$0:Lcom/powervision/BaseHttpCameraAoaUtil;

    iget-object v0, v0, Lcom/powervision/BaseHttpCameraAoaUtil;->msgHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    iget-object v0, v0, Lcom/powervision/gcs/usb2/MsgHandle;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method public notifyTheMaster()V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/powervision/BaseHttpCameraAoaUtil$2;->this$0:Lcom/powervision/BaseHttpCameraAoaUtil;

    iget-object v0, v0, Lcom/powervision/BaseHttpCameraAoaUtil;->msgTask:Lcom/powervision/gcs/usb2/MsgTask;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/powervision/BaseHttpCameraAoaUtil$2;->this$0:Lcom/powervision/BaseHttpCameraAoaUtil;

    iget-object v0, v0, Lcom/powervision/BaseHttpCameraAoaUtil;->msgTask:Lcom/powervision/gcs/usb2/MsgTask;

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/MsgTask;->notifyThis()V

    :cond_0
    return-void
.end method

.method public onInit()V
    .locals 0

    return-void
.end method

.method public stopTheMasterInmedratily()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/powervision/BaseHttpCameraAoaUtil$2;->this$0:Lcom/powervision/BaseHttpCameraAoaUtil;

    iget-object v0, v0, Lcom/powervision/BaseHttpCameraAoaUtil;->msgTask:Lcom/powervision/gcs/usb2/MsgTask;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/powervision/BaseHttpCameraAoaUtil$2;->this$0:Lcom/powervision/BaseHttpCameraAoaUtil;

    iget-object v0, v0, Lcom/powervision/BaseHttpCameraAoaUtil;->msgTask:Lcom/powervision/gcs/usb2/MsgTask;

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/MsgTask;->interrupt()V

    :cond_0
    return-void
.end method

.method public work(Lcom/powervision/localhttp/entity/Request;)V
    .locals 10

    const-string v0, "lzqHttp"

    const-string v1, "=============== \u65b0\u542f\u52a8\u4e00\u4e2a\u4efb\u52a1 ============="

    .line 103
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 106
    iget-boolean v1, p1, Lcom/powervision/localhttp/entity/Request;->isDownLoad:Z

    const/16 v2, 0x2760

    if-nez v1, :cond_0

    const-string v1, " \u53d1\u9001\u4e00\u4e2a\u8bf7\u6c42"

    .line 107
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/powervision/BaseHttpCameraAoaUtil$2;->this$0:Lcom/powervision/BaseHttpCameraAoaUtil;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://192.168.1.10/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/powervision/localhttp/entity/Request;->url:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "192.168.1.10"

    invoke-virtual {v0, v1, v3}, Lcom/powervision/BaseHttpCameraAoaUtil;->getPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    sget-object v1, Lcom/powervision/BaseHttpCameraAoaUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "postRequest: http://192.168.1.10/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/powervision/localhttp/entity/Request;->url:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \npath: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {v2, p1}, Lcom/powervision/gcs/usb2/GcsUsbManager;->intToByteArray(II)[B

    move-result-object p1

    .line 111
    invoke-static {}, Lcom/powervision/gcs/usb2/HttpUsbManager;->getInstance()Lcom/powervision/gcs/usb2/HttpUsbManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/gcs/usb2/HttpUsbManager;->setLowSpeed()V

    .line 113
    invoke-static {}, Lcom/powervision/gcs/usb2/GcsUsbManager;->getInstance()Lcom/powervision/gcs/usb2/GcsUsbManager;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/powervision/gcs/usb2/GcsUsbManager;->concat([B[B)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/powervision/gcs/usb2/GcsUsbManager;->send([B)V

    const-wide/16 v0, 0x46

    .line 115
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 117
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 120
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " \u53d1\u9001\u4e00\u4e2a\u4e0b\u8f7d request:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/powervision/localhttp/entity/Request;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v3, p0, Lcom/powervision/BaseHttpCameraAoaUtil$2;->this$0:Lcom/powervision/BaseHttpCameraAoaUtil;

    iget-object v4, p1, Lcom/powervision/localhttp/entity/Request;->url:Ljava/lang/String;

    iget-wide v6, p1, Lcom/powervision/localhttp/entity/Request;->startPoint:J

    iget-wide v8, p1, Lcom/powervision/localhttp/entity/Request;->endPoint:J

    const-string v5, "192.168.1.10"

    invoke-virtual/range {v3 .. v9}, Lcom/powervision/BaseHttpCameraAoaUtil;->getDownloadPath(Ljava/lang/String;Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object p1

    .line 123
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v2, v1}, Lcom/powervision/gcs/usb2/GcsUsbManager;->intToByteArray(II)[B

    move-result-object v1

    .line 124
    invoke-static {}, Lcom/powervision/gcs/usb2/HttpUsbManager;->getInstance()Lcom/powervision/gcs/usb2/HttpUsbManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/powervision/gcs/usb2/HttpUsbManager;->setHighSpeed()V

    .line 125
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {v1, p1}, Lcom/powervision/gcs/usb2/GcsUsbManager;->concat([B[B)[B

    move-result-object p1

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " \u53d1\u9001\u4e00\u4e2a\u4e0b\u8f7d:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-static {}, Lcom/powervision/gcs/usb2/GcsUsbManager;->getInstance()Lcom/powervision/gcs/usb2/GcsUsbManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/usb2/GcsUsbManager;->send([B)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic work(Ljava/lang/Object;)V
    .locals 0

    .line 99
    check-cast p1, Lcom/powervision/localhttp/entity/Request;

    invoke-virtual {p0, p1}, Lcom/powervision/BaseHttpCameraAoaUtil$2;->work(Lcom/powervision/localhttp/entity/Request;)V

    return-void
.end method
