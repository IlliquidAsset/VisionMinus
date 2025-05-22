.class Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$1;
.super Ljava/lang/Object;
.source "BattaryPresenter.java"

# interfaces
.implements Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryUpgradeResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;


# direct methods
.method constructor <init>(Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$1;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setBatteryUpgradeResultCodeAutoFailed(I)V
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "battery setBatteryUpgradeResultCodeAutoFailed\u81ea\u52a8\u5347\u7ea7\u5931\u8d25 activity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$1;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    iget-object v1, v1, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$1;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    iget-object v1, v1, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " errorcode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqDD"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x65

    if-eq p1, v0, :cond_1

    .line 80
    iget-object v0, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$1;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    invoke-static {v0, p1}, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->access$000(Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;I)V

    :cond_1
    return-void
.end method

.method public setBatteryUpgradeResultCodeAutoInprogress(I)V
    .locals 1

    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "battery setBatteryUpgradeResultCodeAutoInprogress activity:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$1;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    iget-object v0, v0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$1;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    iget-object v0, v0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "lzqDD"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBatteryUpgradeResultCodeAutoSuccess(I)V
    .locals 1

    .line 66
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "battery setBatteryUpgradeResultCodeAutoSuccess activity:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$1;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    iget-object v0, v0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$1;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    iget-object v0, v0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "lzqDD"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBatteryUpgradeResultCodeQueryTimeout(I)V
    .locals 1

    .line 87
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "battery setBatteryUpgradeResultCodeQueryTimeout"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$1;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    iget-object v0, v0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$1;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    iget-object v0, v0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "lzqDD"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 91
    :cond_1
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$1$1;

    invoke-direct {v0, p0}, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$1$1;-><init>(Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$1;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 101
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setBatteryUpgradeResultCodeTriggerFailed(I)V
    .locals 2

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "battery setBatteryUpgradeResultCodeTriggerFailed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$1;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    iget-object v1, v1, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$1;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    iget-object v1, v1, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " errorcode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqDD"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x65

    if-eq p1, v0, :cond_1

    .line 116
    iget-object v0, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$1;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    invoke-static {v0, p1}, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->access$000(Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;I)V

    :cond_1
    return-void
.end method

.method public setBatteryUpgradeResultCodeTriggerPercent(I)V
    .locals 2

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "battery setBatteryUpgradeResultCodeTriggerPercent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$1;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    iget-object v1, v1, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$1;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    iget-object v1, v1, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " errorcode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "lzqDD"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBatteryUpgradeResultCodeTriggerSuccess(I)V
    .locals 1

    .line 107
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "battery setBatteryUpgradeResultCodeTriggerSuccess"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$1;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    iget-object v0, v0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$1;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    iget-object v0, v0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "lzqDD"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object p1, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$1;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    invoke-virtual {p1}, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->toSuccessActity()V

    return-void
.end method

.method public setBatteryUpgradeResultCodeTriggerTimeout(I)V
    .locals 2

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "battery setBatteryUpgradeResultCodeTriggerTimeout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$1;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    iget-object v1, v1, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$1;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    iget-object v1, v1, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  errorcode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqDD"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x65

    if-eq p1, v0, :cond_1

    .line 130
    iget-object v0, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$1;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    invoke-static {v0, p1}, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->access$000(Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;I)V

    :cond_1
    return-void
.end method
