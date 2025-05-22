.class Lcom/appunite/player/PVCamPlayerHelper$2;
.super Ljava/lang/Object;
.source "PVCamPlayerHelper.java"

# interfaces
.implements Lcom/powervision/gcs/usb2/RtspUsbManager$OnStartCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appunite/player/PVCamPlayerHelper;->preparecodec()V
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

    .line 287
    iput-object p1, p0, Lcom/appunite/player/PVCamPlayerHelper$2;->this$0:Lcom/appunite/player/PVCamPlayerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/appunite/player/PVCamPlayerHelper$2;->this$0:Lcom/appunite/player/PVCamPlayerHelper;

    iget-boolean v0, v0, Lcom/appunite/player/PVCamPlayerHelper;->running:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3e8

    .line 310
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 312
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 314
    :goto_0
    invoke-static {}, Lcom/powervision/gcs/usb2/RtspUsbManager;->get()Lcom/powervision/gcs/usb2/RtspUsbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/RtspUsbManager;->startAOAConnect()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/appunite/player/PVCamPlayerHelper$2;->this$0:Lcom/appunite/player/PVCamPlayerHelper;

    invoke-static {v0}, Lcom/appunite/player/PVCamPlayerHelper;->access$1100(Lcom/appunite/player/PVCamPlayerHelper;)Lcom/hisilicon/camplayer/HiCamPlayer;

    move-result-object v0

    const-string v1, "lzqrtsp"

    if-nez v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/appunite/player/PVCamPlayerHelper$2;->this$0:Lcom/appunite/player/PVCamPlayerHelper;

    invoke-static {v0}, Lcom/appunite/player/PVCamPlayerHelper;->access$800(Lcom/appunite/player/PVCamPlayerHelper;)Lcom/powervision/gcs/usb2/MsgHandle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, " ====== msgqueue==== onStart  ADD INIT"

    .line 292
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Lcom/appunite/player/PVCamPlayerHelper$2;->this$0:Lcom/appunite/player/PVCamPlayerHelper;

    const/16 v1, 0x6f

    invoke-static {v0, v1}, Lcom/appunite/player/PVCamPlayerHelper;->access$902(Lcom/appunite/player/PVCamPlayerHelper;I)I

    .line 294
    iget-object v0, p0, Lcom/appunite/player/PVCamPlayerHelper$2;->this$0:Lcom/appunite/player/PVCamPlayerHelper;

    invoke-static {v0}, Lcom/appunite/player/PVCamPlayerHelper;->access$800(Lcom/appunite/player/PVCamPlayerHelper;)Lcom/powervision/gcs/usb2/MsgHandle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/MsgHandle;->addAWork_queue(Ljava/lang/Object;)V

    goto :goto_0

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/appunite/player/PVCamPlayerHelper$2;->this$0:Lcom/appunite/player/PVCamPlayerHelper;

    invoke-static {v0}, Lcom/appunite/player/PVCamPlayerHelper;->access$800(Lcom/appunite/player/PVCamPlayerHelper;)Lcom/powervision/gcs/usb2/MsgHandle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, " ====== RECONNECT"

    .line 298
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v0, p0, Lcom/appunite/player/PVCamPlayerHelper$2;->this$0:Lcom/appunite/player/PVCamPlayerHelper;

    invoke-static {v0}, Lcom/appunite/player/PVCamPlayerHelper;->access$800(Lcom/appunite/player/PVCamPlayerHelper;)Lcom/powervision/gcs/usb2/MsgHandle;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/MsgHandle;->addAWork_queue(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
