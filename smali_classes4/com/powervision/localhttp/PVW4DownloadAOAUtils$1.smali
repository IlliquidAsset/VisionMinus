.class Lcom/powervision/localhttp/PVW4DownloadAOAUtils$1;
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

    .line 161
    iput-object p1, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils$1;->this$0:Lcom/powervision/localhttp/PVW4DownloadAOAUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCancel$0$PVW4DownloadAOAUtils$1()V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils$1;->this$0:Lcom/powervision/localhttp/PVW4DownloadAOAUtils;

    invoke-virtual {v0}, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->handleDownloadMessageCancel()V

    return-void
.end method

.method public onCancel()V
    .locals 2

    const-string v0, "lzqPVW4DownloadAOAUtils"

    const-string v1, "--->onCancel-down-success"

    .line 176
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadHelper;->getInstance()Lcom/powervision/localhttp/PVW4DownloadHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/localhttp/PVW4DownloadHelper;->getDelivery()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/powervision/localhttp/-$$Lambda$PVW4DownloadAOAUtils$1$zCxClPj-wqx4uRtZWuQo6jB5yLQ;

    invoke-direct {v1, p0}, Lcom/powervision/localhttp/-$$Lambda$PVW4DownloadAOAUtils$1$zCxClPj-wqx4uRtZWuQo6jB5yLQ;-><init>(Lcom/powervision/localhttp/PVW4DownloadAOAUtils$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 178
    invoke-static {}, Lcom/powervision/gcs/usb2/HttpUsbManager;->getInstance()Lcom/powervision/gcs/usb2/HttpUsbManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils$1;->this$0:Lcom/powervision/localhttp/PVW4DownloadAOAUtils;

    iget-object v1, v1, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->onCancelCallBack:Lcom/powervision/gcs/usb2/HttpUsbManager$OnSendStartCallBack;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/HttpUsbManager;->removeOnSendStartCallBack(Lcom/powervision/gcs/usb2/HttpUsbManager$OnSendStartCallBack;)V

    return-void
.end method

.method public onFailed()V
    .locals 2

    const-string v0, "lzqPVW4DownloadAOAUtils"

    const-string v1, "--->onFailed-down-success"

    .line 170
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-static {}, Lcom/powervision/gcs/usb2/HttpUsbManager;->getInstance()Lcom/powervision/gcs/usb2/HttpUsbManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils$1;->this$0:Lcom/powervision/localhttp/PVW4DownloadAOAUtils;

    iget-object v1, v1, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->onCancelCallBack:Lcom/powervision/gcs/usb2/HttpUsbManager$OnSendStartCallBack;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/HttpUsbManager;->removeOnSendStartCallBack(Lcom/powervision/gcs/usb2/HttpUsbManager$OnSendStartCallBack;)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    const-string v0, "lzqPVW4DownloadAOAUtils"

    const-string v1, "--->onSuccess-down-success"

    .line 164
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-static {}, Lcom/powervision/gcs/usb2/HttpUsbManager;->getInstance()Lcom/powervision/gcs/usb2/HttpUsbManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils$1;->this$0:Lcom/powervision/localhttp/PVW4DownloadAOAUtils;

    iget-object v1, v1, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->onCancelCallBack:Lcom/powervision/gcs/usb2/HttpUsbManager$OnSendStartCallBack;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/HttpUsbManager;->removeOnSendStartCallBack(Lcom/powervision/gcs/usb2/HttpUsbManager$OnSendStartCallBack;)V

    return-void
.end method
