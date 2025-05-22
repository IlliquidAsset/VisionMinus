.class Lcom/powervision/home/ui/adapter/CommonPresenter$10;
.super Ljava/lang/Object;
.source "CommonPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/home/ui/adapter/CommonPresenter;->tipsForceApp(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

.field final synthetic val$force:Z


# direct methods
.method constructor <init>(Lcom/powervision/home/ui/adapter/CommonPresenter;Z)V
    .locals 0

    .line 476
    iput-object p1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$10;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    iput-boolean p2, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$10;->val$force:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "lzqFirm"

    const-string v1, "tipsForceApp activity"

    .line 480
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$10;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    iget-object v1, v1, Lcom/powervision/home/ui/adapter/CommonPresenter;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 484
    new-instance v1, Lcom/powervision/home/ui/adapter/CommonPresenter$10$1;

    invoke-direct {v1, p0}, Lcom/powervision/home/ui/adapter/CommonPresenter$10$1;-><init>(Lcom/powervision/home/ui/adapter/CommonPresenter$10;)V

    .line 494
    iget-boolean v2, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$10;->val$force:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    new-array v2, v3, [Ljava/lang/String;

    .line 496
    iget-object v3, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$10;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    iget-object v3, v3, Lcom/powervision/home/ui/adapter/CommonPresenter;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v5, Lcom/powervision/home/R$string;->APP_Msg_10:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 497
    new-instance v3, Lcom/powervision/home/ui/adapter/CommonPresenter$10$2;

    invoke-direct {v3, p0, v1}, Lcom/powervision/home/ui/adapter/CommonPresenter$10$2;-><init>(Lcom/powervision/home/ui/adapter/CommonPresenter$10;Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 539
    iget-object v1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$10;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    iget-object v1, v1, Lcom/powervision/home/ui/adapter/CommonPresenter;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/powervision/home/R$string;->APP_Msg_8:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 540
    invoke-virtual {v0, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 543
    iget-object v5, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$10;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    iget-object v5, v5, Lcom/powervision/home/ui/adapter/CommonPresenter;->rootView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/powervision/home/R$string;->APP_Msg_10:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    iget-object v4, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$10;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    iget-object v4, v4, Lcom/powervision/home/ui/adapter/CommonPresenter;->rootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/powervision/home/R$string;->AP03_AI_2:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 544
    new-instance v4, Lcom/powervision/home/ui/adapter/CommonPresenter$10$4;

    invoke-direct {v4, p0, v1}, Lcom/powervision/home/ui/adapter/CommonPresenter$10$4;-><init>(Lcom/powervision/home/ui/adapter/CommonPresenter$10;Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0, v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 599
    iget-object v1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$10;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    iget-object v1, v1, Lcom/powervision/home/ui/adapter/CommonPresenter;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/powervision/home/R$string;->APP_Msg_7:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 600
    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 603
    :goto_0
    iget-object v1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$10;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, v1, Lcom/powervision/home/ui/adapter/CommonPresenter;->appTips:Landroidx/appcompat/app/AlertDialog;

    .line 605
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$10;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    iget-object v0, v0, Lcom/powervision/home/ui/adapter/CommonPresenter;->appTips:Landroidx/appcompat/app/AlertDialog;

    new-instance v1, Lcom/powervision/home/ui/adapter/CommonPresenter$10$6;

    invoke-direct {v1, p0}, Lcom/powervision/home/ui/adapter/CommonPresenter$10$6;-><init>(Lcom/powervision/home/ui/adapter/CommonPresenter$10;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const-string v0, "lzqDia"

    const-string v1, "show"

    .line 613
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "lzqView"

    const-string v1, "tipsForceApp appTips.show();"

    .line 614
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$10;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    iget-object v0, v0, Lcom/powervision/home/ui/adapter/CommonPresenter;->appTips:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method
