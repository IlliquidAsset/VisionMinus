.class Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$9;
.super Ljava/lang/Object;
.source "FirmwareDownloadActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->showConnectDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;


# direct methods
.method constructor <init>(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)V
    .locals 0

    .line 471
    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$9;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5

    .line 479
    sget p1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->CONNECT_TYPE:I

    const/4 v0, 0x4

    const/4 v1, 0x2

    const/16 v2, 0x9

    const/16 v3, 0x64

    if-nez p1, :cond_5

    .line 480
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/powervision/natives/connect/CameraConnectSDK;->get()Lcom/powervision/natives/connect/CameraConnectSDK;

    move-result-object p1

    iget p1, p1, Lcom/powervision/natives/connect/CameraConnectSDK;->currentCam_S_ConnectState:I

    const/4 v4, 0x6

    if-ne p1, v4, :cond_0

    goto :goto_0

    .line 502
    :cond_0
    iget-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$9;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-static {p1}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->access$800(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 482
    :cond_1
    :goto_0
    iget-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$9;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-static {p1}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->access$300(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "showSuccessDialog device_type 1111111"

    invoke-static {p1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 484
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->compareBody_LocalWithDevice()Z

    .line 485
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->compareMode_LocalWitchDevice()V

    .line 488
    :cond_2
    invoke-static {}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->get()Lcom/powervision/natives/connect/Dl01ConnectSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->getGroundStatus()I

    move-result p1

    if-eq p1, v3, :cond_3

    invoke-static {}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->get()Lcom/powervision/natives/connect/ConnectRemoteSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->getConnectState()I

    move-result p1

    if-ne p1, v2, :cond_4

    .line 489
    :cond_3
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->compareDl01_LocalWithDevice()Z

    .line 490
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->compareMcu_LocalWitchDevice()Z

    .line 494
    :cond_4
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 495
    iput v1, p1, Landroid/os/Message;->what:I

    .line 496
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$9;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-static {v0}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->access$900(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 497
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$9;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-static {v0}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->access$800(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 505
    :cond_5
    sget p1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->CONNECT_TYPE:I

    const/4 v4, 0x1

    if-ne p1, v4, :cond_b

    .line 506
    iget-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$9;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-static {p1}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->access$300(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "showSuccessDialog device_type 222222"

    invoke-static {p1, v4}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->isBootloader()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-static {}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->get()Lcom/powervision/natives/connect/Dl01ConnectSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->getGroundStatus()I

    move-result p1

    if-eq p1, v3, :cond_7

    invoke-static {}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->get()Lcom/powervision/natives/connect/ConnectRemoteSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->getConnectState()I

    move-result p1

    if-eq p1, v2, :cond_7

    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result p1

    if-ne p1, v1, :cond_6

    goto :goto_1

    .line 526
    :cond_6
    iget-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$9;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-static {p1}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->access$800(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 527
    iget-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$9;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-static {p1}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->access$800(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 508
    :cond_7
    :goto_1
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 509
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->compareBody_LocalWithDevice()Z

    .line 510
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->compareMode_LocalWitchDevice()V

    .line 513
    :cond_8
    invoke-static {}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->get()Lcom/powervision/natives/connect/Dl01ConnectSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->getGroundStatus()I

    move-result p1

    if-eq p1, v3, :cond_9

    invoke-static {}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->get()Lcom/powervision/natives/connect/ConnectRemoteSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->getConnectState()I

    move-result p1

    if-ne p1, v2, :cond_a

    .line 514
    :cond_9
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->compareDl01_LocalWithDevice()Z

    .line 515
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->compareMcu_LocalWitchDevice()Z

    .line 519
    :cond_a
    iget-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$9;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-static {p1}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->access$800(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 520
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 521
    iput v1, p1, Landroid/os/Message;->what:I

    .line 522
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$9;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-static {v0}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->access$900(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 523
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$9;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-static {v0}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->access$800(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 531
    :cond_b
    sget p1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->CONNECT_TYPE:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_c

    .line 532
    iget-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$9;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-static {p1}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->access$300(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "showSuccessDialog device_type 33333 error"

    invoke-static {p1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    iget-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$9;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-virtual {p1}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->finish()V

    :cond_c
    :goto_2
    return-void
.end method
