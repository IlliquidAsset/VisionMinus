.class public Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;
.super Ljava/lang/Object;
.source "ShipMainPresenter.java"

# interfaces
.implements Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainTask$Presenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter$SetShipSeekerIpAddressRunnable;
    }
.end annotation


# static fields
.field public static final DAEMON_TIME:I = 0x4

.field private static final DELAY_0:I = 0x0

.field private static final DELAY_6:I = 0x6

.field private static final DELAY_8:I = 0x8

.field private static final TAG:Ljava/lang/String; = "ShipMainPresenter"


# instance fields
.field private channelListener:Lcom/powervision/gcs/camera/w4/IChannelListener;

.field private commonCallback:Lorg/xutils/common/Callback$CommonCallback;

.field connectListener:Lcom/powervision/natives/connect/PVConnectHelper$OnBodyConnectListener;

.field private helper:Lcom/powervision/gcs/camera/w4/CameraHelper;

.field private mOldRemoteSurplus:I

.field private mView:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainTask$View;

.field private pvw4RequestListenerHelper:Lcom/powervision/localhttp/PVW4RequestListenerHelper;

.field pvw4RequestSimpleListener:Lcom/powervision/localhttp/PVW4RequestSimpleListener;

.field private setSeekerIpAddressSucceed:Z

.field private setShipSeekerIpAddressRunnable:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter$SetShipSeekerIpAddressRunnable;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainTask$View;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Lcom/powervision/gcs/camera/w4/CameraHelper;->getInstance()Lcom/powervision/gcs/camera/w4/CameraHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->helper:Lcom/powervision/gcs/camera/w4/CameraHelper;

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->setSeekerIpAddressSucceed:Z

    .line 111
    new-instance v0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter$1;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter$1;-><init>(Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->connectListener:Lcom/powervision/natives/connect/PVConnectHelper$OnBodyConnectListener;

    .line 342
    new-instance v0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter$2;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter$2;-><init>(Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->channelListener:Lcom/powervision/gcs/camera/w4/IChannelListener;

    .line 349
    new-instance v0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter$3;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter$3;-><init>(Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->commonCallback:Lorg/xutils/common/Callback$CommonCallback;

    .line 483
    new-instance v0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter$4;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter$4;-><init>(Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->pvw4RequestSimpleListener:Lcom/powervision/localhttp/PVW4RequestSimpleListener;

    .line 62
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->mView:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainTask$View;

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->handleChannelEvent(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->setSeekerIpAddressSucceed:Z

    return p0
.end method

.method static synthetic access$300(Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->setShipSeekerUSBIp()V

    return-void
.end method

.method static synthetic access$400(Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->setShipSeekerWifiIp()V

    return-void
.end method

.method static synthetic access$500(Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;)Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainTask$View;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->mView:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainTask$View;

    return-object p0
.end method

.method private handleChannelEvent(I)V
    .locals 3

    const/4 v0, 0x5

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/16 v0, 0x12

    const/4 v2, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "lzqSonar"

    const-string v1, "\u5bfb\u9c7c\u5668\u914d\u5bf9\u6210\u529f"

    .line 395
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iput-boolean v2, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->setSeekerIpAddressSucceed:Z

    .line 397
    invoke-static {}, Lcom/powervision/base/utils/LoopingManager;->get()Lcom/powervision/base/utils/LoopingManager;

    move-result-object v0

    const-string v1, "SeekerSet"

    invoke-virtual {v0, v1}, Lcom/powervision/base/utils/LoopingManager;->removeWork(Ljava/lang/String;)V

    .line 399
    invoke-static {}, Lcom/powervision/gcs/config/SonarSettingCmd;->getInstance()Lcom/powervision/gcs/config/SonarSettingCmd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/config/SonarSettingCmd;->connect()V

    goto :goto_0

    :cond_1
    const-string v0, "lzqWork"

    const-string v2, "\u5bfb\u9c7c\u5668\u914d\u5bf9\u5931\u8d25"

    .line 391
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iput-boolean v1, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->setSeekerIpAddressSucceed:Z

    goto :goto_0

    .line 404
    :cond_2
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->mView:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainTask$View;

    invoke-interface {v0, v2}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainTask$View;->updateSDCardState(Z)V

    goto :goto_0

    .line 388
    :cond_3
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->mView:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainTask$View;

    invoke-interface {v0, v1}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainTask$View;->updateSDCardState(Z)V

    .line 407
    :goto_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->mView:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainTask$View;

    invoke-interface {v0, p1}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainTask$View;->handleChannelEvent(I)V

    return-void
.end method

.method private initAttitudeAndGroundSpeedChangedModel(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    .line 261
    invoke-static {}, Lcom/powervision/gcs/view/ship/shipcallback/AttitudeAndGroundSpeedChangedModel;->get()Lcom/powervision/gcs/view/ship/shipcallback/AttitudeAndGroundSpeedChangedModel;

    move-result-object v0

    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/-$$Lambda$ShipMainPresenter$oso5NyE3S2nUs_sboHt3kAp35xE;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/-$$Lambda$ShipMainPresenter$oso5NyE3S2nUs_sboHt3kAp35xE;-><init>(Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcom/powervision/gcs/view/ship/shipcallback/AttitudeAndGroundSpeedChangedModel;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private initCameraSocket()V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->helper:Lcom/powervision/gcs/camera/w4/CameraHelper;

    invoke-virtual {v0}, Lcom/powervision/gcs/camera/w4/CameraHelper;->startToConnect()V

    return-void
.end method

.method private initGpsRawIntListener(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    .line 236
    invoke-static {}, Lcom/powervision/gcs/view/ship/shipcallback/GpsRawIntModel;->get()Lcom/powervision/gcs/view/ship/shipcallback/GpsRawIntModel;

    move-result-object v0

    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/-$$Lambda$ShipMainPresenter$A4mZ0XqhnrdvfGtjeW5IVwxNQSw;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/-$$Lambda$ShipMainPresenter$A4mZ0XqhnrdvfGtjeW5IVwxNQSw;-><init>(Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcom/powervision/gcs/view/ship/shipcallback/GpsRawIntModel;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private initHomePositionListener(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    .line 250
    invoke-static {}, Lcom/powervision/gcs/view/ship/shipcallback/HomePositionModel;->get()Lcom/powervision/gcs/view/ship/shipcallback/HomePositionModel;

    move-result-object v0

    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/-$$Lambda$ShipMainPresenter$zhV94_y_RKpArgRlbFSuB2xz9cw;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/-$$Lambda$ShipMainPresenter$zhV94_y_RKpArgRlbFSuB2xz9cw;-><init>(Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcom/powervision/gcs/view/ship/shipcallback/HomePositionModel;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private initLightControlListener(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    const-string v0, "ShipMainPresenter"

    const-string v1, "initLightControlListener: "

    .line 318
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-static {}, Lcom/powervision/natives/model/LightControlModel;->get()Lcom/powervision/natives/model/LightControlModel;

    move-result-object v0

    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/-$$Lambda$ShipMainPresenter$F6M5R3nweNiDJqL_SJ9sZaVNQgE;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/-$$Lambda$ShipMainPresenter$F6M5R3nweNiDJqL_SJ9sZaVNQgE;-><init>(Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcom/powervision/natives/model/LightControlModel;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private initRemoteConnectedListener(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    .line 327
    invoke-static {}, Lcom/powervision/gcs/utils/W4RemoteConnectUtils;->isRemoteConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->mView:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainTask$View;

    invoke-interface {v0}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainTask$View;->onW4RemoteConnected()V

    goto :goto_0

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->mView:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainTask$View;

    invoke-interface {v0}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainTask$View;->onW4RemoteDisconnect()V

    .line 332
    :goto_0
    invoke-static {}, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->get()Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;

    move-result-object v0

    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/-$$Lambda$ShipMainPresenter$L3m8gV96JRW_Obr9mQtAasBhyW4;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/-$$Lambda$ShipMainPresenter$L3m8gV96JRW_Obr9mQtAasBhyW4;-><init>(Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private setCameraTimeGci()V
    .locals 2

    .line 473
    invoke-static {}, Lcom/powervision/localhttp/MessageDispatchUtils;->get()Lcom/powervision/localhttp/MessageDispatchUtils;

    move-result-object v0

    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->setCameraTime()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/MessageDispatchUtils;->addNewMessage(Lcom/powervision/localhttp/CmdModel;)V

    return-void
.end method

.method private setShipSeekerUSBIp()V
    .locals 3

    .line 458
    invoke-static {}, Lcom/powervision/localhttp/MessageDispatchUtils;->get()Lcom/powervision/localhttp/MessageDispatchUtils;

    move-result-object v0

    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->setSeekerUSBIp()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/powervision/localhttp/CmdModel$Builder;->retryTimes(I)Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/MessageDispatchUtils;->addOnceMessage(Lcom/powervision/localhttp/CmdModel;)V

    return-void
.end method

.method private setShipSeekerWifiIp()V
    .locals 3

    .line 466
    invoke-static {}, Lcom/powervision/localhttp/MessageDispatchUtils;->get()Lcom/powervision/localhttp/MessageDispatchUtils;

    move-result-object v0

    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->setSeekerWifiIp()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/powervision/localhttp/CmdModel$Builder;->retryTimes(I)Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/MessageDispatchUtils;->addOnceMessage(Lcom/powervision/localhttp/CmdModel;)V

    return-void
.end method

.method private startSetShipSeekerIpAddress(I)V
    .locals 3

    .line 416
    iget-boolean v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->setSeekerIpAddressSucceed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "lzqWork"

    const-string v1, "\u5bfb\u9c7c\u5668\u8bbe\u7f6eIP"

    .line 419
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-static {}, Lcom/powervision/base/utils/LoopingManager;->get()Lcom/powervision/base/utils/LoopingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->setShipSeekerIpAddressRunnable:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter$SetShipSeekerIpAddressRunnable;

    const-string v2, "SeekerSet"

    invoke-virtual {v0, v2, v1, p1}, Lcom/powervision/base/utils/LoopingManager;->addAWork(Ljava/lang/String;Ljava/lang/Runnable;I)V

    return-void
.end method

.method private stopSetShipSeekerIpAddress()V
    .locals 2

    .line 428
    invoke-static {}, Lcom/powervision/base/utils/LoopingManager;->get()Lcom/powervision/base/utils/LoopingManager;

    move-result-object v0

    const-string v1, "SeekerSet"

    invoke-virtual {v0, v1}, Lcom/powervision/base/utils/LoopingManager;->removeWork(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getSDCardState()V
    .locals 2

    .line 480
    invoke-static {}, Lcom/powervision/localhttp/MessageDispatchUtils;->get()Lcom/powervision/localhttp/MessageDispatchUtils;

    move-result-object v0

    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->getSdState()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/MessageDispatchUtils;->addNewMessage(Lcom/powervision/localhttp/CmdModel;)V

    return-void
.end method

.method public synthetic lambda$initAttitudeAndGroundSpeedChangedModel$2$ShipMainPresenter(Lcom/powervision/natives/param/Attitude;)V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->mView:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainTask$View;

    invoke-interface {v0, p1}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainTask$View;->updateAttitude(Lcom/powervision/natives/param/Attitude;)V

    return-void
.end method

.method public synthetic lambda$initGpsRawIntListener$0$ShipMainPresenter(Lcom/powervision/natives/param/GpsRawIntParam;)V
    .locals 1

    .line 237
    invoke-static {p1}, Lcom/powervision/base/utils/ObjectUtils;->nonNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->mView:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainTask$View;

    invoke-interface {v0, p1}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainTask$View;->updateGPSRawInt(Lcom/powervision/natives/param/GpsRawIntParam;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initHomePositionListener$1$ShipMainPresenter(Lcom/powervision/natives/param/HomePositionNotifyParam;)V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->mView:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainTask$View;

    invoke-interface {v0, p1}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainTask$View;->updateHomePosition(Lcom/powervision/natives/param/HomePositionNotifyParam;)V

    return-void
.end method

.method public synthetic lambda$initLightControlListener$3$ShipMainPresenter(Ljava/lang/Integer;)V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->mView:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainTask$View;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainTask$View;->updateLightControl(I)V

    return-void
.end method

.method public synthetic lambda$initRemoteConnectedListener$4$ShipMainPresenter(Ljava/lang/Boolean;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 333
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 334
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->mView:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainTask$View;

    invoke-interface {p1}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainTask$View;->onW4RemoteConnected()V

    goto :goto_0

    .line 336
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->mView:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainTask$View;

    invoke-interface {p1}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainTask$View;->onW4RemoteDisconnect()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    .line 70
    invoke-static {}, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->get()Lcom/powervision/localhttp/PVW4RequestListenerHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->pvw4RequestListenerHelper:Lcom/powervision/localhttp/PVW4RequestListenerHelper;

    .line 71
    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->pvw4RequestSimpleListener:Lcom/powervision/localhttp/PVW4RequestSimpleListener;

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->addListener(Lcom/powervision/localhttp/PVW4RequestListener;)V

    .line 73
    new-instance v0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter$SetShipSeekerIpAddressRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter$SetShipSeekerIpAddressRunnable;-><init>(Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter$1;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->setShipSeekerIpAddressRunnable:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter$SetShipSeekerIpAddressRunnable;

    .line 75
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->helper:Lcom/powervision/gcs/camera/w4/CameraHelper;

    invoke-virtual {v0}, Lcom/powervision/gcs/camera/w4/CameraHelper;->setIp()V

    .line 76
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->helper:Lcom/powervision/gcs/camera/w4/CameraHelper;

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->channelListener:Lcom/powervision/gcs/camera/w4/IChannelListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/camera/w4/CameraHelper;->addChannelListener(Lcom/powervision/gcs/camera/w4/IChannelListener;)V

    .line 77
    invoke-static {}, Lcom/powervision/gcs/usb2/CameraInfoUsbManager;->get()Lcom/powervision/gcs/usb2/CameraInfoUsbManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->commonCallback:Lorg/xutils/common/Callback$CommonCallback;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/CameraInfoUsbManager;->setDataReceiveCallback(Lorg/xutils/common/Callback$CommonCallback;)V

    .line 78
    invoke-direct {p0, p1}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->initLightControlListener(Landroidx/lifecycle/LifecycleOwner;)V

    .line 79
    invoke-direct {p0, p1}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->initRemoteConnectedListener(Landroidx/lifecycle/LifecycleOwner;)V

    .line 80
    invoke-direct {p0, p1}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->initGpsRawIntListener(Landroidx/lifecycle/LifecycleOwner;)V

    .line 81
    invoke-direct {p0, p1}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->initHomePositionListener(Landroidx/lifecycle/LifecycleOwner;)V

    .line 82
    invoke-direct {p0, p1}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->initAttitudeAndGroundSpeedChangedModel(Landroidx/lifecycle/LifecycleOwner;)V

    .line 84
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isShipConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->initCameraSocket()V

    :cond_0
    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->pvw4RequestListenerHelper:Lcom/powervision/localhttp/PVW4RequestListenerHelper;

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->pvw4RequestSimpleListener:Lcom/powervision/localhttp/PVW4RequestSimpleListener;

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->removeListener(Lcom/powervision/localhttp/PVW4RequestListener;)V

    .line 219
    invoke-direct {p0}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->stopSetShipSeekerIpAddress()V

    .line 220
    invoke-static {}, Lcom/powervision/natives/model/LightControlModel;->get()Lcom/powervision/natives/model/LightControlModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/natives/model/LightControlModel;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    .line 221
    invoke-static {}, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->get()Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    .line 224
    invoke-static {}, Lcom/powervision/gcs/usb2/CameraInfoUsbManager;->get()Lcom/powervision/gcs/usb2/CameraInfoUsbManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/usb2/CameraInfoUsbManager;->setDataReceiveCallback(Lorg/xutils/common/Callback$CommonCallback;)V

    .line 225
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->helper:Lcom/powervision/gcs/camera/w4/CameraHelper;

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->channelListener:Lcom/powervision/gcs/camera/w4/IChannelListener;

    invoke-virtual {p1, v1}, Lcom/powervision/gcs/camera/w4/CameraHelper;->removeChannelListener(Lcom/powervision/gcs/camera/w4/IChannelListener;)V

    .line 226
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->helper:Lcom/powervision/gcs/camera/w4/CameraHelper;

    invoke-virtual {p1}, Lcom/powervision/gcs/camera/w4/CameraHelper;->reset()V

    .line 227
    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->helper:Lcom/powervision/gcs/camera/w4/CameraHelper;

    return-void
.end method

.method public onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 206
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->connectListener:Lcom/powervision/natives/connect/PVConnectHelper$OnBodyConnectListener;

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->removeConnectListener(Lcom/powervision/natives/connect/PVConnectHelper$OnBodyConnectListener;)V

    return-void
.end method

.method public onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    .line 92
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const-string p1, "lzqMsg"

    const-string v1, "onStart goToUsb1"

    .line 94
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object p1

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->connectListener:Lcom/powervision/natives/connect/PVConnectHelper$OnBodyConnectListener;

    invoke-virtual {p1, v1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->addConnectListener(Lcom/powervision/natives/connect/PVConnectHelper$OnBodyConnectListener;)V

    .line 101
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isShipConnected()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x6

    .line 102
    invoke-direct {p0, p1}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->startSetShipSeekerIpAddress(I)V

    .line 104
    new-instance p1, Lcom/powervision/gcs/model/event/ConnectShipStatusEvent;

    invoke-direct {p1, v0}, Lcom/powervision/gcs/model/event/ConnectShipStatusEvent;-><init>(Z)V

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->setDeviceConnectMode(Lcom/powervision/gcs/model/event/ConnectShipStatusEvent;)V

    :cond_1
    return-void
.end method

.method public setCameraTime()V
    .locals 0

    .line 285
    invoke-direct {p0}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->setCameraTimeGci()V

    return-void
.end method

.method public setDeviceConnectMode(Lcom/powervision/gcs/model/event/ConnectShipStatusEvent;)V
    .locals 0

    .line 307
    iget-boolean p1, p1, Lcom/powervision/gcs/model/event/ConnectShipStatusEvent;->isConnected:Z

    if-eqz p1, :cond_0

    .line 308
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->mView:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainTask$View;

    invoke-interface {p1}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainTask$View;->onDolphinConnected()V

    .line 309
    invoke-direct {p0}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->initCameraSocket()V

    goto :goto_0

    .line 311
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->mView:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainTask$View;

    invoke-interface {p1}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainTask$View;->onDolphinDisconnected()V

    .line 312
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->helper:Lcom/powervision/gcs/camera/w4/CameraHelper;

    invoke-virtual {p1}, Lcom/powervision/gcs/camera/w4/CameraHelper;->reset()V

    :goto_0
    return-void
.end method

.method public switchLightLevel(I)V
    .locals 2

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "controllight "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqlight"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-static {p1}, Lcom/powervision/natives/PVSDK_W4_API;->controlLight(I)V

    return-void
.end method

.method public toActivityWithOutFinish()V
    .locals 2

    .line 273
    invoke-static {}, Lcom/powervision/base/utils/LoopingManager;->get()Lcom/powervision/base/utils/LoopingManager;

    move-result-object v0

    const-string v1, "SeekerSet"

    invoke-virtual {v0, v1}, Lcom/powervision/base/utils/LoopingManager;->removeWork(Ljava/lang/String;)V

    return-void
.end method
