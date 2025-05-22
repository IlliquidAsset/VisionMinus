.class Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$21;
.super Ljava/lang/Object;
.source "FirmwareUpgradeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->showRetryDialog()V
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

    .line 1575
    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$21;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1578
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$21;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    iget-object v0, v0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->reTryBar:Lcom/powervision/base/views/LoadingProgressBar;

    if-eqz v0, :cond_0

    return-void

    .line 1581
    :cond_0
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$21;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-virtual {v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1585
    :cond_1
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$21;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    new-instance v1, Lcom/powervision/base/views/LoadingProgressBar;

    iget-object v2, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$21;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-direct {v1, v2}, Lcom/powervision/base/views/LoadingProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->reTryBar:Lcom/powervision/base/views/LoadingProgressBar;

    .line 1586
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$21;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    iget-object v0, v0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->reTryBar:Lcom/powervision/base/views/LoadingProgressBar;

    iget-object v1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$21;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    sget v2, Lcn/powervision/upgrade/R$string;->AP03_Upgrade_16:I

    invoke-virtual {v1, v2}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/LoadingProgressBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1587
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$21;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    iget-object v0, v0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->reTryBar:Lcom/powervision/base/views/LoadingProgressBar;

    iget-object v1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$21;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    sget v2, Lcn/powervision/upgrade/R$string;->AP03_Upgrade_84:I

    invoke-virtual {v1, v2}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/LoadingProgressBar;->setText(Ljava/lang/String;)V

    .line 1588
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$21;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    iget-object v0, v0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->reTryBar:Lcom/powervision/base/views/LoadingProgressBar;

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->show()V

    return-void
.end method
