.class Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$2;
.super Ljava/lang/Object;
.source "FirmwareUpgradeActivity.java"

# interfaces
.implements Lcn/powervision/upgrade/manager/NewFirmWareManager$onGetAp03VersionListener;


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

    .line 239
    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$2;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAp03Version()V
    .locals 3

    const-string v0, "lzqFirm"

    const-string v1, " zip Thread getAp03Version   "

    .line 242
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$2;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-static {v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$100(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)Landroid/os/HandlerThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$2;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-static {v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$100(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)Landroid/os/HandlerThread;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "lzqFirm"

    const-string v2, " zip Thread getAp03Version notify   "

    .line 245
    invoke-static {v1, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$2;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-static {v1}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$100(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 247
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method
