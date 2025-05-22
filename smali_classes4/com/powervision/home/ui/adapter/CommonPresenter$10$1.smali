.class Lcom/powervision/home/ui/adapter/CommonPresenter$10$1;
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

    .line 484
    iput-object p1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$10$1;->this$1:Lcom/powervision/home/ui/adapter/CommonPresenter$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 487
    iget-object p1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$10$1;->this$1:Lcom/powervision/home/ui/adapter/CommonPresenter$10;

    iget-boolean p1, p1, Lcom/powervision/home/ui/adapter/CommonPresenter$10;->val$force:Z

    if-eqz p1, :cond_0

    .line 488
    iget-object p1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$10$1;->this$1:Lcom/powervision/home/ui/adapter/CommonPresenter$10;

    iget-object p1, p1, Lcom/powervision/home/ui/adapter/CommonPresenter$10;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$10$1;->this$1:Lcom/powervision/home/ui/adapter/CommonPresenter$10;

    iget-object v0, v0, Lcom/powervision/home/ui/adapter/CommonPresenter$10;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    iget-boolean v0, v0, Lcom/powervision/home/ui/adapter/CommonPresenter;->forceApp:Z

    invoke-virtual {p1, v0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->tipsForceApp(Z)V

    :cond_0
    return-void
.end method
