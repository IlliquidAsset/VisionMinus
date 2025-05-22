.class Lcom/appunite/player/PVCamPlayerHelperExt$1;
.super Ljava/lang/Object;
.source "PVCamPlayerHelperExt.java"

# interfaces
.implements Lcom/hisilicon/camplayer/HiCamPlayer$PvUsbDataManage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appunite/player/PVCamPlayerHelperExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appunite/player/PVCamPlayerHelperExt;


# direct methods
.method constructor <init>(Lcom/appunite/player/PVCamPlayerHelperExt;)V
    .locals 0

    .line 497
    iput-object p1, p0, Lcom/appunite/player/PVCamPlayerHelperExt$1;->this$0:Lcom/appunite/player/PVCamPlayerHelperExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public pv_usb_recv_data()[B
    .locals 1

    .line 508
    invoke-static {}, Lcom/powervision/gcs/usb2/RtspUsbManager;->get()Lcom/powervision/gcs/usb2/RtspUsbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/RtspUsbManager;->read_rtsp_head_line()[B

    move-result-object v0

    return-object v0
.end method

.method public pv_usb_recv_max_data(I[I)[B
    .locals 1

    .line 516
    invoke-static {}, Lcom/powervision/gcs/usb2/RtspUsbManager;->get()Lcom/powervision/gcs/usb2/RtspUsbManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/powervision/gcs/usb2/RtspUsbManager;->read_rtsp_max_data(I[I)[B

    move-result-object p1

    return-object p1
.end method

.method public pv_usb_send_data([B)V
    .locals 3

    .line 500
    invoke-static {}, Lcom/appunite/player/PVCamPlayerHelperExt;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "usb\u53d1\u9001\u6d88\u606f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-static {}, Lcom/powervision/gcs/usb2/RtspUsbManager;->get()Lcom/powervision/gcs/usb2/RtspUsbManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/usb2/RtspUsbManager;->send([B)V

    return-void
.end method
