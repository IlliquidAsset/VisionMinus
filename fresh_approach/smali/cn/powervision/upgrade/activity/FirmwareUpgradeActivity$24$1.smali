.class Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$24$1;
.super Ljava/lang/Object;
.source "FirmwareUpgradeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$24;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$24;


# direct methods
.method constructor <init>(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$24;)V
    .locals 0

    .line 1634
    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$24$1;->this$1:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1638
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->getStaticZipFiles()Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0xaa

    if-eqz v0, :cond_3

    .line 1641
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    .line 1642
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1643
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/powervision/upgrade/model/entity/Firmware;

    iget-object v4, v4, Lcn/powervision/upgrade/model/entity/Firmware;->hardware_type:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 1644
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/powervision/upgrade/model/entity/Firmware;

    iget-object v4, v4, Lcn/powervision/upgrade/model/entity/Firmware;->hardware_type:Ljava/lang/String;

    const-string v5, "FS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0xa

    goto :goto_2

    .line 1646
    :cond_0
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/powervision/upgrade/model/entity/Firmware;

    iget-object v4, v4, Lcn/powervision/upgrade/model/entity/Firmware;->hardware_type:Ljava/lang/String;

    const-string v5, "MODEL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1651
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v1, v0

    .line 1654
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateError \u5f00\u59cb\u7b49:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "lzqFirm"

    invoke-static {v2, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1655
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$24$1;->this$1:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$24;

    iget-object v0, v0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$24;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-static {v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$1200(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)Lcom/powervision/base/views/CircleProgressBar;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1656
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$24$1;->this$1:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$24;

    iget-object v0, v0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$24;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    const/16 v2, 0x3e8

    iget-object v3, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$24$1;->this$1:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$24;

    iget-object v3, v3, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$24;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-static {v3}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$1200(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)Lcom/powervision/base/views/CircleProgressBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/powervision/base/views/CircleProgressBar;->getProgress()F

    move-result v3

    const/16 v4, 0x64

    invoke-static {v0, v1, v2, v3, v4}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$1300(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;IIFI)V

    :cond_4
    return-void
.end method
