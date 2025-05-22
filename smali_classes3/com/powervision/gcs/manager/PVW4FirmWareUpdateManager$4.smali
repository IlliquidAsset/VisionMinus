.class Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$4;
.super Ljava/lang/Object;
.source "PVW4FirmWareUpdateManager.java"

# interfaces
.implements Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$4;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAp03HeartbeatRecovery()V
    .locals 0

    return-void
.end method

.method public onAp03HeartbeatTimeout()V
    .locals 0

    return-void
.end method

.method public onAp03RemoteConnectFailed()V
    .locals 0

    return-void
.end method

.method public onAp03RemoteConnectTimeout()V
    .locals 0

    return-void
.end method

.method public onAp03RemoteConnected()V
    .locals 0

    return-void
.end method

.method public onAp03RemoteDisConnect()V
    .locals 0

    return-void
.end method

.method public onRemoteChainConnectFailed()V
    .locals 0

    return-void
.end method

.method public onRemoteChainConnectTimeout()V
    .locals 0

    return-void
.end method

.method public onRemoteChainConnected()V
    .locals 0

    return-void
.end method

.method public onRemoteChainDisconnected()V
    .locals 0

    return-void
.end method

.method public onW4HeartbeatRecovery()V
    .locals 2

    .line 463
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$4;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->access$002(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;Z)Z

    return-void
.end method

.method public onW4HeartbeatTimeout()V
    .locals 0

    return-void
.end method

.method public onW4RemoteConnectFailed()V
    .locals 0

    return-void
.end method

.method public onW4RemoteConnectTimeout()V
    .locals 0

    return-void
.end method

.method public onW4RemoteConnected()V
    .locals 2

    .line 427
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$4;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->access$002(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;Z)Z

    const-string v0, "lzqRu"

    const-string v1, "MCU connected \u8bf7\u6c42\u7248\u672c\u53f7"

    .line 428
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$4$1;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$4$1;-><init>(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$4;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 442
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onW4RemoteDisConnect()V
    .locals 0

    return-void
.end method
