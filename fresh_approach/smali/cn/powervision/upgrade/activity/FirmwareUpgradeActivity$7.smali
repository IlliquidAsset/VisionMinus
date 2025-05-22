.class Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$7;
.super Ljava/lang/Object;
.source "FirmwareUpgradeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->hideloadingDialog()V
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

    .line 514
    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$7;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 517
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$7;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-static {v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$500(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)Lcom/powervision/base/views/LoadingProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$7;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-virtual {v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 518
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$7;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-static {v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$500(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)Lcom/powervision/base/views/LoadingProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->dismiss()V

    .line 519
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$7;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$502(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;Lcom/powervision/base/views/LoadingProgressBar;)Lcom/powervision/base/views/LoadingProgressBar;

    :cond_0
    return-void
.end method
