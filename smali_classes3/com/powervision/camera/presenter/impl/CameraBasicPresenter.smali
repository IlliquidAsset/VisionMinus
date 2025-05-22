.class public Lcom/powervision/camera/presenter/impl/CameraBasicPresenter;
.super Lcom/powervision/base/base/BasePresenter;
.source "CameraBasicPresenter.java"

# interfaces
.implements Lcom/powervision/camera/presenter/ICameraBasicPresenter;
.implements Lcom/powervision/camera/camera/CameraListener$CameraSetExposureModeListener;
.implements Lcom/powervision/camera/camera/CameraListener$CameraGetCurrentExposureStatusListener;
.implements Lcom/powervision/camera/camera/CameraListener$CameraSetIsoListener;
.implements Lcom/powervision/camera/camera/CameraListener$CameraSetMeteringModeListener;
.implements Lcom/powervision/camera/camera/CameraListener$CameraSetEVListener;
.implements Lcom/powervision/camera/camera/CameraListener$CameraSetExposureTimeListener;
.implements Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetCameraAllParametersListener;
.implements Lcom/powervision/camera/camera/CameraListener$CameraResolutionChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BasePresenter<",
        "Lcom/powervision/camera/ui/view/ICameraBasicView;",
        "Lcom/powervision/camera/model/impl/CameraBasicModel;",
        ">;",
        "Lcom/powervision/camera/presenter/ICameraBasicPresenter;",
        "Lcom/powervision/camera/camera/CameraListener$CameraSetExposureModeListener;",
        "Lcom/powervision/camera/camera/CameraListener$CameraGetCurrentExposureStatusListener;",
        "Lcom/powervision/camera/camera/CameraListener$CameraSetIsoListener;",
        "Lcom/powervision/camera/camera/CameraListener$CameraSetMeteringModeListener;",
        "Lcom/powervision/camera/camera/CameraListener$CameraSetEVListener;",
        "Lcom/powervision/camera/camera/CameraListener$CameraSetExposureTimeListener;",
        "Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetCameraAllParametersListener;",
        "Lcom/powervision/camera/camera/CameraListener$CameraResolutionChangeListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraBasicPresenter"


# instance fields
.field cameraManager:Lcom/powervision/camera/camera/CameraManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/powervision/base/base/BasePresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public getAutoCameraBasicData()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraBasicPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast v0, Lcom/powervision/camera/model/impl/CameraBasicModel;

    invoke-virtual {v0}, Lcom/powervision/camera/model/impl/CameraBasicModel;->getAutoCameraBasicData()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public getCameraAllParameters()V
    .locals 2

    const-string v0, "n_camera"

    const-string v1, " result ...  getCameraAllParameters  =  "

    .line 109
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraBasicPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraBasicPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/camera/ui/view/ICameraBasicView;

    invoke-interface {v0}, Lcom/powervision/camera/ui/view/ICameraBasicView;->onCameraAllParameters()V

    :cond_0
    return-void
.end method

.method public getCameraBasicData()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraBasicPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast v0, Lcom/powervision/camera/model/impl/CameraBasicModel;

    invoke-virtual {v0}, Lcom/powervision/camera/model/impl/CameraBasicModel;->getCameraBasicData()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public onGetCameraCurrentExposureStatus(Ljava/lang/String;)V
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   result ...  onGetCameraCurrentExposureStatus  =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "n_camera"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPhotoResolutionChange(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSetEV(Ljava/lang/String;)V
    .locals 2

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  result ...onSetEV  =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "n_camera"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraBasicPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraBasicPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/camera/ui/view/ICameraBasicView;

    invoke-interface {v0, p1}, Lcom/powervision/camera/ui/view/ICameraBasicView;->setEvPickerView(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSetExposureMode(Ljava/lang/String;)V
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   result ...  \u81ea\u52a8 ...\u624b\u52a8\u6a21\u5f0f  ...onSetExposureMode  =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "n_camera"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraBasicPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraBasicPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/camera/ui/view/ICameraBasicView;

    invoke-interface {v0, p1}, Lcom/powervision/camera/ui/view/ICameraBasicView;->setExposureModeResult(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSetExposureTime(Ljava/lang/String;)V
    .locals 2

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " result ...  onSetExposureTime  =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "n_camera"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraBasicPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraBasicPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/camera/ui/view/ICameraBasicView;

    invoke-interface {v0, p1}, Lcom/powervision/camera/ui/view/ICameraBasicView;->setShutterPickerView(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSetIso(Ljava/lang/String;)V
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " result ...  onSetIso  =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "n_camera"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraBasicPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraBasicPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/camera/ui/view/ICameraBasicView;

    invoke-interface {v0, p1}, Lcom/powervision/camera/ui/view/ICameraBasicView;->setIsoPickerView(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSetMeteringMode(Ljava/lang/String;)V
    .locals 2

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " result ...  onSetMeteringMode  =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "n_camera"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraBasicPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraBasicPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/camera/ui/view/ICameraBasicView;

    invoke-interface {v0, p1}, Lcom/powervision/camera/ui/view/ICameraBasicView;->setMeteringModePickerView(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onVideoResolutionChange(Ljava/lang/String;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraBasicPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 119
    iget-object p1, p0, Lcom/powervision/camera/presenter/impl/CameraBasicPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast p1, Lcom/powervision/camera/ui/view/ICameraBasicView;

    invoke-interface {p1}, Lcom/powervision/camera/ui/view/ICameraBasicView;->onVideoResolutionChangeToView()V

    :cond_0
    return-void
.end method

.method public removeListeners()V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraBasicPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraSetExposureModeListener(Lcom/powervision/camera/camera/CameraListener$CameraSetExposureModeListener;)V

    .line 44
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraBasicPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraGetCurrentExposureStatusListener(Lcom/powervision/camera/camera/CameraListener$CameraGetCurrentExposureStatusListener;)V

    .line 45
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraBasicPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraSetIsoListener(Lcom/powervision/camera/camera/CameraListener$CameraSetIsoListener;)V

    .line 46
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraBasicPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraSetMeteringModeListener(Lcom/powervision/camera/camera/CameraListener$CameraSetMeteringModeListener;)V

    .line 47
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraBasicPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraSetEVListener(Lcom/powervision/camera/camera/CameraListener$CameraSetEVListener;)V

    .line 48
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraBasicPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraSetExposureTimeListener(Lcom/powervision/camera/camera/CameraListener$CameraSetExposureTimeListener;)V

    .line 49
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraBasicPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraResolutionChangeListener(Lcom/powervision/camera/camera/CameraListener$CameraResolutionChangeListener;)V

    return-void
.end method

.method public setListener()V
    .locals 1

    .line 32
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraBasicPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    .line 33
    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraSetExposureModeListener(Lcom/powervision/camera/camera/CameraListener$CameraSetExposureModeListener;)V

    .line 34
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraBasicPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraGetCurrentExposureStatusListener(Lcom/powervision/camera/camera/CameraListener$CameraGetCurrentExposureStatusListener;)V

    .line 35
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraBasicPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraSetIsoListener(Lcom/powervision/camera/camera/CameraListener$CameraSetIsoListener;)V

    .line 36
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraBasicPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraSetMeteringModeListener(Lcom/powervision/camera/camera/CameraListener$CameraSetMeteringModeListener;)V

    .line 37
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraBasicPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraSetEVListener(Lcom/powervision/camera/camera/CameraListener$CameraSetEVListener;)V

    .line 38
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraBasicPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraSetExposureTimeListener(Lcom/powervision/camera/camera/CameraListener$CameraSetExposureTimeListener;)V

    .line 39
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraBasicPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraResolutionChangeListener(Lcom/powervision/camera/camera/CameraListener$CameraResolutionChangeListener;)V

    return-void
.end method
