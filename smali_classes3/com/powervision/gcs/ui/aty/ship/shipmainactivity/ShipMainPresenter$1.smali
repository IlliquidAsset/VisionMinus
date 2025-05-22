.class Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter$1;
.super Ljava/lang/Object;
.source "ShipMainPresenter.java"

# interfaces
.implements Lcom/powervision/natives/connect/PVConnectHelper$OnBodyConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;

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
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;

    new-instance v1, Lcom/powervision/gcs/model/event/ConnectShipStatusEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/powervision/gcs/model/event/ConnectShipStatusEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->setDeviceConnectMode(Lcom/powervision/gcs/model/event/ConnectShipStatusEvent;)V

    return-void
.end method

.method public onChainConnectTimeout()V
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;

    new-instance v1, Lcom/powervision/gcs/model/event/ConnectShipStatusEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/powervision/gcs/model/event/ConnectShipStatusEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->setDeviceConnectMode(Lcom/powervision/gcs/model/event/ConnectShipStatusEvent;)V

    return-void
.end method

.method public onChainConnected()V
    .locals 0

    return-void
.end method

.method public onChainDisconnected()V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;

    new-instance v1, Lcom/powervision/gcs/model/event/ConnectShipStatusEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/powervision/gcs/model/event/ConnectShipStatusEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->setDeviceConnectMode(Lcom/powervision/gcs/model/event/ConnectShipStatusEvent;)V

    return-void
.end method

.method public onW4DeviceConnectFailed()V
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;

    new-instance v1, Lcom/powervision/gcs/model/event/ConnectShipStatusEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/powervision/gcs/model/event/ConnectShipStatusEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->setDeviceConnectMode(Lcom/powervision/gcs/model/event/ConnectShipStatusEvent;)V

    return-void
.end method

.method public onW4DeviceConnectTimeout()V
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;

    new-instance v1, Lcom/powervision/gcs/model/event/ConnectShipStatusEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/powervision/gcs/model/event/ConnectShipStatusEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->setDeviceConnectMode(Lcom/powervision/gcs/model/event/ConnectShipStatusEvent;)V

    return-void
.end method

.method public onW4DeviceConnected()V
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;

    new-instance v1, Lcom/powervision/gcs/model/event/ConnectShipStatusEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/powervision/gcs/model/event/ConnectShipStatusEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->setDeviceConnectMode(Lcom/powervision/gcs/model/event/ConnectShipStatusEvent;)V

    return-void
.end method

.method public onW4DeviceDisConnect()V
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;

    new-instance v1, Lcom/powervision/gcs/model/event/ConnectShipStatusEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/powervision/gcs/model/event/ConnectShipStatusEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->setDeviceConnectMode(Lcom/powervision/gcs/model/event/ConnectShipStatusEvent;)V

    return-void
.end method

.method public onW4HeartbeatRecovery()V
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;

    new-instance v1, Lcom/powervision/gcs/model/event/ConnectShipStatusEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/powervision/gcs/model/event/ConnectShipStatusEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->setDeviceConnectMode(Lcom/powervision/gcs/model/event/ConnectShipStatusEvent;)V

    return-void
.end method

.method public onW4HeartbeatTimeout()V
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;

    new-instance v1, Lcom/powervision/gcs/model/event/ConnectShipStatusEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/powervision/gcs/model/event/ConnectShipStatusEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->setDeviceConnectMode(Lcom/powervision/gcs/model/event/ConnectShipStatusEvent;)V

    return-void
.end method

.method public onW4SelfDisconnect()V
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;

    new-instance v1, Lcom/powervision/gcs/model/event/ConnectShipStatusEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/powervision/gcs/model/event/ConnectShipStatusEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->setDeviceConnectMode(Lcom/powervision/gcs/model/event/ConnectShipStatusEvent;)V

    return-void
.end method
