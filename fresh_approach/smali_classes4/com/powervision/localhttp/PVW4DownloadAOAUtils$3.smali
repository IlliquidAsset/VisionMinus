.class Lcom/powervision/localhttp/PVW4DownloadAOAUtils$3;
.super Ljava/lang/Object;
.source "PVW4DownloadAOAUtils.java"

# interfaces
.implements Lcom/powervision/gcs/usb2/HttpUsbManager$OnSendStartCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/localhttp/PVW4DownloadAOAUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/localhttp/PVW4DownloadAOAUtils;


# direct methods
.method constructor <init>(Lcom/powervision/localhttp/PVW4DownloadAOAUtils;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils$3;->this$0:Lcom/powervision/localhttp/PVW4DownloadAOAUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 4

    const-string v0, "lzqPVW4DownloadAOAUtils"

    const-string v1, "--->onCancel-timeOut-success"

    .line 422
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCancel-timeOut-success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils$3;->this$0:Lcom/powervision/localhttp/PVW4DownloadAOAUtils;

    iget v2, v2, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->retryWaitTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->access$500()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/powervision/localhttp/PVW4DownloadAOAUtils$3$1;

    invoke-direct {v1, p0}, Lcom/powervision/localhttp/PVW4DownloadAOAUtils$3$1;-><init>(Lcom/powervision/localhttp/PVW4DownloadAOAUtils$3;)V

    iget-object v2, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils$3;->this$0:Lcom/powervision/localhttp/PVW4DownloadAOAUtils;

    iget v2, v2, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->retryWaitTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 430
    invoke-static {}, Lcom/powervision/gcs/usb2/HttpUsbManager;->getInstance()Lcom/powervision/gcs/usb2/HttpUsbManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils$3;->this$0:Lcom/powervision/localhttp/PVW4DownloadAOAUtils;

    iget-object v1, v1, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->onSendStartCallBack:Lcom/powervision/gcs/usb2/HttpUsbManager$OnSendStartCallBack;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/HttpUsbManager;->removeOnSendStartCallBack(Lcom/powervision/gcs/usb2/HttpUsbManager$OnSendStartCallBack;)V

    return-void
.end method

.method public onFailed()V
    .locals 2

    const-string v0, "lzqPVW4DownloadAOAUtils"

    const-string v1, "--->onFailed-timeOut-success"

    .line 415
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils$3;->this$0:Lcom/powervision/localhttp/PVW4DownloadAOAUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->retryDownloadCurrentTask(Z)V

    .line 417
    invoke-static {}, Lcom/powervision/gcs/usb2/HttpUsbManager;->getInstance()Lcom/powervision/gcs/usb2/HttpUsbManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils$3;->this$0:Lcom/powervision/localhttp/PVW4DownloadAOAUtils;

    iget-object v1, v1, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->onSendStartCallBack:Lcom/powervision/gcs/usb2/HttpUsbManager$OnSendStartCallBack;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/HttpUsbManager;->removeOnSendStartCallBack(Lcom/powervision/gcs/usb2/HttpUsbManager$OnSendStartCallBack;)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    const-string v0, "lzqPVW4DownloadAOAUtils"

    const-string v1, "--->onSuccess-timeOut-success"

    .line 409
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-static {}, Lcom/powervision/gcs/usb2/HttpUsbManager;->getInstance()Lcom/powervision/gcs/usb2/HttpUsbManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils$3;->this$0:Lcom/powervision/localhttp/PVW4DownloadAOAUtils;

    iget-object v1, v1, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->onSendStartCallBack:Lcom/powervision/gcs/usb2/HttpUsbManager$OnSendStartCallBack;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/HttpUsbManager;->removeOnSendStartCallBack(Lcom/powervision/gcs/usb2/HttpUsbManager$OnSendStartCallBack;)V

    return-void
.end method
