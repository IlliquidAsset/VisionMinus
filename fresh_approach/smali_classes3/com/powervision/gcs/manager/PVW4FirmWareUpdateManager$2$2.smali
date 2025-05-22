.class Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$2$2;
.super Ljava/lang/Object;
.source "PVW4FirmWareUpdateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$2;->onW4HeartbeatRecovery()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$2;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$2;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$2$2;->this$1:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0xf0

    .line 328
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 329
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$2$2;->this$1:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$2;

    iget-object v0, v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$2;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    invoke-static {v0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->access$100(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;)V

    .line 330
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$2$2;->this$1:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$2;

    iget-object v0, v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$2;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    invoke-static {v0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->access$200(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 332
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method
