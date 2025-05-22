.class Lcn/powervision/upgrade/manager/NewFirmWareManager$2;
.super Ljava/lang/Object;
.source "NewFirmWareManager.java"

# interfaces
.implements Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/powervision/upgrade/manager/NewFirmWareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;


# direct methods
.method constructor <init>(Lcn/powervision/upgrade/manager/NewFirmWareManager;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$2;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAp03HeartbeatRecovery()V
    .locals 2

    .line 537
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$2;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    invoke-static {v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->access$100(Lcn/powervision/upgrade/manager/NewFirmWareManager;)V

    .line 538
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$2;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->access$002(Lcn/powervision/upgrade/manager/NewFirmWareManager;I)I

    return-void
.end method

.method public onAp03HeartbeatTimeout()V
    .locals 0

    return-void
.end method

.method public onAp03RemoteConnectFailed()V
    .locals 1

    .line 522
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$2;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    invoke-virtual {v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->notify_hideMcuUpdate()V

    return-void
.end method

.method public onAp03RemoteConnectTimeout()V
    .locals 0

    return-void
.end method

.method public onAp03RemoteConnected()V
    .locals 2

    .line 514
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$2;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->access$002(Lcn/powervision/upgrade/manager/NewFirmWareManager;I)I

    .line 515
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$2;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    invoke-static {v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->access$100(Lcn/powervision/upgrade/manager/NewFirmWareManager;)V

    .line 516
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$2;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    invoke-virtual {v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->requestRemoteMCUVersion()V

    return-void
.end method

.method public onAp03RemoteDisConnect()V
    .locals 1

    .line 527
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$2;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    invoke-virtual {v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->notify_hideMcuUpdate()V

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
    .locals 0

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
    .locals 0

    return-void
.end method

.method public onW4RemoteDisConnect()V
    .locals 0

    return-void
.end method
