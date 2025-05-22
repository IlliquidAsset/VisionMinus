.class Lcom/powervision/gcs/usb2/GCSSDKConnManager$9;
.super Ljava/lang/Object;
.source "GCSSDKConnManager.java"

# interfaces
.implements Lcom/powervision/natives/connect/PVConnectHelper$ConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/usb2/GCSSDKConnManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/usb2/GCSSDKConnManager;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/usb2/GCSSDKConnManager;)V
    .locals 0

    .line 618
    iput-object p1, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager$9;->this$0:Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChainConnectFailed()V
    .locals 2

    const-string v0, "lzqW4"

    const-string v1, "manager onChainConnectFailed"

    .line 629
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager$9;->this$0:Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->setShipConnected(Z)V

    .line 631
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->notifyBodyConnectListeners(II)V

    return-void
.end method

.method public onChainConnectTimeout()V
    .locals 3

    const-string v0, "lzqW4"

    const-string v1, "manager onChainConnectTimeout"

    .line 643
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager$9;->this$0:Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->setShipConnected(Z)V

    .line 645
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->notifyBodyConnectListeners(II)V

    return-void
.end method

.method public onChainConnected()V
    .locals 3

    const-string v0, "lzqW4"

    const-string v1, "manager onChainConnected"

    .line 621
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager$9;->this$0:Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->setShipConnected(Z)V

    .line 623
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->notifyBodyConnectListeners(II)V

    return-void
.end method

.method public onChainDisconnected()V
    .locals 3

    const-string v0, "lzqW4"

    const-string v1, "manager onChainDisconnected"

    .line 636
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager$9;->this$0:Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->setShipConnected(Z)V

    .line 638
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->notifyBodyConnectListeners(II)V

    return-void
.end method

.method public onDeviceConnectFailed()V
    .locals 3

    .line 664
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager$9;->this$0:Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->setShipConnected(Z)V

    .line 665
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->notifyBodyConnectListeners(II)V

    return-void
.end method

.method public onDeviceConnectTimeout()V
    .locals 3

    .line 678
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager$9;->this$0:Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->setShipConnected(Z)V

    .line 679
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    const/4 v1, 0x7

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->notifyBodyConnectListeners(II)V

    return-void
.end method

.method public onDeviceConnected()V
    .locals 3

    const/4 v0, 0x2

    .line 650
    sput v0, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->DEVICE:I

    .line 651
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager$9;->this$0:Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->setShipConnected(Z)V

    .line 652
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->notifyBodyConnectListeners(II)V

    .line 657
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager$9;->this$0:Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->releaseAp03()V

    return-void
.end method

.method public onDeviceDisConnect()V
    .locals 3

    .line 671
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager$9;->this$0:Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->setShipConnected(Z)V

    .line 672
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->notifyBodyConnectListeners(II)V

    return-void
.end method

.method public onHeartbeatRecovery()V
    .locals 3

    .line 685
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager$9;->this$0:Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->setShipConnected(Z)V

    .line 686
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->notifyBodyConnectListeners(II)V

    return-void
.end method

.method public onHeartbeatTimeout()V
    .locals 3

    .line 695
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager$9;->this$0:Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->setShipConnected(Z)V

    .line 696
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    const/16 v1, 0x9

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->notifyBodyConnectListeners(II)V

    return-void
.end method

.method public onSelfDisconnect()V
    .locals 3

    .line 702
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager$9;->this$0:Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->setShipConnected(Z)V

    .line 703
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->notifyBodyConnectListeners(II)V

    return-void
.end method
