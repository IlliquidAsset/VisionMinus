.class Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$3;
.super Ljava/lang/Object;
.source "FirmwareUpgradeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->doStep3()V
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

    .line 352
    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$3;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 355
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$3;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-static {v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$200(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)V

    .line 357
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$3;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->switchMCSX(Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$3;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-virtual {v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->finish()V

    return-void
.end method
