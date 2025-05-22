.class Lcom/powervision/gcs/ui/aty/ActiviteActivity$2;
.super Ljava/lang/Object;
.source "ActiviteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ActiviteActivity;->initViews(Landroid/os/Bundle;)V
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

    .line 40
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ActiviteActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ActiviteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 43
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ActiviteActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ActiviteActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ActiviteActivity;->bt_activite:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 45
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ActiviteActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ActiviteActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ActiviteActivity;->loadingView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 48
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ActiviteActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ActiviteActivity;

    invoke-virtual {p1}, Lcom/powervision/gcs/ui/aty/ActiviteActivity;->doActivite()V

    return-void
.end method
