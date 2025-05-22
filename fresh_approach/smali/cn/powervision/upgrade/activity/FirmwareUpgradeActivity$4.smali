.class Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$4;
.super Ljava/lang/Object;
.source "FirmwareUpgradeActivity.java"

# interfaces
.implements Lorg/xutils/common/Callback$CommonCallback;


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

    .line 417
    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$4;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lorg/xutils/common/Callback$CancelledException;)V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;Z)V
    .locals 0

    .line 426
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u6790\u6784SDK\u91cd\u65b0\u5347\u7ea7 isUpdatingDl01:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$4;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-static {p2}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$300(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "lzqFirm"

    invoke-static {p2, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    iget-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$4;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-static {p1}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$300(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 428
    iget-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$4;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$400(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;Z)V

    :cond_0
    return-void
.end method

.method public onFinished()V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
