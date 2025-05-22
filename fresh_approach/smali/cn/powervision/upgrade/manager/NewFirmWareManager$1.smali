.class Lcn/powervision/upgrade/manager/NewFirmWareManager$1;
.super Ljava/lang/Object;
.source "NewFirmWareManager.java"

# interfaces
.implements Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnArmStatusWarningListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/powervision/upgrade/manager/NewFirmWareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;


# direct methods
.method constructor <init>(Lcn/powervision/upgrade/manager/NewFirmWareManager;)V
    .locals 0

    .line 428
    iput-object p1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$1;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArmStatus(Ljava/lang/String;)V
    .locals 3

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "arm isArm:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqFirm"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "LOCK"

    .line 433
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "UNLOCK"

    .line 436
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 441
    :goto_0
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$1;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    iget v0, v0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->lastArmStatus:I

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$1;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    iget v0, v0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->lastArmStatus:I

    if-eq p1, v0, :cond_4

    :cond_2
    if-nez p1, :cond_3

    const-string v0, "arm \u52a0\u9501 \u8ba9\u5347\u7ea7"

    .line 445
    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$1;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    invoke-virtual {v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->notify_canUpgradeByArmStatus()V

    goto :goto_1

    :cond_3
    const-string v0, "arm \u89e3\u9501 \u4e0d\u8ba9\u5347"

    .line 449
    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$1;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    invoke-virtual {v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->notify_canNotUpgradeByArmStatus()V

    .line 453
    :goto_1
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$1;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    iput p1, v0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->lastArmStatus:I

    :cond_4
    return-void
.end method
