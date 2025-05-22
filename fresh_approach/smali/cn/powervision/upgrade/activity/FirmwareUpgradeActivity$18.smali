.class Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$18;
.super Ljava/lang/Object;
.source "FirmwareUpgradeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->setRemoteMcuUpgradeStatusInfoSendDataComplete()V
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

    .line 1436
    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$18;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1439
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$18;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    const/16 v1, 0x14

    const/16 v2, 0x1f4

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-static {v0, v1, v2, v3, v4}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$1300(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;IIFI)V

    return-void
.end method
