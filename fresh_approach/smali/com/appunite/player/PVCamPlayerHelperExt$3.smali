.class Lcom/appunite/player/PVCamPlayerHelperExt$3;
.super Landroid/os/Handler;
.source "PVCamPlayerHelperExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appunite/player/PVCamPlayerHelperExt;->setCustomerHandler(Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appunite/player/PVCamPlayerHelperExt;


# direct methods
.method constructor <init>(Lcom/appunite/player/PVCamPlayerHelperExt;Landroid/os/Looper;)V
    .locals 0

    .line 626
    iput-object p1, p0, Lcom/appunite/player/PVCamPlayerHelperExt$3;->this$0:Lcom/appunite/player/PVCamPlayerHelperExt;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 629
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    const/4 v1, 0x3

    if-eq p1, v1, :cond_4

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    goto/16 :goto_2

    .line 643
    :cond_0
    iget-object p1, p0, Lcom/appunite/player/PVCamPlayerHelperExt$3;->this$0:Lcom/appunite/player/PVCamPlayerHelperExt;

    invoke-static {p1}, Lcom/appunite/player/PVCamPlayerHelperExt;->access$900(Lcom/appunite/player/PVCamPlayerHelperExt;)V

    goto/16 :goto_2

    .line 654
    :cond_1
    invoke-static {}, Lcom/appunite/player/PVCamPlayerHelperExt;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v1, "==================  msg RECONNECT  "

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object p1, p0, Lcom/appunite/player/PVCamPlayerHelperExt$3;->this$0:Lcom/appunite/player/PVCamPlayerHelperExt;

    invoke-static {p1}, Lcom/appunite/player/PVCamPlayerHelperExt;->access$1200(Lcom/appunite/player/PVCamPlayerHelperExt;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 657
    iget-object p1, p0, Lcom/appunite/player/PVCamPlayerHelperExt$3;->this$0:Lcom/appunite/player/PVCamPlayerHelperExt;

    invoke-static {p1}, Lcom/appunite/player/PVCamPlayerHelperExt;->access$700(Lcom/appunite/player/PVCamPlayerHelperExt;)Landroid/view/TextureView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 658
    iget-object p1, p0, Lcom/appunite/player/PVCamPlayerHelperExt$3;->this$0:Lcom/appunite/player/PVCamPlayerHelperExt;

    invoke-static {p1}, Lcom/appunite/player/PVCamPlayerHelperExt;->access$700(Lcom/appunite/player/PVCamPlayerHelperExt;)Landroid/view/TextureView;

    move-result-object p1

    new-instance v0, Lcom/appunite/player/PVCamPlayerHelperExt$3$2;

    invoke-direct {v0, p0}, Lcom/appunite/player/PVCamPlayerHelperExt$3$2;-><init>(Lcom/appunite/player/PVCamPlayerHelperExt$3;)V

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    const-wide/16 v1, 0x1f4

    .line 667
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 669
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 671
    :goto_0
    iget-object p1, p0, Lcom/appunite/player/PVCamPlayerHelperExt$3;->this$0:Lcom/appunite/player/PVCamPlayerHelperExt;

    invoke-static {p1, v0}, Lcom/appunite/player/PVCamPlayerHelperExt;->access$400(Lcom/appunite/player/PVCamPlayerHelperExt;I)V

    .line 673
    :cond_3
    :goto_1
    invoke-static {}, Lcom/appunite/player/PVCamPlayerHelperExt;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "================== msg RECONNECT over  "

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 651
    :cond_4
    iget-object p1, p0, Lcom/appunite/player/PVCamPlayerHelperExt$3;->this$0:Lcom/appunite/player/PVCamPlayerHelperExt;

    invoke-static {p1}, Lcom/appunite/player/PVCamPlayerHelperExt;->access$1100(Lcom/appunite/player/PVCamPlayerHelperExt;)V

    goto :goto_2

    .line 676
    :cond_5
    iget-object p1, p0, Lcom/appunite/player/PVCamPlayerHelperExt$3;->this$0:Lcom/appunite/player/PVCamPlayerHelperExt;

    invoke-static {p1}, Lcom/appunite/player/PVCamPlayerHelperExt;->access$1100(Lcom/appunite/player/PVCamPlayerHelperExt;)V

    .line 677
    iget-object p1, p0, Lcom/appunite/player/PVCamPlayerHelperExt$3;->this$0:Lcom/appunite/player/PVCamPlayerHelperExt;

    invoke-static {p1}, Lcom/appunite/player/PVCamPlayerHelperExt;->access$1000(Lcom/appunite/player/PVCamPlayerHelperExt;)V

    goto :goto_2

    .line 631
    :cond_6
    invoke-static {}, Lcom/appunite/player/PVCamPlayerHelperExt;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "================== changeASR "

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    iget-object p1, p0, Lcom/appunite/player/PVCamPlayerHelperExt$3;->this$0:Lcom/appunite/player/PVCamPlayerHelperExt;

    invoke-static {p1}, Lcom/appunite/player/PVCamPlayerHelperExt;->access$700(Lcom/appunite/player/PVCamPlayerHelperExt;)Landroid/view/TextureView;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 633
    iget-object p1, p0, Lcom/appunite/player/PVCamPlayerHelperExt$3;->this$0:Lcom/appunite/player/PVCamPlayerHelperExt;

    invoke-static {p1}, Lcom/appunite/player/PVCamPlayerHelperExt;->access$700(Lcom/appunite/player/PVCamPlayerHelperExt;)Landroid/view/TextureView;

    move-result-object p1

    new-instance v0, Lcom/appunite/player/PVCamPlayerHelperExt$3$1;

    invoke-direct {v0, p0}, Lcom/appunite/player/PVCamPlayerHelperExt$3$1;-><init>(Lcom/appunite/player/PVCamPlayerHelperExt$3;)V

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 646
    :cond_7
    invoke-static {}, Lcom/appunite/player/PVCamPlayerHelperExt;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "================== init"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    iget-object p1, p0, Lcom/appunite/player/PVCamPlayerHelperExt$3;->this$0:Lcom/appunite/player/PVCamPlayerHelperExt;

    invoke-static {p1}, Lcom/appunite/player/PVCamPlayerHelperExt;->access$1000(Lcom/appunite/player/PVCamPlayerHelperExt;)V

    .line 648
    invoke-static {}, Lcom/appunite/player/PVCamPlayerHelperExt;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "================== init over  "

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_2
    return-void
.end method
