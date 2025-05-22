.class Lcom/appunite/player/PVCamPlayerHelper$5;
.super Ljava/lang/Object;
.source "PVCamPlayerHelper.java"

# interfaces
.implements Lcom/hisilicon/camplayer/HiCamPlayer$PvUsbDataManage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appunite/player/PVCamPlayerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appunite/player/PVCamPlayerHelper;


# direct methods
.method constructor <init>(Lcom/appunite/player/PVCamPlayerHelper;)V
    .locals 0

    .line 693
    iput-object p1, p0, Lcom/appunite/player/PVCamPlayerHelper$5;->this$0:Lcom/appunite/player/PVCamPlayerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public pv_usb_recv_data()[B
    .locals 1

    .line 704
    invoke-static {}, Lcom/powervision/gcs/usb2/RtspUsbManager;->get()Lcom/powervision/gcs/usb2/RtspUsbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/RtspUsbManager;->read_rtsp_head_line()[B

    move-result-object v0

    return-object v0
.end method

.method public pv_usb_recv_max_data(I[I)[B
    .locals 1

    .line 712
    invoke-static {}, Lcom/powervision/gcs/usb2/RtspUsbManager;->get()Lcom/powervision/gcs/usb2/RtspUsbManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/powervision/gcs/usb2/RtspUsbManager;->read_rtsp_max_data(I[I)[B

    move-result-object p1

    return-object p1
.end method

.method public pv_usb_send_data([B)V
    .locals 2

    .line 696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "usb\u53d1\u9001\u6d88\u606f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqrtsp"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    invoke-static {}, Lcom/powervision/gcs/usb2/RtspUsbManager;->get()Lcom/powervision/gcs/usb2/RtspUsbManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/usb2/RtspUsbManager;->send([B)V

    return-void
.end method
