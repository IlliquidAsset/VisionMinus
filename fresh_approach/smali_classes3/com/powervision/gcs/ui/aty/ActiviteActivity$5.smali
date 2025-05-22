.class Lcom/powervision/gcs/ui/aty/ActiviteActivity$5;
.super Ljava/lang/Object;
.source "ActiviteActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ActiviteActivity;->showFailedDialog()V
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

    .line 109
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ActiviteActivity$5;->this$0:Lcom/powervision/gcs/ui/aty/ActiviteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ActiviteActivity$5;->this$0:Lcom/powervision/gcs/ui/aty/ActiviteActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ActiviteActivity;->loadingView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ActiviteActivity$5;->this$0:Lcom/powervision/gcs/ui/aty/ActiviteActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ActiviteActivity;->bt_activite:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 114
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ActiviteActivity$5;->this$0:Lcom/powervision/gcs/ui/aty/ActiviteActivity;

    sget v1, Lcom/powervision/gcs/R$string;->Home_11:I

    new-instance v2, Lcom/powervision/gcs/ui/aty/ActiviteActivity$5$1;

    invoke-direct {v2, p0}, Lcom/powervision/gcs/ui/aty/ActiviteActivity$5$1;-><init>(Lcom/powervision/gcs/ui/aty/ActiviteActivity$5;)V

    invoke-static {v0, v1, v2}, Lcom/powervision/gcs/utils/StandardDialogUtils;->showActiviteFailedDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
