.class Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$3$1;
.super Ljava/lang/Object;
.source "PVW4FirmWareUpdateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$3;->onCheckOk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$3;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$3;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$3$1;->this$1:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 389
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 391
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const-string v0, "lzqRu"

    const-string v1, " dl01_check_ok"

    .line 393
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$3$1;->this$1:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$3;

    iget-object v0, v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$3;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->initRemote(I)V

    return-void
.end method
