.class public Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;
.super Landroid/widget/LinearLayout;
.source "ShipCameraMenuView.java"

# interfaces
.implements Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;
    }
.end annotation


# static fields
.field public static final ACTION_NONE:I = -0x1

.field public static final ACTION_START_PICTURE:I = 0x1

.field public static final ACTION_START_VIDEO:I = 0x2

.field public static final ACTION_STOP_VIDEO:I = 0x3

.field public static final CONNECT_STATE_CONNECTED:I = 0x1

.field public static final CONNECT_STATE_INIT:I = -0x1

.field public static final CONNECT_STATE_TIMEOUT:I = 0x2

.field private static final MODE_RECORDING:I = 0x3

.field private static final MODE_TAKE_PHOTO:I = 0x1

.field private static final MODE_TAKE_RECORD:I = 0x2

.field public static final PVSDK_DOLPHIN_REMOTE_KEY_INFO_PIC_FAIL:I = 0x1d

.field public static final PVSDK_DOLPHIN_REMOTE_KEY_INFO_PIC_FULL_SD:I = 0x1c

.field public static final PVSDK_DOLPHIN_REMOTE_KEY_INFO_PIC_NONE_SD:I = 0x19

.field public static final PVSDK_DOLPHIN_REMOTE_KEY_INFO_PIC_NOT_PIC_MODE:I = 0x1b

.field public static final PVSDK_DOLPHIN_REMOTE_KEY_INFO_PIC_STATE_ERROR:I = 0x1a

.field public static final PVSDK_DOLPHIN_REMOTE_KEY_INFO_START_VIDEO:I = 0x17

.field public static final PVSDK_DOLPHIN_REMOTE_KEY_INFO_STOP_VIDEO:I = 0x18

.field public static final PVSDK_DOLPHIN_REMOTE_KEY_INFO_TAKE_PIC:I = 0x16

.field public static final PVSDK_DOLPHIN_REMOTE_KEY_INFO_UNKNOW:I = 0x15

.field public static final PVSDK_DOLPHIN_REMOTE_KEY_INFO_VIDEO_FULL_SD:I = 0x20

.field public static final PVSDK_DOLPHIN_REMOTE_KEY_INFO_VIDEO_NONE_SD:I = 0x1e

.field public static final PVSDK_DOLPHIN_REMOTE_KEY_INFO_VIDEO_STATE_ERROR:I = 0x1f

.field public static final PVSDK_DOLPHIN_REMOTE_KEY_INFO_VIDEO_STOP_ERROR:I = 0x22

.field public static final PVSDK_DOLPHIN_REMOTE_KEY_INFO_VIDEO_UNKNOW:I = 0x21

.field public static final PVSDK_DOLPHIN_REQUEST_TIMEOUT:I = 0x23

.field private static final TAG:Ljava/lang/String; = "ShipCameraMenuView"


# instance fields
.field private final SDK_CAMERA_MODE_GETMODE:I

.field private final SDK_CAMERA_MODE_NO_SDCARD:I

.field private final SDK_CAMERA_MODE_PIC:I

.field private final SDK_CAMERA_MODE_REC:I

.field private final SDK_CAMERA_MODE_RECORDING:I

.field private final SDK_CAMERA_MODE_SDCARD_FULL:I

.field private final SDK_CMD_STARTPHOTO_FAIL:I

.field private final SDK_CMD_STARTPHOTO_SUCCESS:I

.field private final SDK_CMD_STARTRECORD_FAIL:I

.field private final SDK_CMD_STARTRECORD_SUCCESS:I

.field private final SDK_CMD_STOPRECORD_FAIL:I

.field private final SDK_CMD_STOPRECORD_SUCCESS:I

.field private audioUtil:Lcom/powervision/gcs/utils/AudioUtil;

.field cancel:Landroid/widget/RelativeLayout;

.field private context:Landroid/content/Context;

.field flCameraPlay:Landroid/widget/FrameLayout;

.field flCameraPlayLoading:Landroid/widget/FrameLayout;

.field flCameraSetting:Landroid/widget/FrameLayout;

.field flCameraSwitch:Landroid/widget/FrameLayout;

.field handler:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;

.field public isShowingCameraSettingView:Z

.field ivCameraLoading:Landroid/widget/ImageView;

.field private mCameraConnectState:I

.field private mCurrentMode:I

.field private mRemoteAction:I

.field private mRotateAnimation:Landroid/view/animation/RotateAnimation;

.field private mSPHelper:Lcom/powervision/base/utils/SPHelperUtils;

.field private renderSuccess:Z

.field private shipCameraMenuPresenter:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$Presenter;

.field private shipCameraSettingView:Lcom/powervision/gcs/view/ship/ShipCameraSettingView;

.field tvCameraPlay:Landroid/widget/ImageView;

.field tvCameraSetting:Landroid/widget/ImageView;

.field tvCameraSwitch:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 329
    invoke-direct {p0, p1, v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 333
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 71
    iput p2, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->SDK_CMD_STARTPHOTO_SUCCESS:I

    const/4 v0, 0x1

    .line 72
    iput v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->SDK_CMD_STARTPHOTO_FAIL:I

    const/4 v0, 0x2

    .line 73
    iput v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->SDK_CMD_STARTRECORD_SUCCESS:I

    const/4 v1, 0x3

    .line 74
    iput v1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->SDK_CMD_STARTRECORD_FAIL:I

    const/4 v1, 0x4

    .line 75
    iput v1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->SDK_CMD_STOPRECORD_SUCCESS:I

    const/4 v1, 0x5

    .line 76
    iput v1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->SDK_CMD_STOPRECORD_FAIL:I

    const/4 v1, 0x6

    .line 77
    iput v1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->SDK_CAMERA_MODE_PIC:I

    const/4 v1, 0x7

    .line 78
    iput v1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->SDK_CAMERA_MODE_REC:I

    const/16 v1, 0x8

    .line 79
    iput v1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->SDK_CAMERA_MODE_RECORDING:I

    const/16 v1, 0x9

    .line 80
    iput v1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->SDK_CAMERA_MODE_GETMODE:I

    const/16 v1, 0xa

    .line 81
    iput v1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->SDK_CAMERA_MODE_NO_SDCARD:I

    const/16 v1, 0xb

    .line 82
    iput v1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->SDK_CAMERA_MODE_SDCARD_FULL:I

    .line 93
    iput-boolean p2, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->isShowingCameraSettingView:Z

    .line 95
    iput-boolean p2, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->renderSuccess:Z

    const/4 p2, -0x1

    .line 106
    iput p2, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->mRemoteAction:I

    .line 125
    iput v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->mCurrentMode:I

    .line 132
    iput p2, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->mCameraConnectState:I

    .line 150
    new-instance p2, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;-><init>(Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;)V

    iput-object p2, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->handler:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;

    .line 334
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/powervision/gcs/R$layout;->view_w4_camera_menu:I

    invoke-virtual {p2, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 335
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->initViews()V

    .line 336
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->initListener()V

    .line 337
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->initRotateAnimation()V

    .line 339
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->context:Landroid/content/Context;

    .line 341
    new-instance p2, Lcom/powervision/gcs/utils/AudioUtil;

    invoke-direct {p2, p1}, Lcom/powervision/gcs/utils/AudioUtil;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->audioUtil:Lcom/powervision/gcs/utils/AudioUtil;

    .line 343
    invoke-static {}, Lcom/powervision/base/utils/SPHelperUtils;->getInstance()Lcom/powervision/base/utils/SPHelperUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->mSPHelper:Lcom/powervision/base/utils/SPHelperUtils;

    .line 345
    invoke-static {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask;->create(Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;)Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->shipCameraMenuPresenter:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$Presenter;

    .line 346
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-virtual {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iget-object p2, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->shipCameraMenuPresenter:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$Presenter;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 347
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->shipCameraMenuPresenter:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$Presenter;

    invoke-interface {p1}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$Presenter;->getShootingMode()V

    return-void
.end method

.method private disableCameraMenuView()V
    .locals 2

    .line 1132
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->flCameraSwitch:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1133
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->flCameraSetting:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1134
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->flCameraPlay:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private enableCameraMenuView()V
    .locals 2

    .line 1105
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->flCameraSwitch:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/powervision/gcs/view/ship/shipcameramenuview/-$$Lambda$ShipCameraMenuView$8PLOMlYJrilZpkRlYabtqZCOqEs;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/-$$Lambda$ShipCameraMenuView$8PLOMlYJrilZpkRlYabtqZCOqEs;-><init>(Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1112
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->flCameraSetting:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/powervision/gcs/view/ship/shipcameramenuview/-$$Lambda$ShipCameraMenuView$yWW0zhFp3fRHz9Wtq9XqtFyafPQ;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/-$$Lambda$ShipCameraMenuView$yWW0zhFp3fRHz9Wtq9XqtFyafPQ;-><init>(Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1119
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->flCameraPlay:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/powervision/gcs/view/ship/shipcameramenuview/-$$Lambda$ShipCameraMenuView$9JkdM8sS55RvEpNElWXaBoQ5d-w;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/-$$Lambda$ShipCameraMenuView$9JkdM8sS55RvEpNElWXaBoQ5d-w;-><init>(Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private fl_camera_switch()V
    .locals 3

    .line 424
    iget-boolean v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->isShowingCameraSettingView:Z

    if-eqz v0, :cond_0

    .line 425
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->closeCameraSettingView()V

    .line 427
    :cond_0
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isShipConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 428
    sget v0, Lcom/powervision/gcs/R$string;->MediaLib_7:I

    invoke-direct {p0, v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->sendToast(I)V

    return-void

    .line 436
    :cond_1
    iget v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->mCurrentMode:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    return-void

    .line 456
    :cond_2
    sget v0, Lcom/powervision/gcs/R$string;->PVW4_Msg_179:I

    invoke-direct {p0, v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->sendToast(I)V

    return-void

    .line 448
    :cond_3
    sget v0, Lcom/powervision/gcs/R$string;->PVW4_Msg_11:I

    invoke-direct {p0, v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->sendToast(I)V

    .line 449
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->tvCameraSwitch:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 450
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->tvCameraPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 451
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->shipCameraMenuPresenter:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$Presenter;

    invoke-interface {v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$Presenter;->setTakePhotoMode()V

    return-void

    .line 439
    :cond_4
    sget v0, Lcom/powervision/gcs/R$string;->PVW4_Msg_11:I

    invoke-direct {p0, v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->sendToast(I)V

    .line 440
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->tvCameraSwitch:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 441
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->tvCameraPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 442
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->shipCameraMenuPresenter:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$Presenter;

    invoke-interface {v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$Presenter;->setRecordMode()V

    return-void
.end method

.method private hideLoadingView()V
    .locals 2

    .line 1143
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->flCameraPlayLoading:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1144
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->ivCameraLoading:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    return-void
.end method

.method private initListener()V
    .locals 0

    .line 377
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->enableCameraMenuView()V

    return-void
.end method

.method private initRotateAnimation()V
    .locals 8

    .line 356
    new-instance v7, Landroid/view/animation/RotateAnimation;

    const v0, 0x36ee80

    int-to-float v2, v0

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v7, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    const v0, 0x1312d00

    int-to-long v0, v0

    .line 358
    invoke-virtual {v7, v0, v1}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 359
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 360
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v1, v0}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 361
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 362
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    return-void
.end method

.method private initViews()V
    .locals 1

    .line 366
    sget v0, Lcom/powervision/gcs/R$id;->tv_camera_switch:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->tvCameraSwitch:Landroid/widget/ImageView;

    .line 367
    sget v0, Lcom/powervision/gcs/R$id;->fl_camera_switch:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->flCameraSwitch:Landroid/widget/FrameLayout;

    .line 368
    sget v0, Lcom/powervision/gcs/R$id;->tv_camera_play:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->tvCameraPlay:Landroid/widget/ImageView;

    .line 369
    sget v0, Lcom/powervision/gcs/R$id;->fl_camera_play:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->flCameraPlay:Landroid/widget/FrameLayout;

    .line 370
    sget v0, Lcom/powervision/gcs/R$id;->tv_camera_setting:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->tvCameraSetting:Landroid/widget/ImageView;

    .line 371
    sget v0, Lcom/powervision/gcs/R$id;->fl_camera_setting:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->flCameraSetting:Landroid/widget/FrameLayout;

    .line 372
    sget v0, Lcom/powervision/gcs/R$id;->fl_camera_play_loading:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->flCameraPlayLoading:Landroid/widget/FrameLayout;

    .line 373
    sget v0, Lcom/powervision/gcs/R$id;->iv_camera_loading:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->ivCameraLoading:Landroid/widget/ImageView;

    return-void
.end method

.method private sendToast(I)V
    .locals 3

    .line 419
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/powervision/gcs/model/ship/ShipWarning;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1}, Lcom/powervision/gcs/model/ship/ShipWarning;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private showCameraSettingView(I)V
    .locals 7

    .line 515
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->shipCameraSettingView:Lcom/powervision/gcs/view/ship/ShipCameraSettingView;

    if-nez v0, :cond_0

    .line 516
    new-instance v0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->shipCameraSettingView:Lcom/powervision/gcs/view/ship/ShipCameraSettingView;

    const/high16 p1, 0x41f00000    # 30.0f

    .line 517
    invoke-virtual {v0, p1}, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->setZ(F)V

    .line 518
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/powervision/gcs/utils/ScreenUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    .line 519
    new-instance v1, Lcom/powervision/gcs/utils/ScreenUtils;

    iget-object v2, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/powervision/gcs/utils/ScreenUtils;-><init>(Landroid/content/Context;)V

    .line 520
    invoke-virtual {v1}, Lcom/powervision/gcs/utils/ScreenUtils;->getScreenOriginalWidth()I

    move-result v1

    .line 521
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->getWidth()I

    move-result v2

    mul-int/lit8 v3, v1, 0x3

    .line 522
    div-int/lit8 v3, v3, 0x7

    invoke-static {p1}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result p1

    add-int/2addr v3, p1

    mul-int/lit8 p1, v0, 0x5

    .line 523
    div-int/lit8 p1, p1, 0x6

    .line 525
    iget-object v4, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/powervision/gcs/utils/ScreenUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x1

    mul-int/lit8 v4, v4, 0x1

    div-int/lit8 v4, v4, 0xc

    .line 526
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v3, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0xb

    .line 527
    invoke-virtual {v6, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 528
    iput v4, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 529
    iput v2, v6, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 530
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->context:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    .line 531
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const v2, 0x1020002

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 533
    new-instance v2, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->cancel:Landroid/widget/RelativeLayout;

    const/high16 v3, 0x41e80000    # 29.0f

    .line 534
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setZ(F)V

    .line 535
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 536
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->cancel:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 538
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->shipCameraSettingView:Lcom/powervision/gcs/view/ship/ShipCameraSettingView;

    invoke-virtual {p1, v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 539
    iput-boolean v5, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->isShowingCameraSettingView:Z

    .line 542
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->cancel:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/powervision/gcs/view/ship/shipcameramenuview/-$$Lambda$ShipCameraMenuView$s0YC_etm3YJm7ItWobu-1Jfy1Ww;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/-$$Lambda$ShipCameraMenuView$s0YC_etm3YJm7ItWobu-1Jfy1Ww;-><init>(Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private startLoadingView()V
    .locals 2

    .line 1138
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->flCameraPlayLoading:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1139
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->ivCameraLoading:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private switchPictureModeUI()V
    .locals 3

    const/4 v0, 0x1

    .line 1042
    iput v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->mCurrentMode:I

    .line 1043
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->tvCameraSwitch:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1044
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->tvCameraPlay:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1045
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->tvCameraSwitch:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$mipmap;->icon_w4_camera_switch_picture:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1047
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->tvCameraPlay:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$mipmap;->w4_camera_normal:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private switchRecordModeUI()V
    .locals 3

    const/4 v0, 0x2

    .line 1054
    iput v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->mCurrentMode:I

    .line 1055
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->tvCameraSwitch:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1056
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->tvCameraPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1057
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->tvCameraSwitch:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$mipmap;->icon_w4_camera_switch_picture:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1059
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->tvCameraPlay:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$mipmap;->ic_w4_video_normal:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private switchRecordingModeUI()V
    .locals 3

    const/4 v0, 0x3

    .line 1066
    iput v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->mCurrentMode:I

    .line 1067
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->tvCameraSwitch:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1068
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->tvCameraPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1069
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->tvCameraSwitch:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$mipmap;->icon_w4_camera_switch_picture:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1071
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->tvCameraPlay:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$mipmap;->ic_w4_video_highlight:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public cameraResetEvent(Lcom/powervision/gcs/event/CameraResetEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 396
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->closeCameraSettingView()V

    .line 397
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->shipCameraMenuPresenter:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$Presenter;

    invoke-interface {p1}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$Presenter;->getShootingMode()V

    return-void
.end method

.method public closeCameraSettingView()V
    .locals 4

    .line 547
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->shipCameraSettingView:Lcom/powervision/gcs/view/ship/ShipCameraSettingView;

    const v1, 0x1020002

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 550
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 551
    iget-object v3, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->shipCameraSettingView:Lcom/powervision/gcs/view/ship/ShipCameraSettingView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 552
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->shipCameraSettingView:Lcom/powervision/gcs/view/ship/ShipCameraSettingView;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->clear()V

    const/4 v0, 0x0

    .line 553
    iput-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->shipCameraSettingView:Lcom/powervision/gcs/view/ship/ShipCameraSettingView;

    .line 554
    iput-boolean v2, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->isShowingCameraSettingView:Z

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->cancel:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 558
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 559
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 560
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->cancel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method fl_camera_play()V
    .locals 3

    .line 481
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 482
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->mSPHelper:Lcom/powervision/base/utils/SPHelperUtils;

    invoke-virtual {v1}, Lcom/powervision/base/utils/SPHelperUtils;->getUserInfo()Lcom/powervision/base/model/LoginModel;

    move-result-object v1

    iget-object v1, v1, Lcom/powervision/base/model/LoginModel;->user:Lcom/powervision/base/model/LoginModel$LoginData;

    invoke-virtual {v1}, Lcom/powervision/base/model/LoginModel$LoginData;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserID"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->mSPHelper:Lcom/powervision/base/utils/SPHelperUtils;

    invoke-virtual {v1}, Lcom/powervision/base/utils/SPHelperUtils;->getUserInfo()Lcom/powervision/base/model/LoginModel;

    move-result-object v1

    iget-object v1, v1, Lcom/powervision/base/model/LoginModel;->user:Lcom/powervision/base/model/LoginModel$LoginData;

    invoke-virtual {v1}, Lcom/powervision/base/model/LoginModel$LoginData;->getUserphone()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserPhone"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->mSPHelper:Lcom/powervision/base/utils/SPHelperUtils;

    invoke-virtual {v1}, Lcom/powervision/base/utils/SPHelperUtils;->getUserInfo()Lcom/powervision/base/model/LoginModel;

    move-result-object v1

    iget-object v1, v1, Lcom/powervision/base/model/LoginModel;->user:Lcom/powervision/base/model/LoginModel$LoginData;

    invoke-virtual {v1}, Lcom/powervision/base/model/LoginModel$LoginData;->getUseremail()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserMail"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->mSPHelper:Lcom/powervision/base/utils/SPHelperUtils;

    invoke-virtual {v2}, Lcom/powervision/base/utils/SPHelperUtils;->getPsn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SNcode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pvw4_DoUnhook"

    invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 487
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isShipConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 489
    sget v0, Lcom/powervision/gcs/R$string;->MediaLib_7:I

    invoke-direct {p0, v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->sendToast(I)V

    return-void

    .line 497
    :cond_0
    iget-boolean v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->isShowingCameraSettingView:Z

    if-eqz v0, :cond_1

    .line 498
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->closeCameraSettingView()V

    .line 501
    :cond_1
    iget v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->mCurrentMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 509
    :cond_2
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->shipCameraMenuPresenter:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$Presenter;

    invoke-interface {v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$Presenter;->stopRecord()V

    goto :goto_0

    .line 506
    :cond_3
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->shipCameraMenuPresenter:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$Presenter;

    invoke-interface {v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$Presenter;->startRecord()V

    goto :goto_0

    .line 503
    :cond_4
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->shipCameraMenuPresenter:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$Presenter;

    invoke-interface {v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$Presenter;->takePhoto()V

    :goto_0
    return-void
.end method

.method fl_camera_setting()V
    .locals 2

    .line 463
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    sget v0, Lcom/powervision/gcs/R$string;->PVW4_Msg_179:I

    invoke-direct {p0, v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->sendToast(I)V

    return-void

    .line 468
    :cond_0
    iget-boolean v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->isShowingCameraSettingView:Z

    if-eqz v0, :cond_1

    .line 469
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->closeCameraSettingView()V

    goto :goto_0

    .line 471
    :cond_1
    iget v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->mCurrentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 472
    invoke-direct {p0, v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->showCameraSettingView(I)V

    goto :goto_0

    .line 474
    :cond_2
    invoke-direct {p0, v1}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->showCameraSettingView(I)V

    :goto_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 153
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0xa

    if-eq p1, v0, :cond_a

    const/16 v0, 0xb

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v0, :cond_8

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    .line 315
    :pswitch_0
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->switchRecordingModeUI()V

    .line 316
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->closeCameraSettingView()V

    .line 317
    iput v1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->mCurrentMode:I

    .line 318
    sget p1, Lcom/powervision/gcs/R$string;->PVW4_Msg_20:I

    invoke-static {p1}, Lcom/powervision/gcs/utils/ToastUtil;->showDefaultToast(I)V

    goto/16 :goto_0

    .line 309
    :pswitch_1
    iput v2, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->mCurrentMode:I

    .line 310
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->switchRecordModeUI()V

    .line 311
    sget p1, Lcom/powervision/gcs/R$string;->PVW4_Msg_25:I

    invoke-static {p1}, Lcom/powervision/gcs/utils/ToastUtil;->showDefaultToast(I)V

    .line 312
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->closeCameraSettingView()V

    goto/16 :goto_0

    .line 294
    :pswitch_2
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->isRecording()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 295
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->audioUtil:Lcom/powervision/gcs/utils/AudioUtil;

    invoke-virtual {p1, v1}, Lcom/powervision/gcs/utils/AudioUtil;->play(I)V

    .line 297
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->switchRecordModeUI()V

    .line 298
    iput v2, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->mCurrentMode:I

    .line 300
    :cond_0
    sget p1, Lcom/powervision/gcs/R$string;->PVW4_Msg_173:I

    invoke-static {p1}, Lcom/powervision/gcs/utils/ToastUtil;->showDefaultToast(I)V

    .line 301
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->closeCameraSettingView()V

    goto/16 :goto_0

    .line 304
    :pswitch_3
    iput v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->mCurrentMode:I

    .line 305
    sget p1, Lcom/powervision/gcs/R$string;->PVW4_Msg_24:I

    invoke-static {p1}, Lcom/powervision/gcs/utils/ToastUtil;->showDefaultToast(I)V

    .line 306
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->closeCameraSettingView()V

    goto/16 :goto_0

    .line 289
    :pswitch_4
    sget p1, Lcom/powervision/gcs/R$string;->PVW4_Msg_15:I

    invoke-static {p1}, Lcom/powervision/gcs/utils/ToastUtil;->showDefaultToast(I)V

    .line 290
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->closeCameraSettingView()V

    goto/16 :goto_0

    .line 275
    :pswitch_5
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result p1

    if-ne p1, v2, :cond_1

    .line 276
    iget p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->mCurrentMode:I

    if-ne p1, v1, :cond_b

    .line 277
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->fl_camera_play()V

    goto/16 :goto_0

    .line 281
    :cond_1
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->audioUtil:Lcom/powervision/gcs/utils/AudioUtil;

    invoke-virtual {p1, v1}, Lcom/powervision/gcs/utils/AudioUtil;->play(I)V

    .line 282
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->switchRecordModeUI()V

    .line 283
    iput v2, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->mCurrentMode:I

    .line 284
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->closeCameraSettingView()V

    goto/16 :goto_0

    .line 257
    :pswitch_6
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result p1

    if-ne p1, v2, :cond_4

    .line 258
    iget p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->mCurrentMode:I

    if-ne p1, v0, :cond_2

    .line 259
    iput v2, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->mRemoteAction:I

    .line 260
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->fl_camera_switch()V

    goto/16 :goto_0

    :cond_2
    if-ne p1, v2, :cond_3

    .line 262
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->fl_camera_play()V

    goto/16 :goto_0

    :cond_3
    if-ne p1, v1, :cond_b

    .line 264
    sget p1, Lcom/powervision/gcs/R$string;->PVW4_Msg_179:I

    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->sendToast(I)V

    goto/16 :goto_0

    .line 268
    :cond_4
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->audioUtil:Lcom/powervision/gcs/utils/AudioUtil;

    invoke-virtual {p1, v2}, Lcom/powervision/gcs/utils/AudioUtil;->play(I)V

    .line 269
    iput v1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->mCurrentMode:I

    .line 270
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->switchRecordingModeUI()V

    .line 271
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->closeCameraSettingView()V

    goto/16 :goto_0

    .line 239
    :pswitch_7
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result p1

    if-ne p1, v2, :cond_7

    .line 240
    iget p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->mCurrentMode:I

    if-ne p1, v0, :cond_5

    .line 241
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->fl_camera_play()V

    goto/16 :goto_0

    :cond_5
    if-ne p1, v2, :cond_6

    .line 243
    iput v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->mRemoteAction:I

    .line 244
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->fl_camera_switch()V

    goto/16 :goto_0

    :cond_6
    if-ne p1, v1, :cond_b

    .line 246
    sget p1, Lcom/powervision/gcs/R$string;->PVW4_Msg_179:I

    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->sendToast(I)V

    return-void

    .line 250
    :cond_7
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->audioUtil:Lcom/powervision/gcs/utils/AudioUtil;

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/utils/AudioUtil;->play(I)V

    .line 251
    iput v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->mCurrentMode:I

    .line 252
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->switchPictureModeUI()V

    .line 253
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->closeCameraSettingView()V

    goto/16 :goto_0

    .line 236
    :pswitch_8
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->closeCameraSettingView()V

    goto :goto_0

    .line 199
    :pswitch_9
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->switchRecordingModeUI()V

    goto :goto_0

    .line 196
    :pswitch_a
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->switchRecordModeUI()V

    goto :goto_0

    .line 193
    :pswitch_b
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->switchPictureModeUI()V

    goto :goto_0

    .line 187
    :pswitch_c
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->switchRecordingModeUI()V

    .line 188
    iput v1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->mCurrentMode:I

    .line 190
    sget p1, Lcom/powervision/gcs/R$string;->PVW4_Msg_20:I

    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->sendToast(I)V

    goto :goto_0

    .line 180
    :pswitch_d
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->audioUtil:Lcom/powervision/gcs/utils/AudioUtil;

    invoke-virtual {p1, v1}, Lcom/powervision/gcs/utils/AudioUtil;->play(I)V

    .line 181
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->switchRecordModeUI()V

    .line 182
    iput v2, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->mCurrentMode:I

    goto :goto_0

    .line 174
    :pswitch_e
    iput v2, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->mCurrentMode:I

    .line 175
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->switchRecordModeUI()V

    .line 177
    sget p1, Lcom/powervision/gcs/R$string;->PVW4_Msg_25:I

    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->sendToast(I)V

    goto :goto_0

    .line 167
    :pswitch_f
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->audioUtil:Lcom/powervision/gcs/utils/AudioUtil;

    invoke-virtual {p1, v2}, Lcom/powervision/gcs/utils/AudioUtil;->play(I)V

    .line 168
    iput v1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->mCurrentMode:I

    .line 169
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->switchRecordingModeUI()V

    goto :goto_0

    .line 162
    :pswitch_10
    iput v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->mCurrentMode:I

    .line 164
    sget p1, Lcom/powervision/gcs/R$string;->PVW4_Msg_24:I

    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->sendToast(I)V

    goto :goto_0

    .line 155
    :pswitch_11
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->audioUtil:Lcom/powervision/gcs/utils/AudioUtil;

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/utils/AudioUtil;->play(I)V

    .line 156
    iput v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->mCurrentMode:I

    .line 157
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->switchPictureModeUI()V

    goto :goto_0

    .line 208
    :cond_8
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->isRecording()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 209
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->audioUtil:Lcom/powervision/gcs/utils/AudioUtil;

    invoke-virtual {p1, v1}, Lcom/powervision/gcs/utils/AudioUtil;->play(I)V

    .line 211
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->switchRecordModeUI()V

    .line 212
    iput v2, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->mCurrentMode:I

    .line 215
    :cond_9
    sget p1, Lcom/powervision/gcs/R$string;->PVW4_Msg_173:I

    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->sendToast(I)V

    goto :goto_0

    .line 205
    :cond_a
    sget p1, Lcom/powervision/gcs/R$string;->PVW4_Msg_15:I

    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->sendToast(I)V

    :cond_b
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_8
        :pswitch_2
        :pswitch_8
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_8
        :pswitch_0
    .end packed-switch
.end method

.method public handleRemoteSignal(I)V
    .locals 4

    .line 922
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleRemoteSignal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShipCameraMenuView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/powervision/gcs/model/event/RemotePhotoRecordEvent;

    invoke-direct {v1}, Lcom/powervision/gcs/model/event/RemotePhotoRecordEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    const/16 v1, 0xa

    const/4 v2, 0x6

    if-eq p1, v0, :cond_3

    const/16 v0, 0xb

    if-eq p1, v2, :cond_2

    const/16 v2, 0x8

    const/4 v3, 0x7

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 957
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->handler:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;->sendEmptyMessage(I)Z

    .line 958
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->handler:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;

    invoke-virtual {p1, v3}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 949
    :cond_1
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->handler:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;

    invoke-virtual {p1, v1}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;->sendEmptyMessage(I)Z

    .line 950
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->handler:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;

    invoke-virtual {p1, v3}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 953
    :cond_2
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->handler:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;->sendEmptyMessage(I)Z

    .line 954
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->handler:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;

    invoke-virtual {p1, v2}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 945
    :cond_3
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->handler:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;

    invoke-virtual {p1, v1}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;->sendEmptyMessage(I)Z

    .line 946
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->handler:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;

    invoke-virtual {p1, v2}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 942
    :cond_4
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->handler:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;

    const/16 v0, 0x18

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 937
    :cond_5
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->handler:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;

    const/16 v0, 0x17

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 931
    :cond_6
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->handler:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;

    const/16 v0, 0x16

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method public handleSetRecordMode(Lcom/powervision/localhttp/entity/BaseModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 654
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->switchRecordModeUI()V

    .line 656
    iget p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->mRemoteAction:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 657
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->fl_camera_play()V

    :cond_0
    return-void
.end method

.method public handleSetTakePhotoMode(Lcom/powervision/localhttp/entity/BaseModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 665
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->switchPictureModeUI()V

    .line 667
    iget p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->mRemoteAction:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 668
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->fl_camera_play()V

    :cond_0
    return-void
.end method

.method public handleShootingMode(Lcom/powervision/localhttp/entity/BaseModel;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Lcom/powervision/localhttp/entity/PVW4GetWorkMode;",
            ">;)V"
        }
    .end annotation

    .line 636
    iget-object p1, p1, Lcom/powervision/localhttp/entity/BaseModel;->Parameter:Ljava/lang/Object;

    check-cast p1, Lcom/powervision/localhttp/entity/PVW4GetWorkMode;

    iget-object p1, p1, Lcom/powervision/localhttp/entity/PVW4GetWorkMode;->workmode:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x600

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v0, v1, :cond_4

    const/16 v1, 0x61f

    if-eq v0, v1, :cond_3

    const/16 v1, 0x63e

    if-eq v0, v1, :cond_2

    const/16 v1, 0x642

    if-eq v0, v1, :cond_1

    const v1, 0x3b387df1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "recording"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x2

    goto :goto_1

    :cond_1
    const-string v0, "24"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x4

    goto :goto_1

    :cond_2
    const-string v0, "20"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x3

    goto :goto_1

    :cond_3
    const-string v0, "10"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    const-string v0, "00"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_8

    if-eq p1, v5, :cond_8

    if-eq p1, v4, :cond_7

    if-eq p1, v3, :cond_6

    if-eq p1, v2, :cond_6

    goto :goto_2

    .line 646
    :cond_6
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->handler:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 642
    :cond_7
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->handler:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 639
    :cond_8
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->handler:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;->sendEmptyMessage(I)Z

    :goto_2
    return-void
.end method

.method public handleStartRecord(Lcom/powervision/localhttp/entity/BaseModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 592
    iget p1, p1, Lcom/powervision/localhttp/entity/BaseModel;->State:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 608
    :pswitch_0
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->handler:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 604
    :pswitch_1
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->handler:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 601
    :pswitch_2
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->handler:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 595
    :pswitch_3
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->handler:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public handleStopRecord(Lcom/powervision/localhttp/entity/BaseModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 615
    iget p1, p1, Lcom/powervision/localhttp/entity/BaseModel;->State:I

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    const/4 v1, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 629
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->handler:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 626
    :cond_1
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->handler:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 623
    :cond_2
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->handler:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;

    invoke-virtual {p1, v1}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 618
    :cond_3
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->handler:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method public handleTakPhoto(Lcom/powervision/localhttp/entity/BaseModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 571
    iget p1, p1, Lcom/powervision/localhttp/entity/BaseModel;->State:I

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/16 v1, 0x9

    if-eq p1, v1, :cond_2

    goto :goto_0

    .line 585
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->handler:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 582
    :cond_1
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->handler:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 579
    :cond_2
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->handler:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 574
    :cond_3
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->handler:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method public isCameraStateConnected()Z
    .locals 2

    .line 1079
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCameraStateConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->mCameraConnectState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShipCameraMenuView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    iget v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->mCameraConnectState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isRecording()Z
    .locals 2

    .line 1075
    iget v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->mCurrentMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRenderSuccess()Z
    .locals 1

    .line 566
    iget-boolean v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->renderSuccess:Z

    return v0
.end method

.method public synthetic lambda$enableCameraMenuView$3$ShipCameraMenuView(Landroid/view/View;)V
    .locals 0

    .line 1106
    invoke-static {}, Lcom/powervision/base/utils/NoFastClickUtil;->isFastClick()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, -0x1

    .line 1109
    iput p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->mRemoteAction:I

    .line 1110
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->fl_camera_switch()V

    return-void
.end method

.method public synthetic lambda$enableCameraMenuView$4$ShipCameraMenuView(Landroid/view/View;)V
    .locals 0

    .line 1113
    invoke-static {}, Lcom/powervision/base/utils/NoFastClickUtil;->isFastClick()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, -0x1

    .line 1116
    iput p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->mRemoteAction:I

    .line 1117
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->fl_camera_setting()V

    return-void
.end method

.method public synthetic lambda$enableCameraMenuView$5$ShipCameraMenuView(Landroid/view/View;)V
    .locals 0

    const/4 p1, -0x1

    .line 1123
    iput p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->mRemoteAction:I

    .line 1124
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->fl_camera_play()V

    return-void
.end method

.method public synthetic lambda$showCameraSettingView$0$ShipCameraMenuView(Landroid/view/View;)V
    .locals 0

    .line 542
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->closeCameraSettingView()V

    return-void
.end method

.method public synthetic lambda$startSwitchMode$1$ShipCameraMenuView()V
    .locals 0

    .line 1086
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->startLoadingView()V

    .line 1087
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->enableCameraMenuView()V

    .line 1088
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->disableCameraMenuView()V

    return-void
.end method

.method public synthetic lambda$stopSwitchMode$2$ShipCameraMenuView()V
    .locals 0

    .line 1095
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->hideLoadingView()V

    .line 1096
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->disableCameraMenuView()V

    .line 1097
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->enableCameraMenuView()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 382
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 383
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onCameraConnectTimeout()V
    .locals 2

    const-string v0, "ShipCameraMenuView"

    const-string v1, "onChannelEvent: \u8d85\u65f6"

    .line 1028
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 1029
    iput v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->mCameraConnectState:I

    .line 1030
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->shipCameraMenuPresenter:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$Presenter;

    invoke-interface {v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$Presenter;->startCheckHeartbeat()V

    return-void
.end method

.method public onChannelEvent(I)V
    .locals 3

    .line 1001
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChannelEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShipCameraMenuView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    const/16 v1, 0xb

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    const/4 v2, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 1018
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->handler:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1013
    :cond_1
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->handler:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;

    invoke-virtual {p1, v1}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;->sendEmptyMessage(I)Z

    .line 1014
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->handler:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;

    invoke-virtual {p1, v2}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1009
    :cond_2
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->handler:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;

    invoke-virtual {p1, v1}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;->sendEmptyMessage(I)Z

    .line 1010
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->handler:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_3
    const-string p1, "onChannelEvent: \u6b63\u5e38"

    .line 1004
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->shipCameraMenuPresenter:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$Presenter;

    invoke-interface {p1}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$Presenter;->startCheckHeartbeat()V

    .line 1006
    iput v0, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->mCameraConnectState:I

    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 389
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 391
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onRemoteKeyBResult(I)V
    .locals 2

    .line 980
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/powervision/gcs/model/event/RemotePhotoRecordEvent;

    invoke-direct {v1}, Lcom/powervision/gcs/model/event/RemotePhotoRecordEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    .line 984
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->handler:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;

    const/16 v0, 0x16

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 987
    iget p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->mCurrentMode:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 988
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->handler:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;

    const/16 v0, 0x18

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 990
    :cond_1
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->handler:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;

    const/16 v0, 0x17

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;->sendEmptyMessage(I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onRequestTimeout(I)V
    .locals 2

    .line 1035
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRequestTimeout: cmdId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ShipCameraMenuView"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setConnectStatus(Z)V
    .locals 3

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setConnectStatus: connect_status "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShipCameraMenuView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setConnectStatus: renderSuccess "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->renderSuccess:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 405
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->shipCameraMenuPresenter:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$Presenter;

    invoke-interface {p1}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$Presenter;->getShootingMode()V

    goto :goto_0

    .line 407
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->isRecording()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 408
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->handler:Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView$MenuHandler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public startSwitchMode()V
    .locals 1

    .line 1085
    new-instance v0, Lcom/powervision/gcs/view/ship/shipcameramenuview/-$$Lambda$ShipCameraMenuView$sw-TwVAloyT6fgKJFiIT6lwgBvE;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/-$$Lambda$ShipCameraMenuView$sw-TwVAloyT6fgKJFiIT6lwgBvE;-><init>(Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;)V

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stopSwitchMode()V
    .locals 1

    .line 1094
    new-instance v0, Lcom/powervision/gcs/view/ship/shipcameramenuview/-$$Lambda$ShipCameraMenuView$eu4V9ypNXUHYqC2JDjsd0EKXE5U;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/-$$Lambda$ShipCameraMenuView$eu4V9ypNXUHYqC2JDjsd0EKXE5U;-><init>(Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;)V

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
