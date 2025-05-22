.class Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$5;
.super Ljava/lang/Object;
.source "PVW4FirmWareUpdateDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->dolphinUpdata(IILjava/lang/String;)V
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

    .line 571
    iput-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$5;->this$0:Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 574
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$5;->this$0:Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;

    invoke-static {v0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->access$300(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;)V

    .line 576
    sget-boolean v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->hasDl01:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x190

    goto :goto_0

    :cond_0
    const/16 v0, 0x12c

    .line 579
    :goto_0
    iget-object v1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$5;->this$0:Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v0}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->prepareClock(III)V

    return-void
.end method
