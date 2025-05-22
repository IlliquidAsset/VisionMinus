.class Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$6;
.super Ljava/lang/Object;
.source "BattaryPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->showTips(ZLjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

.field final synthetic val$errorCode:I

.field final synthetic val$isForce:Z

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;ZLjava/lang/String;I)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$6;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    iput-boolean p2, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$6;->val$isForce:Z

    iput-object p3, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$6;->val$text:Ljava/lang/String;

    iput p4, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$6;->val$errorCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 351
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$6;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    iget-object v1, v1, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 353
    iget-boolean v1, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$6;->val$isForce:Z

    const-string v2, "null"

    const-string v3, "showFlowtips"

    const-string v4, "lzqDD"

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    .line 354
    iget-object v1, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$6;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 356
    sget v1, Lcn/powervision/upgrade/R$string;->AP03_GeneralSetting_11:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 357
    invoke-virtual {v0, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 358
    iget-object v1, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$6;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    iget-object v1, v1, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->activity:Landroid/app/Activity;

    sget v5, Lcn/powervision/upgrade/R$string;->AP03_ConnectGuide_47:I

    invoke-virtual {v1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$6$1;

    invoke-direct {v5, p0}, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$6$1;-><init>(Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$6;)V

    invoke-virtual {v0, v1, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 366
    iget-object v1, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$6;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->access$202(Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;Landroidx/appcompat/app/AlertDialog;)Landroidx/appcompat/app/AlertDialog;

    .line 367
    iget-object v0, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$6;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    invoke-static {v0}, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->access$200(Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$6$2;

    invoke-direct {v1, p0}, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$6$2;-><init>(Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$6;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$6;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    iget-object v1, v1, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$6;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    iget-object v1, v1, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$6;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    invoke-static {v0}, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->access$200(Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    goto :goto_0

    .line 376
    :cond_1
    iget-object v1, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$6;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 378
    sget v1, Lcn/powervision/upgrade/R$string;->AP03_GeneralSetting_11:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 379
    invoke-virtual {v0, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 380
    iget-object v1, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$6;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    iget-object v1, v1, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->activity:Landroid/app/Activity;

    sget v5, Lcn/powervision/upgrade/R$string;->AP03_Upgrade_121:I

    invoke-virtual {v1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$6$3;

    invoke-direct {v5, p0}, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$6$3;-><init>(Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$6;)V

    invoke-virtual {v0, v1, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 386
    iget-object v1, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$6;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    iget-object v1, v1, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->activity:Landroid/app/Activity;

    sget v5, Lcn/powervision/upgrade/R$string;->AP03_AI_2:I

    invoke-virtual {v1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$6$4;

    invoke-direct {v5, p0}, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$6$4;-><init>(Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$6;)V

    invoke-virtual {v0, v1, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 395
    iget-object v1, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$6;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->access$202(Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;Landroidx/appcompat/app/AlertDialog;)Landroidx/appcompat/app/AlertDialog;

    .line 396
    iget-object v0, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$6;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    invoke-static {v0}, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->access$200(Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$6$5;

    invoke-direct {v1, p0}, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$6$5;-><init>(Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$6;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$6;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    iget-object v1, v1, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$6;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    iget-object v1, v1, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$6;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    invoke-static {v0}, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->access$200(Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    :goto_0
    return-void
.end method
