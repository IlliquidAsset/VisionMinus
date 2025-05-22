.class Lcom/powervision/home/ui/activity/HomeActivity$8;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectStuffListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/home/ui/activity/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/home/ui/activity/HomeActivity;


# direct methods
.method constructor <init>(Lcom/powervision/home/ui/activity/HomeActivity;)V
    .locals 0

    .line 604
    iput-object p1, p0, Lcom/powervision/home/ui/activity/HomeActivity$8;->this$0:Lcom/powervision/home/ui/activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public askForTethering()V
    .locals 2

    .line 628
    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity$8;->this$0:Lcom/powervision/home/ui/activity/HomeActivity;

    invoke-virtual {v0}, Lcom/powervision/home/ui/activity/HomeActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity$8;->this$0:Lcom/powervision/home/ui/activity/HomeActivity;

    sget v1, Lcom/powervision/home/R$id;->home_container:I

    invoke-virtual {v0, v1}, Lcom/powervision/home/ui/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/powervision/home/ui/activity/-$$Lambda$HomeActivity$8$bberct05fxcVxK0aYwGregnkSpI;

    invoke-direct {v1, p0}, Lcom/powervision/home/ui/activity/-$$Lambda$HomeActivity$8$bberct05fxcVxK0aYwGregnkSpI;-><init>(Lcom/powervision/home/ui/activity/HomeActivity$8;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public connectModeChanged()V
    .locals 0

    return-void
.end method

.method public getTheTethering()V
    .locals 0

    return-void
.end method

.method public synthetic lambda$askForTethering$0$HomeActivity$8()V
    .locals 2

    const-string v0, "lzqDia"

    const-string v1, " fragment askForTethering  2222222222"

    .line 630
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity$8;->this$0:Lcom/powervision/home/ui/activity/HomeActivity;

    invoke-virtual {v0}, Lcom/powervision/home/ui/activity/HomeActivity;->showUsbTips()V

    return-void
.end method

.method public needOpenPermission()V
    .locals 0

    return-void
.end method

.method public needOpenUSBShare()V
    .locals 0

    return-void
.end method

.method public onUsbIn()V
    .locals 0

    return-void
.end method

.method public onUsbOut()V
    .locals 1

    .line 651
    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity$8;->this$0:Lcom/powervision/home/ui/activity/HomeActivity;

    invoke-static {v0}, Lcom/powervision/home/ui/activity/HomeActivity;->access$000(Lcom/powervision/home/ui/activity/HomeActivity;)V

    return-void
.end method

.method public updateConnectUI()V
    .locals 0

    return-void
.end method

.method public updateDisconnectUI()V
    .locals 0

    return-void
.end method
