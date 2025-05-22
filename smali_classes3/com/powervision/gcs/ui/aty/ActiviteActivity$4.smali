.class Lcom/powervision/gcs/ui/aty/ActiviteActivity$4;
.super Ljava/lang/Object;
.source "ActiviteActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ActiviteActivity;->showSuccessDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/aty/ActiviteActivity;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ActiviteActivity;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ActiviteActivity$4;->this$0:Lcom/powervision/gcs/ui/aty/ActiviteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 91
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ActiviteActivity$4;->this$0:Lcom/powervision/gcs/ui/aty/ActiviteActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ActiviteActivity;->loadingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ActiviteActivity$4;->this$0:Lcom/powervision/gcs/ui/aty/ActiviteActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ActiviteActivity;->loadingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 95
    :cond_0
    new-instance v0, Lcom/powervision/gcs/utils/StandardDialogUtils;

    invoke-direct {v0}, Lcom/powervision/gcs/utils/StandardDialogUtils;-><init>()V

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ActiviteActivity$4;->this$0:Lcom/powervision/gcs/ui/aty/ActiviteActivity;

    sget v2, Lcom/powervision/gcs/R$string;->Home_10:I

    new-instance v3, Lcom/powervision/gcs/ui/aty/ActiviteActivity$4$1;

    invoke-direct {v3, p0}, Lcom/powervision/gcs/ui/aty/ActiviteActivity$4$1;-><init>(Lcom/powervision/gcs/ui/aty/ActiviteActivity$4;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/gcs/utils/StandardDialogUtils;->noMessageDialog(Landroid/app/Activity;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ActiviteActivity$4;->this$0:Lcom/powervision/gcs/ui/aty/ActiviteActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ActiviteActivity;->bt_activite:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method
