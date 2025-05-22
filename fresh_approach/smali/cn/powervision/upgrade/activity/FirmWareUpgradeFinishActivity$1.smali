.class Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity$1;
.super Ljava/lang/Object;
.source "FirmWareUpgradeFinishActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->showloadingDialog(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;

.field final synthetic val$s:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity$1;->this$0:Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;

    iput-object p2, p0, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity$1;->val$s:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 45
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity$1;->this$0:Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;

    invoke-virtual {v0}, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity$1;->this$0:Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;

    invoke-static {v0}, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->access$000(Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;)Lcom/powervision/base/views/LoadingProgressBar;

    move-result-object v0

    if-nez v0, :cond_1

    .line 50
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity$1;->this$0:Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;

    new-instance v1, Lcom/powervision/base/views/LoadingProgressBar;

    iget-object v2, p0, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity$1;->this$0:Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;

    invoke-direct {v1, v2}, Lcom/powervision/base/views/LoadingProgressBar;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->access$002(Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;Lcom/powervision/base/views/LoadingProgressBar;)Lcom/powervision/base/views/LoadingProgressBar;

    .line 53
    :cond_1
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity$1;->val$s:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity$1;->this$0:Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;

    invoke-static {v0}, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->access$000(Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;)Lcom/powervision/base/views/LoadingProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity$1;->val$s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/LoadingProgressBar;->setText(Ljava/lang/String;)V

    .line 56
    :cond_2
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity$1;->this$0:Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;

    invoke-static {v0}, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->access$000(Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;)Lcom/powervision/base/views/LoadingProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->show()V

    return-void
.end method
