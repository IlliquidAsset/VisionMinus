.class Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$34;
.super Ljava/lang/Object;
.source "PVW4FirmWareUpdateDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->mcu_BUpgradeStatus(II)V
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

    .line 998
    iput-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$34;->this$0:Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1001
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$34;->this$0:Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;

    invoke-static {v0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->access$400(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)V

    .line 1002
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$34;->this$0:Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;

    invoke-virtual {v0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method
