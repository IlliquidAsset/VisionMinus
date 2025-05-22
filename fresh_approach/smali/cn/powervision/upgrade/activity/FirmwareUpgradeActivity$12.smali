.class Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$12;
.super Ljava/lang/Object;
.source "FirmwareUpgradeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->setIntegrationUpgradeStatusDeviceInstalling(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;I)V
    .locals 0

    .line 1088
    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$12;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    iput p2, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$12;->val$progress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1092
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$12;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$1300(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;IIFI)V

    .line 1094
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$12;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    iget v0, v0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->realFileCount:F

    const/high16 v1, 0x42c80000    # 100.0f

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_0

    .line 1095
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$12;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    iget v0, v0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->realFileCount:F

    div-float v0, v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/high16 v5, 0x41200000    # 10.0f

    cmpl-float v5, v0, v5

    if-lez v5, :cond_1

    .line 1099
    iget-object v5, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$12;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    const v6, 0x3c83126f    # 0.016f

    iput v6, v5, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->pitch:F

    goto :goto_1

    .line 1101
    :cond_1
    iget-object v5, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$12;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    const v6, 0x3c23d70a    # 0.01f

    iput v6, v5, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->pitch:F

    .line 1105
    :goto_1
    iget-object v5, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$12;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-static {v5}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$1500(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1106
    iget v5, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$12;->val$progress:I

    mul-int/lit8 v5, v5, 0x6

    div-int/lit8 v5, v5, 0xa

    goto :goto_2

    .line 1108
    :cond_2
    iget v5, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$12;->val$progress:I

    .line 1112
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setIntegrationUpgradeStatusDeviceInstalling lastPro : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$12;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    iget v7, v7, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->lastPro:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "  progress:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$12;->val$progress:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "lzqFirm"

    invoke-static {v7, v6}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    iget-object v6, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$12;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    iget v6, v6, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->lastPro:I

    const/high16 v8, 0x3f800000    # 1.0f

    if-ne v6, v5, :cond_3

    .line 1114
    iget-object v3, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$12;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    iget v6, v3, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->fakeCount:F

    add-float/2addr v6, v8

    iput v6, v3, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->fakeCount:F

    goto :goto_3

    .line 1116
    :cond_3
    iget-object v6, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$12;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    iput v3, v6, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->fakeCount:F

    :goto_3
    int-to-float v3, v5

    .line 1119
    iget-object v6, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$12;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    iget v6, v6, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->fakeCount:F

    iget-object v9, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$12;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    iget v9, v9, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->pitch:F

    mul-float v6, v6, v9

    add-float/2addr v6, v3

    add-float/2addr v3, v0

    cmpl-float v0, v6, v3

    if-lez v0, :cond_4

    sub-float v6, v3, v8

    .line 1123
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "lzqPro"

    invoke-static {v3, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$12;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    iget-object v0, v0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->progressListener:Lcn/powervision/upgrade/utils/TimeMechine$ProgressListener;

    if-eqz v0, :cond_6

    .line 1125
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$12;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    iget-object v0, v0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->progressListener:Lcn/powervision/upgrade/utils/TimeMechine$ProgressListener;

    invoke-virtual {v0}, Lcn/powervision/upgrade/utils/TimeMechine$ProgressListener;->getFakeP()F

    move-result v0

    cmpl-float v3, v0, v6

    if-lez v3, :cond_5

    .line 1127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fake is more:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v0

    goto :goto_4

    :cond_5
    const-string v0, "true is more:"

    .line 1132
    invoke-static {v7, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$12;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-virtual {v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->cancelTime()V

    .line 1139
    :cond_6
    :goto_4
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$12;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-static {v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$1200(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)Lcom/powervision/base/views/CircleProgressBar;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/powervision/base/views/CircleProgressBar;->setProgress(F)V

    .line 1140
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$12;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-static {v0}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->access$1600(Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v7, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$12;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    sget v8, Lcn/powervision/upgrade/R$string;->AP03_Upgrade_41:I

    invoke-virtual {v7, v8}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v8, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$12;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    const/high16 v9, 0x43c80000    # 400.0f

    mul-float v6, v6, v9

    div-float/2addr v6, v1

    sub-float/2addr v9, v6

    invoke-virtual {v8, v9}, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->two(F)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-static {v3, v7, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1141
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity$12;->this$0:Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    iput v5, v0, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;->lastPro:I

    return-void
.end method
