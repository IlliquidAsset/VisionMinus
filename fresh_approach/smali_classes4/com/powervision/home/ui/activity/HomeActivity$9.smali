.class Lcom/powervision/home/ui/activity/HomeActivity$9;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/powervision/gcs/usb2/GcsUsbManager$UsbStateListener;


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

    .line 660
    iput-object p1, p0, Lcom/powervision/home/ui/activity/HomeActivity$9;->this$0:Lcom/powervision/home/ui/activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onError$0()V
    .locals 0

    return-void
.end method


# virtual methods
.method public didNotGetAccessory()V
    .locals 0

    return-void
.end method

.method public getAccessoryAndDoNotHasPermission()V
    .locals 0

    return-void
.end method

.method public getAccessoryAndHasPermission()V
    .locals 0

    return-void
.end method

.method public needRestartActivity()V
    .locals 0

    return-void
.end method

.method public onError()V
    .locals 2

    .line 722
    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity$9;->this$0:Lcom/powervision/home/ui/activity/HomeActivity;

    sget-object v1, Lcom/powervision/home/ui/activity/-$$Lambda$HomeActivity$9$nlgy_OgINI1FULuqOS40PDQcT30;->INSTANCE:Lcom/powervision/home/ui/activity/-$$Lambda$HomeActivity$9$nlgy_OgINI1FULuqOS40PDQcT30;

    invoke-virtual {v0, v1}, Lcom/powervision/home/ui/activity/HomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUsb2CanConnected()V
    .locals 0

    return-void
.end method

.method public onUsb2Confirm()V
    .locals 4

    const-string v0, "lzqUsb"

    const-string v1, "HomeActivity onUsb2Confirm"

    .line 663
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity$9;->this$0:Lcom/powervision/home/ui/activity/HomeActivity;

    invoke-static {v0}, Lcom/powervision/home/ui/activity/HomeActivity;->access$000(Lcom/powervision/home/ui/activity/HomeActivity;)V

    .line 665
    sget v0, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->DEVICE:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 666
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/base/BaseApplication;->getAoaConnectInTime()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "reomte_get"

    const-string v1, " .......111111111111111111"

    .line 667
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x3e8

    .line 669
    iput v1, v0, Landroid/os/Message;->what:I

    .line 670
    iget-object v1, p0, Lcom/powervision/home/ui/activity/HomeActivity$9;->this$0:Lcom/powervision/home/ui/activity/HomeActivity;

    invoke-static {v1}, Lcom/powervision/home/ui/activity/HomeActivity;->access$200(Lcom/powervision/home/ui/activity/HomeActivity;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public onUsb2Disconnected()V
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
