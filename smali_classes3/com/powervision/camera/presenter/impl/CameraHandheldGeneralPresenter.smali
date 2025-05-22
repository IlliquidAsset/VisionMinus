.class public Lcom/powervision/camera/presenter/impl/CameraHandheldGeneralPresenter;
.super Lcom/powervision/base/base/BasePresenter;
.source "CameraHandheldGeneralPresenter.java"

# interfaces
.implements Lcom/powervision/camera/presenter/ICameraGeneralPresenter;
.implements Lcom/powervision/camera/camera/CameraListener$CameraEnableResistBlinkListener;
.implements Lcom/powervision/camera/camera/CameraListener$CameraNotifyFormatStorageDeviceListener;
.implements Lcom/powervision/camera/camera/CameraListener$CameraResetCameraParamListener;
.implements Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnEnableLogoListener;
.implements Lcom/powervision/camera/camera/CameraListener$CameraOnEnableGestureListener;
.implements Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetGestureStat;
.implements Lcom/powervision/camera/camera/CameraListener$CameraIsSaveLapsePhotoListener;
.implements Lcom/powervision/camera/camera/CameraListener$CameraOnEnableHeadLightListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BasePresenter<",
        "Lcom/powervision/camera/ui/view/ICameraHandheldGeneralView;",
        "Lcom/powervision/camera/model/impl/CameraHandheldGeneralModel;",
        ">;",
        "Lcom/powervision/camera/presenter/ICameraGeneralPresenter;",
        "Lcom/powervision/camera/camera/CameraListener$CameraEnableResistBlinkListener;",
        "Lcom/powervision/camera/camera/CameraListener$CameraNotifyFormatStorageDeviceListener;",
        "Lcom/powervision/camera/camera/CameraListener$CameraResetCameraParamListener;",
        "Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnEnableLogoListener;",
        "Lcom/powervision/camera/camera/CameraListener$CameraOnEnableGestureListener;",
        "Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetGestureStat;",
        "Lcom/powervision/camera/camera/CameraListener$CameraIsSaveLapsePhotoListener;",
        "Lcom/powervision/camera/camera/CameraListener$CameraOnEnableHeadLightListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraHandheldGeneralP"


# instance fields
.field private cameraManager:Lcom/powervision/camera/camera/CameraManager;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/MultiItemEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/powervision/base/base/BasePresenter;-><init>()V

    return-void
.end method

.method private closeCameraSettingLayout(Ljava/lang/String;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraHandheldGeneralPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-nez v0, :cond_0

    return-void

    .line 132
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "set_camera"

    const-string v0, " ...\u8bbe\u7f6e\u6210\u529f.....\u4e86..."

    .line 133
    invoke-static {p1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object p1, p0, Lcom/powervision/camera/presenter/impl/CameraHandheldGeneralPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast p1, Lcom/powervision/camera/ui/view/ICameraHandheldGeneralView;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/powervision/camera/ui/view/ICameraHandheldGeneralView;->onResetResult(Z)V

    goto :goto_0

    .line 136
    :cond_1
    iget-object p1, p0, Lcom/powervision/camera/presenter/impl/CameraHandheldGeneralPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast p1, Lcom/powervision/camera/ui/view/ICameraHandheldGeneralView;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/powervision/camera/ui/view/ICameraHandheldGeneralView;->onResetResult(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public dataChange(Landroid/util/SparseArray;)V
    .locals 6
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0x3
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 74
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    .line 75
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 76
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 77
    iget-object v5, p0, Lcom/powervision/camera/presenter/impl/CameraHandheldGeneralPresenter;->mList:Ljava/util/List;

    if-nez v5, :cond_0

    return-void

    .line 80
    :cond_0
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;

    sub-int/2addr v4, v1

    sub-int/2addr v4, v3

    if-eqz v2, :cond_1

    .line 83
    iget-object p1, p0, Lcom/powervision/camera/presenter/impl/CameraHandheldGeneralPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast p1, Lcom/powervision/camera/model/impl/CameraHandheldGeneralModel;

    invoke-virtual {p1, v4}, Lcom/powervision/camera/model/impl/CameraHandheldGeneralModel;->getGridImageResId(I)I

    move-result p1

    invoke-virtual {v5, p1}, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;->setBackRes(I)V

    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {v5, p1}, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;->setItemValue(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    .line 87
    :goto_1
    invoke-virtual {v5}, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;->getSubItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_3

    if-ne p1, v4, :cond_2

    .line 89
    invoke-virtual {v5, p1}, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;->getSubItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/model/bean/CameraGeneralChild1;

    invoke-virtual {v1, v3}, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->setSelect(Z)V

    goto :goto_2

    .line 91
    :cond_2
    invoke-virtual {v5, p1}, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;->getSubItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/model/bean/CameraGeneralChild1;

    invoke-virtual {v1, v0}, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->setSelect(Z)V

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 94
    :cond_3
    iget-object p1, p0, Lcom/powervision/camera/presenter/impl/CameraHandheldGeneralPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast p1, Lcom/powervision/camera/ui/view/ICameraHandheldGeneralView;

    invoke-interface {p1}, Lcom/powervision/camera/ui/view/ICameraHandheldGeneralView;->notifyAdapter()V

    :cond_4
    return-void
.end method

.method public formatStorageDevice(Ljava/lang/String;)V
    .locals 2

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   result ... formatStorageDevice  result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "set_camera"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-direct {p0, p1}, Lcom/powervision/camera/presenter/impl/CameraHandheldGeneralPresenter;->closeCameraSettingLayout(Ljava/lang/String;)V

    return-void
.end method

.method public getGestureStat(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onEnableGesture(Ljava/lang/String;)V
    .locals 0

    .line 147
    iget-object p1, p0, Lcom/powervision/camera/presenter/impl/CameraHandheldGeneralPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-nez p1, :cond_0

    return-void

    .line 150
    :cond_0
    iget-object p1, p0, Lcom/powervision/camera/presenter/impl/CameraHandheldGeneralPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast p1, Lcom/powervision/camera/ui/view/ICameraHandheldGeneralView;

    invoke-interface {p1}, Lcom/powervision/camera/ui/view/ICameraHandheldGeneralView;->onNotifyEnableGestureStatus()V

    return-void
.end method

.method public onEnableHeadLight(Ljava/lang/String;)V
    .locals 0

    .line 177
    iget-object p1, p0, Lcom/powervision/camera/presenter/impl/CameraHandheldGeneralPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-nez p1, :cond_0

    return-void

    .line 180
    :cond_0
    iget-object p1, p0, Lcom/powervision/camera/presenter/impl/CameraHandheldGeneralPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast p1, Lcom/powervision/camera/ui/view/ICameraHandheldGeneralView;

    invoke-interface {p1}, Lcom/powervision/camera/ui/view/ICameraHandheldGeneralView;->onNotifyHeadlightLogoStatus()V

    return-void
.end method

.method public onEnableLogo(Ljava/lang/String;)V
    .locals 0

    .line 199
    iget-object p1, p0, Lcom/powervision/camera/presenter/impl/CameraHandheldGeneralPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-nez p1, :cond_0

    return-void

    .line 202
    :cond_0
    iget-object p1, p0, Lcom/powervision/camera/presenter/impl/CameraHandheldGeneralPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast p1, Lcom/powervision/camera/ui/view/ICameraHandheldGeneralView;

    invoke-interface {p1}, Lcom/powervision/camera/ui/view/ICameraHandheldGeneralView;->onNotifyWaterLogoStatus()V

    return-void
.end method

.method public onEnableResistBlink(Ljava/lang/String;)V
    .locals 0

    .line 188
    iget-object p1, p0, Lcom/powervision/camera/presenter/impl/CameraHandheldGeneralPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-nez p1, :cond_0

    return-void

    .line 191
    :cond_0
    iget-object p1, p0, Lcom/powervision/camera/presenter/impl/CameraHandheldGeneralPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast p1, Lcom/powervision/camera/ui/view/ICameraHandheldGeneralView;

    invoke-interface {p1}, Lcom/powervision/camera/ui/view/ICameraHandheldGeneralView;->onNotifyEnableResistbLinkStatus()V

    return-void
.end method

.method public onIsSaveLapsePhoto(Ljava/lang/String;)V
    .locals 0

    .line 166
    iget-object p1, p0, Lcom/powervision/camera/presenter/impl/CameraHandheldGeneralPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-nez p1, :cond_0

    return-void

    .line 169
    :cond_0
    iget-object p1, p0, Lcom/powervision/camera/presenter/impl/CameraHandheldGeneralPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast p1, Lcom/powervision/camera/ui/view/ICameraHandheldGeneralView;

    invoke-interface {p1}, Lcom/powervision/camera/ui/view/ICameraHandheldGeneralView;->onNotifySaveLapsePhotoStatus()V

    return-void
.end method

.method public onResetCameraParam(Ljava/lang/String;)V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraHandheldGeneralPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-nez v0, :cond_0

    return-void

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   result ... onResetCameraParam  result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "set_camera"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getLocalResetType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 122
    iget-object p1, p0, Lcom/powervision/camera/presenter/impl/CameraHandheldGeneralPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast p1, Lcom/powervision/camera/ui/view/ICameraHandheldGeneralView;

    invoke-interface {p1, v0}, Lcom/powervision/camera/ui/view/ICameraHandheldGeneralView;->onResetCameraResult(Z)V

    goto :goto_0

    .line 124
    :cond_1
    iget-object p1, p0, Lcom/powervision/camera/presenter/impl/CameraHandheldGeneralPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast p1, Lcom/powervision/camera/ui/view/ICameraHandheldGeneralView;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/powervision/camera/ui/view/ICameraHandheldGeneralView;->onResetCameraResult(Z)V

    :goto_0
    return-void
.end method

.method public removeListeners()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraHandheldGeneralPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraEnableResistBlinkListener(Lcom/powervision/camera/camera/CameraListener$CameraEnableResistBlinkListener;)V

    .line 55
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraHandheldGeneralPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraResetCameraParamListener(Lcom/powervision/camera/camera/CameraListener$CameraResetCameraParamListener;)V

    .line 56
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraHandheldGeneralPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraFormatStorageDeviceListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyFormatStorageDeviceListener;)V

    .line 57
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraHandheldGeneralPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraNotifyOnEnableLogoListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnEnableLogoListener;)V

    .line 58
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraHandheldGeneralPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraNotifyOnGetGestureStatListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetGestureStat;)V

    .line 59
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraHandheldGeneralPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraOnEnableGestureListener(Lcom/powervision/camera/camera/CameraListener$CameraOnEnableGestureListener;)V

    .line 60
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraHandheldGeneralPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraIsSaveLapsePhotoListener(Lcom/powervision/camera/camera/CameraListener$CameraIsSaveLapsePhotoListener;)V

    .line 61
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraHandheldGeneralPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraOnEnableHeadLightListener(Lcom/powervision/camera/camera/CameraListener$CameraOnEnableHeadLightListener;)V

    :cond_0
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/MultiItemEntity;",
            ">;)V"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lcom/powervision/camera/presenter/impl/CameraHandheldGeneralPresenter;->mList:Ljava/util/List;

    return-void
.end method

.method public setListener()V
    .locals 1

    .line 40
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraHandheldGeneralPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    .line 41
    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraEnableResistBlinkListener(Lcom/powervision/camera/camera/CameraListener$CameraEnableResistBlinkListener;)V

    .line 42
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraHandheldGeneralPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraResetCameraParamListener(Lcom/powervision/camera/camera/CameraListener$CameraResetCameraParamListener;)V

    .line 43
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraHandheldGeneralPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraFormatStorageDeviceListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyFormatStorageDeviceListener;)V

    .line 44
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraHandheldGeneralPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraNotifyOnEnableLogoListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnEnableLogoListener;)V

    .line 45
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraHandheldGeneralPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraNotifyOnGetGestureStatListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetGestureStat;)V

    .line 46
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraHandheldGeneralPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraOnEnableGestureListener(Lcom/powervision/camera/camera/CameraListener$CameraOnEnableGestureListener;)V

    .line 47
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraHandheldGeneralPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraIsSaveLapsePhotoListener(Lcom/powervision/camera/camera/CameraListener$CameraIsSaveLapsePhotoListener;)V

    .line 48
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraHandheldGeneralPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraOnEnableHeadLightListener(Lcom/powervision/camera/camera/CameraListener$CameraOnEnableHeadLightListener;)V

    return-void
.end method
