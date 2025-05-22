.class Lcom/powervision/home/ui/adapter/CommonPresenter$9$2;
.super Ljava/lang/Object;
.source "CommonPresenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/home/ui/adapter/CommonPresenter$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/home/ui/adapter/CommonPresenter$9;


# direct methods
.method constructor <init>(Lcom/powervision/home/ui/adapter/CommonPresenter$9;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$9$2;->this$1:Lcom/powervision/home/ui/adapter/CommonPresenter$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 437
    iget-object p1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$9$2;->this$1:Lcom/powervision/home/ui/adapter/CommonPresenter$9;

    iget-object p1, p1, Lcom/powervision/home/ui/adapter/CommonPresenter$9;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/powervision/home/ui/adapter/CommonPresenter;->tipsDialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method
