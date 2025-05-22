.class Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$1;
.super Landroid/os/Handler;
.source "FirmwareUpgradeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->initView(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;


# direct methods
.method constructor <init>(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;Landroid/os/Looper;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$1;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 171
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 172
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 185
    :cond_0
    iget-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$1;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-virtual {p1}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->reboot()V

    goto :goto_0

    .line 181
    :cond_1
    iget-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$1;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-virtual {p1}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->showRetryDialog()V

    .line 182
    iget-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$1;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-virtual {p1}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->reTry()V

    goto :goto_0

    .line 175
    :cond_2
    :try_start_0
    iget-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$1;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-static {p1}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$000(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 177
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method
