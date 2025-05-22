.class Lcom/powervision/gcs/ui/aty/ActiviteActivity$4$1;
.super Ljava/lang/Object;
.source "ActiviteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ActiviteActivity$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/gcs/ui/aty/ActiviteActivity$4;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ActiviteActivity$4;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ActiviteActivity$4$1;->this$1:Lcom/powervision/gcs/ui/aty/ActiviteActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 98
    invoke-static {}, Lcom/powervision/gcs/utils/NewActiviteUtil;->getIntance()Lcom/powervision/gcs/utils/NewActiviteUtil;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/powervision/gcs/utils/NewActiviteUtil;->notifyActivityStatus(I)V

    .line 99
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 100
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ActiviteActivity$4$1;->this$1:Lcom/powervision/gcs/ui/aty/ActiviteActivity$4;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ActiviteActivity$4;->this$0:Lcom/powervision/gcs/ui/aty/ActiviteActivity;

    invoke-virtual {p1}, Lcom/powervision/gcs/ui/aty/ActiviteActivity;->finish()V

    return-void
.end method
