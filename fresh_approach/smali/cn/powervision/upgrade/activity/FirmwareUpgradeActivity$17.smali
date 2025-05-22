.class Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$17;
.super Ljava/lang/Object;
.source "FirmwareUpgradeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->setRemoteMcuUpgradeStatusInfoSendingFile(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;I)V
    .locals 0

    .line 1421
    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$17;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    iput p2, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$17;->val$progress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1424
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$17;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-static {v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$1400(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)V

    .line 1425
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$17;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-static {v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$900(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$17;->val$progress:I

    div-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    iget v1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$17;->val$progress:I

    :goto_0
    invoke-virtual {v0, v1}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->updateProgress(I)V

    return-void
.end method
