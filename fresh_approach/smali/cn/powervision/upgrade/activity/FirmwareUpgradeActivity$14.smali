.class Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$14;
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

    .line 1339
    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$14;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIntegrationUpgradeStatusDeviceInstallComplete has_DL01 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$14;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    iget v1, v1, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->lastPro:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqFirm"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$14;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    iget v0, v0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->lastPro:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1344
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$14;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    const/4 v1, 0x0

    iput v1, v0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->lastPro:I

    .line 1346
    :cond_0
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$14;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-static {v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$1200(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)Lcom/powervision/base/views/CircleProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/CircleProgressBar;->setProgress(F)V

    .line 1349
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$14;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    const/16 v1, 0xb4

    const/16 v2, 0x3e8

    iget v3, v0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->lastPro:I

    int-to-float v3, v3

    const/4 v4, 0x2

    invoke-static {v0, v1, v2, v3, v4}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$1300(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;IIFI)V

    return-void
.end method
