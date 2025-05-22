.class public Lcom/powervision/home/presenter/impl/AP03HomeFragmentPresenter;
.super Lcom/powervision/base/base/BasePresenter;
.source "AP03HomeFragmentPresenter.java"

# interfaces
.implements Lcom/powervision/home/presenter/IAP03HomePresenter;
.implements Lcom/powervision/sdk/callback/Ap03RoboticArmListener;
.implements Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;
.implements Lcom/powervision/natives/connect/PVConnectHelper$RemoteConnectSuccessListener;
.implements Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$Ap03DeviceConnectionChangeListener;
.implements Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnQueryActivationStatusListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BasePresenter<",
        "Lcom/powervision/home/ui/view/IAP03HomeFragmentView;",
        "Lcom/powervision/home/model/impl/HomeFragmentModel;",
        ">;",
        "Lcom/powervision/home/presenter/IAP03HomePresenter;",
        "Lcom/powervision/sdk/callback/Ap03RoboticArmListener;",
        "Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;",
        "Lcom/powervision/natives/connect/PVConnectHelper$RemoteConnectSuccessListener;",
        "Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$Ap03DeviceConnectionChangeListener;",
        "Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnQueryActivationStatusListener;"
    }
.end annotation


# instance fields
.field private ap03ActivationManager:Lcom/powervision/home/utils/Ap03ActivationManager;

.field private firmWareManager:Lcn/powervision/upgrade/manager/NewFirmWareManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/powervision/base/base/BasePresenter;-><init>()V

    .line 37
    invoke-direct {p0}, Lcom/powervision/home/presenter/impl/AP03HomeFragmentPresenter;->initActivationStatus()V

    .line 38
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->addRoboticArmListener(Lcom/powervision/sdk/callback/Ap03RoboticArmListener;)V

    .line 39
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->addAp03NotifyOnQueryActivationStatusListener(Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnQueryActivationStatusListener;)V

    .line 40
    invoke-static {}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->get()Lcom/powervision/natives/connect/ConnectRemoteSDK;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->setRemoteConnectSuccessListener(Lcom/powervision/natives/connect/PVConnectHelper$RemoteConnectSuccessListener;)V

    .line 41
    invoke-direct {p0}, Lcom/powervision/home/presenter/impl/AP03HomeFragmentPresenter;->initFirmwareUpgradeManager()V

    .line 42
    invoke-static {}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->getAp03ConnectionInstance()Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->addConnectionChangeListener(Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$Ap03DeviceConnectionChangeListener;)V

    return-void
.end method

.method private initActivationStatus()V
    .locals 1

    .line 69
    invoke-static {}, Lcom/powervision/home/utils/Ap03ActivationManager;->getInstance()Lcom/powervision/home/utils/Ap03ActivationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/home/presenter/impl/AP03HomeFragmentPresenter;->ap03ActivationManager:Lcom/powervision/home/utils/Ap03ActivationManager;

    return-void
.end method

.method private initFirmwareUpgradeManager()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/AP03HomeFragmentPresenter;->firmWareManager:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    if-nez v0, :cond_0

    const-string v0, "upgrade"

    .line 54
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const-string v1, "initFirmwareUpgradeManager"

    invoke-interface {v0, v1}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/Object;)V

    .line 57
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/home/presenter/impl/AP03HomeFragmentPresenter;->firmWareManager:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    .line 58
    invoke-virtual {v0, p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->addUpgradeListener(Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;)V

    .line 61
    :cond_0
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/powervision/home/presenter/impl/AP03HomeFragmentPresenter;->firmWareManager:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    invoke-virtual {v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->getAp03Version()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "lzqFirm"

    const-string v1, "drone conencted version is null"

    .line 62
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/AP03HomeFragmentPresenter;->firmWareManager:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    invoke-virtual {v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->requestDevVersion()V

    :cond_1
    return-void
.end method


# virtual methods
.method public ap03Connected()V
    .locals 0

    return-void
.end method

.method public ap03Disconnected()V
    .locals 0

    return-void
.end method

.method public canNotUpgradeByArmStatus()V
    .locals 0

    return-void
.end method

.method public canUpgradeByArmStatus()V
    .locals 0

    return-void
.end method

.method public checkDeviceUpgrade()V
    .locals 0

    return-void
.end method

.method public checkRemoteUpgrade()V
    .locals 0

    return-void
.end method

.method public downloadFailed()V
    .locals 0

    return-void
.end method

.method public getLocalVersion()V
    .locals 0

    return-void
.end method

.method public getServerVersion()V
    .locals 0

    return-void
.end method

.method public hideDl01Update()V
    .locals 0

    return-void
.end method

.method public hideDownLoad()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/AP03HomeFragmentPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/AP03HomeFragmentPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/home/ui/view/IAP03HomeFragmentView;

    invoke-interface {v0}, Lcom/powervision/home/ui/view/IAP03HomeFragmentView;->hideDownLoad()V

    :cond_0
    return-void
.end method

.method public hideLoading()V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/AP03HomeFragmentPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/AP03HomeFragmentPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/home/ui/view/IAP03HomeFragmentView;

    invoke-interface {v0}, Lcom/powervision/home/ui/view/IAP03HomeFragmentView;->hideLoading()V

    :cond_0
    return-void
.end method

.method public hideMcuUpdate()V
    .locals 0

    return-void
.end method

.method public hidebodyupdate()V
    .locals 0

    return-void
.end method

.method public isBootLoader()V
    .locals 0

    return-void
.end method

.method public isNotBootLoader()V
    .locals 0

    return-void
.end method

.method public notify_state()V
    .locals 0

    return-void
.end method

.method public onDeviceConnectionChange(Z)V
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/AP03HomeFragmentPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-nez v0, :cond_0

    return-void

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/AP03HomeFragmentPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/home/ui/view/IAP03HomeFragmentView;

    invoke-interface {v0, p1}, Lcom/powervision/home/ui/view/IAP03HomeFragmentView;->onDeviceConnectStatusChange(Z)V

    return-void
.end method

.method public onRoboticArmStateChange(ZZZ)V
    .locals 3

    const-string v0, "mode_switch"

    .line 84
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stateChanged normalMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/AP03HomeFragmentPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/AP03HomeFragmentPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/home/ui/view/IAP03HomeFragmentView;

    invoke-interface {v0, p1, p2, p3}, Lcom/powervision/home/ui/view/IAP03HomeFragmentView;->onRoboticArmStateChangeView(ZZZ)V

    :cond_0
    return-void
.end method

.method public onRoboticArmStateGet()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/AP03HomeFragmentPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/AP03HomeFragmentPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/home/ui/view/IAP03HomeFragmentView;

    invoke-interface {v0}, Lcom/powervision/home/ui/view/IAP03HomeFragmentView;->onRoboticArmStateGet()V

    :cond_0
    return-void
.end method

.method public openTheInterNet()V
    .locals 0

    return-void
.end method

.method public remoteConnectSuccess()V
    .locals 1

    .line 315
    invoke-direct {p0}, Lcom/powervision/home/presenter/impl/AP03HomeFragmentPresenter;->initFirmwareUpgradeManager()V

    .line 322
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/AP03HomeFragmentPresenter;->firmWareManager:Lcn/powervision/upgrade/manager/NewFirmWareManager;

    invoke-virtual {v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->requestRemoteMCUVersion()V

    return-void
.end method

.method public removeListeners()V
    .locals 1

    .line 47
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeRoboticArmListener(Lcom/powervision/sdk/callback/Ap03RoboticArmListener;)V

    .line 48
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeAp03NotifyOnQueryActivationStatusListener(Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnQueryActivationStatusListener;)V

    .line 49
    invoke-static {}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->getAp03ConnectionInstance()Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->removeConnectionChangeListener(Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$Ap03DeviceConnectionChangeListener;)V

    return-void
.end method

.method public requestFirmwareVersion()V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public setQueryActivationResultDisable()V
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/AP03HomeFragmentPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/home/ui/view/IAP03HomeFragmentView;

    invoke-interface {v0}, Lcom/powervision/home/ui/view/IAP03HomeFragmentView;->updateActivationStatus()V

    return-void
.end method

.method public setQueryActivationResultEnable()V
    .locals 0

    return-void
.end method

.method public setQueryActivationResultTimeout()V
    .locals 0

    return-void
.end method

.method public showBodyForceUpdate()V
    .locals 0

    return-void
.end method

.method public showBodyUpdate()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/AP03HomeFragmentPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/AP03HomeFragmentPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/home/ui/view/IAP03HomeFragmentView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/powervision/home/ui/view/IAP03HomeFragmentView;->intentToUpgradeActivity(I)V

    :cond_0
    return-void
.end method

.method public showDl01ForceUpdate()V
    .locals 0

    return-void
.end method

.method public showDl01Update()V
    .locals 0

    return-void
.end method

.method public showDownloadApp()V
    .locals 0

    return-void
.end method

.method public showFirmwareDownLoad()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/AP03HomeFragmentPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/AP03HomeFragmentPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/home/ui/view/IAP03HomeFragmentView;

    invoke-interface {v0}, Lcom/powervision/home/ui/view/IAP03HomeFragmentView;->showDownLoad()V

    :cond_0
    return-void
.end method

.method public showFirmwareForceDownLoad()V
    .locals 0

    return-void
.end method

.method public showForceApp()V
    .locals 0

    return-void
.end method

.method public showLoading()V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/AP03HomeFragmentPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/powervision/home/presenter/impl/AP03HomeFragmentPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/home/ui/view/IAP03HomeFragmentView;

    invoke-interface {v0}, Lcom/powervision/home/ui/view/IAP03HomeFragmentView;->showLoading()V

    :cond_0
    return-void
.end method

.method public showMcuForceUpdate()V
    .locals 0

    return-void
.end method

.method public showMcuUpdate()V
    .locals 0

    return-void
.end method
