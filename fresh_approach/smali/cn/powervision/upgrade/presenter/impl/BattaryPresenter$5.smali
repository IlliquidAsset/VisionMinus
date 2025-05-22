.class Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$5;
.super Ljava/lang/Object;
.source "BattaryPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->toSuccessActity()V
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

    .line 268
    iput-object p1, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$5;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 271
    iget-object v0, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$5;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    iget-object v0, v0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 272
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 274
    iget-object v1, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$5;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    iget-object v1, v1, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->activity:Landroid/app/Activity;

    const-class v2, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 275
    sget-object v1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->UPGRADE_RES:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 276
    sget-object v1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->UPDATE_DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 278
    iget-object v1, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$5;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    iget-object v1, v1, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
