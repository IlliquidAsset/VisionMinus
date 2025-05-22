.class Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$2;
.super Ljava/lang/Object;
.source "PVW4FirmWareUpdateManager.java"

# interfaces
.implements Lcom/powervision/natives/connect/PVConnectHelper$OnBodyConnectListener;


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

    .line 223
    iput-object p1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$2;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAp03DeviceConnectFailed()V
    .locals 0

    return-void
.end method

.method public onAp03DeviceConnectTimeout()V
    .locals 0

    return-void
.end method

.method public onAp03DeviceConnected()V
    .locals 0

    return-void
.end method

.method public onAp03DeviceDisConnect()V
    .locals 0

    return-void
.end method

.method public onAp03HeartbeatRecovery()V
    .locals 0

    return-void
.end method

.method public onAp03HeartbeatTimeout()V
    .locals 0

    return-void
.end method

.method public onAp03SelfDisconnect()V
    .locals 0

    return-void
.end method

.method public onChainConnectFailed()V
    .locals 0

    return-void
.end method

.method public onChainConnectTimeout()V
    .locals 0

    return-void
.end method

.method public onChainConnected()V
    .locals 0

    return-void
.end method

.method public onChainDisconnected()V
    .locals 0

    return-void
.end method

.method public onW4DeviceConnectFailed()V
    .locals 0

    return-void
.end method

.method public onW4DeviceConnectTimeout()V
    .locals 0

    return-void
.end method

.method public onW4DeviceConnected()V
    .locals 3

    .line 281
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$2;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->access$002(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;Z)Z

    .line 284
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$2;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    iget-object v0, v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 285
    :goto_0
    iget-object v1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$2;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    iget-object v1, v1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 286
    iget-object v1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$2;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    iget-object v1, v1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;

    const-string v2, ""

    invoke-interface {v1, v2}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;->getMainBodyVersionSucceed(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 289
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$2$1;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$2$1;-><init>(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$2;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 303
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onW4DeviceDisConnect()V
    .locals 0

    return-void
.end method

.method public onW4HeartbeatRecovery()V
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$2;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->access$002(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;Z)Z

    .line 324
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$2$2;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$2$2;-><init>(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$2;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 335
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onW4HeartbeatTimeout()V
    .locals 0

    return-void
.end method

.method public onW4SelfDisconnect()V
    .locals 0

    return-void
.end method
