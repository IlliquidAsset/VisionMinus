.class public Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;
.super Ljava/lang/Object;
.source "ShipTopPresenter.java"

# interfaces
.implements Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask$Presenter;
.implements Lcom/powervision/gcs/usb2/SonarConnectState$OnSonarConnectStateChangedListener;
.implements Lcom/powervision/gcs/mina/HandlerEvent$OnSonarBatteryHandlerListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "lzqTop"


# instance fields
.field dl01BSOperListener:Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;

.field lastState:I

.field private mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field private mOldAttitude:Lcom/powervision/natives/param/Attitude;

.field private mOldGpsRawIntParam:Lcom/powervision/natives/param/GpsRawIntParam;

.field mOldRemoteSurplus:I

.field private mOldRssi:I

.field private mOldSateCount:I

.field private mOldSateEph:I

.field private mOldSonarBattery:I

.field private mOldSurplus:I

.field private mOldSystemStatusParam:Lcom/powervision/natives/param/ElecgtricQuantityParam;

.field private mSonarConnectInit:Z

.field private mSonarConnectStatus:Z

.field private mView:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask$View;

.field private runnable:Ljava/lang/Runnable;

.field surplusListener:Lcom/powervision/natives/callback/RemoteControlCallback$Mt03RemoteControlBatterySurplusListener;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask$View;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    const/4 v0, -0x1

    .line 59
    iput v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->mOldSateCount:I

    .line 60
    iput v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->mOldSateEph:I

    .line 62
    iput v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->mOldSurplus:I

    .line 63
    iput v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->mOldRssi:I

    .line 68
    iput v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->mOldSonarBattery:I

    const/4 v0, 0x0

    .line 145
    iput v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->lastState:I

    .line 431
    new-instance v0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter$5;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter$5;-><init>(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;)V

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->runnable:Ljava/lang/Runnable;

    .line 448
    new-instance v0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter$6;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter$6;-><init>(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;)V

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->surplusListener:Lcom/powervision/natives/callback/RemoteControlCallback$Mt03RemoteControlBatterySurplusListener;

    .line 459
    new-instance v0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter$7;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter$7;-><init>(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;)V

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->dl01BSOperListener:Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;

    .line 72
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->mView:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask$View;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;)Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask$View;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->mView:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask$View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;)Lcom/powervision/natives/param/ElecgtricQuantityParam;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->mOldSystemStatusParam:Lcom/powervision/natives/param/ElecgtricQuantityParam;

    return-object p0
.end method

.method static synthetic access$102(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;Lcom/powervision/natives/param/ElecgtricQuantityParam;)Lcom/powervision/natives/param/ElecgtricQuantityParam;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->mOldSystemStatusParam:Lcom/powervision/natives/param/ElecgtricQuantityParam;

    return-object p1
.end method

.method static synthetic access$200(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->mOldSateCount:I

    return p0
.end method

.method static synthetic access$202(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->mOldSateCount:I

    return p1
.end method

.method static synthetic access$300(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->mOldSateEph:I

    return p0
.end method

.method static synthetic access$302(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->mOldSateEph:I

    return p1
.end method

.method static synthetic access$400(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;)Lcom/powervision/natives/param/Attitude;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->mOldAttitude:Lcom/powervision/natives/param/Attitude;

    return-object p0
.end method

.method static synthetic access$402(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;Lcom/powervision/natives/param/Attitude;)Lcom/powervision/natives/param/Attitude;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->mOldAttitude:Lcom/powervision/natives/param/Attitude;

    return-object p1
.end method

.method private checkDolphinBodyVersion()V
    .locals 0

    return-void
.end method

.method private initAttitudeAndGroundSpeedChangedListener(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    .line 322
    invoke-static {}, Lcom/powervision/gcs/view/ship/shipcallback/AttitudeAndGroundSpeedChangedModel;->get()Lcom/powervision/gcs/view/ship/shipcallback/AttitudeAndGroundSpeedChangedModel;

    move-result-object v0

    new-instance v1, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter$4;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter$4;-><init>(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcom/powervision/gcs/view/ship/shipcallback/AttitudeAndGroundSpeedChangedModel;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private initGpsRawIntListener(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    .line 300
    invoke-static {}, Lcom/powervision/gcs/view/ship/shipcallback/GpsRawIntModel;->get()Lcom/powervision/gcs/view/ship/shipcallback/GpsRawIntModel;

    move-result-object v0

    new-instance v1, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter$3;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter$3;-><init>(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcom/powervision/gcs/view/ship/shipcallback/GpsRawIntModel;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private initPhoneWifiSignal()V
    .locals 6

    .line 229
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x5

    invoke-static {v2, v3, v4, v5, v1}, Lio/reactivex/Observable;->interval(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v1

    .line 230
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    .line 231
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter$1;

    invoke-direct {v2, p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter$1;-><init>(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;)V

    .line 232
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeWith(Lio/reactivex/Observer;)Lio/reactivex/Observer;

    move-result-object v1

    check-cast v1, Lio/reactivex/disposables/Disposable;

    .line 229
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private initSystemStatusListener(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    .line 281
    invoke-static {}, Lcom/powervision/gcs/view/ship/shipcallback/ElectricQuantityModel;->get()Lcom/powervision/gcs/view/ship/shipcallback/ElectricQuantityModel;

    move-result-object v0

    new-instance v1, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter$2;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter$2;-><init>(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcom/powervision/gcs/view/ship/shipcallback/ElectricQuantityModel;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private registerSonarBatteryListener()V
    .locals 1

    .line 118
    invoke-static {}, Lcom/powervision/gcs/mina/HandlerEvent;->getInstance()Lcom/powervision/gcs/mina/HandlerEvent;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/gcs/mina/HandlerEvent;->addSonarBatteryListener(Lcom/powervision/gcs/mina/HandlerEvent$OnSonarBatteryHandlerListener;)V

    .line 119
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->startGetSonarPowerQuantity()V

    return-void
.end method

.method private removePhoneWifiSignal()V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method private unregisterSonarBatteryListener()V
    .locals 1

    .line 126
    invoke-static {}, Lcom/powervision/gcs/mina/HandlerEvent;->getInstance()Lcom/powervision/gcs/mina/HandlerEvent;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/gcs/mina/HandlerEvent;->removeSonarBatteryListener(Lcom/powervision/gcs/mina/HandlerEvent$OnSonarBatteryHandlerListener;)V

    .line 127
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->stopGetSonarPowerQuantity()V

    return-void
.end method


# virtual methods
.method public checkFirmwareUpdate()V
    .locals 0

    return-void
.end method

.method public onBatteryHandler(I)V
    .locals 1

    .line 357
    iget v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->mOldSonarBattery:I

    if-eq v0, p1, :cond_0

    .line 358
    iput p1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->mOldSonarBattery:I

    .line 359
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->mView:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask$View;

    invoke-interface {v0, p1}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask$View;->updateSonarBattery(I)V

    :cond_0
    return-void
.end method

.method public onConnectStateChanged(Z)V
    .locals 1

    .line 341
    iget-boolean v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->mSonarConnectInit:Z

    if-nez v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->mView:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask$View;

    invoke-interface {v0, p1}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask$View;->updateSonarConnectStatus(Z)V

    const/4 v0, 0x1

    .line 343
    iput-boolean v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->mSonarConnectInit:Z

    .line 344
    iput-boolean p1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->mSonarConnectStatus:Z

    goto :goto_0

    .line 346
    :cond_0
    iget-boolean v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->mSonarConnectStatus:Z

    if-eq v0, p1, :cond_1

    .line 347
    iput-boolean p1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->mSonarConnectStatus:Z

    .line 348
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->mView:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask$View;

    invoke-interface {v0, p1}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask$View;->updateSonarConnectStatus(Z)V

    .line 352
    :cond_1
    :goto_0
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v0

    iput-boolean p1, v0, Lcom/powervision/base/base/BaseApplication;->isShowSonar:Z

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 78
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->registerSonarConnectListener()V

    .line 79
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->registerSonarBatteryListener()V

    .line 84
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->initSystemStatusListener(Landroidx/lifecycle/LifecycleOwner;)V

    .line 85
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->initGpsRawIntListener(Landroidx/lifecycle/LifecycleOwner;)V

    .line 86
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->initAttitudeAndGroundSpeedChangedListener(Landroidx/lifecycle/LifecycleOwner;)V

    .line 87
    invoke-static {}, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->get()Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->surplusListener:Lcom/powervision/natives/callback/RemoteControlCallback$Mt03RemoteControlBatterySurplusListener;

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->addListener(Lcom/powervision/natives/callback/RemoteControlCallback$Mt03RemoteControlBatterySurplusListener;)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    .line 106
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->unregisterSignalListener()V

    .line 107
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->unregisterSonarConnectListener()V

    .line 108
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->unregisterSonarBatteryListener()V

    .line 109
    invoke-static {}, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->get()Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->surplusListener:Lcom/powervision/natives/callback/RemoteControlCallback$Mt03RemoteControlBatterySurplusListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->removeListener(Lcom/powervision/natives/callback/RemoteControlCallback$Mt03RemoteControlBatterySurplusListener;)V

    .line 111
    invoke-static {}, Lcom/powervision/gcs/view/ship/shipcallback/ElectricQuantityModel;->get()Lcom/powervision/gcs/view/ship/shipcallback/ElectricQuantityModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/view/ship/shipcallback/ElectricQuantityModel;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    return-void
.end method

.method public onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    return-void
.end method

.method public registerSignalListener(Landroidx/fragment/app/FragmentActivity;I)V
    .locals 1

    .line 158
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "registerSignalListener: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "lzqTop"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget p1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->lastState:I

    if-eq p1, p2, :cond_1

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 161
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->removePhoneWifiSignal()V

    .line 162
    invoke-static {}, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->get()Lcom/powervision/gcs/manager/Dl01BsOperHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->dl01BSOperListener:Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->addListener(Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;)V

    .line 163
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->mView:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask$View;

    const/16 v0, -0x3e8

    invoke-interface {p1, v0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask$View;->updateRemoteWifiRssi(I)V

    goto :goto_0

    .line 167
    :cond_0
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->initPhoneWifiSignal()V

    .line 171
    invoke-static {}, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->get()Lcom/powervision/gcs/manager/Dl01BsOperHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->dl01BSOperListener:Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->removeListener(Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;)V

    .line 176
    :cond_1
    :goto_0
    iput p2, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->lastState:I

    return-void
.end method

.method public registerSonarConnectListener()V
    .locals 0

    .line 134
    invoke-static {p0}, Lcom/powervision/gcs/usb2/SonarConnectState;->addOnSonarConnectStateChangedListener(Lcom/powervision/gcs/usb2/SonarConnectState$OnSonarConnectStateChangedListener;)V

    return-void
.end method

.method public startGetSonarPowerQuantity()V
    .locals 4

    .line 428
    invoke-static {}, Lcom/powervision/base/utils/LoopingManager;->get()Lcom/powervision/base/utils/LoopingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->runnable:Ljava/lang/Runnable;

    const-string v2, "SonarPower"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v1, v3}, Lcom/powervision/base/utils/LoopingManager;->addAWork(Ljava/lang/String;Ljava/lang/Runnable;I)V

    return-void
.end method

.method public stopGetSonarPowerQuantity()V
    .locals 2

    .line 424
    invoke-static {}, Lcom/powervision/base/utils/LoopingManager;->get()Lcom/powervision/base/utils/LoopingManager;

    move-result-object v0

    const-string v1, "SonarPower"

    invoke-virtual {v0, v1}, Lcom/powervision/base/utils/LoopingManager;->removeWork(Ljava/lang/String;)V

    return-void
.end method

.method public unregisterSignalListener()V
    .locals 2

    .line 182
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->removePhoneWifiSignal()V

    .line 186
    invoke-static {}, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->get()Lcom/powervision/gcs/manager/Dl01BsOperHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->dl01BSOperListener:Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->removeListener(Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;)V

    return-void
.end method

.method public unregisterSonarConnectListener()V
    .locals 0

    .line 141
    invoke-static {p0}, Lcom/powervision/gcs/usb2/SonarConnectState;->removeOnSonarConnectStateChangedListener(Lcom/powervision/gcs/usb2/SonarConnectState$OnSonarConnectStateChangedListener;)V

    return-void
.end method
