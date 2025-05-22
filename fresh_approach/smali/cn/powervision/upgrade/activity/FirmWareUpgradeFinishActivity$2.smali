.class Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity$2;
.super Ljava/lang/Object;
.source "FirmWareUpgradeFinishActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->hideloadingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;


# direct methods
.method constructor <init>(Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity$2;->this$0:Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity$2;->this$0:Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;

    invoke-static {v0}, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->access$000(Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;)Lcom/powervision/base/views/LoadingProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity$2;->this$0:Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;

    invoke-static {v0}, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->access$000(Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;)Lcom/powervision/base/views/LoadingProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->dismiss()V

    .line 69
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity$2;->this$0:Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;->access$002(Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;Lcom/powervision/base/views/LoadingProgressBar;)Lcom/powervision/base/views/LoadingProgressBar;

    :cond_0
    return-void
.end method
