.class Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$15;
.super Ljava/lang/Object;
.source "FirmwareUpgradeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->setIntegrationUpgradeStatusDeviceInstallComplete()V
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

    .line 1357
    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$15;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, "\u5ef6\u65f64\u79d2\u5230100"

    .line 1361
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$15;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-static {v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$1200(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)Lcom/powervision/base/views/CircleProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1363
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$15;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-static {v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$1200(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)Lcom/powervision/base/views/CircleProgressBar;

    move-result-object v0

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/CircleProgressBar;->setProgress(F)V

    :cond_0
    return-void
.end method
