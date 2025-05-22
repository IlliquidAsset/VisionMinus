.class public Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;
.super Ljava/lang/Object;
.source "CameraImageSettingPresenter.java"

# interfaces
.implements Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask$Presenter;


# static fields
.field private static final IMAGE_MODE_MULTI:I = 0x1

.field private static final IMAGE_MODE_NORMAL:I = 0x0

.field public static final PICTURE_SIZE_12M:Ljava/lang/String; = "12M"

.field public static final PICTURE_SIZE_8M:Ljava/lang/String; = "8M"

.field private static final TAG:Ljava/lang/String; = "CameraVideoSettingPr"


# instance fields
.field private mImageSize:Ljava/lang/String;

.field private mMultiRatioPosition:I

.field private mNormalRatioPosition:I

.field private mView:Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask$View;

.field pvw4RequestListenerHelper:Lcom/powervision/localhttp/PVW4RequestListenerHelper;

.field private setMultiModeSpeed:I

.field simpleListener:Lcom/powervision/localhttp/PVW4RequestSimpleListener;

.field private workMode:I


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask$View;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->workMode:I

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->setMultiModeSpeed:I

    .line 47
    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->mNormalRatioPosition:I

    .line 48
    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->mMultiRatioPosition:I

    .line 50
    invoke-static {}, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->get()Lcom/powervision/localhttp/PVW4RequestListenerHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->pvw4RequestListenerHelper:Lcom/powervision/localhttp/PVW4RequestListenerHelper;

    .line 594
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter$1;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter$1;-><init>(Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->simpleListener:Lcom/powervision/localhttp/PVW4RequestSimpleListener;

    .line 54
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->mView:Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask$View;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;)Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask$View;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->mView:Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask$View;

    return-object p0
.end method

.method static synthetic access$102(Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;I)I
    .locals 0

    .line 28
    iput p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->workMode:I

    return p1
.end method

.method static synthetic access$200(Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->getShootingContinuousMode()V

    return-void
.end method

.method static synthetic access$300(Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->getMultiImageSize()V

    return-void
.end method

.method static synthetic access$400(Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->getSingleImageSize()V

    return-void
.end method

.method static synthetic access$502(Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->mImageSize:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->resetImageSize()V

    return-void
.end method

.method static synthetic access$700(Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->setMultiModeSpeed:I

    return p0
.end method

.method static synthetic access$702(Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;I)I
    .locals 0

    .line 28
    iput p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->setMultiModeSpeed:I

    return p1
.end method

.method private getMultiImageSize()V
    .locals 2

    .line 203
    invoke-static {}, Lcom/powervision/localhttp/MessageDispatchUtils;->get()Lcom/powervision/localhttp/MessageDispatchUtils;

    move-result-object v0

    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->getMultiPhotoRatio()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/MessageDispatchUtils;->addNewMessage(Lcom/powervision/localhttp/CmdModel;)V

    return-void
.end method

.method private getShootingContinuousMode()V
    .locals 2

    .line 494
    invoke-static {}, Lcom/powervision/localhttp/MessageDispatchUtils;->get()Lcom/powervision/localhttp/MessageDispatchUtils;

    move-result-object v0

    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->getMultiPhotoSpeed()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/MessageDispatchUtils;->addNewMessage(Lcom/powervision/localhttp/CmdModel;)V

    return-void
.end method

.method private getSingleImageSize()V
    .locals 2

    .line 152
    invoke-static {}, Lcom/powervision/localhttp/MessageDispatchUtils;->get()Lcom/powervision/localhttp/MessageDispatchUtils;

    move-result-object v0

    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->getSinglePictureRatio()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/MessageDispatchUtils;->addNewMessage(Lcom/powervision/localhttp/CmdModel;)V

    return-void
.end method

.method private resetImageSize()V
    .locals 3

    .line 87
    iget v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->workMode:I

    const-string v1, "12M"

    const-string v2, "8M"

    if-nez v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->mImageSize:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->setImageSize8M()V

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->mImageSize:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 91
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->setImageSize12M()V

    goto :goto_0

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->mImageSize:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->setShootingContinuous8MMode()V

    goto :goto_0

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->mImageSize:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 99
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->setShootingContinuous12MMode()V

    :cond_3
    :goto_0
    return-void
.end method

.method private setImageSize12M()V
    .locals 2

    const-string v0, "CameraVideoSettingPr"

    const-string v1, "setImageSize12M: "

    .line 404
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-static {}, Lcom/powervision/localhttp/MessageDispatchUtils;->get()Lcom/powervision/localhttp/MessageDispatchUtils;

    move-result-object v0

    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->setSinglePictureRation12M()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/MessageDispatchUtils;->addNewMessage(Lcom/powervision/localhttp/CmdModel;)V

    return-void
.end method

.method private setImageSize8M()V
    .locals 2

    .line 397
    invoke-static {}, Lcom/powervision/localhttp/MessageDispatchUtils;->get()Lcom/powervision/localhttp/MessageDispatchUtils;

    move-result-object v0

    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->setSinglePictureRation8M()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/MessageDispatchUtils;->addNewMessage(Lcom/powervision/localhttp/CmdModel;)V

    return-void
.end method

.method private setShootingContinuous12MMode()V
    .locals 2

    .line 514
    invoke-static {}, Lcom/powervision/localhttp/MessageDispatchUtils;->get()Lcom/powervision/localhttp/MessageDispatchUtils;

    move-result-object v0

    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->setMultiPhotoRation12M()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/MessageDispatchUtils;->addNewMessage(Lcom/powervision/localhttp/CmdModel;)V

    return-void
.end method

.method private setShootingContinuous8MMode()V
    .locals 2

    .line 533
    invoke-static {}, Lcom/powervision/localhttp/MessageDispatchUtils;->get()Lcom/powervision/localhttp/MessageDispatchUtils;

    move-result-object v0

    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->setMultiPhotoRation8M()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/MessageDispatchUtils;->addNewMessage(Lcom/powervision/localhttp/CmdModel;)V

    return-void
.end method


# virtual methods
.method public getShootingMode()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 60
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->pvw4RequestListenerHelper:Lcom/powervision/localhttp/PVW4RequestListenerHelper;

    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->simpleListener:Lcom/powervision/localhttp/PVW4RequestSimpleListener;

    invoke-virtual {p1, v0}, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->addListener(Lcom/powervision/localhttp/PVW4RequestListener;)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 75
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->pvw4RequestListenerHelper:Lcom/powervision/localhttp/PVW4RequestListenerHelper;

    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->simpleListener:Lcom/powervision/localhttp/PVW4RequestSimpleListener;

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

.method public setImageSize(II)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_2

    .line 332
    iget p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->workMode:I

    if-nez p1, :cond_1

    .line 333
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->setImageSize8M()V

    goto :goto_0

    .line 335
    :cond_1
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->setShootingContinuous8MMode()V

    goto :goto_0

    .line 338
    :cond_2
    iget p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->workMode:I

    if-nez p1, :cond_3

    .line 339
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->setImageSize12M()V

    goto :goto_0

    .line 341
    :cond_3
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->setShootingContinuous12MMode()V

    :goto_0
    return-void
.end method

.method public setShootingContinuous3Mode()V
    .locals 2

    .line 562
    invoke-static {}, Lcom/powervision/localhttp/MessageDispatchUtils;->get()Lcom/powervision/localhttp/MessageDispatchUtils;

    move-result-object v0

    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->setMultiPhotoSpeed3P1()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/MessageDispatchUtils;->addNewMessage(Lcom/powervision/localhttp/CmdModel;)V

    return-void
.end method

.method public setShootingContinuous5Mode()V
    .locals 2

    .line 591
    invoke-static {}, Lcom/powervision/localhttp/MessageDispatchUtils;->get()Lcom/powervision/localhttp/MessageDispatchUtils;

    move-result-object v0

    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->setMultiPhotoSpeed5P1()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/MessageDispatchUtils;->addNewMessage(Lcom/powervision/localhttp/CmdModel;)V

    return-void
.end method

.method public setShootingContinuousMode(I)V
    .locals 1

    .line 442
    iput p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->setMultiModeSpeed:I

    .line 443
    invoke-static {}, Lcom/powervision/localhttp/MessageDispatchUtils;->get()Lcom/powervision/localhttp/MessageDispatchUtils;

    move-result-object p1

    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/localhttp/CmdModel$Builder;->setWorkModeMultiPicture()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/powervision/localhttp/MessageDispatchUtils;->addNewMessage(Lcom/powervision/localhttp/CmdModel;)V

    return-void
.end method

.method public setSingleShootingMode()V
    .locals 2

    .line 375
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

.method public updateWorkMode(Lcom/powervision/localhttp/entity/BaseModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Lcom/powervision/localhttp/entity/PVW4AllParams;",
            ">;)V"
        }
    .end annotation

    .line 262
    iget-object v0, p1, Lcom/powervision/localhttp/entity/BaseModel;->Parameter:Ljava/lang/Object;

    check-cast v0, Lcom/powervision/localhttp/entity/PVW4AllParams;

    iget v0, v0, Lcom/powervision/localhttp/entity/PVW4AllParams;->mode:I

    if-eqz v0, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 269
    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->workMode:I

    .line 270
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->mView:Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask$View;

    iget-object v1, p1, Lcom/powervision/localhttp/entity/BaseModel;->Parameter:Ljava/lang/Object;

    check-cast v1, Lcom/powervision/localhttp/entity/PVW4AllParams;

    iget v1, v1, Lcom/powervision/localhttp/entity/PVW4AllParams;->resolution:I

    invoke-interface {v0, v1}, Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask$View;->handlePictureRatio(I)V

    .line 271
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->mView:Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask$View;

    iget-object v1, p1, Lcom/powervision/localhttp/entity/BaseModel;->Parameter:Ljava/lang/Object;

    check-cast v1, Lcom/powervision/localhttp/entity/PVW4AllParams;

    iget v1, v1, Lcom/powervision/localhttp/entity/PVW4AllParams;->burst_val:I

    invoke-interface {v0, v1}, Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask$View;->handleMultiSpeed(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 264
    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->workMode:I

    .line 265
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->mView:Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask$View;

    iget-object v1, p1, Lcom/powervision/localhttp/entity/BaseModel;->Parameter:Ljava/lang/Object;

    check-cast v1, Lcom/powervision/localhttp/entity/PVW4AllParams;

    iget v1, v1, Lcom/powervision/localhttp/entity/PVW4AllParams;->resolution:I

    invoke-interface {v0, v1}, Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask$View;->handlePictureRatio(I)V

    .line 266
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->mView:Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask$View;

    invoke-interface {v0}, Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask$View;->handleSinglePictureMode()V

    .line 284
    :goto_0
    iget-object p1, p1, Lcom/powervision/localhttp/entity/BaseModel;->Parameter:Ljava/lang/Object;

    check-cast p1, Lcom/powervision/localhttp/entity/PVW4AllParams;

    iget p1, p1, Lcom/powervision/localhttp/entity/PVW4AllParams;->resolution:I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    const-string p1, "12M"

    .line 291
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->mImageSize:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    const-string p1, "8M"

    .line 287
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;->mImageSize:Ljava/lang/String;

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
