.class Lcom/powervision/localhttp/PVW4DownloadAOAUtils$TimeoutRunnable;
.super Ljava/lang/Object;
.source "PVW4DownloadAOAUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/localhttp/PVW4DownloadAOAUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeoutRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/localhttp/PVW4DownloadAOAUtils;


# direct methods
.method private constructor <init>(Lcom/powervision/localhttp/PVW4DownloadAOAUtils;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils$TimeoutRunnable;->this$0:Lcom/powervision/localhttp/PVW4DownloadAOAUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/powervision/localhttp/PVW4DownloadAOAUtils;Lcom/powervision/localhttp/PVW4DownloadAOAUtils$1;)V
    .locals 0

    .line 374
    invoke-direct {p0, p1}, Lcom/powervision/localhttp/PVW4DownloadAOAUtils$TimeoutRunnable;-><init>(Lcom/powervision/localhttp/PVW4DownloadAOAUtils;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "lzqPVW4DownloadAOAUtils"

    const-string v1, "run: 11111 cancel"

    .line 377
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils$TimeoutRunnable;->this$0:Lcom/powervision/localhttp/PVW4DownloadAOAUtils;

    invoke-static {v0}, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->access$404(Lcom/powervision/localhttp/PVW4DownloadAOAUtils;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x5

    if-lt v0, v2, :cond_1

    .line 379
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils$TimeoutRunnable;->this$0:Lcom/powervision/localhttp/PVW4DownloadAOAUtils;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->access$402(Lcom/powervision/localhttp/PVW4DownloadAOAUtils;I)I

    .line 381
    sget v0, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->DEVICE:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 382
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils$TimeoutRunnable;->this$0:Lcom/powervision/localhttp/PVW4DownloadAOAUtils;

    invoke-virtual {v0, v2}, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->currentDownloadTaskTimeout(Z)V

    goto :goto_0

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils$TimeoutRunnable;->this$0:Lcom/powervision/localhttp/PVW4DownloadAOAUtils;

    invoke-virtual {v0, v2}, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->currentDownloadTaskTimeout(Z)V

    goto :goto_0

    .line 388
    :cond_1
    sget v0, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->DEVICE:I

    if-ne v0, v1, :cond_2

    .line 389
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils$TimeoutRunnable;->this$0:Lcom/powervision/localhttp/PVW4DownloadAOAUtils;

    invoke-static {v0}, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->access$400(Lcom/powervision/localhttp/PVW4DownloadAOAUtils;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x320

    iput v1, v0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->retryWaitTime:I

    .line 390
    invoke-static {}, Lcom/powervision/gcs/usb2/HttpUsbManager;->getInstance()Lcom/powervision/gcs/usb2/HttpUsbManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils$TimeoutRunnable;->this$0:Lcom/powervision/localhttp/PVW4DownloadAOAUtils;

    iget-object v1, v1, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->onSendStartCallBack:Lcom/powervision/gcs/usb2/HttpUsbManager$OnSendStartCallBack;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/HttpUsbManager;->addOnSendStartCallBack(Lcom/powervision/gcs/usb2/HttpUsbManager$OnSendStartCallBack;)V

    .line 391
    invoke-static {}, Lcom/powervision/localhttp/PVW4CameraAOAUtils;->get()Lcom/powervision/localhttp/PVW4CameraAOAUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/localhttp/PVW4CameraAOAUtils;->cancelDownloadRequest()V

    goto :goto_0

    .line 393
    :cond_2
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils$TimeoutRunnable;->this$0:Lcom/powervision/localhttp/PVW4DownloadAOAUtils;

    invoke-static {v0}, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->access$400(Lcom/powervision/localhttp/PVW4DownloadAOAUtils;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x320

    iput v1, v0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->retryWaitTime:I

    .line 394
    invoke-static {}, Lcom/powervision/gcs/usb2/HttpUsbManager;->getInstance()Lcom/powervision/gcs/usb2/HttpUsbManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/localhttp/PVW4DownloadAOAUtils$TimeoutRunnable;->this$0:Lcom/powervision/localhttp/PVW4DownloadAOAUtils;

    iget-object v1, v1, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->onSendStartCallBack:Lcom/powervision/gcs/usb2/HttpUsbManager$OnSendStartCallBack;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/HttpUsbManager;->addOnSendStartCallBack(Lcom/powervision/gcs/usb2/HttpUsbManager$OnSendStartCallBack;)V

    .line 396
    invoke-static {}, Lcom/powervision/localhttp/AP03CameraAOAUtils;->get()Lcom/powervision/localhttp/AP03CameraAOAUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/localhttp/AP03CameraAOAUtils;->cancelDownloadRequest()V

    :goto_0
    return-void
.end method
