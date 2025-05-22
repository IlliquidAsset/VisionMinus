.class public Lcom/powervision/home/utils/Ap03ActivationManager;
.super Ljava/lang/Object;
.source "Ap03ActivationManager.java"

# interfaces
.implements Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnGetActivationSnCodeListener;
.implements Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnEnableActivationListener;
.implements Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnGetActivationCodeListener;
.implements Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyonGetActivationHwCodeListener;
.implements Lcom/powervision/sdk/callback/Ap03RoboticArmListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/home/utils/Ap03ActivationManager$ActivationResultListener;
    }
.end annotation


# static fields
.field private static ap03ActivationManager:Lcom/powervision/home/utils/Ap03ActivationManager;


# instance fields
.field private activationResultListener:Lcom/powervision/home/utils/Ap03ActivationManager$ActivationResultListener;

.field private isConnectDevice:Z

.field private mLifecycleProvider:Lcom/trello/rxlifecycle4/LifecycleProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/trello/rxlifecycle4/LifecycleProvider<",
            "Lcom/trello/rxlifecycle4/android/FragmentEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

.field private sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/home/utils/Ap03ActivationManager;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    .line 42
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/home/utils/Ap03ActivationManager;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    .line 43
    iget-object v0, p0, Lcom/powervision/home/utils/Ap03ActivationManager;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnEnableActivationListener(Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnEnableActivationListener;)V

    .line 44
    iget-object v0, p0, Lcom/powervision/home/utils/Ap03ActivationManager;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnGetActivationCodeListener(Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnGetActivationCodeListener;)V

    .line 45
    iget-object v0, p0, Lcom/powervision/home/utils/Ap03ActivationManager;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnGetActivationSnCodeListener(Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnGetActivationSnCodeListener;)V

    .line 46
    iget-object v0, p0, Lcom/powervision/home/utils/Ap03ActivationManager;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyonGetActivationHwCodeListener(Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyonGetActivationHwCodeListener;)V

    .line 47
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->addRoboticArmListener(Lcom/powervision/sdk/callback/Ap03RoboticArmListener;)V

    return-void
.end method

.method public static getInstance()Lcom/powervision/home/utils/Ap03ActivationManager;
    .locals 2

    .line 59
    sget-object v0, Lcom/powervision/home/utils/Ap03ActivationManager;->ap03ActivationManager:Lcom/powervision/home/utils/Ap03ActivationManager;

    if-nez v0, :cond_1

    .line 60
    const-class v0, Lcom/powervision/home/utils/Ap03ActivationManager;

    monitor-enter v0

    .line 61
    :try_start_0
    sget-object v1, Lcom/powervision/home/utils/Ap03ActivationManager;->ap03ActivationManager:Lcom/powervision/home/utils/Ap03ActivationManager;

    if-nez v1, :cond_0

    .line 62
    new-instance v1, Lcom/powervision/home/utils/Ap03ActivationManager;

    invoke-direct {v1}, Lcom/powervision/home/utils/Ap03ActivationManager;-><init>()V

    sput-object v1, Lcom/powervision/home/utils/Ap03ActivationManager;->ap03ActivationManager:Lcom/powervision/home/utils/Ap03ActivationManager;

    .line 64
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 66
    :cond_1
    :goto_0
    sget-object v0, Lcom/powervision/home/utils/Ap03ActivationManager;->ap03ActivationManager:Lcom/powervision/home/utils/Ap03ActivationManager;

    return-object v0
.end method


# virtual methods
.method public closeActivationLink()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/powervision/home/utils/Ap03ActivationManager;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->disconnectActivationLink()I

    return-void
.end method

.method public destroyListener()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/powervision/home/utils/Ap03ActivationManager;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnEnableActivationListener(Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnEnableActivationListener;)V

    .line 52
    iget-object v0, p0, Lcom/powervision/home/utils/Ap03ActivationManager;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnGetActivationCodeListener(Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnGetActivationCodeListener;)V

    .line 53
    iget-object v0, p0, Lcom/powervision/home/utils/Ap03ActivationManager;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnGetActivationSnCodeListener(Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnGetActivationSnCodeListener;)V

    .line 54
    iget-object v0, p0, Lcom/powervision/home/utils/Ap03ActivationManager;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyonGetActivationHwCodeListener(Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyonGetActivationHwCodeListener;)V

    .line 55
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeRoboticArmListener(Lcom/powervision/sdk/callback/Ap03RoboticArmListener;)V

    return-void
.end method

.method public onRoboticArmStateChange(ZZZ)V
    .locals 0

    return-void
.end method

.method public onRoboticArmStateGet()V
    .locals 1

    const/4 v0, 0x1

    .line 170
    iput-boolean v0, p0, Lcom/powervision/home/utils/Ap03ActivationManager;->isConnectDevice:Z

    return-void
.end method

.method public setActivationLight()I
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/powervision/home/utils/Ap03ActivationManager;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const-string v1, "SYS_ACTIVE_EN"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadIntParameter(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setActivationResultListener(Lcom/powervision/home/utils/Ap03ActivationManager$ActivationResultListener;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/powervision/home/utils/Ap03ActivationManager;->activationResultListener:Lcom/powervision/home/utils/Ap03ActivationManager$ActivationResultListener;

    return-void
.end method

.method public setAp03Activation()I
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/powervision/home/utils/Ap03ActivationManager;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->enableActivation()I

    move-result v0

    return v0
.end method

.method public setEnableActivationResultFailed()V
    .locals 2

    const-string v0, "Ap03ActivationManager"

    const-string v1, "setEnableActivationResultFailed"

    .line 111
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/powervision/home/utils/Ap03ActivationManager;->activationResultListener:Lcom/powervision/home/utils/Ap03ActivationManager$ActivationResultListener;

    if-eqz v0, :cond_0

    .line 113
    invoke-interface {v0}, Lcom/powervision/home/utils/Ap03ActivationManager$ActivationResultListener;->onActivationFailed()V

    :cond_0
    return-void
.end method

.method public setEnableActivationResultSuccess()V
    .locals 2

    const-string v0, "Ap03ActivationManager"

    const-string v1, "setEnableActivationResultSuccess"

    .line 103
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/powervision/home/utils/Ap03ActivationManager;->activationResultListener:Lcom/powervision/home/utils/Ap03ActivationManager$ActivationResultListener;

    if-eqz v0, :cond_0

    .line 105
    invoke-interface {v0}, Lcom/powervision/home/utils/Ap03ActivationManager$ActivationResultListener;->onActivationSuccess()V

    :cond_0
    return-void
.end method

.method public setEnableActivationResultTimeout()V
    .locals 2

    const-string v0, "Ap03ActivationManager"

    const-string v1, "setEnableActivationResultTimeout"

    .line 119
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/powervision/home/utils/Ap03ActivationManager;->activationResultListener:Lcom/powervision/home/utils/Ap03ActivationManager$ActivationResultListener;

    if-eqz v0, :cond_0

    .line 121
    invoke-interface {v0}, Lcom/powervision/home/utils/Ap03ActivationManager$ActivationResultListener;->onActivationTimeout()V

    :cond_0
    return-void
.end method

.method public setGetActivationCodeResultSuccess(Ljava/lang/String;)V
    .locals 2

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setGetActivationCodeResultSuccess"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "huangActivation"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/powervision/home/utils/Ap03ActivationManager;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const-string v1, "AP03_ACTIVATION_CODE"

    invoke-virtual {v0, v1, p1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setGetActivationCodeResultTimeout()V
    .locals 2

    const-string v0, "Ap03ActivationManager"

    const-string v1, "setGetActivationCodeResultTimeout"

    .line 134
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setGetHwCodeResultSuccess(Ljava/lang/String;)V
    .locals 2

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setGetHwCodeResultSuccess"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ap03ActivationManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/powervision/home/utils/Ap03ActivationManager;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const-string v1, "AP03_ACTIVATION_HW_CODE"

    invoke-virtual {v0, v1, p1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setGetHwCodeResultTimeout()V
    .locals 2

    const-string v0, "Ap03ActivationManager"

    const-string v1, "setGetHwCodeResultTimeout"

    .line 158
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setGetPSNCodeResultSuccess(Ljava/lang/String;)V
    .locals 2

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setGetPSNCodeResultSuccess  sncode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ap03ActivationManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/powervision/home/utils/Ap03ActivationManager;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const-string v1, "AP03_ACTIVATION_PSN_CODE"

    invoke-virtual {v0, v1, p1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/base/utils/FlightLogUtil;->setPsnCode(Ljava/lang/String;)V

    return-void
.end method

.method public setGetPSNCodeResultTimeout()V
    .locals 2

    const-string v0, "Ap03ActivationManager"

    const-string v1, "setGetPSNCodeResultTimeout"

    .line 147
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public uploadActivationCode()V
    .locals 5

    .line 84
    iget-object v0, p0, Lcom/powervision/home/utils/Ap03ActivationManager;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const-string v1, "AP03_ACTIVATION_CODE"

    invoke-virtual {v0, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/powervision/home/utils/Ap03ActivationManager;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const-string v2, "AP03_ACTIVATION_PSN_CODE"

    invoke-virtual {v1, v2}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    iget-object v2, p0, Lcom/powervision/home/utils/Ap03ActivationManager;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    invoke-virtual {v2}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getUserInfo()Lcom/powervision/base/model/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/powervision/base/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-static {}, Lcom/powervision/home/api/ActivationAPIManager;->getInstance()Lcom/powervision/home/api/ActivationAPIManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/powervision/home/api/ActivationAPIManager;->getActivationApi()Lcom/powervision/home/api/ActivationApi;

    move-result-object v3

    invoke-static {}, Lcom/powervision/localhttp/utils/StringUtils;->getDate_()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0, v1, v2}, Lcom/powervision/home/api/ActivationApi;->uploadActivationCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/net/observable/ObservableLoader;->getObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/powervision/home/utils/Ap03ActivationManager$1;

    invoke-direct {v1, p0}, Lcom/powervision/home/utils/Ap03ActivationManager$1;-><init>(Lcom/powervision/home/utils/Ap03ActivationManager;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
