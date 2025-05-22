.class Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1$1;
.super Ljava/lang/Object;
.source "PVW4FirmwareDownloadFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;

.field final synthetic val$p:F


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;F)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1$1;->this$1:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;

    iput p2, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1$1;->val$p:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 332
    iget-object v0, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1$1;->this$1:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;

    iget-object v0, v0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    iget-object v0, v0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->pbProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1$1;->this$1:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;

    iget-object v0, v0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    iget-object v0, v0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->tvProgressRate:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1$1;->this$1:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;

    iget-object v2, v2, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    iget v3, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1$1;->val$p:F

    invoke-virtual {v2, v3}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->two(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v0, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1$1;->this$1:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;

    iget-object v0, v0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    iget-object v0, v0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->pbProgress:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1$1;->val$p:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method
