.class public Lcom/powervision/camera/presenter/impl/CameraGeneralPresenter;
.super Lcom/powervision/base/base/BasePresenter;
.source "CameraGeneralPresenter.java"

# interfaces
.implements Lcom/powervision/camera/presenter/ICameraGeneralPresenter;
.implements Lcom/powervision/camera/camera/CameraListener$CameraEnableResistBlinkListener;
.implements Lcom/powervision/camera/camera/CameraListener$CameraNotifyFormatStorageDeviceListener;
.implements Lcom/powervision/camera/camera/CameraListener$CameraResetCameraParamListener;
.implements Lcom/powervision/camera/camera/CameraListener$CameraSetCurrentStorageDeviceListener;
.implements Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnEnableLogoListener;
.implements Lcom/powervision/camera/camera/CameraListener$CameraOnEnableGestureListener;
.implements Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetGestureStat;
.implements Lcom/powervision/camera/camera/CameraListener$CameraOnEnableHeadLightListener;
.implements Lcom/powervision/camera/camera/CameraListener$CameraNotifyEnableAudioListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BasePresenter<",
        "Lcom/powervision/camera/ui/view/ICameraGeneralView;",
        "Lcom/powervision/camera/model/impl/CameraGeneralModel;",
        ">;",
        "Lcom/powervision/camera/presenter/ICameraGeneralPresenter;",
        "Lcom/powervision/camera/camera/CameraListener$CameraEnableResistBlinkListener;",
        "Lcom/powervision/camera/camera/CameraListener$CameraNotifyFormatStorageDeviceListener;",
        "Lcom/powervision/camera/camera/CameraListener$CameraResetCameraParamListener;",
        "Lcom/powervision/camera/camera/CameraListener$CameraSetCurrentStorageDeviceListener;",
        "Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnEnableLogoListener;",
        "Lcom/powervision/camera/camera/CameraListener$CameraOnEnableGestureListener;",
        "Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetGestureStat;",
        "Lcom/powervision/camera/camera/CameraListener$CameraOnEnableHeadLightListener;",
        "Lcom/powervision/camera/camera/CameraListener$CameraNotifyEnableAudioListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraGeneralPresenter"


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

    .line 150
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraGeneralPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-nez v0, :cond_0

    return-void

    .line 153
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 154
    iget-object p1, p0, Lcom/powervision/camera/presenter/impl/CameraGeneralPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast p1, Lcom/powervision/camera/ui/view/ICameraGeneralView;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/powervision/camera/ui/view/ICameraGeneralView;->onResetResult(Z)V

    goto :goto_0

    .line 156
    :cond_1
    iget-object p1, p0, Lcom/powervision/camera/presenter/impl/CameraGeneralPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast p1, Lcom/powervision/camera/ui/view/ICameraGeneralView;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/powervision/camera/ui/view/ICameraGeneralView;->onResetResult(Z)V

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

    .line 74
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 75
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    .line 76
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 77
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 78
    iget-object v5, p0, Lcom/powervision/camera/presenter/impl/CameraGeneralPresenter;->mList:Ljava/util/List;

    if-nez v5, :cond_0

    return-void

    .line 81
    :cond_0
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;

    sub-int/2addr v4, v1

    sub-int/2addr v4, v3

    if-eqz v2, :cond_1

    .line 84
    iget-object p1, p0, Lcom/powervision/camera/presenter/impl/CameraGeneralPresenter;->mMvpModel:Lcom/powervision/base/base/BaseModel;

    check-cast p1, Lcom/powervision/camera/model/impl/CameraGeneralModel;

    invoke-virtual {p1, v4}, Lcom/powervision/camera/model/impl/CameraGeneralModel;->getGridImageResId(I)I

    move-result p1

    invoke-virtual {v5, p1}, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;->setBackRes(I)V

    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {v5, p1}, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;->setItemValue(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    .line 88
    :goto_1
    invoke-virtual {v5}, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;->getSubItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_3

    if-ne p1, v4, :cond_2

    .line 90
    invoke-virtual {v5, p1}, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;->getSubItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/model/bean/CameraGeneralChild1;

    invoke-virtual {v1, v3}, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->setSelect(Z)V

    goto :goto_2

    .line 92
    :cond_2
    invoke-virtual {v5, p1}, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;->getSubItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/model/bean/CameraGeneralChild1;

    invoke-virtual {v1, v0}, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->setSelect(Z)V

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 95
    :cond_3
    iget-object p1, p0, Lcom/powervision/camera/presenter/impl/CameraGeneralPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast p1, Lcom/powervision/camera/ui/view/ICameraGeneralView;

    invoke-interface {p1}, Lcom/powervision/camera/ui/view/ICameraGeneralView;->notifyAdapter()V

    :cond_4
    return-void
.end method

.method public formatStorageDevice(Ljava/lang/String;)V
    .locals 2

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   result ... formatStorageDevice  result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "set_camera"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-direct {p0, p1}, Lcom/powervision/camera/presenter/impl/CameraGeneralPresenter;->closeCameraSettingLayout(Ljava/lang/String;)V

    return-void
.end method

.method public getGestureStat(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onEnableGesture(Ljava/lang/String;)V
    .locals 1

    const-string v0, "0"

    .line 167
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return-void
.end method

.method public onEnableHeadLight(Ljava/lang/String;)V
    .locals 0

    .line 184
    iget-object p1, p0, Lcom/powervision/camera/presenter/impl/CameraGeneralPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-nez p1, :cond_0

    return-void

    .line 187
    :cond_0
    iget-object p1, p0, Lcom/powervision/camera/presenter/impl/CameraGeneralPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast p1, Lcom/powervision/camera/ui/view/ICameraGeneralView;

    invoke-interface {p1}, Lcom/powervision/camera/ui/view/ICameraGeneralView;->onNotifyHeadlightLogoStatus()V

    return-void
.end method

.method public onEnableLogo(Ljava/lang/String;)V
    .locals 2

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   result ......\u6c34\u5370......... onEnableLogo  result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "set_camera"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object p1, p0, Lcom/powervision/camera/presenter/impl/CameraGeneralPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-nez p1, :cond_0

    return-void

    .line 146
    :cond_0
    iget-object p1, p0, Lcom/powervision/camera/presenter/impl/CameraGeneralPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast p1, Lcom/powervision/camera/ui/view/ICameraGeneralView;

    invoke-interface {p1}, Lcom/powervision/camera/ui/view/ICameraGeneralView;->onNotifyWaterLogoStatus()V

    return-void
.end method

.method public onEnableResistBlink(Ljava/lang/String;)V
    .locals 2

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   result ... onEnableResistBlink  result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "set_camera"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object p1, p0, Lcom/powervision/camera/presenter/impl/CameraGeneralPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-nez p1, :cond_0

    return-void

    .line 115
    :cond_0
    iget-object p1, p0, Lcom/powervision/camera/presenter/impl/CameraGeneralPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast p1, Lcom/powervision/camera/ui/view/ICameraGeneralView;

    invoke-interface {p1}, Lcom/powervision/camera/ui/view/ICameraGeneralView;->onNotifyEnableResistbLinkStatus()V

    return-void
.end method

.method public onResetCameraParam(Ljava/lang/String;)V
    .locals 2

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   result ... onResetCameraParam  result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "set_camera"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getLocalResetType()I

    move-result p1

    if-nez p1, :cond_0

    .line 129
    iget-object p1, p0, Lcom/powervision/camera/presenter/impl/CameraGeneralPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast p1, Lcom/powervision/camera/ui/view/ICameraGeneralView;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/powervision/camera/ui/view/ICameraGeneralView;->onResetCameraResult(Z)V

    goto :goto_0

    .line 131
    :cond_0
    iget-object p1, p0, Lcom/powervision/camera/presenter/impl/CameraGeneralPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast p1, Lcom/powervision/camera/ui/view/ICameraGeneralView;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/powervision/camera/ui/view/ICameraGeneralView;->onResetCameraResult(Z)V

    :goto_0
    return-void
.end method

.method public onSetCurrentStorageDevice(Ljava/lang/String;)V
    .locals 2

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   result ... onSetCurrentStorageDevice  result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "set_camera"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeListeners()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraGeneralPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraEnableResistBlinkListener(Lcom/powervision/camera/camera/CameraListener$CameraEnableResistBlinkListener;)V

    .line 55
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraGeneralPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraResetCameraParamListener(Lcom/powervision/camera/camera/CameraListener$CameraResetCameraParamListener;)V

    .line 56
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraGeneralPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraFormatStorageDeviceListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyFormatStorageDeviceListener;)V

    .line 57
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraGeneralPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraSetCurrentStorageDeviceListener(Lcom/powervision/camera/camera/CameraListener$CameraSetCurrentStorageDeviceListener;)V

    .line 58
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraGeneralPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraNotifyOnEnableLogoListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnEnableLogoListener;)V

    .line 59
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraGeneralPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraNotifyOnGetGestureStatListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetGestureStat;)V

    .line 60
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraGeneralPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraOnEnableGestureListener(Lcom/powervision/camera/camera/CameraListener$CameraOnEnableGestureListener;)V

    .line 61
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraGeneralPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraOnEnableHeadLightListener(Lcom/powervision/camera/camera/CameraListener$CameraOnEnableHeadLightListener;)V

    .line 62
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraGeneralPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraNotifyEnableAudioListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyEnableAudioListener;)V

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

    .line 106
    iput-object p1, p0, Lcom/powervision/camera/presenter/impl/CameraGeneralPresenter;->mList:Ljava/util/List;

    return-void
.end method

.method public setEnableAudio(Ljava/lang/String;)V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraGeneralPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-nez v0, :cond_0

    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraGeneralPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/camera/ui/view/ICameraGeneralView;

    invoke-interface {v0, p1}, Lcom/powervision/camera/ui/view/ICameraGeneralView;->onNotifyEnableAudioStatus(Ljava/lang/String;)V

    return-void
.end method

.method public setListener()V
    .locals 1

    .line 40
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraGeneralPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    .line 41
    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraEnableResistBlinkListener(Lcom/powervision/camera/camera/CameraListener$CameraEnableResistBlinkListener;)V

    .line 42
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraGeneralPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraResetCameraParamListener(Lcom/powervision/camera/camera/CameraListener$CameraResetCameraParamListener;)V

    .line 43
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraGeneralPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraFormatStorageDeviceListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyFormatStorageDeviceListener;)V

    .line 44
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraGeneralPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraSetCurrentStorageDeviceListener(Lcom/powervision/camera/camera/CameraListener$CameraSetCurrentStorageDeviceListener;)V

    .line 45
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraGeneralPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraNotifyOnEnableLogoListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnEnableLogoListener;)V

    .line 46
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraGeneralPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraNotifyOnGetGestureStatListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnGetGestureStat;)V

    .line 47
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraGeneralPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraOnEnableGestureListener(Lcom/powervision/camera/camera/CameraListener$CameraOnEnableGestureListener;)V

    .line 48
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraGeneralPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraOnEnableHeadLightListener(Lcom/powervision/camera/camera/CameraListener$CameraOnEnableHeadLightListener;)V

    .line 49
    iget-object v0, p0, Lcom/powervision/camera/presenter/impl/CameraGeneralPresenter;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraNotifyEnableAudioListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyEnableAudioListener;)V

    return-void
.end method
