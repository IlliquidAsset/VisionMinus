.class Lcom/powervision/gcs/ui/aty/ActiviteActivity$3;
.super Ljava/lang/Object;
.source "ActiviteActivity.java"

# interfaces
.implements Lcom/powervision/gcs/utils/NewActiviteUtil$onActiviteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ActiviteActivity;->doActivite()V
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

    .line 59
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ActiviteActivity$3;->this$0:Lcom/powervision/gcs/ui/aty/ActiviteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 2

    const-string v0, "lzqAc"

    const-string v1, "ActiviteActivity  onFailed before showSuccessDialog"

    .line 68
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ActiviteActivity$3;->this$0:Lcom/powervision/gcs/ui/aty/ActiviteActivity;

    invoke-virtual {v0}, Lcom/powervision/gcs/ui/aty/ActiviteActivity;->showFailedDialog()V

    return-void
.end method

.method public onSucess()V
    .locals 2

    const-string v0, "lzqAc"

    const-string v1, "ActiviteActivity  onSucess before showSuccessDialog"

    .line 62
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ActiviteActivity$3;->this$0:Lcom/powervision/gcs/ui/aty/ActiviteActivity;

    invoke-virtual {v0}, Lcom/powervision/gcs/ui/aty/ActiviteActivity;->showSuccessDialog()V

    return-void
.end method
