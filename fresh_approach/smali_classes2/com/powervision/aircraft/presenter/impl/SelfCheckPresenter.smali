.class public Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;
.super Lcom/powervision/base/base/BasePresenter;
.source "SelfCheckPresenter.java"

# interfaces
.implements Lcom/powervision/aircraft/presenter/ISelfCheckPresenter;
.implements Lcom/powervision/sdk/callback/Ap03CurrentModeListener;
.implements Lcom/powervision/sdk/callback/Ap03SysWarnListener;
.implements Lcom/powervision/sdk/callback/Ap03RemoteElectricListener;
.implements Lcom/powervision/sdk/callback/Ap03BatteryStatusListener;
.implements Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetCameraAllParametersListener;
.implements Lcom/powervision/sdk/callback/Ap03RemoteModeResultListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BasePresenter<",
        "Lcom/powervision/aircraft/ui/view/ISelfCheckView;",
        "Lcom/powervision/aircraft/model/impl/SelfCheckModel;",
        ">;",
        "Lcom/powervision/aircraft/presenter/ISelfCheckPresenter;",
        "Lcom/powervision/sdk/callback/Ap03CurrentModeListener;",
        "Lcom/powervision/sdk/callback/Ap03SysWarnListener;",
        "Lcom/powervision/sdk/callback/Ap03RemoteElectricListener;",
        "Lcom/powervision/sdk/callback/Ap03BatteryStatusListener;",
        "Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetCameraAllParametersListener;",
        "Lcom/powervision/sdk/callback/Ap03RemoteModeResultListener;"
    }
.end annotation


# instance fields
.field private ap03NotifyOnSetWaterproofCaseStatusResultListener:Lcom/powervision/sdk/callback/Ap03NotifyOnSetWaterproofCaseStatusResultListener;

.field private mAP03Manager:Lcom/powervision/sdk/Ap03Manager;

.field private mCameraManager:Lcom/powervision/camera/camera/CameraManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentMode:Ljava/lang/String;

.field private mLastBatterTemp:I

.field private mLastBatteryElec:I

.field private mLastEnable:I

.field private mLastHealth:I

.field private mLastRemoteElectric:I

.field private mLastWarnValue:I

.field private mPowerSdk:Lcom/powervision/natives/PVSDK_AP03_API;

.field private mRemoteSDK:Lcom/powervision/natives/connect/ConnectRemoteSDK;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/powervision/base/base/BasePresenter;-><init>()V

    .line 262
    new-instance v0, Lcom/powervision/aircraft/presenter/impl/-$$Lambda$SelfCheckPresenter$YCr7aDfxIM8LGS1ie73E5ShZb8k;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/presenter/impl/-$$Lambda$SelfCheckPresenter$YCr7aDfxIM8LGS1ie73E5ShZb8k;-><init>(Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;)V

    iput-object v0, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->ap03NotifyOnSetWaterproofCaseStatusResultListener:Lcom/powervision/sdk/callback/Ap03NotifyOnSetWaterproofCaseStatusResultListener;

    return-void
.end method

.method private requestCameraInfo()V
    .locals 1

    .line 75
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    .line 76
    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraGetCameraAllParametersListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetCameraAllParametersListener;)V

    .line 77
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getAllParameters()V

    return-void
.end method

.method private requestRemoteInfo()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mPowerSdk:Lcom/powervision/natives/PVSDK_AP03_API;

    const-string v1, "PV_CK_MODE"

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->downloadRemoteParameter(Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public detachView()V
    .locals 1

    .line 270
    invoke-super {p0}, Lcom/powervision/base/base/BasePresenter;->detachView()V

    .line 271
    invoke-static {}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->get()Lcom/powervision/natives/connect/ConnectRemoteSDK;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->removeListener(Lcom/powervision/sdk/callback/Ap03RemoteModeResultListener;)V

    return-void
.end method

.method public getBatterInfo(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public getBatteryElectric(FIIIIIIIIIII)V
    .locals 0

    const-string p2, "selt"

    .line 169
    invoke-static {p2}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "electric: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p4, "   tem: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    new-array p6, p4, [Ljava/lang/Object;

    invoke-interface {p2, p3, p6}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p2, 0x0

    cmpg-float p2, p1, p2

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p2, 0x42c80000    # 100.0f

    .line 170
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-int p4, p1

    .line 171
    :goto_0
    iget p1, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mLastBatteryElec:I

    if-ne p1, p4, :cond_1

    iget p1, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mLastBatterTemp:I

    if-eq p1, p5, :cond_2

    .line 172
    :cond_1
    iput p4, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mLastBatteryElec:I

    .line 173
    iput p5, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mLastBatterTemp:I

    .line 174
    iget-object p1, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz p1, :cond_2

    .line 175
    iget-object p1, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast p1, Lcom/powervision/aircraft/ui/view/ISelfCheckView;

    invoke-interface {p1, p4, p5}, Lcom/powervision/aircraft/ui/view/ISelfCheckView;->updateBatteryInfo(II)V

    :cond_2
    return-void
.end method

.method public getBatteryTime(I)V
    .locals 0

    return-void
.end method

.method public getCameraAllParameters()V
    .locals 5

    .line 254
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getEmmcRemainCapacity()I

    move-result v0

    .line 255
    iget-object v1, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getSDRemainingCapacity()I

    move-result v1

    const-string v2, "self"

    .line 256
    invoke-static {v2}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "=========getCameraAllParameters"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    iget-object v2, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v2, :cond_0

    .line 258
    iget-object v2, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v2, Lcom/powervision/aircraft/ui/view/ISelfCheckView;

    invoke-interface {v2, v1, v0}, Lcom/powervision/aircraft/ui/view/ISelfCheckView;->updateSDCardAndEmmSize(II)V

    :cond_0
    return-void
.end method

.method public getFlyBatteryElectric(II)V
    .locals 0

    return-void
.end method

.method public getHandhledBatteryValue(F)V
    .locals 0

    return-void
.end method

.method public getRemoteElectric(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    .line 157
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 158
    :goto_0
    iget v0, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mLastRemoteElectric:I

    if-eq v0, p1, :cond_1

    .line 159
    iput p1, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mLastRemoteElectric:I

    .line 160
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/aircraft/ui/view/ISelfCheckView;

    invoke-interface {v0, p1}, Lcom/powervision/aircraft/ui/view/ISelfCheckView;->updateRemoteElectric(I)V

    :cond_1
    return-void
.end method

.method public getSysWarnInfo(III)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-nez v0, :cond_0

    return-void

    .line 134
    :cond_0
    iget v0, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mLastWarnValue:I

    if-eq v0, p1, :cond_1

    .line 135
    iput p1, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mLastWarnValue:I

    .line 136
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/aircraft/ui/view/ISelfCheckView;

    invoke-interface {v0, p1}, Lcom/powervision/aircraft/ui/view/ISelfCheckView;->updateSelfCheckInfo(I)V

    .line 137
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/aircraft/ui/view/ISelfCheckView;

    invoke-interface {v0, p1, p2}, Lcom/powervision/aircraft/ui/view/ISelfCheckView;->updateGimbalState(II)V

    .line 139
    :cond_1
    iget v0, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mLastEnable:I

    if-eq v0, p2, :cond_2

    .line 140
    iput p2, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mLastEnable:I

    .line 141
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/aircraft/ui/view/ISelfCheckView;

    invoke-interface {v0, p2}, Lcom/powervision/aircraft/ui/view/ISelfCheckView;->updateSelfCheckWarnInfo(I)V

    .line 142
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/aircraft/ui/view/ISelfCheckView;

    invoke-interface {v0, p1, p2}, Lcom/powervision/aircraft/ui/view/ISelfCheckView;->updateGimbalState(II)V

    .line 144
    :cond_2
    iget p1, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mLastHealth:I

    if-eq p1, p3, :cond_3

    .line 145
    iput p3, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mLastHealth:I

    .line 146
    iget-object p1, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast p1, Lcom/powervision/aircraft/ui/view/ISelfCheckView;

    invoke-interface {p1, p3}, Lcom/powervision/aircraft/ui/view/ISelfCheckView;->updateSelfCheckHealthInfo(I)V

    :cond_3
    return-void
.end method

.method public init()V
    .locals 2

    .line 51
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/base/BaseApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mContext:Landroid/content/Context;

    .line 52
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mPowerSdk:Lcom/powervision/natives/PVSDK_AP03_API;

    .line 53
    invoke-static {}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->get()Lcom/powervision/natives/connect/ConnectRemoteSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mRemoteSDK:Lcom/powervision/natives/connect/ConnectRemoteSDK;

    .line 54
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mAP03Manager:Lcom/powervision/sdk/Ap03Manager;

    .line 55
    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->setCurrentModeListener(Lcom/powervision/sdk/callback/Ap03CurrentModeListener;)V

    .line 56
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mAP03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->addAp03SysWarnListener(Lcom/powervision/sdk/callback/Ap03SysWarnListener;)V

    .line 57
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mAP03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->addAp03RemoteElectricListener(Lcom/powervision/sdk/callback/Ap03RemoteElectricListener;)V

    .line 58
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mAP03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->setBatteryStatusListener(Lcom/powervision/sdk/callback/Ap03BatteryStatusListener;)V

    .line 59
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mRemoteSDK:Lcom/powervision/natives/connect/ConnectRemoteSDK;

    invoke-virtual {v0, p0}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->addAp03RemoteModeResultListener(Lcom/powervision/sdk/callback/Ap03RemoteModeResultListener;)V

    .line 60
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mAP03Manager:Lcom/powervision/sdk/Ap03Manager;

    iget-object v1, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->ap03NotifyOnSetWaterproofCaseStatusResultListener:Lcom/powervision/sdk/callback/Ap03NotifyOnSetWaterproofCaseStatusResultListener;

    invoke-virtual {v0, v1}, Lcom/powervision/sdk/Ap03Manager;->addAp03NotifyOnSetWaterproofCaseStatusResultListener(Lcom/powervision/sdk/callback/Ap03NotifyOnSetWaterproofCaseStatusResultListener;)V

    .line 61
    invoke-direct {p0}, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->requestCameraInfo()V

    return-void
.end method

.method public synthetic lambda$new$0$SelfCheckPresenter(I)V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/aircraft/ui/view/ISelfCheckView;

    invoke-interface {v0, p1}, Lcom/powervision/aircraft/ui/view/ISelfCheckView;->updateWaterMode(I)V

    :cond_0
    return-void
.end method

.method public onRemoteParameterDownloadFailed(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "self"

    .line 217
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-DownloadFailed--"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-interface {v0, p1, p2}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onRemoteParameterDownloadSuccess(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "self"

    .line 202
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "PV_CK_MODE"

    .line 206
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    iget-object p1, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast p1, Lcom/powervision/aircraft/ui/view/ISelfCheckView;

    invoke-interface {p1, p2}, Lcom/powervision/aircraft/ui/view/ISelfCheckView;->updateRemoteCustomKey(I)V

    goto :goto_0

    :cond_1
    const-string v0, "PV_RC_MODE"

    .line 208
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 209
    iget-object p1, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast p1, Lcom/powervision/aircraft/ui/view/ISelfCheckView;

    invoke-interface {p1, p2}, Lcom/powervision/aircraft/ui/view/ISelfCheckView;->updateRemoteMode(I)V

    .line 210
    invoke-direct {p0}, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->requestRemoteInfo()V

    .line 211
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "PV_REMOTE_MODE"

    invoke-virtual {p1, v0, p2}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onRemoteParameterDownloadTimeOut()V
    .locals 3

    const-string v0, "self"

    .line 222
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onRemoteParameterDownloadTimeOut"

    invoke-interface {v0, v2, v1}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onRemoteParameterUploadFailed(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "self"

    .line 241
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-UploadFailed--"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-interface {v0, p1, p2}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onRemoteParameterUploadSuccess(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "self"

    .line 227
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "--UploadSuccess-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "PV_CK_MODE"

    .line 231
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    iget-object p1, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast p1, Lcom/powervision/aircraft/ui/view/ISelfCheckView;

    invoke-interface {p1, p2}, Lcom/powervision/aircraft/ui/view/ISelfCheckView;->updateRemoteCustomKey(I)V

    goto :goto_0

    :cond_1
    const-string v0, "PV_RC_MODE"

    .line 233
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 234
    iget-object p1, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast p1, Lcom/powervision/aircraft/ui/view/ISelfCheckView;

    invoke-interface {p1, p2}, Lcom/powervision/aircraft/ui/view/ISelfCheckView;->updateRemoteMode(I)V

    .line 235
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "PV_REMOTE_MODE"

    invoke-virtual {p1, v0, p2}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onRemoteParameterUploadTimeOut()V
    .locals 3

    const-string v0, "self"

    .line 246
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onRemoteParameterUploadTimeOut"

    invoke-interface {v0, v2, v1}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public removeListener()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mCameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraGetCameraAllParametersListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetCameraAllParametersListener;)V

    .line 83
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mAP03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeCurrentModeListener(Lcom/powervision/sdk/callback/Ap03CurrentModeListener;)V

    .line 84
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mAP03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeAp03SysWarnListener(Lcom/powervision/sdk/callback/Ap03SysWarnListener;)V

    .line 85
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mAP03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeAp03RemoteElectricListener(Lcom/powervision/sdk/callback/Ap03RemoteElectricListener;)V

    .line 86
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mAP03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeBatteryStatusListener(Lcom/powervision/sdk/callback/Ap03BatteryStatusListener;)V

    .line 87
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mAP03Manager:Lcom/powervision/sdk/Ap03Manager;

    iget-object v1, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->ap03NotifyOnSetWaterproofCaseStatusResultListener:Lcom/powervision/sdk/callback/Ap03NotifyOnSetWaterproofCaseStatusResultListener;

    invoke-virtual {v0, v1}, Lcom/powervision/sdk/Ap03Manager;->removeAp03NotifyOnSetWaterproofCaseStatusResultListener(Lcom/powervision/sdk/callback/Ap03NotifyOnSetWaterproofCaseStatusResultListener;)V

    .line 88
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mRemoteSDK:Lcom/powervision/natives/connect/ConnectRemoteSDK;

    invoke-virtual {v0, p0}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->removeListener(Lcom/powervision/sdk/callback/Ap03RemoteModeResultListener;)V

    return-void
.end method

.method public requestRemoteMode()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mPowerSdk:Lcom/powervision/natives/PVSDK_AP03_API;

    const-string v1, "PV_RC_MODE"

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->downloadRemoteParameter(Ljava/lang/String;)I

    return-void
.end method

.method public setCurrentMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 113
    iget-object p2, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mCurrentMode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 114
    iput-object p1, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mCurrentMode:Ljava/lang/String;

    .line 115
    iget-object p2, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/powervision/aircraft/R$array;->fly_mode_array:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    .line 116
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/aircraft/ui/view/ISelfCheckView;

    invoke-static {p1}, Lcom/powervision/base/utils/FlyModeUtil;->getFlyModeIndex(Ljava/lang/String;)I

    move-result p1

    aget-object p1, p2, p1

    invoke-interface {v0, p1}, Lcom/powervision/aircraft/ui/view/ISelfCheckView;->updateFlyMode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setWaterMode(I)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->mAP03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0}, Lcom/powervision/sdk/Ap03Manager;->getPowerSDK()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/natives/PVSDK_AP03_API;->setWaterproofCaseStatus(I)I

    return-void
.end method
