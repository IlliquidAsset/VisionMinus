.class Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$28;
.super Lcn/powervision/upgrade/utils/TimeMechine$ProgressListener;
.source "FirmwareUpgradeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;
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

    .line 1804
    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$28;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-direct {p0}, Lcn/powervision/upgrade/utils/TimeMechine$ProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(F)V
    .locals 1

    .line 1807
    invoke-super {p0, p1}, Lcn/powervision/upgrade/utils/TimeMechine$ProgressListener;->onProgress(F)V

    .line 1808
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$28;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-static {v0, p1}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$2100(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;F)V

    return-void
.end method

.method public onTimeEnd()V
    .locals 1

    .line 1813
    invoke-super {p0}, Lcn/powervision/upgrade/utils/TimeMechine$ProgressListener;->onTimeEnd()V

    .line 1814
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$28;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-static {v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$1700(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)V

    return-void
.end method
