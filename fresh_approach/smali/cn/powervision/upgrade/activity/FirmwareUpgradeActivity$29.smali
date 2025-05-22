.class Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$29;
.super Ljava/lang/Object;
.source "FirmwareUpgradeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->updateInstallProgress(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

.field final synthetic val$p:F


# direct methods
.method constructor <init>(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;F)V
    .locals 0

    .line 1832
    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$29;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    iput p2, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$29;->val$p:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1835
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$29;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-static {v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$1200(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)Lcom/powervision/base/views/CircleProgressBar;

    move-result-object v0

    const-string v1, "lzqFirm"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$29;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-static {v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$1200(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)Lcom/powervision/base/views/CircleProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/views/CircleProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$29;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-virtual {v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProgress:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$29;->val$p:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1837
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$29;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-static {v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$1200(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)Lcom/powervision/base/views/CircleProgressBar;

    move-result-object v0

    iget v2, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$29;->val$p:F

    invoke-virtual {v0, v2}, Lcom/powervision/base/views/CircleProgressBar;->setProgress(F)V

    .line 1838
    iget v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$29;->val$p:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    .line 1839
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$29;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-static {v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$1600(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v2, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$29;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    sget v3, Lcn/powervision/upgrade/R$string;->AP03_Upgrade_41:I

    invoke-virtual {v2, v3}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$29;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    iget v6, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$29;->val$p:F

    const/high16 v7, 0x43c80000    # 400.0f

    mul-float v6, v6, v7

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v6, v8

    sub-float/2addr v7, v6

    invoke-virtual {v5, v7}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->two(F)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    const-string v0, " == 0.0f:"

    .line 1841
    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1845
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mInstall_CircleBar.getVisibility()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$29;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-static {v2}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$1200(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)Lcom/powervision/base/views/CircleProgressBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/powervision/base/views/CircleProgressBar;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "VISABLE"

    goto :goto_0

    :cond_2
    const-string v2, "INVISBALE"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
