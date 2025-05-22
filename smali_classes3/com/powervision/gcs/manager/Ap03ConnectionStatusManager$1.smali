.class Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$1;
.super Ljava/lang/Object;
.source "Ap03ConnectionStatusManager.java"

# interfaces
.implements Lcom/powervision/natives/connect/PVConnectHelper$OnBodyConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$1;->this$0:Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAp03DeviceConnectFailed()V
    .locals 2

    const-string v0, "device_conned"

    const-string v1, "...66666...onAp03DeviceConnectFailed"

    .line 64
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$1;->this$0:Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->access$000(Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;Z)V

    return-void
.end method

.method public onAp03DeviceConnectTimeout()V
    .locals 2

    const-string v0, "device_conned"

    const-string v1, "...88888...onAp03DeviceConnectTimeout"

    .line 76
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$1;->this$0:Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->access$000(Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;Z)V

    return-void
.end method

.method public onAp03DeviceConnected()V
    .locals 2

    const-string v0, "device_conned"

    const-string v1, "...55555...onAp03DeviceConnected"

    .line 58
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$1;->this$0:Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->access$000(Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;Z)V

    return-void
.end method

.method public onAp03DeviceDisConnect()V
    .locals 2

    const-string v0, "device_conned"

    const-string v1, "...77777...onAp03DeviceDisConnect"

    .line 70
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$1;->this$0:Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->access$000(Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;Z)V

    return-void
.end method

.method public onAp03HeartbeatRecovery()V
    .locals 2

    const-string v0, "device_conned"

    const-string v1, "...999999...onAp03HeartbeatRecovery"

    .line 83
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$1;->this$0:Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->access$000(Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;Z)V

    return-void
.end method

.method public onAp03HeartbeatTimeout()V
    .locals 2

    const-string v0, "device_conned"

    const-string v1, "....10 10 10 10 10 10..onAp03HeartbeatTimeout"

    .line 89
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$1;->this$0:Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->access$000(Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;Z)V

    return-void
.end method

.method public onAp03SelfDisconnect()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$1;->this$0:Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->access$000(Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;Z)V

    return-void
.end method

.method public onChainConnectFailed()V
    .locals 2

    const-string v0, "device_conned"

    const-string v1, "...22222...onChainConnectFailed"

    .line 40
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$1;->this$0:Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->access$000(Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;Z)V

    return-void
.end method

.method public onChainConnectTimeout()V
    .locals 2

    const-string v0, "device_conned"

    const-string v1, "...44444...onChainConnectTimeout"

    .line 52
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$1;->this$0:Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->access$000(Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;Z)V

    return-void
.end method

.method public onChainConnected()V
    .locals 0

    return-void
.end method

.method public onChainDisconnected()V
    .locals 2

    const-string v0, "device_conned"

    const-string v1, "...33333...onChainDisconnected"

    .line 46
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$1;->this$0:Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->access$000(Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;Z)V

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
    .locals 0

    return-void
.end method

.method public onW4DeviceDisConnect()V
    .locals 0

    return-void
.end method

.method public onW4HeartbeatRecovery()V
    .locals 0

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
