.class Lcom/powervision/home/ui/adapter/CommonPresenter$12$3;
.super Ljava/lang/Object;
.source "CommonPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/home/ui/adapter/CommonPresenter$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/home/ui/adapter/CommonPresenter$12;


# direct methods
.method constructor <init>(Lcom/powervision/home/ui/adapter/CommonPresenter$12;)V
    .locals 0

    .line 1098
    iput-object p1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$12$3;->this$1:Lcom/powervision/home/ui/adapter/CommonPresenter$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1103
    iget-object p1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$12$3;->this$1:Lcom/powervision/home/ui/adapter/CommonPresenter$12;

    iget-object p1, p1, Lcom/powervision/home/ui/adapter/CommonPresenter$12;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$12$3;->this$1:Lcom/powervision/home/ui/adapter/CommonPresenter$12;

    iget-object v0, v0, Lcom/powervision/home/ui/adapter/CommonPresenter$12;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    invoke-static {v0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->access$200(Lcom/powervision/home/ui/adapter/CommonPresenter;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    sget v1, Lcom/powervision/home/R$id;->home_first:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->checkDownLoadOrUpgrade(Z[B)V

    return-void
.end method
