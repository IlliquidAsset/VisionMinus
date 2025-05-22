.class Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$48;
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

    .line 1170
    iput-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$48;->this$0:Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1173
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$48;->this$0:Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;

    invoke-static {v0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->access$300(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)V

    .line 1174
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$48;->this$0:Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;

    const/16 v1, 0x50

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v1}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->prepareClock(III)V

    return-void
.end method
