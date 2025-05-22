.class Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper$1;
.super Ljava/lang/Object;
.source "Mt03RemoteControlBatterySurplusHelper.java"

# interfaces
.implements Lcom/powervision/natives/callback/RemoteControlCallback$Mt03RemoteControlBatterySurplusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper$1;->this$0:Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mt03RemoteControlBatterySurplus(I)V
    .locals 4

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mt03RemoteControlBatterySurplus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mt03RemoteControlBatter"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper$1;->this$0:Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;

    invoke-static {v0}, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->access$100(Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper$1;->this$0:Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->access$102(Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;Z)Z

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper$1;->this$0:Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;

    invoke-static {v0}, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->access$300(Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper$1;->this$0:Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;

    invoke-static {v1}, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->access$200(Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;)Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper$DisconnectRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 104
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper$1;->this$0:Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;

    invoke-static {v0}, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->access$300(Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper$1;->this$0:Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;

    invoke-static {v1}, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->access$200(Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;)Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper$DisconnectRunnable;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper$1$1;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper$1$1;-><init>(Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
