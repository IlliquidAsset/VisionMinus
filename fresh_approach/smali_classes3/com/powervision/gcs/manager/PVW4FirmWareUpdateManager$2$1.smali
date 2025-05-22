.class Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$2$1;
.super Ljava/lang/Object;
.source "PVW4FirmWareUpdateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$2;->onW4DeviceConnected()V
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

    .line 289
    iput-object p1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$2$1;->this$1:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0xf0

    .line 293
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    const-string v0, "lzqW4Firm"

    const-string v1, "\u8bf7\u6c42\u7248\u672c\u53f7 BODY \u7248\u672c\u53f7"

    .line 295
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$2$1;->this$1:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$2;

    iget-object v0, v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$2;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    invoke-virtual {v0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->initBody()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 300
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method
