.class public abstract Lcom/powervision/powersdk/base/CameraBase;
.super Ljava/lang/Object;
.source "CameraBase.java"

# interfaces
.implements Lcom/powervision/powersdk/callback/CameraCallback$CameraParamListener;
.implements Lcom/powervision/powersdk/callback/CameraCallback$CameraListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/powersdk/base/CameraBase$SetCameraParamsListener;,
        Lcom/powervision/powersdk/base/CameraBase$GetCameraNotifyListener;
    }
.end annotation


# instance fields
.field private mGetCameraNotifyListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/powervision/powersdk/base/CameraBase$GetCameraNotifyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSetCameraParamsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/powervision/powersdk/base/CameraBase$SetCameraParamsListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/powersdk/base/CameraBase;->mSetCameraParamsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/powersdk/base/CameraBase;->mGetCameraNotifyListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method private notifyGetCameraNotifyListeners(Lcom/powervision/powersdk/model/CameraType;)V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/powervision/powersdk/base/CameraBase;->mGetCameraNotifyListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/powervision/powersdk/base/CameraBase;->mGetCameraNotifyListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/powersdk/base/CameraBase$GetCameraNotifyListener;

    .line 59
    invoke-interface {v1, p1}, Lcom/powervision/powersdk/base/CameraBase$GetCameraNotifyListener;->onCameraGetListener(Lcom/powervision/powersdk/model/CameraType;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifySetCameraParamsListeners(Lcom/powervision/powersdk/model/CameraType;Ljava/lang/String;)V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/powervision/powersdk/base/CameraBase;->mSetCameraParamsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/powervision/powersdk/base/CameraBase;->mSetCameraParamsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/powersdk/base/CameraBase$SetCameraParamsListener;

    .line 39
    invoke-interface {v1, p1, p2}, Lcom/powervision/powersdk/base/CameraBase$SetCameraParamsListener;->onSetParamListener(Lcom/powervision/powersdk/model/CameraType;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addGetCameraNotifyListener(Lcom/powervision/powersdk/base/CameraBase$GetCameraNotifyListener;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/powervision/powersdk/base/CameraBase;->mGetCameraNotifyListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/powervision/powersdk/base/CameraBase;->mGetCameraNotifyListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addSetCameraParamsListener(Lcom/powervision/powersdk/base/CameraBase$SetCameraParamsListener;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/powervision/powersdk/base/CameraBase;->mSetCameraParamsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/powervision/powersdk/base/CameraBase;->mSetCameraParamsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onCameraCameraCmdChangeCapture()V
    .locals 0

    return-void
.end method

.method public onCameraCameraCmdChangeFlir()V
    .locals 0

    return-void
.end method

.method public onCameraCameraFeedBackTimeout()V
    .locals 1

    .line 194
    sget-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraCameraFeedBackTimeout:Lcom/powervision/powersdk/model/CameraType;

    invoke-direct {p0, v0}, Lcom/powervision/powersdk/base/CameraBase;->notifyGetCameraNotifyListeners(Lcom/powervision/powersdk/model/CameraType;)V

    return-void
.end method

.method public onCameraCameraFlirFailed()V
    .locals 0

    return-void
.end method

.method public onCameraCameraFlirSuccess()V
    .locals 0

    return-void
.end method

.method public onCameraCameraRecSDEmpty()V
    .locals 1

    .line 236
    sget-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraCameraRecSDEmpty:Lcom/powervision/powersdk/model/CameraType;

    invoke-direct {p0, v0}, Lcom/powervision/powersdk/base/CameraBase;->notifyGetCameraNotifyListeners(Lcom/powervision/powersdk/model/CameraType;)V

    return-void
.end method

.method public onCameraCameraRecSDErr()V
    .locals 0

    return-void
.end method

.method public onCameraCameraRecSDFull()V
    .locals 1

    .line 222
    sget-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraCameraRecSDFull:Lcom/powervision/powersdk/model/CameraType;

    invoke-direct {p0, v0}, Lcom/powervision/powersdk/base/CameraBase;->notifyGetCameraNotifyListeners(Lcom/powervision/powersdk/model/CameraType;)V

    return-void
.end method

.method public onCameraCameraSDEmpty()V
    .locals 1

    .line 215
    sget-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraCameraSDEmpty:Lcom/powervision/powersdk/model/CameraType;

    invoke-direct {p0, v0}, Lcom/powervision/powersdk/base/CameraBase;->notifyGetCameraNotifyListeners(Lcom/powervision/powersdk/model/CameraType;)V

    return-void
.end method

.method public onCameraCameraSDErr()V
    .locals 0

    return-void
.end method

.method public onCameraCameraSDFull()V
    .locals 1

    .line 201
    sget-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraCameraSDFull:Lcom/powervision/powersdk/model/CameraType;

    invoke-direct {p0, v0}, Lcom/powervision/powersdk/base/CameraBase;->notifyGetCameraNotifyListeners(Lcom/powervision/powersdk/model/CameraType;)V

    return-void
.end method

.method public onCameraCaptureSettingFailed()V
    .locals 0

    return-void
.end method

.method public onCameraCaptureSettingSuccess()V
    .locals 0

    return-void
.end method

.method public onCameraExists()V
    .locals 0

    return-void
.end method

.method public onCameraFormatSDFailed()V
    .locals 1

    .line 149
    sget-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraFormatSDFailed:Lcom/powervision/powersdk/model/CameraType;

    invoke-direct {p0, v0}, Lcom/powervision/powersdk/base/CameraBase;->notifyGetCameraNotifyListeners(Lcom/powervision/powersdk/model/CameraType;)V

    return-void
.end method

.method public onCameraFormatSDSuccess()V
    .locals 1

    .line 144
    sget-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraFormatSDSuccess:Lcom/powervision/powersdk/model/CameraType;

    invoke-direct {p0, v0}, Lcom/powervision/powersdk/base/CameraBase;->notifyGetCameraNotifyListeners(Lcom/powervision/powersdk/model/CameraType;)V

    return-void
.end method

.method public onCameraParamGetSuccess(Ljava/lang/String;)V
    .locals 1

    .line 295
    sget-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraParamGetSuccess:Lcom/powervision/powersdk/model/CameraType;

    invoke-direct {p0, v0, p1}, Lcom/powervision/powersdk/base/CameraBase;->notifySetCameraParamsListeners(Lcom/powervision/powersdk/model/CameraType;Ljava/lang/String;)V

    return-void
.end method

.method public onCameraParamGetTimeout(Ljava/lang/String;)V
    .locals 1

    .line 307
    sget-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraParamGetTimeout:Lcom/powervision/powersdk/model/CameraType;

    invoke-direct {p0, v0, p1}, Lcom/powervision/powersdk/base/CameraBase;->notifySetCameraParamsListeners(Lcom/powervision/powersdk/model/CameraType;Ljava/lang/String;)V

    return-void
.end method

.method public onCameraParamSetSuccess(Ljava/lang/String;)V
    .locals 1

    .line 275
    sget-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraParamSetSuccess:Lcom/powervision/powersdk/model/CameraType;

    invoke-direct {p0, v0, p1}, Lcom/powervision/powersdk/base/CameraBase;->notifySetCameraParamsListeners(Lcom/powervision/powersdk/model/CameraType;Ljava/lang/String;)V

    return-void
.end method

.method public onCameraParamSetTimeout(Ljava/lang/String;)V
    .locals 1

    .line 286
    sget-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraParamSetTimeout:Lcom/powervision/powersdk/model/CameraType;

    invoke-direct {p0, v0, p1}, Lcom/powervision/powersdk/base/CameraBase;->notifySetCameraParamsListeners(Lcom/powervision/powersdk/model/CameraType;Ljava/lang/String;)V

    return-void
.end method

.method public onCameraPictureSettingFailed()V
    .locals 0

    return-void
.end method

.method public onCameraPictureSettingSuccess()V
    .locals 0

    return-void
.end method

.method public onCameraRecMode()V
    .locals 1

    .line 106
    sget-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraRecMode:Lcom/powervision/powersdk/model/CameraType;

    invoke-direct {p0, v0}, Lcom/powervision/powersdk/base/CameraBase;->notifyGetCameraNotifyListeners(Lcom/powervision/powersdk/model/CameraType;)V

    return-void
.end method

.method public onCameraRecModeError()V
    .locals 1

    .line 111
    sget-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraRecModeError:Lcom/powervision/powersdk/model/CameraType;

    invoke-direct {p0, v0}, Lcom/powervision/powersdk/base/CameraBase;->notifyGetCameraNotifyListeners(Lcom/powervision/powersdk/model/CameraType;)V

    return-void
.end method

.method public onCameraRecRecing()V
    .locals 1

    .line 88
    sget-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraRecRecing:Lcom/powervision/powersdk/model/CameraType;

    invoke-direct {p0, v0}, Lcom/powervision/powersdk/base/CameraBase;->notifyGetCameraNotifyListeners(Lcom/powervision/powersdk/model/CameraType;)V

    return-void
.end method

.method public onCameraRecSettingFailed()V
    .locals 0

    return-void
.end method

.method public onCameraRecSettingSuccess()V
    .locals 0

    return-void
.end method

.method public onCameraRecStartError()V
    .locals 1

    .line 93
    sget-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraRecStartError:Lcom/powervision/powersdk/model/CameraType;

    invoke-direct {p0, v0}, Lcom/powervision/powersdk/base/CameraBase;->notifyGetCameraNotifyListeners(Lcom/powervision/powersdk/model/CameraType;)V

    return-void
.end method

.method public onCameraRecStopEnd()V
    .locals 1

    .line 83
    sget-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraRecStopEnd:Lcom/powervision/powersdk/model/CameraType;

    invoke-direct {p0, v0}, Lcom/powervision/powersdk/base/CameraBase;->notifyGetCameraNotifyListeners(Lcom/powervision/powersdk/model/CameraType;)V

    return-void
.end method

.method public onCameraRecStopError()V
    .locals 1

    .line 98
    sget-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraRecStopError:Lcom/powervision/powersdk/model/CameraType;

    invoke-direct {p0, v0}, Lcom/powervision/powersdk/base/CameraBase;->notifyGetCameraNotifyListeners(Lcom/powervision/powersdk/model/CameraType;)V

    return-void
.end method

.method public onCameraResetToCameraFactoryFailed()V
    .locals 1

    .line 159
    sget-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraResetToCameraFactoryFailed:Lcom/powervision/powersdk/model/CameraType;

    invoke-direct {p0, v0}, Lcom/powervision/powersdk/base/CameraBase;->notifyGetCameraNotifyListeners(Lcom/powervision/powersdk/model/CameraType;)V

    return-void
.end method

.method public onCameraResetToCameraFactorySuccess()V
    .locals 1

    .line 154
    sget-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraResetToCameraFactorySuccess:Lcom/powervision/powersdk/model/CameraType;

    invoke-direct {p0, v0}, Lcom/powervision/powersdk/base/CameraBase;->notifyGetCameraNotifyListeners(Lcom/powervision/powersdk/model/CameraType;)V

    return-void
.end method

.method public onCameraStillCaptureEnd()V
    .locals 1

    .line 116
    sget-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraStillCaptureEnd:Lcom/powervision/powersdk/model/CameraType;

    invoke-direct {p0, v0}, Lcom/powervision/powersdk/base/CameraBase;->notifyGetCameraNotifyListeners(Lcom/powervision/powersdk/model/CameraType;)V

    return-void
.end method

.method public onCameraStillCaptureError()V
    .locals 1

    .line 126
    sget-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraStillCaptureError:Lcom/powervision/powersdk/model/CameraType;

    invoke-direct {p0, v0}, Lcom/powervision/powersdk/base/CameraBase;->notifyGetCameraNotifyListeners(Lcom/powervision/powersdk/model/CameraType;)V

    return-void
.end method

.method public onCameraStillCaptureMode()V
    .locals 1

    .line 134
    sget-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraStillCaptureMode:Lcom/powervision/powersdk/model/CameraType;

    invoke-direct {p0, v0}, Lcom/powervision/powersdk/base/CameraBase;->notifyGetCameraNotifyListeners(Lcom/powervision/powersdk/model/CameraType;)V

    return-void
.end method

.method public onCameraStillCaptureModeError()V
    .locals 1

    .line 139
    sget-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraStillCaptureModeError:Lcom/powervision/powersdk/model/CameraType;

    invoke-direct {p0, v0}, Lcom/powervision/powersdk/base/CameraBase;->notifyGetCameraNotifyListeners(Lcom/powervision/powersdk/model/CameraType;)V

    return-void
.end method

.method public onCameraStillCaptureing()V
    .locals 1

    .line 121
    sget-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraStillCaptureing:Lcom/powervision/powersdk/model/CameraType;

    invoke-direct {p0, v0}, Lcom/powervision/powersdk/base/CameraBase;->notifyGetCameraNotifyListeners(Lcom/powervision/powersdk/model/CameraType;)V

    return-void
.end method

.method public removeGetCameraNotifyListener(Lcom/powervision/powersdk/base/CameraBase$GetCameraNotifyListener;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/powervision/powersdk/base/CameraBase;->mGetCameraNotifyListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/powervision/powersdk/base/CameraBase;->mGetCameraNotifyListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeSetCameraParamsListener(Lcom/powervision/powersdk/base/CameraBase$SetCameraParamsListener;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/powervision/powersdk/base/CameraBase;->mSetCameraParamsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/powervision/powersdk/base/CameraBase;->mSetCameraParamsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
