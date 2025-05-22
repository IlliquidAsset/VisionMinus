.class Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$22;
.super Ljava/lang/Object;
.source "FirmwareUpgradeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->hideRetryDialog()V
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

    .line 1597
    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$22;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1600
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$22;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    iget-object v0, v0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->reTryBar:Lcom/powervision/base/views/LoadingProgressBar;

    if-eqz v0, :cond_0

    .line 1601
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$22;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    iget-object v0, v0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->reTryBar:Lcom/powervision/base/views/LoadingProgressBar;

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->dismiss()V

    :cond_0
    return-void
.end method
