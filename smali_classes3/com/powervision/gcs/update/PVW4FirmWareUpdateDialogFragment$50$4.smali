.class Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50$4;
.super Ljava/lang/Object;
.source "PVW4FirmWareUpdateDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50;)V
    .locals 0

    .line 1282
    iput-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50$4;->this$1:Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1285
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50$4;->this$1:Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50;

    iget-object v0, v0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50;->this$0:Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;

    invoke-static {v0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->access$200(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50$4;->this$1:Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50;

    iget-object v0, v0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50;->this$0:Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;

    invoke-static {v0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->access$200(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1286
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50$4;->this$1:Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50;

    iget-object v0, v0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50;->this$0:Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;

    invoke-static {v0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->access$200(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "100%"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1287
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50$4;->this$1:Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50;

    iget-object v0, v0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50;->this$0:Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;

    invoke-static {v0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->access$500(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)V

    :cond_0
    return-void
.end method
