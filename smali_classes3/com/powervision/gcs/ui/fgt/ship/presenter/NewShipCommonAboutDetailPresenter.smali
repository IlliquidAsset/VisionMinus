.class public Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;
.super Ljava/lang/Object;
.source "NewShipCommonAboutDetailPresenter.java"

# interfaces
.implements Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$Presenter;


# instance fields
.field private mView:Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;

.field psnGetListener:Lcom/powervision/gcs/manager/PsnGetUtil$PsnGetListener;

.field viewStateListener:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter$1;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter$1;-><init>(Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;->psnGetListener:Lcom/powervision/gcs/manager/PsnGetUtil$PsnGetListener;

    .line 79
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter$2;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter$2;-><init>(Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;->viewStateListener:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;

    .line 25
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;->mView:Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;)Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;->mView:Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;

    return-object p0
.end method


# virtual methods
.method public checkTheBodyState()V
    .locals 1

    .line 322
    invoke-static {}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->getInstance()Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->checkBodyForDetail()V

    return-void
.end method

.method public checkTheRemoteState()V
    .locals 1

    .line 241
    invoke-static {}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->getInstance()Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->checkRemoteForDetail()V

    return-void
.end method

.method public getBodyBinBasePath()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBodyReleaseNote()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMainBodyVersion()V
    .locals 0

    return-void
.end method

.method public getPsn()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public getRemoteBinBasePath()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRemoteDL01Version()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public getRemoteDlo1Md5()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRemoteMCUVersion()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public getRemoteReleaseNote()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRemoteWifiVersion()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 30
    invoke-static {}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->getInstance()Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;->viewStateListener:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->addmView(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;)V

    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dl01 "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->showDl01Update:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "lzqUpdate"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    sget-boolean p1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->showRemoteDownLoad:Z

    if-eqz p1, :cond_0

    .line 33
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;->mView:Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;

    sget-boolean v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->isA:Z

    invoke-interface {p1, v0}, Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;->showRemoteDownLoad(Z)V

    .line 35
    :cond_0
    sget-boolean p1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->showBodyDownLoad:Z

    if-eqz p1, :cond_1

    .line 36
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;->mView:Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;

    invoke-interface {p1}, Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;->showBodyDownLoad()V

    .line 38
    :cond_1
    sget-boolean p1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->showBodyUpdate:Z

    if-eqz p1, :cond_2

    .line 39
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;->mView:Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;

    invoke-interface {p1}, Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;->showBodyUpdate()V

    .line 41
    :cond_2
    sget-boolean p1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->showDl01Update:Z

    if-eqz p1, :cond_3

    .line 42
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;->mView:Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;

    invoke-interface {p1}, Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;->showDl01Update()V

    .line 44
    :cond_3
    sget-boolean p1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->showMcuUpdate:Z

    if-eqz p1, :cond_4

    .line 45
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;->mView:Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;

    invoke-interface {p1}, Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;->showMcuUpdate()V

    .line 47
    :cond_4
    sget-boolean p1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->showWifiUpdate:Z

    if-eqz p1, :cond_5

    .line 48
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;->mView:Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;

    invoke-interface {p1}, Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;->showWifiUpdate()V

    .line 50
    :cond_5
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;->mView:Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;

    sget-object v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->BodyShowVersion:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;->getMainBodyVersionSucceed(Ljava/lang/String;)V

    .line 51
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;->mView:Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;

    sget-object v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->MCUVERSION:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;->getRemoteMCUVersionSucceed(Ljava/lang/String;)V

    .line 52
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;->mView:Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;

    sget-object v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->DL01VERSION:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;->getRemoteDL01VersionSucceed(Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;->mView:Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;

    sget-object v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->WIFIVERSION:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;->getRemoteWifiVersionSucceed(Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/powervision/gcs/manager/PsnGetUtil;->get()Lcom/powervision/gcs/manager/PsnGetUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;->psnGetListener:Lcom/powervision/gcs/manager/PsnGetUtil$PsnGetListener;

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/manager/PsnGetUtil;->setPsnGetListener(Lcom/powervision/gcs/manager/PsnGetUtil$PsnGetListener;)V

    .line 56
    invoke-static {}, Lcom/powervision/gcs/manager/PsnGetUtil;->get()Lcom/powervision/gcs/manager/PsnGetUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/manager/PsnGetUtil;->askPsnCode()V

    .line 57
    invoke-static {}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->getInstance()Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->initBody()V

    .line 58
    invoke-static {}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->getInstance()Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->initRemote(I)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    return-void
.end method

.method public onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    return-void
.end method

.method public onUpdateFailed(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onUpdateSucceed(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
