.class Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$10;
.super Ljava/lang/Object;
.source "FirmwareUpgradeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->setIntegrationUpgradeStatusSendDataSuccess()V
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

    .line 1034
    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$10;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1037
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$10;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-static {v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$1200(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)Lcom/powervision/base/views/CircleProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/CircleProgressBar;->setProgress(F)V

    const-string v0, "lzqFirm"

    const-string v2, "setIntegrationUpgradeStatusSendDataSuccess \u5f00\u59cb\u5047\u8fdb\u5ea6"

    .line 1039
    invoke-static {v0, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$10;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    const/16 v2, 0x2710

    const/16 v3, 0x3e8

    const/16 v4, 0xc

    invoke-static {v0, v2, v3, v1, v4}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$1300(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;IIFI)V

    return-void
.end method
