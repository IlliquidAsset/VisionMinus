.class Lcom/powervision/home/ui/adapter/CommonPresenter$14;
.super Ljava/lang/Object;
.source "CommonPresenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/home/ui/adapter/CommonPresenter;->tipsNeedInstallPermissionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;


# direct methods
.method constructor <init>(Lcom/powervision/home/ui/adapter/CommonPresenter;)V
    .locals 0

    .line 1156
    iput-object p1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$14;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1159
    iget-object p1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$14;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/powervision/home/ui/adapter/CommonPresenter;->checkPermissionTips:Landroidx/appcompat/app/AlertDialog;

    .line 1160
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "package:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$14;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    iget-object v0, v0, Lcom/powervision/home/ui/adapter/CommonPresenter;->rootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/AppUtils;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1162
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.MANAGE_UNKNOWN_APP_SOURCES"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1163
    iget-object p1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$14;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    iget-object p1, p1, Lcom/powervision/home/ui/adapter/CommonPresenter;->object:Ljava/lang/Object;

    instance-of p1, p1, Landroidx/fragment/app/Fragment;

    const/16 v1, 0x462

    if-eqz p1, :cond_0

    .line 1165
    iget-object p1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$14;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    iget-object p1, p1, Lcom/powervision/home/ui/adapter/CommonPresenter;->object:Ljava/lang/Object;

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1167
    :cond_0
    iget-object p1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$14;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    iget-object p1, p1, Lcom/powervision/home/ui/adapter/CommonPresenter;->object:Ljava/lang/Object;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method
