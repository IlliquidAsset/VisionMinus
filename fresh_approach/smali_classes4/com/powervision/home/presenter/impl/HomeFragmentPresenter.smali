.class public Lcom/powervision/home/presenter/impl/HomeFragmentPresenter;
.super Lcom/powervision/base/base/BasePresenter;
.source "HomeFragmentPresenter.java"

# interfaces
.implements Lcom/powervision/natives/connect/PVConnectHelper$OnBodyConnectListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BasePresenter<",
        "Lcom/powervision/home/ui/view/IHomeFragmentView;",
        "Lcom/powervision/home/model/impl/HomeFragmentModel;",
        ">;",
        "Lcom/powervision/natives/connect/PVConnectHelper$OnBodyConnectListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "lzqW4_body_"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Lcom/powervision/base/base/BasePresenter;-><init>()V

    const-string v0, "lzqW4_body_"

    const-string v1, "HomeFragmentPresenter: "

    .line 30
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->addConnectListener(Lcom/powervision/natives/connect/PVConnectHelper$OnBodyConnectListener;)V

    .line 32
    invoke-direct {p0}, Lcom/powervision/home/presenter/impl/HomeFragmentPresenter;->registerSDKListener()V

    return-void
.end method

.method private registerSDKListener()V
    .locals 1

    .line 39
    invoke-static {}, Lcom/powervision/natives/model/ConstantSpeedModel;->get()Lcom/powervision/natives/model/ConstantSpeedModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/model/ConstantSpeedModel;->registerListener()V

    .line 40
    invoke-static {}, Lcom/powervision/natives/model/LightControlModel;->get()Lcom/powervision/natives/model/LightControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/model/LightControlModel;->registerListener()V

    return-void
.end method


# virtual methods
.method public onAp03DeviceConnectFailed()V
    .locals 0

    return-void
.end method

.method public onAp03DeviceConnectTimeout()V
    .locals 2

    const-string v0, "HomeFragmentPresenter"

    .line 121
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const-string v1, "onDeviceConnectTimeout"

    invoke-interface {v0, v1}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/HomeFragmentPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/HomeFragmentPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/home/ui/view/IHomeFragmentView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/powervision/home/ui/view/IHomeFragmentView;->updateDeviceConnectStatus(I)V

    :cond_0
    return-void
.end method

.method public onAp03DeviceConnected()V
    .locals 2

    const-string v0, "HomeFragmentPresenter"

    .line 91
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const-string v1, "onAp03DeviceConnected"

    invoke-interface {v0, v1}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/HomeFragmentPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/HomeFragmentPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/home/ui/view/IHomeFragmentView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/powervision/home/ui/view/IHomeFragmentView;->updateDeviceConnectStatus(I)V

    .line 95
    :cond_0
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v0

    iget-boolean v0, v0, Lcn/powervision/upgrade/manager/NewFirmWareManager;->NotUpgrading:Z

    if-nez v0, :cond_1

    .line 96
    invoke-static {}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->get()Lcom/powervision/natives/connect/Dl01ConnectSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->initAirConnect()V

    :cond_1
    return-void
.end method

.method public onAp03DeviceDisConnect()V
    .locals 2

    const-string v0, "HomeFragmentPresenter"

    .line 112
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const-string v1, "onDeviceDisConnect"

    invoke-interface {v0, v1}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/HomeFragmentPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/HomeFragmentPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/home/ui/view/IHomeFragmentView;

    invoke-interface {v0, v1}, Lcom/powervision/home/ui/view/IHomeFragmentView;->updateDeviceConnectStatus(I)V

    .line 116
    :cond_0
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/powervision/sdk/Ap03Manager;->setArmStatus(I)V

    return-void
.end method

.method public onAp03HeartbeatRecovery()V
    .locals 2

    const-string v0, "HomeFragmentPresenter"

    .line 131
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const-string v1, "onW4HeartbeatRecovery"

    invoke-interface {v0, v1}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/Object;)V

    .line 132
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/HomeFragmentPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/HomeFragmentPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/home/ui/view/IHomeFragmentView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/powervision/home/ui/view/IHomeFragmentView;->updateDeviceConnectStatus(I)V

    :cond_0
    return-void
.end method

.method public onAp03HeartbeatTimeout()V
    .locals 2

    const-string v0, "lzqAp03"

    const-string v1, "homepresenter onAp03HeartbeatTimeout"

    .line 139
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "HomeFragmentPresenter"

    .line 140
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const-string v1, "onW4HeartbeatTimeout"

    invoke-interface {v0, v1}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/Object;)V

    .line 141
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/HomeFragmentPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/HomeFragmentPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/home/ui/view/IHomeFragmentView;

    invoke-interface {v0, v1}, Lcom/powervision/home/ui/view/IHomeFragmentView;->updateDeviceConnectStatus(I)V

    .line 144
    :cond_0
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/powervision/sdk/Ap03Manager;->setArmStatus(I)V

    return-void
.end method

.method public onAp03SelfDisconnect()V
    .locals 2

    const-string v0, "lzqAp03"

    const-string v1, "homepresenter onAp03SelfDisconnect"

    .line 149
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/HomeFragmentPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/HomeFragmentPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/home/ui/view/IHomeFragmentView;

    invoke-interface {v0, v1}, Lcom/powervision/home/ui/view/IHomeFragmentView;->updateDeviceConnectStatus(I)V

    .line 153
    :cond_0
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/powervision/sdk/Ap03Manager;->setArmStatus(I)V

    return-void
.end method

.method public onChainConnectFailed()V
    .locals 2

    const-string v0, "HomeFragmentPresenter"

    .line 53
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const-string v1, "onChainConnectFailed"

    invoke-interface {v0, v1}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/HomeFragmentPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/HomeFragmentPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/home/ui/view/IHomeFragmentView;

    invoke-interface {v0, v1}, Lcom/powervision/home/ui/view/IHomeFragmentView;->updateDeviceConnectStatus(I)V

    .line 57
    :cond_0
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/powervision/sdk/Ap03Manager;->setArmStatus(I)V

    .line 58
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/HomeFragmentPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/HomeFragmentPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/home/ui/view/IHomeFragmentView;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/powervision/home/ui/view/IHomeFragmentView;->updatePVW4ConnectStatus(I)V

    :cond_1
    return-void
.end method

.method public onChainConnectTimeout()V
    .locals 2

    const-string v0, "HomeFragmentPresenter"

    .line 78
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const-string v1, "onChainConnectTimeout"

    invoke-interface {v0, v1}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/Object;)V

    const-string v0, "lzqAp03"

    const-string v1, "homepresenter onChainConnectTimeout"

    .line 79
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/HomeFragmentPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/HomeFragmentPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/home/ui/view/IHomeFragmentView;

    invoke-interface {v0, v1}, Lcom/powervision/home/ui/view/IHomeFragmentView;->updateDeviceConnectStatus(I)V

    .line 83
    :cond_0
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/powervision/sdk/Ap03Manager;->setArmStatus(I)V

    .line 84
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/HomeFragmentPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/HomeFragmentPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/home/ui/view/IHomeFragmentView;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/powervision/home/ui/view/IHomeFragmentView;->updatePVW4ConnectStatus(I)V

    :cond_1
    return-void
.end method

.method public onChainConnected()V
    .locals 2

    const-string v0, "HomeFragmentPresenter"

    .line 47
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const-string v1, "onChainConnected"

    invoke-interface {v0, v1}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public onChainDisconnected()V
    .locals 2

    const-string v0, "HomeFragmentPresenter"

    .line 65
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const-string v1, "onChainDisconnected"

    invoke-interface {v0, v1}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/HomeFragmentPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/HomeFragmentPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/home/ui/view/IHomeFragmentView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/powervision/home/ui/view/IHomeFragmentView;->updateDeviceConnectStatus(I)V

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/HomeFragmentPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/HomeFragmentPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/home/ui/view/IHomeFragmentView;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/powervision/home/ui/view/IHomeFragmentView;->updatePVW4ConnectStatus(I)V

    :cond_1
    return-void
.end method

.method public onW4DeviceConnectFailed()V
    .locals 2

    const-string v0, "HomeFragmentPresenter"

    .line 166
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const-string v1, "onW4DeviceConnectFailed: "

    invoke-interface {v0, v1}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/Object;)V

    .line 167
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/HomeFragmentPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/HomeFragmentPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/home/ui/view/IHomeFragmentView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/powervision/home/ui/view/IHomeFragmentView;->updatePVW4ConnectStatus(I)V

    :cond_0
    return-void
.end method

.method public onW4DeviceConnectTimeout()V
    .locals 2

    const-string v0, "HomeFragmentPresenter"

    .line 182
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const-string v1, "onW4DeviceConnectTimeout: "

    invoke-interface {v0, v1}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/Object;)V

    .line 183
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/HomeFragmentPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/HomeFragmentPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/home/ui/view/IHomeFragmentView;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/powervision/home/ui/view/IHomeFragmentView;->updatePVW4ConnectStatus(I)V

    :cond_0
    return-void
.end method

.method public onW4DeviceConnected()V
    .locals 2

    const-string v0, "HomeFragmentPresenter"

    .line 158
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const-string v1, "onW4DeviceConnected: "

    invoke-interface {v0, v1}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/Object;)V

    .line 159
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/HomeFragmentPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/HomeFragmentPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/home/ui/view/IHomeFragmentView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/powervision/home/ui/view/IHomeFragmentView;->updatePVW4ConnectStatus(I)V

    :cond_0
    return-void
.end method

.method public onW4DeviceDisConnect()V
    .locals 2

    const-string v0, "HomeFragmentPresenter"

    .line 174
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const-string v1, "onW4DeviceDisConnect: "

    invoke-interface {v0, v1}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/Object;)V

    .line 175
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/HomeFragmentPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/HomeFragmentPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/home/ui/view/IHomeFragmentView;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/powervision/home/ui/view/IHomeFragmentView;->updatePVW4ConnectStatus(I)V

    :cond_0
    return-void
.end method

.method public onW4HeartbeatRecovery()V
    .locals 2

    const-string v0, "HomeFragmentPresenter"

    .line 190
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const-string v1, "onW4HeartbeatRecovery: "

    invoke-interface {v0, v1}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/Object;)V

    .line 191
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/HomeFragmentPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/HomeFragmentPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/home/ui/view/IHomeFragmentView;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/powervision/home/ui/view/IHomeFragmentView;->updatePVW4ConnectStatus(I)V

    :cond_0
    return-void
.end method

.method public onW4HeartbeatTimeout()V
    .locals 2

    const-string v0, "HomeFragmentPresenter"

    .line 198
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const-string v1, "onW4HeartbeatTimeout: "

    invoke-interface {v0, v1}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/Object;)V

    .line 199
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/HomeFragmentPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/HomeFragmentPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/home/ui/view/IHomeFragmentView;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/powervision/home/ui/view/IHomeFragmentView;->updatePVW4ConnectStatus(I)V

    :cond_0
    return-void
.end method

.method public onW4SelfDisconnect()V
    .locals 2

    const-string v0, "HomeFragmentPresenter"

    .line 206
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const-string v1, "onW4SelfDisconnect: "

    invoke-interface {v0, v1}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/Object;)V

    .line 207
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/HomeFragmentPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/HomeFragmentPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/home/ui/view/IHomeFragmentView;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/powervision/home/ui/view/IHomeFragmentView;->updatePVW4ConnectStatus(I)V

    :cond_0
    return-void
.end method
