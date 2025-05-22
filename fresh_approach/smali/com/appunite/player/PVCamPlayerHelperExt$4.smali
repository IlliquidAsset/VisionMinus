.class Lcom/appunite/player/PVCamPlayerHelperExt$4;
.super Ljava/lang/Object;
.source "PVCamPlayerHelperExt.java"

# interfaces
.implements Lcom/powervision/gcs/usb2/RtspUsbManager$OnStartCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appunite/player/PVCamPlayerHelperExt;->setRtspUsbManagerStartLister()V
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

    .line 688
    iput-object p1, p0, Lcom/appunite/player/PVCamPlayerHelperExt$4;->this$0:Lcom/appunite/player/PVCamPlayerHelperExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 2

    .line 705
    invoke-static {}, Lcom/appunite/player/PVCamPlayerHelperExt;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, " ====== RtspUsbManager OnStartCallBack ==== onFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    iget-object v0, p0, Lcom/appunite/player/PVCamPlayerHelperExt$4;->this$0:Lcom/appunite/player/PVCamPlayerHelperExt;

    iget-boolean v0, v0, Lcom/appunite/player/PVCamPlayerHelperExt;->running:Z

    if-eqz v0, :cond_0

    .line 707
    invoke-static {}, Lcom/appunite/player/PVCamPlayerHelperExt;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, " ====== RtspUsbManager OnStartCallBack ==== onFailed start AOA Connect!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    invoke-static {}, Lcom/powervision/gcs/usb2/RtspUsbManager;->get()Lcom/powervision/gcs/usb2/RtspUsbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/RtspUsbManager;->startAOAConnect()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 691
    invoke-static {}, Lcom/appunite/player/PVCamPlayerHelperExt;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, " ====== RtspUsbManager OnStartCallBack ==== onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget-object v0, p0, Lcom/appunite/player/PVCamPlayerHelperExt$4;->this$0:Lcom/appunite/player/PVCamPlayerHelperExt;

    invoke-static {v0}, Lcom/appunite/player/PVCamPlayerHelperExt;->access$1300(Lcom/appunite/player/PVCamPlayerHelperExt;)Lcom/hisilicon/camplayer/HiCamPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 694
    invoke-static {}, Lcom/appunite/player/PVCamPlayerHelperExt;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, " ====== RtspUsbManager OnStartCallBack ==== onStart ADD INIT"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    .line 697
    :cond_0
    invoke-static {}, Lcom/appunite/player/PVCamPlayerHelperExt;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, " ====== RtspUsbManager OnStartCallBack ==== onStart ADD RECONNECT"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    .line 700
    :goto_0
    iget-object v1, p0, Lcom/appunite/player/PVCamPlayerHelperExt$4;->this$0:Lcom/appunite/player/PVCamPlayerHelperExt;

    invoke-static {v1}, Lcom/appunite/player/PVCamPlayerHelperExt;->access$500(Lcom/appunite/player/PVCamPlayerHelperExt;)Lcom/appunite/player/PVCamPlayerHandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appunite/player/PVCamPlayerHandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
