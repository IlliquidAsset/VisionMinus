.class Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50$2;
.super Ljava/lang/Object;
.source "PVW4FirmWareUpdateDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50;->onTick(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50;

.field final synthetic val$millisUntilFinished:J

.field final synthetic val$progress:F


# direct methods
.method constructor <init>(Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50;FJ)V
    .locals 0

    .line 1237
    iput-object p1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50$2;->this$1:Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50;

    iput p2, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50$2;->val$progress:F

    iput-wide p3, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50$2;->val$millisUntilFinished:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1240
    iget-object v0, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50$2;->this$1:Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50;

    iget-object v0, v0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50;->this$0:Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;

    iget v1, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50$2;->val$progress:F

    float-to-int v1, v1

    iget-wide v2, p0, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment$50$2;->val$millisUntilFinished:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v3, v2

    invoke-virtual {v0, v1, v3}, Lcom/powervision/gcs/update/PVW4FirmWareUpdateDialogFragment;->setProgressTime(II)V

    return-void
.end method
