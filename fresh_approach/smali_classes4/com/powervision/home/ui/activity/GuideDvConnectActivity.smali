.class public Lcom/powervision/home/ui/activity/GuideDvConnectActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "GuideDvConnectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$Ap03DeviceConnectionChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/home/ui/activity/GuideDvConnectActivity;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/powervision/home/ui/activity/GuideDvConnectActivity;->startToHomeActivity()V

    return-void
.end method

.method private startToHomeActivity()V
    .locals 2

    .line 78
    const-class v0, Lcom/powervision/home/ui/activity/GuideDvConnectActivity;

    invoke-static {v0, p0}, Lcom/powervision/base/utils/AppUtils;->isActivityTop(Ljava/lang/Class;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/powervision/home/ui/activity/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/GuideDvConnectActivity;->startActivity(Landroid/content/Intent;)V

    .line 81
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideDvConnectActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDeviceConnectionChange:   finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideDvConnectActivity;->finish()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .line 29
    sget v0, Lcom/powervision/home/R$layout;->home_activity_dv_connect_guide_layout:I

    return v0
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideDvConnectActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy: onDeviceConnectionChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-static {}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->getAp03ConnectionInstance()Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->removeConnectionChangeListener(Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$Ap03DeviceConnectionChangeListener;)V

    .line 56
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onDeviceConnectionChange(Z)V
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideDvConnectActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeviceConnectionChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  --------------> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/powervision/home/ui/activity/GuideDvConnectActivity;

    invoke-static {v2, p0}, Lcom/powervision/base/utils/AppUtils;->isActivityTop(Ljava/lang/Class;Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    sget-boolean v0, Lcom/powervision/base/constant/Constant;->ACTIVATION_FLAG:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 66
    new-instance p1, Lcom/powervision/home/ui/activity/GuideDvConnectActivity$1;

    invoke-direct {p1, p0}, Lcom/powervision/home/ui/activity/GuideDvConnectActivity$1;-><init>(Lcom/powervision/home/ui/activity/GuideDvConnectActivity;)V

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/activity/GuideDvConnectActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 39
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onResume()V

    .line 40
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideDvConnectActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeviceConnectionChange: isConnect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-direct {p0}, Lcom/powervision/home/ui/activity/GuideDvConnectActivity;->startToHomeActivity()V

    :cond_0
    return-void
.end method

.method protected setListener()V
    .locals 1

    .line 48
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->setListener()V

    .line 49
    invoke-static {}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->getAp03ConnectionInstance()Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->addConnectionChangeListener(Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$Ap03DeviceConnectionChangeListener;)V

    return-void
.end method
