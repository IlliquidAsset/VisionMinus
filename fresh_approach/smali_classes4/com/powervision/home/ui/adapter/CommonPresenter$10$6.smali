.class Lcom/powervision/home/ui/adapter/CommonPresenter$10$6;
.super Ljava/lang/Object;
.source "CommonPresenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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


# direct methods
.method constructor <init>(Lcom/powervision/home/ui/adapter/CommonPresenter$10;)V
    .locals 0

    .line 605
    iput-object p1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$10$6;->this$1:Lcom/powervision/home/ui/adapter/CommonPresenter$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 608
    iget-object p1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$10$6;->this$1:Lcom/powervision/home/ui/adapter/CommonPresenter$10;

    iget-object p1, p1, Lcom/powervision/home/ui/adapter/CommonPresenter$10;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/powervision/home/ui/adapter/CommonPresenter;->appTips:Landroidx/appcompat/app/AlertDialog;

    .line 609
    iget-object p1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$10$6;->this$1:Lcom/powervision/home/ui/adapter/CommonPresenter$10;

    iget-boolean p1, p1, Lcom/powervision/home/ui/adapter/CommonPresenter$10;->val$force:Z

    if-eqz p1, :cond_0

    .line 610
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->islocalAndAppMatch(I)V

    :cond_0
    return-void
.end method
