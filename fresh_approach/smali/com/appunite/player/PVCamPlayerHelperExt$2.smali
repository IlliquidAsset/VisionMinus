.class Lcom/appunite/player/PVCamPlayerHelperExt$2;
.super Ljava/lang/Object;
.source "PVCamPlayerHelperExt.java"

# interfaces
.implements Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerStateListener;


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

    .line 524
    iput-object p1, p0, Lcom/appunite/player/PVCamPlayerHelperExt$2;->this$0:Lcom/appunite/player/PVCamPlayerHelperExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onASRChange(Lcom/hisilicon/camplayer/HiCamPlayer;)V
    .locals 1

    .line 570
    invoke-static {}, Lcom/appunite/player/PVCamPlayerHelperExt;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "============== onASRChange  \u6539\u53d8\u89c6\u9891\u5c3a\u5bf8"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget-object p1, p0, Lcom/appunite/player/PVCamPlayerHelperExt$2;->this$0:Lcom/appunite/player/PVCamPlayerHelperExt;

    invoke-static {p1}, Lcom/appunite/player/PVCamPlayerHelperExt;->access$500(Lcom/appunite/player/PVCamPlayerHelperExt;)Lcom/appunite/player/PVCamPlayerHandlerThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appunite/player/PVCamPlayerHandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onBufferingUpdate(Lcom/hisilicon/camplayer/HiCamPlayer;I)V
    .locals 0

    return-void
.end method

.method public onCodecErr(Lcom/hisilicon/camplayer/HiCamPlayer;)V
    .locals 1

    .line 576
    invoke-static {}, Lcom/appunite/player/PVCamPlayerHelperExt;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "============== onCodecErr  \u5207\u6362\u8f6f\u89e3"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object p1, p0, Lcom/appunite/player/PVCamPlayerHelperExt$2;->this$0:Lcom/appunite/player/PVCamPlayerHelperExt;

    const/16 v0, 0x6f

    invoke-static {p1, v0}, Lcom/appunite/player/PVCamPlayerHelperExt;->access$602(Lcom/appunite/player/PVCamPlayerHelperExt;I)I

    .line 578
    iget-object p1, p0, Lcom/appunite/player/PVCamPlayerHelperExt$2;->this$0:Lcom/appunite/player/PVCamPlayerHelperExt;

    invoke-static {p1}, Lcom/appunite/player/PVCamPlayerHelperExt;->access$500(Lcom/appunite/player/PVCamPlayerHelperExt;)Lcom/appunite/player/PVCamPlayerHandlerThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appunite/player/PVCamPlayerHandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onError(Lcom/hisilicon/camplayer/HiCamPlayer;Ljava/lang/String;I)V
    .locals 2

    .line 549
    invoke-static {}, Lcom/appunite/player/PVCamPlayerHelperExt;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "================== onError  msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " extra:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " thread:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 549
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/appunite/player/PVCamPlayerHelperExt$2$1;

    invoke-direct {p2, p0}, Lcom/appunite/player/PVCamPlayerHelperExt$2$1;-><init>(Lcom/appunite/player/PVCamPlayerHelperExt$2;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 559
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onFinish(Lcom/hisilicon/camplayer/HiCamPlayer;)V
    .locals 1

    .line 543
    invoke-static {}, Lcom/appunite/player/PVCamPlayerHelperExt;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "================== onFinish"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStateChange(Lcom/hisilicon/camplayer/HiCamPlayer;Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;)V
    .locals 2

    .line 529
    invoke-static {}, Lcom/appunite/player/PVCamPlayerHelperExt;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "================== onStateChange\uff0c start = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object p1, p0, Lcom/appunite/player/PVCamPlayerHelperExt$2;->this$0:Lcom/appunite/player/PVCamPlayerHelperExt;

    invoke-static {p1}, Lcom/appunite/player/PVCamPlayerHelperExt;->access$300(Lcom/appunite/player/PVCamPlayerHelperExt;)Lcom/appunite/player/PVCamPlayerHelperExt$OnShowUpListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 531
    iget-object p1, p0, Lcom/appunite/player/PVCamPlayerHelperExt$2;->this$0:Lcom/appunite/player/PVCamPlayerHelperExt;

    invoke-static {p1}, Lcom/appunite/player/PVCamPlayerHelperExt;->access$300(Lcom/appunite/player/PVCamPlayerHelperExt;)Lcom/appunite/player/PVCamPlayerHelperExt$OnShowUpListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/appunite/player/PVCamPlayerHelperExt$OnShowUpListener;->showUp(Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;)V

    .line 534
    :cond_0
    sget-object p1, Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;->HICAMPLAYER_STATE_ERROR:Lcom/hisilicon/camplayer/HiCamPlayer$HiCamPlayerState;

    if-ne p2, p1, :cond_1

    .line 535
    invoke-static {}, Lcom/appunite/player/PVCamPlayerHelperExt;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HICAMPLAYER_STATE_ERROR"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
