.class Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$46;
.super Ljava/lang/Object;
.source "PVW4FirmWareUpdateDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->dolphinRemoteDl01UploadState(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)V
    .locals 0

    .line 1150
    iput-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$46;->this$0:Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1153
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$46;->this$0:Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;

    invoke-virtual {v0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->dismissAllowingStateLoss()V

    .line 1154
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$46;->this$0:Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;

    invoke-static {v0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->access$400(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)V

    return-void
.end method
