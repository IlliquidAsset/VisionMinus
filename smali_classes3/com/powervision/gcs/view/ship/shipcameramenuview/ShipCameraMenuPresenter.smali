.class public Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;
.super Ljava/lang/Object;
.source "ShipCameraMenuPresenter.java"

# interfaces
.implements Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$Presenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$HeartbeatTimeoutRunnable;,
        Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$HeartbeatRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShipCameraMenuPresenter"


# instance fields
.field private helper:Lcom/powervision/gcs/camera/w4/CameraHelper;

.field private mHandler:Landroid/os/Handler;

.field private mHeartbeatRunnable:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$HeartbeatRunnable;

.field private mHeartbeatTimeoutRunnable:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$HeartbeatTimeoutRunnable;

.field private mView:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;

.field private onKeyBResult:Lcom/powervision/natives/callback/RemoteControlCallback$onKey_B_Result;

.field private pvw4RequestListenerHelper:Lcom/powervision/localhttp/PVW4RequestListenerHelper;

.field private pvw4RequestSimpleListener:Lcom/powervision/localhttp/PVW4RequestSimpleListener;

.field private signalObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Lcom/powervision/gcs/camera/w4/CameraHelper;->getInstance()Lcom/powervision/gcs/camera/w4/CameraHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->helper:Lcom/powervision/gcs/camera/w4/CameraHelper;

    .line 40
    invoke-static {}, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->get()Lcom/powervision/localhttp/PVW4RequestListenerHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->pvw4RequestListenerHelper:Lcom/powervision/localhttp/PVW4RequestListenerHelper;

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->mHandler:Landroid/os/Handler;

    .line 44
    new-instance v0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$HeartbeatRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$HeartbeatRunnable;-><init>(Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$1;)V

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->mHeartbeatRunnable:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$HeartbeatRunnable;

    .line 45
    new-instance v0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$HeartbeatTimeoutRunnable;

    invoke-direct {v0, p0, v1}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$HeartbeatTimeoutRunnable;-><init>(Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$1;)V

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->mHeartbeatTimeoutRunnable:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$HeartbeatTimeoutRunnable;

    .line 193
    new-instance v0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$1;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$1;-><init>(Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;)V

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->signalObserver:Landroidx/lifecycle/Observer;

    .line 202
    new-instance v0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$2;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$2;-><init>(Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;)V

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->onKeyBResult:Lcom/powervision/natives/callback/RemoteControlCallback$onKey_B_Result;

    .line 224
    new-instance v0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$3;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$3;-><init>(Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;)V

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->pvw4RequestSimpleListener:Lcom/powervision/localhttp/PVW4RequestSimpleListener;

    .line 48
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->mView:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;

    return-void
.end method

.method static synthetic access$200(Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;)Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->mView:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;)Lcom/powervision/gcs/camera/w4/CameraHelper;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->helper:Lcom/powervision/gcs/camera/w4/CameraHelper;

    return-object p0
.end method

.method private setNormalRecordMode()V
    .locals 2

    .line 123
    invoke-static {}, Lcom/powervision/localhttp/MessageDispatchUtils;->get()Lcom/powervision/localhttp/MessageDispatchUtils;

    move-result-object v0

    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->setWorkModeCommonRecord()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/MessageDispatchUtils;->addNewMessage(Lcom/powervision/localhttp/CmdModel;)V

    return-void
.end method

.method private setSlowRecordMode()V
    .locals 2

    .line 130
    invoke-static {}, Lcom/powervision/localhttp/MessageDispatchUtils;->get()Lcom/powervision/localhttp/MessageDispatchUtils;

    move-result-object v0

    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->setWorkModeSlowRecord()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/MessageDispatchUtils;->addNewMessage(Lcom/powervision/localhttp/CmdModel;)V

    return-void
.end method

.method private setTakePhotoMulti()V
    .locals 2

    .line 170
    invoke-static {}, Lcom/powervision/localhttp/MessageDispatchUtils;->get()Lcom/powervision/localhttp/MessageDispatchUtils;

    move-result-object v0

    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->setWorkModeMultiPicture()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/MessageDispatchUtils;->addNewMessage(Lcom/powervision/localhttp/CmdModel;)V

    return-void
.end method

.method private setTakePhotoNormal()V
    .locals 2

    .line 163
    invoke-static {}, Lcom/powervision/localhttp/MessageDispatchUtils;->get()Lcom/powervision/localhttp/MessageDispatchUtils;

    move-result-object v0

    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->setWorkModeSinglePicture()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/MessageDispatchUtils;->addNewMessage(Lcom/powervision/localhttp/CmdModel;)V

    return-void
.end method


# virtual methods
.method public getShootingMode()V
    .locals 2

    .line 87
    invoke-static {}, Lcom/powervision/localhttp/MessageDispatchUtils;->get()Lcom/powervision/localhttp/MessageDispatchUtils;

    move-result-object v0

    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->getWorkMode()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/MessageDispatchUtils;->addNewMessage(Lcom/powervision/localhttp/CmdModel;)V

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    .line 55
    invoke-static {}, Lcom/powervision/gcs/view/ship/shipcallback/RemoteOperateModel;->get()Lcom/powervision/gcs/view/ship/shipcallback/RemoteOperateModel;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->signalObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, p1, v1}, Lcom/powervision/gcs/view/ship/shipcallback/RemoteOperateModel;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 56
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->pvw4RequestListenerHelper:Lcom/powervision/localhttp/PVW4RequestListenerHelper;

    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->pvw4RequestSimpleListener:Lcom/powervision/localhttp/PVW4RequestSimpleListener;

    invoke-virtual {p1, v0}, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->addListener(Lcom/powervision/localhttp/PVW4RequestListener;)V

    .line 57
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->onKeyBResult:Lcom/powervision/natives/callback/RemoteControlCallback$onKey_B_Result;

    invoke-virtual {p1, v0}, Lcom/powervision/natives/PVSDK_W4_API;->setOnKey_b_result(Lcom/powervision/natives/callback/RemoteControlCallback$onKey_B_Result;)V

    .line 59
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->startCheckHeartbeat()V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 74
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->mHeartbeatTimeoutRunnable:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$HeartbeatTimeoutRunnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 75
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->mHeartbeatRunnable:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$HeartbeatRunnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 78
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->pvw4RequestListenerHelper:Lcom/powervision/localhttp/PVW4RequestListenerHelper;

    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->pvw4RequestSimpleListener:Lcom/powervision/localhttp/PVW4RequestSimpleListener;

    invoke-virtual {p1, v0}, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->removeListener(Lcom/powervision/localhttp/PVW4RequestListener;)V

    .line 79
    invoke-static {}, Lcom/powervision/gcs/view/ship/shipcallback/RemoteOperateModel;->get()Lcom/powervision/gcs/view/ship/shipcallback/RemoteOperateModel;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->signalObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/ship/shipcallback/RemoteOperateModel;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 80
    invoke-static {}, Lcom/powervision/gcs/view/ship/shipcallback/RemoteOperateModel;->get()Lcom/powervision/gcs/view/ship/shipcallback/RemoteOperateModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/view/ship/shipcallback/RemoteOperateModel;->clear()V

    .line 81
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/powervision/natives/PVSDK_W4_API;->setOnKey_b_result(Lcom/powervision/natives/callback/RemoteControlCallback$onKey_B_Result;)V

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

.method public setRecordMode()V
    .locals 2

    .line 107
    invoke-static {}, Lcom/powervision/gcs/utils/SpStore;->getPvw4CameraLastRecordMode()I

    move-result v0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_1

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->setSlowRecordMode()V

    .line 114
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->mView:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;

    invoke-interface {v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;->startSwitchMode()V

    goto :goto_0

    .line 109
    :cond_1
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->setNormalRecordMode()V

    .line 110
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->mView:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;

    invoke-interface {v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;->startSwitchMode()V

    :goto_0
    return-void
.end method

.method public setTakePhotoMode()V
    .locals 2

    .line 135
    invoke-static {}, Lcom/powervision/gcs/utils/SpStore;->getPvw4CameraLastCameraMode()I

    move-result v0

    if-eqz v0, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->setTakePhotoMulti()V

    .line 142
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->mView:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;

    invoke-interface {v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;->startSwitchMode()V

    goto :goto_0

    .line 137
    :cond_1
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->setTakePhotoNormal()V

    .line 138
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->mView:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;

    invoke-interface {v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;->startSwitchMode()V

    :goto_0
    return-void
.end method

.method public startCheckHeartbeat()V
    .locals 4

    .line 154
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->mHeartbeatTimeoutRunnable:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$HeartbeatTimeoutRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 155
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->mHeartbeatRunnable:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$HeartbeatRunnable;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 156
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;->mHeartbeatTimeoutRunnable:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter$HeartbeatTimeoutRunnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public startRecord()V
    .locals 3

    .line 97
    invoke-static {}, Lcom/powervision/localhttp/MessageDispatchUtils;->get()Lcom/powervision/localhttp/MessageDispatchUtils;

    move-result-object v0

    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->startRecord()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/powervision/localhttp/CmdModel$Builder;->retryTimes(I)Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/MessageDispatchUtils;->addNewMessage(Lcom/powervision/localhttp/CmdModel;)V

    return-void
.end method

.method public stopRecord()V
    .locals 2

    .line 102
    invoke-static {}, Lcom/powervision/localhttp/MessageDispatchUtils;->get()Lcom/powervision/localhttp/MessageDispatchUtils;

    move-result-object v0

    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->stopRecord()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/MessageDispatchUtils;->addNewMessage(Lcom/powervision/localhttp/CmdModel;)V

    return-void
.end method

.method public takePhoto()V
    .locals 3

    .line 92
    invoke-static {}, Lcom/powervision/localhttp/MessageDispatchUtils;->get()Lcom/powervision/localhttp/MessageDispatchUtils;

    move-result-object v0

    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->takePicture()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/powervision/localhttp/CmdModel$Builder;->retryTimes(I)Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/MessageDispatchUtils;->addNewMessage(Lcom/powervision/localhttp/CmdModel;)V

    return-void
.end method
