.class public Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;
.super Ljava/lang/Object;
.source "CameraVideoSettingPresenter.java"

# interfaces
.implements Lcom/powervision/gcs/ui/fgt/ship/task/CameraVideoSettingTask$Presenter;


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraVideoSettingPr"

.field private static final VIDEO_MODE_NORMAL:I = 0x0

.field private static final VIDEO_MODE_SLOW:I = 0x1


# instance fields
.field private mNormalRatioPosition:I

.field private mSlowRatioPosition:I

.field private mView:Lcom/powervision/gcs/ui/fgt/ship/task/CameraVideoSettingTask$View;

.field private pvw4RequestListenerHelper:Lcom/powervision/localhttp/PVW4RequestListenerHelper;

.field private simpleListener:Lcom/powervision/localhttp/PVW4RequestSimpleListener;

.field private workMode:I


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/task/CameraVideoSettingTask$View;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;->workMode:I

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;->mNormalRatioPosition:I

    .line 37
    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;->mSlowRatioPosition:I

    .line 39
    invoke-static {}, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->get()Lcom/powervision/localhttp/PVW4RequestListenerHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;->pvw4RequestListenerHelper:Lcom/powervision/localhttp/PVW4RequestListenerHelper;

    .line 513
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter$1;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter$1;-><init>(Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;->simpleListener:Lcom/powervision/localhttp/PVW4RequestSimpleListener;

    .line 43
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;->mView:Lcom/powervision/gcs/ui/fgt/ship/task/CameraVideoSettingTask$View;

    return-void
.end method

.method static synthetic access$002(Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;->workMode:I

    return p1
.end method

.method static synthetic access$100(Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;->mNormalRatioPosition:I

    return p0
.end method

.method static synthetic access$200(Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;->mSlowRatioPosition:I

    return p0
.end method

.method static synthetic access$300(Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;)Lcom/powervision/gcs/ui/fgt/ship/task/CameraVideoSettingTask$View;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;->mView:Lcom/powervision/gcs/ui/fgt/ship/task/CameraVideoSettingTask$View;

    return-object p0
.end method


# virtual methods
.method public changeVideoModeNormal()V
    .locals 2

    .line 394
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

.method public changeVideoModeSlow()V
    .locals 2

    .line 420
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

.method public changeVideoNormalModeResolution(I)V
    .locals 2

    if-gez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 444
    :cond_1
    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/localhttp/CmdModel$Builder;->setCommonRecordRatio720P4K30()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object v0

    goto :goto_0

    .line 441
    :cond_2
    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/localhttp/CmdModel$Builder;->setCommonRecordRatio1080P60()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object v0

    goto :goto_0

    .line 438
    :cond_3
    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/localhttp/CmdModel$Builder;->setCommonRecordRatio720P240()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object v0

    goto :goto_0

    .line 435
    :cond_4
    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/localhttp/CmdModel$Builder;->setCommonRecordRatio720P120()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object v0

    .line 448
    :goto_0
    invoke-static {}, Lcom/powervision/localhttp/MessageDispatchUtils;->get()Lcom/powervision/localhttp/MessageDispatchUtils;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/powervision/localhttp/MessageDispatchUtils;->addNewMessage(Lcom/powervision/localhttp/CmdModel;)V

    return-void
.end method

.method public changeVideoSlowModeResolution(I)V
    .locals 2

    if-gez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 487
    :cond_1
    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/localhttp/CmdModel$Builder;->setSlowRecordRatio1080P60()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object v0

    goto :goto_0

    .line 484
    :cond_2
    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/localhttp/CmdModel$Builder;->setSlowRecordRatio720P240()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object v0

    goto :goto_0

    .line 481
    :cond_3
    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/localhttp/CmdModel$Builder;->setSlowRecordRatio720P120()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object v0

    .line 491
    :goto_0
    invoke-static {}, Lcom/powervision/localhttp/MessageDispatchUtils;->get()Lcom/powervision/localhttp/MessageDispatchUtils;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/powervision/localhttp/MessageDispatchUtils;->addNewMessage(Lcom/powervision/localhttp/CmdModel;)V

    return-void
.end method

.method public getShootingMode()V
    .locals 2

    .line 328
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

.method public getVideoNormalResolution()V
    .locals 2

    const-string v0, "CameraVideoSettingPr"

    const-string v1, "getCommonRecordRatio: "

    .line 252
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-static {}, Lcom/powervision/localhttp/MessageDispatchUtils;->get()Lcom/powervision/localhttp/MessageDispatchUtils;

    move-result-object v0

    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->getCommonRecordRatio()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/MessageDispatchUtils;->addNewMessage(Lcom/powervision/localhttp/CmdModel;)V

    return-void
.end method

.method public getVideoSlowResolution()V
    .locals 2

    .line 291
    invoke-static {}, Lcom/powervision/localhttp/MessageDispatchUtils;->get()Lcom/powervision/localhttp/MessageDispatchUtils;

    move-result-object v0

    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->getSlowRecordRatio()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/MessageDispatchUtils;->addNewMessage(Lcom/powervision/localhttp/CmdModel;)V

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 49
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;->pvw4RequestListenerHelper:Lcom/powervision/localhttp/PVW4RequestListenerHelper;

    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;->simpleListener:Lcom/powervision/localhttp/PVW4RequestSimpleListener;

    invoke-virtual {p1, v0}, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->addListener(Lcom/powervision/localhttp/PVW4RequestListener;)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 64
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;->pvw4RequestListenerHelper:Lcom/powervision/localhttp/PVW4RequestListenerHelper;

    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;->simpleListener:Lcom/powervision/localhttp/PVW4RequestSimpleListener;

    invoke-virtual {p1, v0}, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->removeListener(Lcom/powervision/localhttp/PVW4RequestListener;)V

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

.method public quickSetVideoModeNormal(I)V
    .locals 2

    .line 342
    iput p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;->mNormalRatioPosition:I

    .line 343
    iget v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;->workMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 344
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;->changeVideoModeNormal()V

    goto :goto_0

    .line 346
    :cond_0
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;->changeVideoNormalModeResolution(I)V

    :goto_0
    return-void
.end method

.method public quickSetVideoModeNormal(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public quickSetVideoModeSlow(I)V
    .locals 1

    .line 362
    iput p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;->mSlowRatioPosition:I

    .line 363
    iget v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;->workMode:I

    if-nez v0, :cond_0

    .line 364
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;->changeVideoModeSlow()V

    goto :goto_0

    .line 366
    :cond_0
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;->changeVideoSlowModeResolution(I)V

    :goto_0
    return-void
.end method

.method public quickSetVideoModeSlow(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateWorkMode(Lcom/powervision/localhttp/entity/BaseModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Lcom/powervision/localhttp/entity/PVW4AllParams;",
            ">;)V"
        }
    .end annotation

    .line 203
    iget-object p1, p1, Lcom/powervision/localhttp/entity/BaseModel;->Parameter:Ljava/lang/Object;

    check-cast p1, Lcom/powervision/localhttp/entity/PVW4AllParams;

    iget p1, p1, Lcom/powervision/localhttp/entity/PVW4AllParams;->mode:I

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1

    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 211
    iput p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;->workMode:I

    .line 212
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;->getVideoSlowResolution()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 205
    iput p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;->workMode:I

    .line 206
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;->getVideoNormalResolution()V

    :goto_0
    return-void
.end method
