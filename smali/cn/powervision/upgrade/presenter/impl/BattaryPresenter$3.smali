.class Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$3;
.super Ljava/lang/Object;
.source "BattaryPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->showBatteryDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

.field final synthetic val$errorCode:I


# direct methods
.method constructor <init>(Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;I)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$3;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    iput p2, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$3;->val$errorCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 168
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$3;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    iget-object v1, v1, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 170
    iget-object v1, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$3;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    iget-object v1, v1, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->activity:Landroid/app/Activity;

    sget v2, Lcn/powervision/upgrade/R$string;->AP03_Upgrade_115:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 172
    sget v1, Lcn/powervision/upgrade/R$string;->AP03_GeneralSetting_11:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 173
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 174
    iget-object v1, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$3;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    iget-object v1, v1, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->activity:Landroid/app/Activity;

    sget v2, Lcn/powervision/upgrade/R$string;->AP03_ConnectGuide_47:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$3$1;

    invoke-direct {v2, p0}, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$3$1;-><init>(Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$3;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 185
    iget-object v1, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$3;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    iget-object v1, v1, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->activity:Landroid/app/Activity;

    sget v2, Lcn/powervision/upgrade/R$string;->AP03_AI_2:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$3$2;

    invoke-direct {v2, p0}, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$3$2;-><init>(Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$3;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 194
    iget-object v1, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$3;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->access$102(Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;Landroidx/appcompat/app/AlertDialog;)Landroidx/appcompat/app/AlertDialog;

    .line 195
    iget-object v0, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$3;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    invoke-static {v0}, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->access$100(Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$3$3;

    invoke-direct {v1, p0}, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$3$3;-><init>(Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$3;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showFlowtips"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$3;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    iget-object v1, v1, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$3;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    iget-object v1, v1, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqDD"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$3;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    invoke-static {v0}, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->access$100(Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method
