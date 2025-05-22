.class Lcom/powervision/gcs/usb2/GCSSDKConnManager$8;
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

    .line 529
    iput-object p1, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager$8;->this$0:Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChainConnectFailed()V
    .locals 3

    .line 541
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager$8;->this$0:Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->setAp03Connected(Z)V

    .line 542
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->notifyBodyConnectListeners(II)V

    return-void
.end method

.method public onChainConnectTimeout()V
    .locals 3

    .line 555
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager$8;->this$0:Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->setAp03Connected(Z)V

    .line 556
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->notifyBodyConnectListeners(II)V

    return-void
.end method

.method public onChainConnected()V
    .locals 3

    .line 533
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager$8;->this$0:Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->setAp03Connected(Z)V

    .line 534
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->notifyBodyConnectListeners(II)V

    return-void
.end method

.method public onChainDisconnected()V
    .locals 2

    .line 548
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager$8;->this$0:Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->setAp03Connected(Z)V

    .line 549
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->notifyBodyConnectListeners(II)V

    return-void
.end method

.method public onDeviceConnectFailed()V
    .locals 3

    .line 576
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager$8;->this$0:Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->setAp03Connected(Z)V

    .line 577
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->notifyBodyConnectListeners(II)V

    return-void
.end method

.method public onDeviceConnectTimeout()V
    .locals 3

    .line 590
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager$8;->this$0:Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->setAp03Connected(Z)V

    .line 591
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    const/4 v1, 0x7

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->notifyBodyConnectListeners(II)V

    return-void
.end method

.method public onDeviceConnected()V
    .locals 3

    const/4 v0, 0x1

    .line 561
    sput v0, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->DEVICE:I

    .line 562
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager$8;->this$0:Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    invoke-virtual {v1, v0}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->setAp03Connected(Z)V

    .line 563
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->notifyBodyConnectListeners(II)V

    .line 569
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager$8;->this$0:Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->releaseW4()V

    return-void
.end method

.method public onDeviceDisConnect()V
    .locals 3

    .line 583
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager$8;->this$0:Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->setAp03Connected(Z)V

    .line 584
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->notifyBodyConnectListeners(II)V

    return-void
.end method

.method public onHeartbeatRecovery()V
    .locals 3

    .line 597
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager$8;->this$0:Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->setAp03Connected(Z)V

    .line 598
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->notifyBodyConnectListeners(II)V

    return-void
.end method

.method public onHeartbeatTimeout()V
    .locals 3

    .line 607
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager$8;->this$0:Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->setAp03Connected(Z)V

    .line 608
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    const/16 v1, 0x9

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->notifyBodyConnectListeners(II)V

    return-void
.end method

.method public onSelfDisconnect()V
    .locals 3

    .line 613
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    const/16 v1, 0x64

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->notifyBodyConnectListeners(II)V

    return-void
.end method
