.class Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$3;
.super Ljava/lang/Object;
.source "PVW4ConnectedActivity.java"

# interfaces
.implements Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectStuffListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;


# direct methods
.method constructor <init>(Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$3;->this$0:Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public askForTethering()V
    .locals 2

    const-string v0, "lzq"

    const-string v1, "askForTethering  ShipConnectedActivity finish finish finish finish finish finish"

    .line 164
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$3;->this$0:Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;

    new-instance v1, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$3$1;

    invoke-direct {v1, p0}, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$3$1;-><init>(Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$3;)V

    invoke-virtual {v0, v1}, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->runOnUiThread(Ljava/lang/Runnable;)V

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
    .locals 0

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
