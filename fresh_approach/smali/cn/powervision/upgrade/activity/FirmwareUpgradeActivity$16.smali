.class Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$16;
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

    .line 1370
    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$16;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, "\u53c8\u5ef6\u65f62\u79d2\u5230\u6210\u529f"

    .line 1373
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$16;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-static {v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$1700(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)V

    return-void
.end method
