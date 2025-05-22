.class Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$6;
.super Ljava/lang/Object;
.source "FirmwareUpgradeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->showloadingDialog(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

.field final synthetic val$s:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;Ljava/lang/String;)V
    .locals 0

    .line 492
    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$6;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    iput-object p2, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$6;->val$s:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 495
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$6;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-virtual {v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 499
    :cond_0
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$6;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-static {v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$500(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)Lcom/powervision/base/views/LoadingProgressBar;

    move-result-object v0

    if-nez v0, :cond_1

    .line 500
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$6;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    new-instance v1, Lcom/powervision/base/views/LoadingProgressBar;

    iget-object v2, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$6;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-direct {v1, v2}, Lcom/powervision/base/views/LoadingProgressBar;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$502(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;Lcom/powervision/base/views/LoadingProgressBar;)Lcom/powervision/base/views/LoadingProgressBar;

    .line 503
    :cond_1
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$6;->val$s:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 504
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$6;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-static {v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$500(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)Lcom/powervision/base/views/LoadingProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$6;->val$s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/LoadingProgressBar;->setText(Ljava/lang/String;)V

    .line 506
    :cond_2
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$6;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-static {v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$500(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)Lcom/powervision/base/views/LoadingProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->show()V

    return-void
.end method
