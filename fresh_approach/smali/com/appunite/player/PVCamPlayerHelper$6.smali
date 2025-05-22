.class Lcom/appunite/player/PVCamPlayerHelper$6;
.super Ljava/lang/Object;
.source "PVCamPlayerHelper.java"

# interfaces
.implements Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerStateListener;


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

    .line 720
    iput-object p1, p0, Lcom/appunite/player/PVCamPlayerHelper$6;->this$0:Lcom/appunite/player/PVCamPlayerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onASRChange(Lcom/hisilicon/camplayer/HiCamPlayer;)V
    .locals 1

    .line 764
    iget-object p1, p0, Lcom/appunite/player/PVCamPlayerHelper$6;->this$0:Lcom/appunite/player/PVCamPlayerHelper;

    invoke-static {p1}, Lcom/appunite/player/PVCamPlayerHelper;->access$800(Lcom/appunite/player/PVCamPlayerHelper;)Lcom/powervision/gcs/usb2/MsgHandle;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/usb2/MsgHandle;->addAWork_queue(Ljava/lang/Object;)V

    return-void
.end method

.method public onBufferingUpdate(Lcom/hisilicon/camplayer/HiCamPlayer;I)V
    .locals 0

    return-void
.end method

.method public onCodecErr(Lcom/hisilicon/camplayer/HiCamPlayer;)V
    .locals 1

    const-string p1, "lzqrtsp"

    const-string v0, "onCodecErr  \u5207\u6362\u8f6f\u89e3"

    .line 770
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    iget-object p1, p0, Lcom/appunite/player/PVCamPlayerHelper$6;->this$0:Lcom/appunite/player/PVCamPlayerHelper;

    const/16 v0, 0x6f

    invoke-static {p1, v0}, Lcom/appunite/player/PVCamPlayerHelper;->access$902(Lcom/appunite/player/PVCamPlayerHelper;I)I

    .line 773
    iget-object p1, p0, Lcom/appunite/player/PVCamPlayerHelper$6;->this$0:Lcom/appunite/player/PVCamPlayerHelper;

    invoke-static {p1}, Lcom/appunite/player/PVCamPlayerHelper;->access$800(Lcom/appunite/player/PVCamPlayerHelper;)Lcom/powervision/gcs/usb2/MsgHandle;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/usb2/MsgHandle;->addAWork_queue(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Lcom/hisilicon/camplayer/HiCamPlayer;Ljava/lang/String;I)V
    .locals 1

    .line 744
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onError  msg: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " extra:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " thread:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "lzqrtsp"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/appunite/player/PVCamPlayerHelper$6$1;

    invoke-direct {p2, p0}, Lcom/appunite/player/PVCamPlayerHelper$6$1;-><init>(Lcom/appunite/player/PVCamPlayerHelper$6;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 753
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onFinish(Lcom/hisilicon/camplayer/HiCamPlayer;)V
    .locals 1

    const-string p1, "lzqrtsp"

    const-string v0, "onFinish"

    .line 738
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStateChange(Lcom/hisilicon/camplayer/HiCamPlayer;Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;)V
    .locals 0

    .line 725
    iget-object p1, p0, Lcom/appunite/player/PVCamPlayerHelper$6;->this$0:Lcom/appunite/player/PVCamPlayerHelper;

    invoke-static {p1}, Lcom/appunite/player/PVCamPlayerHelper;->access$1200(Lcom/appunite/player/PVCamPlayerHelper;)Lcom/appunite/player/PVCamPlayerHelper$OnShowUpListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 726
    iget-object p1, p0, Lcom/appunite/player/PVCamPlayerHelper$6;->this$0:Lcom/appunite/player/PVCamPlayerHelper;

    invoke-static {p1}, Lcom/appunite/player/PVCamPlayerHelper;->access$1200(Lcom/appunite/player/PVCamPlayerHelper;)Lcom/appunite/player/PVCamPlayerHelper$OnShowUpListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/appunite/player/PVCamPlayerHelper$OnShowUpListener;->showUp(Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;)V

    .line 729
    :cond_0
    sget-object p1, Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;->HICAMPLAYER_STATE_ERROR:Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;

    if-ne p2, p1, :cond_1

    const-string p1, "lzqrtsp"

    const-string p2, "HICAMPLAYER_STATE_ERROR"

    .line 730
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
