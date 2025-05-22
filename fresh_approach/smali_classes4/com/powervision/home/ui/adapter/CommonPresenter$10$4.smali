.class Lcom/powervision/home/ui/adapter/CommonPresenter$10$4;
.super Ljava/lang/Object;
.source "CommonPresenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/home/ui/adapter/CommonPresenter$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/home/ui/adapter/CommonPresenter$10;

.field final synthetic val$onDismissListener:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method constructor <init>(Lcom/powervision/home/ui/adapter/CommonPresenter$10;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 544
    iput-object p1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$10$4;->this$1:Lcom/powervision/home/ui/adapter/CommonPresenter$10;

    iput-object p2, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$10$4;->val$onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 547
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "click witch:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "lzqApp"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_1

    .line 550
    iget-object p1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$10$4;->this$1:Lcom/powervision/home/ui/adapter/CommonPresenter$10;

    iget-object p1, p1, Lcom/powervision/home/ui/adapter/CommonPresenter$10;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    iget-object p1, p1, Lcom/powervision/home/ui/adapter/CommonPresenter;->object:Ljava/lang/Object;

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 551
    new-instance p1, Lcom/powervision/base/utils/AppUtils;

    invoke-direct {p1}, Lcom/powervision/base/utils/AppUtils;-><init>()V

    .line 552
    iget-object p2, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$10$4;->this$1:Lcom/powervision/home/ui/adapter/CommonPresenter$10;

    iget-object p2, p2, Lcom/powervision/home/ui/adapter/CommonPresenter$10;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    iget-object p2, p2, Lcom/powervision/home/ui/adapter/CommonPresenter;->object:Ljava/lang/Object;

    check-cast p2, Landroid/app/Activity;

    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$10$4;->val$onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p1, p2, v0}, Lcom/powervision/base/utils/AppUtils;->jumpToGooglePlay(Landroid/app/Activity;Landroid/content/DialogInterface$OnDismissListener;)Z

    goto :goto_0

    .line 554
    :cond_0
    new-instance p1, Lcom/powervision/base/utils/AppUtils;

    invoke-direct {p1}, Lcom/powervision/base/utils/AppUtils;-><init>()V

    .line 555
    iget-object p2, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$10$4;->this$1:Lcom/powervision/home/ui/adapter/CommonPresenter$10;

    iget-object p2, p2, Lcom/powervision/home/ui/adapter/CommonPresenter$10;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    iget-object p2, p2, Lcom/powervision/home/ui/adapter/CommonPresenter;->object:Ljava/lang/Object;

    check-cast p2, Landroidx/fragment/app/Fragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$10$4;->val$onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p1, p2, v0}, Lcom/powervision/base/utils/AppUtils;->jumpToGooglePlay(Landroid/app/Activity;Landroid/content/DialogInterface$OnDismissListener;)Z

    goto :goto_0

    .line 559
    :cond_1
    iget-object p1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$10$4;->this$1:Lcom/powervision/home/ui/adapter/CommonPresenter$10;

    iget-boolean p1, p1, Lcom/powervision/home/ui/adapter/CommonPresenter$10;->val$force:Z

    const-string p2, "lzqFirm"

    if-nez p1, :cond_2

    const-string p1, "tipsForceApp: 000000000"

    .line 560
    invoke-static {p2, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    iget-object p1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$10$4;->this$1:Lcom/powervision/home/ui/adapter/CommonPresenter$10;

    iget-object p1, p1, Lcom/powervision/home/ui/adapter/CommonPresenter$10;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    iget-object p1, p1, Lcom/powervision/home/ui/adapter/CommonPresenter;->appTips:Landroidx/appcompat/app/AlertDialog;

    if-eqz p1, :cond_3

    .line 562
    iget-object p1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$10$4;->this$1:Lcom/powervision/home/ui/adapter/CommonPresenter$10;

    iget-object p1, p1, Lcom/powervision/home/ui/adapter/CommonPresenter$10;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    iget-object p1, p1, Lcom/powervision/home/ui/adapter/CommonPresenter;->appTips:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    goto :goto_0

    :cond_2
    const-string p1, "tipsForceApp: 11111111"

    .line 565
    invoke-static {p2, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
