.class Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$26;
.super Lcn/powervision/upgrade/utils/RetryMechine$ReTryListener;
.source "FirmwareUpgradeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;


# direct methods
.method constructor <init>(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)V
    .locals 0

    .line 1709
    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$26;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-direct {p0}, Lcn/powervision/upgrade/utils/RetryMechine$ReTryListener;-><init>()V

    return-void
.end method


# virtual methods
.method public reTryAp03()V
    .locals 1

    .line 1712
    invoke-super {p0}, Lcn/powervision/upgrade/utils/RetryMechine$ReTryListener;->reTryAp03()V

    .line 1713
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->isUSB2_CONFIRM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1714
    invoke-static {}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->get()Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->resetAp03Upgrade()V

    .line 1716
    :cond_0
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$26;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    iget-object v0, v0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->retryMechine:Lcn/powervision/upgrade/utils/RetryMechine;

    if-eqz v0, :cond_1

    .line 1717
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$26;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    iget-object v0, v0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->retryMechine:Lcn/powervision/upgrade/utils/RetryMechine;

    invoke-virtual {v0}, Lcn/powervision/upgrade/utils/RetryMechine;->destory()V

    .line 1719
    :cond_1
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$26;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-virtual {v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->upgradeAp03()V

    .line 1720
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$26;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-virtual {v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->hideRetryDialog()V

    return-void
.end method

.method public reTryFailed()V
    .locals 3

    .line 1725
    invoke-super {p0}, Lcn/powervision/upgrade/utils/RetryMechine$ReTryListener;->reTryFailed()V

    .line 1726
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$26;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    iget-object v0, v0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->retryMechine:Lcn/powervision/upgrade/utils/RetryMechine;

    if-eqz v0, :cond_0

    .line 1727
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$26;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    iget-object v0, v0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->retryMechine:Lcn/powervision/upgrade/utils/RetryMechine;

    invoke-virtual {v0}, Lcn/powervision/upgrade/utils/RetryMechine;->destory()V

    .line 1729
    :cond_0
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$26;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-virtual {v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->hideRetryDialog()V

    .line 1730
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$26;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$1900(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;II)V

    return-void
.end method

.method public reTryRemote()V
    .locals 2

    .line 1735
    invoke-super {p0}, Lcn/powervision/upgrade/utils/RetryMechine$ReTryListener;->reTryRemote()V

    .line 1736
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$26;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    iget-object v0, v0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->retryMechine:Lcn/powervision/upgrade/utils/RetryMechine;

    if-eqz v0, :cond_0

    .line 1737
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$26;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    iget-object v0, v0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->retryMechine:Lcn/powervision/upgrade/utils/RetryMechine;

    invoke-virtual {v0}, Lcn/powervision/upgrade/utils/RetryMechine;->destory()V

    .line 1739
    :cond_0
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$26;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    const-string v1, ""

    invoke-static {v0, v1}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$2000(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;Ljava/lang/String;)V

    .line 1740
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$26;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-virtual {v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->hideRetryDialog()V

    return-void
.end method
