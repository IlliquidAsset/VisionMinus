.class Lcn/powervision/upgrade/manager/NewFirmWareManager$5;
.super Ljava/lang/Object;
.source "NewFirmWareManager.java"

# interfaces
.implements Lcom/powervision/natives/connect/PVConnectHelper$OnBodyConnectListener;


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

    .line 610
    iput-object p1, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$5;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAp03DeviceConnectFailed()V
    .locals 2

    .line 645
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$5;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->notify_hideBodyUpdate(I)V

    .line 646
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$5;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->notify_Ap03Disconnected(I)V

    return-void
.end method

.method public onAp03DeviceConnectTimeout()V
    .locals 2

    .line 658
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$5;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->notify_hideBodyUpdate(I)V

    .line 659
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$5;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->notify_Ap03Disconnected(I)V

    return-void
.end method

.method public onAp03DeviceConnected()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, "onAp03DeviceConnected"

    .line 636
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$5;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->notify_Ap03Connected(I)V

    .line 638
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$5;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    invoke-virtual {v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->onAp03Connected()V

    return-void
.end method

.method public onAp03DeviceDisConnect()V
    .locals 2

    .line 651
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$5;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->notify_hideBodyUpdate(I)V

    .line 652
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$5;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->notify_Ap03Disconnected(I)V

    return-void
.end method

.method public onAp03HeartbeatRecovery()V
    .locals 2

    .line 665
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$5;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->notify_Ap03Connected(I)V

    return-void
.end method

.method public onAp03HeartbeatTimeout()V
    .locals 2

    .line 670
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$5;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->notify_hideBodyUpdate(I)V

    .line 671
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$5;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->notify_Ap03Disconnected(I)V

    return-void
.end method

.method public onAp03SelfDisconnect()V
    .locals 2

    .line 677
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$5;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->notify_hideBodyUpdate(I)V

    .line 678
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$5;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->notify_Ap03Disconnected(I)V

    return-void
.end method

.method public onChainConnectFailed()V
    .locals 2

    .line 618
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$5;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->notify_hideBodyUpdate(I)V

    return-void
.end method

.method public onChainConnectTimeout()V
    .locals 2

    .line 630
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$5;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->notify_hideBodyUpdate(I)V

    return-void
.end method

.method public onChainConnected()V
    .locals 0

    return-void
.end method

.method public onChainDisconnected()V
    .locals 2

    .line 624
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$5;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->notify_hideBodyUpdate(I)V

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
    .locals 2

    .line 684
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$5;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->notify_hideBodyUpdate(I)V

    .line 685
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$5;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    invoke-virtual {v0, v1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->notify_Ap03Disconnected(I)V

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
    .locals 2

    .line 716
    iget-object v0, p0, Lcn/powervision/upgrade/manager/NewFirmWareManager$5;->this$0:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->notify_hideBodyUpdate(I)V

    return-void
.end method
