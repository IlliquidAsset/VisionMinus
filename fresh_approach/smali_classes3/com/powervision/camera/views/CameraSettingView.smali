.class public Lcom/powervision/camera/views/CameraSettingView;
.super Landroid/widget/RelativeLayout;
.source "CameraSettingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/powervision/camera/camera/CameraListener$CameraControllListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/camera/views/CameraSettingView$ViewPagerAdapter;,
        Lcom/powervision/camera/views/CameraSettingView$SettingHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraSettingView"


# instance fields
.field private ACTION_CODE_SHOW_TOAST:I

.field private ACTION_CODE_START_RECORD:I

.field private ACTION_CODE_START_TIME_CAPTURE:I

.field private ACTION_CODE_STOP_RECORD:I

.field private ACTION_CODE_SWITCH_MENU:I

.field private ACTION_CODE_SWITCH_PHOTO:I

.field private ACTION_CODE_SWITCH_RECORD:I

.field private ACTION_CODE_TAKE_PHOTO:I

.field private ACTION_CODE_TIME_CAPTURE_CANCEL:I

.field private ACTION_CODE_TIME_CAPTURE_FAIL:I

.field private ACTION_CODE_TIME_CAPTURE_SUCCESS:I

.field private alertDialog:Landroidx/appcompat/app/AlertDialog;

.field private cameraNotifyOnDelayPhoto:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnDelayPhoto;

.field private cameraNotifyOnMultiplePhotoListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnMultiplePhotoListener;

.field private cameraNotifyStopDelayTimePhotoListener:Lcom/powervision/camera/camera/CameraListener$CameraNotifyStopDelayTimePhotoListener;

.field private handler:Lcom/powervision/camera/views/CameraSettingView$SettingHandler;

.field private isHandHeld:Z

.field private isPhoto:Z

.field private mActivity:Landroidx/appcompat/app/AppCompatActivity;

.field private mBasicSettingFragment:Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;

.field private mCameraImage:Landroid/widget/ImageView;

.field private mCameraSetting:Landroid/widget/ImageView;

.field private mEmptyView:Landroid/view/View;

.field private mFragmentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mGeneralSettingFragment:Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;

.field private mIndex:I

.field private mMediaLib:Landroid/widget/ImageView;

.field private mPagerAdapter:Lcom/powervision/camera/views/CameraSettingView$ViewPagerAdapter;

.field private mPhotoModeIcon:Landroid/widget/ImageView;

.field private mPhotoSettingFragment:Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;

.field private mRadioCamera:Landroid/widget/RadioButton;

.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private mRecordSelect:Landroid/widget/ImageView;

.field private mRecordingSettingFragment:Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;

.field private mRightLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mTextTimer:Landroid/widget/TextView;

.field private mViewPager:Lcom/powervision/base/views/NoScrollViewPager;

.field private resId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 105
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 70
    iput p1, p0, Lcom/powervision/camera/views/CameraSettingView;->ACTION_CODE_SWITCH_MENU:I

    const/4 p1, 0x1

    .line 71
    iput p1, p0, Lcom/powervision/camera/views/CameraSettingView;->ACTION_CODE_SWITCH_RECORD:I

    const/4 p1, 0x2

    .line 72
    iput p1, p0, Lcom/powervision/camera/views/CameraSettingView;->ACTION_CODE_SWITCH_PHOTO:I

    const/4 p1, 0x3

    .line 73
    iput p1, p0, Lcom/powervision/camera/views/CameraSettingView;->ACTION_CODE_START_RECORD:I

    const/4 p1, 0x4

    .line 74
    iput p1, p0, Lcom/powervision/camera/views/CameraSettingView;->ACTION_CODE_STOP_RECORD:I

    const/4 p1, 0x5

    .line 75
    iput p1, p0, Lcom/powervision/camera/views/CameraSettingView;->ACTION_CODE_TAKE_PHOTO:I

    const/4 p1, 0x6

    .line 76
    iput p1, p0, Lcom/powervision/camera/views/CameraSettingView;->ACTION_CODE_SHOW_TOAST:I

    const/4 p1, 0x7

    .line 77
    iput p1, p0, Lcom/powervision/camera/views/CameraSettingView;->ACTION_CODE_START_TIME_CAPTURE:I

    const/16 p1, 0x8

    .line 78
    iput p1, p0, Lcom/powervision/camera/views/CameraSettingView;->ACTION_CODE_TIME_CAPTURE_SUCCESS:I

    const/16 p1, 0x9

    .line 79
    iput p1, p0, Lcom/powervision/camera/views/CameraSettingView;->ACTION_CODE_TIME_CAPTURE_FAIL:I

    const/16 p1, 0xa

    .line 80
    iput p1, p0, Lcom/powervision/camera/views/CameraSettingView;->ACTION_CODE_TIME_CAPTURE_CANCEL:I

    .line 625
    new-instance p1, Lcom/powervision/camera/views/CameraSettingView$SettingHandler;

    invoke-direct {p1, p0}, Lcom/powervision/camera/views/CameraSettingView$SettingHandler;-><init>(Lcom/powervision/camera/views/CameraSettingView;)V

    iput-object p1, p0, Lcom/powervision/camera/views/CameraSettingView;->handler:Lcom/powervision/camera/views/CameraSettingView$SettingHandler;

    .line 699
    new-instance p1, Lcom/powervision/camera/views/CameraSettingView$2;

    invoke-direct {p1, p0}, Lcom/powervision/camera/views/CameraSettingView$2;-><init>(Lcom/powervision/camera/views/CameraSettingView;)V

    iput-object p1, p0, Lcom/powervision/camera/views/CameraSettingView;->cameraNotifyOnDelayPhoto:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnDelayPhoto;

    .line 716
    new-instance p1, Lcom/powervision/camera/views/CameraSettingView$3;

    invoke-direct {p1, p0}, Lcom/powervision/camera/views/CameraSettingView$3;-><init>(Lcom/powervision/camera/views/CameraSettingView;)V

    iput-object p1, p0, Lcom/powervision/camera/views/CameraSettingView;->cameraNotifyStopDelayTimePhotoListener:Lcom/powervision/camera/camera/CameraListener$CameraNotifyStopDelayTimePhotoListener;

    .line 731
    new-instance p1, Lcom/powervision/camera/views/CameraSettingView$4;

    invoke-direct {p1, p0}, Lcom/powervision/camera/views/CameraSettingView$4;-><init>(Lcom/powervision/camera/views/CameraSettingView;)V

    iput-object p1, p0, Lcom/powervision/camera/views/CameraSettingView;->cameraNotifyOnMultiplePhotoListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnMultiplePhotoListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZIZ)V
    .locals 1

    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, p1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Lcom/powervision/camera/views/CameraSettingView;->ACTION_CODE_SWITCH_MENU:I

    const/4 v0, 0x1

    .line 71
    iput v0, p0, Lcom/powervision/camera/views/CameraSettingView;->ACTION_CODE_SWITCH_RECORD:I

    const/4 v0, 0x2

    .line 72
    iput v0, p0, Lcom/powervision/camera/views/CameraSettingView;->ACTION_CODE_SWITCH_PHOTO:I

    const/4 v0, 0x3

    .line 73
    iput v0, p0, Lcom/powervision/camera/views/CameraSettingView;->ACTION_CODE_START_RECORD:I

    const/4 v0, 0x4

    .line 74
    iput v0, p0, Lcom/powervision/camera/views/CameraSettingView;->ACTION_CODE_STOP_RECORD:I

    const/4 v0, 0x5

    .line 75
    iput v0, p0, Lcom/powervision/camera/views/CameraSettingView;->ACTION_CODE_TAKE_PHOTO:I

    const/4 v0, 0x6

    .line 76
    iput v0, p0, Lcom/powervision/camera/views/CameraSettingView;->ACTION_CODE_SHOW_TOAST:I

    const/4 v0, 0x7

    .line 77
    iput v0, p0, Lcom/powervision/camera/views/CameraSettingView;->ACTION_CODE_START_TIME_CAPTURE:I

    const/16 v0, 0x8

    .line 78
    iput v0, p0, Lcom/powervision/camera/views/CameraSettingView;->ACTION_CODE_TIME_CAPTURE_SUCCESS:I

    const/16 v0, 0x9

    .line 79
    iput v0, p0, Lcom/powervision/camera/views/CameraSettingView;->ACTION_CODE_TIME_CAPTURE_FAIL:I

    const/16 v0, 0xa

    .line 80
    iput v0, p0, Lcom/powervision/camera/views/CameraSettingView;->ACTION_CODE_TIME_CAPTURE_CANCEL:I

    .line 625
    new-instance v0, Lcom/powervision/camera/views/CameraSettingView$SettingHandler;

    invoke-direct {v0, p0}, Lcom/powervision/camera/views/CameraSettingView$SettingHandler;-><init>(Lcom/powervision/camera/views/CameraSettingView;)V

    iput-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->handler:Lcom/powervision/camera/views/CameraSettingView$SettingHandler;

    .line 699
    new-instance v0, Lcom/powervision/camera/views/CameraSettingView$2;

    invoke-direct {v0, p0}, Lcom/powervision/camera/views/CameraSettingView$2;-><init>(Lcom/powervision/camera/views/CameraSettingView;)V

    iput-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->cameraNotifyOnDelayPhoto:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnDelayPhoto;

    .line 716
    new-instance v0, Lcom/powervision/camera/views/CameraSettingView$3;

    invoke-direct {v0, p0}, Lcom/powervision/camera/views/CameraSettingView$3;-><init>(Lcom/powervision/camera/views/CameraSettingView;)V

    iput-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->cameraNotifyStopDelayTimePhotoListener:Lcom/powervision/camera/camera/CameraListener$CameraNotifyStopDelayTimePhotoListener;

    .line 731
    new-instance v0, Lcom/powervision/camera/views/CameraSettingView$4;

    invoke-direct {v0, p0}, Lcom/powervision/camera/views/CameraSettingView$4;-><init>(Lcom/powervision/camera/views/CameraSettingView;)V

    iput-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->cameraNotifyOnMultiplePhotoListener:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnMultiplePhotoListener;

    .line 116
    iput-boolean p2, p0, Lcom/powervision/camera/views/CameraSettingView;->isPhoto:Z

    .line 117
    iput p3, p0, Lcom/powervision/camera/views/CameraSettingView;->mIndex:I

    .line 118
    iput-boolean p4, p0, Lcom/powervision/camera/views/CameraSettingView;->isHandHeld:Z

    .line 119
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/powervision/base/rxbus/RxBus;->register(Ljava/lang/Object;)V

    .line 120
    move-object p2, p1

    check-cast p2, Landroidx/appcompat/app/AppCompatActivity;

    iput-object p2, p0, Lcom/powervision/camera/views/CameraSettingView;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    .line 121
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/powervision/camera/views/CameraSettingView;->mFragmentList:Ljava/util/List;

    .line 122
    iget-boolean p2, p0, Lcom/powervision/camera/views/CameraSettingView;->isHandHeld:Z

    if-eqz p2, :cond_0

    .line 123
    sget p2, Lcom/lewis/camera/R$layout;->camera_setting_view_handheld:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    .line 125
    :cond_0
    sget p2, Lcom/lewis/camera/R$layout;->aircraft_camera_setting_view:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 127
    :goto_0
    invoke-direct {p0}, Lcom/powervision/camera/views/CameraSettingView;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/camera/views/CameraSettingView;I)I
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/powervision/camera/views/CameraSettingView;->getCheckedId(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/powervision/camera/views/CameraSettingView;)Landroid/widget/RadioGroup;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/powervision/camera/views/CameraSettingView;->mRadioGroup:Landroid/widget/RadioGroup;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/camera/views/CameraSettingView;)I
    .locals 0

    .line 67
    iget p0, p0, Lcom/powervision/camera/views/CameraSettingView;->ACTION_CODE_TIME_CAPTURE_SUCCESS:I

    return p0
.end method

.method static synthetic access$300(Lcom/powervision/camera/views/CameraSettingView;ILjava/lang/String;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/powervision/camera/views/CameraSettingView;->sendMsg(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/powervision/camera/views/CameraSettingView;)I
    .locals 0

    .line 67
    iget p0, p0, Lcom/powervision/camera/views/CameraSettingView;->ACTION_CODE_TIME_CAPTURE_FAIL:I

    return p0
.end method

.method static synthetic access$500(Lcom/powervision/camera/views/CameraSettingView;)I
    .locals 0

    .line 67
    iget p0, p0, Lcom/powervision/camera/views/CameraSettingView;->ACTION_CODE_TIME_CAPTURE_CANCEL:I

    return p0
.end method

.method static synthetic access$600(Lcom/powervision/camera/views/CameraSettingView;)I
    .locals 0

    .line 67
    iget p0, p0, Lcom/powervision/camera/views/CameraSettingView;->ACTION_CODE_SHOW_TOAST:I

    return p0
.end method

.method static synthetic access$700(Lcom/powervision/camera/views/CameraSettingView;)I
    .locals 0

    .line 67
    iget p0, p0, Lcom/powervision/camera/views/CameraSettingView;->ACTION_CODE_TAKE_PHOTO:I

    return p0
.end method

.method static synthetic access$800(Lcom/powervision/camera/views/CameraSettingView;)Ljava/util/List;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/powervision/camera/views/CameraSettingView;->mFragmentList:Ljava/util/List;

    return-object p0
.end method

.method private checkSdCardLowSpeed()Z
    .locals 5

    .line 799
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->isSlowSpeedCard()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 800
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getDeviceCurrentStorageTypeSD()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 801
    iget-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 804
    :cond_0
    iget-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    sget v2, Lcom/lewis/camera/R$string;->AP03_CameraSetting_69:I

    .line 805
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/powervision/camera/views/CameraSettingView;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    sget v4, Lcom/lewis/camera/R$string;->AP03_ConnectGuide_47:I

    .line 806
    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 804
    invoke-static {v0, v4, v2, v3, v4}, Lcom/powervision/base/utils/DialogUtils;->defaultDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 807
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private checkWaterModeDisableRecord()Z
    .locals 5

    .line 814
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getWaterModeTag()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 815
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentResolution()I

    move-result v0

    const/16 v3, 0xa

    if-eq v0, v3, :cond_0

    const/16 v3, 0x9

    if-eq v0, v3, :cond_0

    if-ne v0, v2, :cond_2

    .line 817
    :cond_0
    iget-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 820
    :cond_1
    iget-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    sget v1, Lcom/lewis/camera/R$string;->AP03_waterproof_8:I

    .line 821
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/powervision/camera/views/CameraSettingView;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    sget v4, Lcom/lewis/camera/R$string;->AP03_ConnectGuide_47:I

    .line 822
    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 820
    invoke-static {v0, v4, v1, v3, v4}, Lcom/powervision/base/utils/DialogUtils;->defaultDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 823
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return v2

    :cond_2
    return v1
.end method

.method private doClickCameraSwitch()V
    .locals 2

    .line 484
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraConnect()Ljava/lang/Boolean;

    .line 485
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    .line 486
    sget v1, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_RECORDING:I

    if-ne v0, v1, :cond_0

    .line 487
    invoke-virtual {p0}, Lcom/powervision/camera/views/CameraSettingView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$string;->AP03_Msg_186:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    return-void

    .line 489
    :cond_0
    sget v1, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_RECORD:I

    if-ne v0, v1, :cond_1

    .line 491
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->switchToSnapMode()V

    goto :goto_0

    .line 492
    :cond_1
    sget v1, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_PHOTO:I

    if-ne v0, v1, :cond_3

    .line 494
    invoke-static {}, Lcom/powervision/camera/utils/RxCountDown;->getInstance()Lcom/powervision/camera/utils/RxCountDown;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/utils/RxCountDown;->getCount()I

    move-result v0

    if-eqz v0, :cond_2

    .line 496
    sget v0, Lcom/lewis/camera/R$string;->AP03_HomePage_21:I

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    goto :goto_0

    .line 498
    :cond_2
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->switchToRecordMode()V

    :cond_3
    :goto_0
    return-void
.end method

.method private doClickCameraView()V
    .locals 6

    .line 370
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraConnect()Ljava/lang/Boolean;

    .line 371
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    .line 372
    sget v1, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_RECORD:I

    if-ne v0, v1, :cond_3

    .line 373
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraConnect()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/powervision/camera/utils/CameraUtil;->checkStorageAvailiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 374
    invoke-virtual {p0}, Lcom/powervision/camera/views/CameraSettingView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$string;->AP03_CameraSetting_66:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    return-void

    .line 377
    :cond_0
    invoke-direct {p0}, Lcom/powervision/camera/views/CameraSettingView;->checkSdCardLowSpeed()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 380
    :cond_1
    invoke-direct {p0}, Lcom/powervision/camera/views/CameraSettingView;->checkWaterModeDisableRecord()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 384
    :cond_2
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->startRecordVideo()V

    goto/16 :goto_0

    .line 385
    :cond_3
    sget v1, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_RECORDING:I

    if-ne v0, v1, :cond_4

    .line 387
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->stopRecordVideo()V

    goto/16 :goto_0

    .line 388
    :cond_4
    sget v1, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_PHOTO:I

    if-ne v0, v1, :cond_d

    .line 390
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-nez v0, :cond_6

    .line 391
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getExposureMode()I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 392
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getPhotoGraphType()I

    move-result v0

    if-eq v0, v2, :cond_5

    .line 393
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getPhotoGraphType()I

    move-result v0

    if-ne v0, v1, :cond_6

    .line 394
    :cond_5
    invoke-virtual {p0}, Lcom/powervision/camera/views/CameraSettingView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$string;->AP03_DV_Msg_24_2:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    return-void

    .line 397
    :cond_6
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    const/4 v3, 0x2

    if-nez v0, :cond_7

    .line 398
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getExposureMode()I

    move-result v0

    if-ne v0, v2, :cond_7

    .line 399
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getPhotoGraphType()I

    move-result v0

    if-ne v0, v3, :cond_7

    .line 400
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getExptimeValue()I

    move-result v0

    const/4 v4, 0x7

    if-gt v0, v4, :cond_7

    .line 401
    invoke-virtual {p0}, Lcom/powervision/camera/views/CameraSettingView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$string;->AP03_DV_Msg_24_3:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    return-void

    .line 405
    :cond_7
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraConnect()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/powervision/camera/utils/CameraUtil;->checkStorageAvailiable()Z

    move-result v0

    if-nez v0, :cond_8

    .line 406
    invoke-virtual {p0}, Lcom/powervision/camera/views/CameraSettingView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$string;->AP03_CameraSetting_66:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    return-void

    .line 418
    :cond_8
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getPhotoGraphType()I

    move-result v0

    .line 419
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  CameraManager.getInstance().getTimingTime()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/powervision/camera/camera/CameraManager;->getTimingTime()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    if-nez v0, :cond_9

    .line 423
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->doStartPhoto()V

    goto :goto_0

    :cond_9
    if-ne v0, v2, :cond_a

    .line 425
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->doStartPhoto()V

    goto :goto_0

    :cond_a
    if-ne v0, v3, :cond_b

    .line 427
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->doStartPhoto()V

    goto :goto_0

    :cond_b
    if-ne v0, v1, :cond_c

    .line 429
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->doStartPhoto()V

    goto :goto_0

    :cond_c
    const/4 v1, 0x4

    if-ne v0, v1, :cond_d

    .line 434
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getTimingTime()I

    move-result v0

    .line 435
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/powervision/camera/camera/CameraManager;->doStartPhoto(I)V

    .line 440
    :cond_d
    :goto_0
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    const/16 v1, 0xb5

    invoke-virtual {v0, v1}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    return-void
.end method

.method private getCheckedId(I)I
    .locals 1

    if-nez p1, :cond_0

    .line 315
    sget p1, Lcom/lewis/camera/R$id;->radio_basic:I

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 317
    sget p1, Lcom/lewis/camera/R$id;->radio_camera:I

    return p1

    .line 319
    :cond_1
    sget p1, Lcom/lewis/camera/R$id;->radio_general:I

    return p1
.end method

.method private initCameraListener()V
    .locals 2

    .line 284
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraControllListener(Lcom/powervision/camera/camera/CameraListener$CameraControllListener;)V

    .line 285
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/camera/views/CameraSettingView;->cameraNotifyOnDelayPhoto:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnDelayPhoto;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->addCameraNotifyOnDelayPhoto(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnDelayPhoto;)V

    .line 286
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/camera/views/CameraSettingView;->cameraNotifyStopDelayTimePhotoListener:Lcom/powervision/camera/camera/CameraListener$CameraNotifyStopDelayTimePhotoListener;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->addCameraNotifyStopDelayTimePhotoListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyStopDelayTimePhotoListener;)V

    return-void
.end method

.method private initCameraMenu()V
    .locals 1

    .line 147
    sget v0, Lcom/lewis/camera/R$id;->photo_record_select:I

    invoke-virtual {p0, v0}, Lcom/powervision/camera/views/CameraSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mRecordSelect:Landroid/widget/ImageView;

    .line 148
    sget v0, Lcom/lewis/camera/R$id;->camera_image:I

    invoke-virtual {p0, v0}, Lcom/powervision/camera/views/CameraSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mCameraImage:Landroid/widget/ImageView;

    .line 149
    sget v0, Lcom/lewis/camera/R$id;->camera_setting:I

    invoke-virtual {p0, v0}, Lcom/powervision/camera/views/CameraSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mCameraSetting:Landroid/widget/ImageView;

    .line 150
    sget v0, Lcom/lewis/camera/R$id;->media_library:I

    invoke-virtual {p0, v0}, Lcom/powervision/camera/views/CameraSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mMediaLib:Landroid/widget/ImageView;

    .line 151
    sget v0, Lcom/lewis/camera/R$id;->placeholder_camera_menu:I

    invoke-virtual {p0, v0}, Lcom/powervision/camera/views/CameraSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mRightLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 152
    invoke-direct {p0}, Lcom/powervision/camera/views/CameraSettingView;->switchCamerMenuStatus()V

    return-void
.end method

.method private initFragment()V
    .locals 1

    .line 327
    invoke-static {}, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->getInstance()Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mBasicSettingFragment:Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;

    .line 328
    iget-boolean v0, p0, Lcom/powervision/camera/views/CameraSettingView;->isHandHeld:Z

    invoke-static {v0}, Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;->getInstance(Z)Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mPhotoSettingFragment:Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;

    const/4 v0, 0x1

    .line 329
    invoke-static {v0}, Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;->getInstance(Z)Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mRecordingSettingFragment:Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;

    .line 330
    iget-boolean v0, p0, Lcom/powervision/camera/views/CameraSettingView;->isHandHeld:Z

    invoke-static {v0}, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->getInstance(Z)Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mGeneralSettingFragment:Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;

    return-void
.end method

.method private initView()V
    .locals 1

    .line 131
    sget v0, Lcom/lewis/camera/R$id;->camera_setting_empty_view:I

    invoke-virtual {p0, v0}, Lcom/powervision/camera/views/CameraSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mEmptyView:Landroid/view/View;

    .line 132
    sget v0, Lcom/lewis/camera/R$id;->camera_group:I

    invoke-virtual {p0, v0}, Lcom/powervision/camera/views/CameraSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 133
    sget v0, Lcom/lewis/camera/R$id;->radio_camera:I

    invoke-virtual {p0, v0}, Lcom/powervision/camera/views/CameraSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mRadioCamera:Landroid/widget/RadioButton;

    .line 134
    sget v0, Lcom/lewis/camera/R$id;->viewPager:I

    invoke-virtual {p0, v0}, Lcom/powervision/camera/views/CameraSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/views/NoScrollViewPager;

    iput-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mViewPager:Lcom/powervision/base/views/NoScrollViewPager;

    .line 135
    sget v0, Lcom/lewis/camera/R$id;->photo_mode_icon:I

    invoke-virtual {p0, v0}, Lcom/powervision/camera/views/CameraSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mPhotoModeIcon:Landroid/widget/ImageView;

    .line 137
    iget-boolean v0, p0, Lcom/powervision/camera/views/CameraSettingView;->isHandHeld:Z

    if-nez v0, :cond_0

    .line 138
    sget v0, Lcom/lewis/camera/R$id;->photo_mode_text:I

    invoke-virtual {p0, v0}, Lcom/powervision/camera/views/CameraSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mTextTimer:Landroid/widget/TextView;

    .line 139
    invoke-direct {p0}, Lcom/powervision/camera/views/CameraSettingView;->initCameraMenu()V

    .line 141
    :cond_0
    invoke-direct {p0}, Lcom/powervision/camera/views/CameraSettingView;->initFragment()V

    .line 142
    invoke-direct {p0}, Lcom/powervision/camera/views/CameraSettingView;->initViewPager()V

    .line 143
    invoke-direct {p0}, Lcom/powervision/camera/views/CameraSettingView;->setListener()V

    return-void
.end method

.method private initViewPager()V
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mFragmentList:Ljava/util/List;

    iget-object v1, p0, Lcom/powervision/camera/views/CameraSettingView;->mBasicSettingFragment:Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mFragmentList:Ljava/util/List;

    iget-boolean v1, p0, Lcom/powervision/camera/views/CameraSettingView;->isPhoto:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/powervision/camera/views/CameraSettingView;->mPhotoSettingFragment:Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/powervision/camera/views/CameraSettingView;->mRecordingSettingFragment:Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mFragmentList:Ljava/util/List;

    iget-object v1, p0, Lcom/powervision/camera/views/CameraSettingView;->mGeneralSettingFragment:Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    new-instance v0, Lcom/powervision/camera/views/CameraSettingView$ViewPagerAdapter;

    iget-object v1, p0, Lcom/powervision/camera/views/CameraSettingView;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/powervision/camera/views/CameraSettingView$ViewPagerAdapter;-><init>(Lcom/powervision/camera/views/CameraSettingView;Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mPagerAdapter:Lcom/powervision/camera/views/CameraSettingView$ViewPagerAdapter;

    .line 215
    iget-object v1, p0, Lcom/powervision/camera/views/CameraSettingView;->mViewPager:Lcom/powervision/base/views/NoScrollViewPager;

    invoke-virtual {v1, v0}, Lcom/powervision/base/views/NoScrollViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 216
    iget-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mViewPager:Lcom/powervision/base/views/NoScrollViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/NoScrollViewPager;->setOffscreenPageLimit(I)V

    .line 217
    iget-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mViewPager:Lcom/powervision/base/views/NoScrollViewPager;

    iget v1, p0, Lcom/powervision/camera/views/CameraSettingView;->mIndex:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/views/NoScrollViewPager;->setCurrentItem(IZ)V

    .line 219
    invoke-direct {p0}, Lcom/powervision/camera/views/CameraSettingView;->setRadioButtonDrawable()V

    .line 220
    iget-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mRadioGroup:Landroid/widget/RadioGroup;

    iget v1, p0, Lcom/powervision/camera/views/CameraSettingView;->mIndex:I

    invoke-direct {p0, v1}, Lcom/powervision/camera/views/CameraSettingView;->getCheckedId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    return-void
.end method

.method private removeCameraListener()V
    .locals 2

    .line 290
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraControllListener(Lcom/powervision/camera/camera/CameraListener$CameraControllListener;)V

    .line 291
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/camera/views/CameraSettingView;->cameraNotifyOnDelayPhoto:Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnDelayPhoto;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->removeCameraNotifyOnDelayPhoto(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnDelayPhoto;)V

    .line 292
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/camera/views/CameraSettingView;->cameraNotifyStopDelayTimePhotoListener:Lcom/powervision/camera/camera/CameraListener$CameraNotifyStopDelayTimePhotoListener;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->removeCameraNotifyStopDelayTimePhotoListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyStopDelayTimePhotoListener;)V

    return-void
.end method

.method private resetCapture()V
    .locals 2

    .line 474
    iget v0, p0, Lcom/powervision/camera/views/CameraSettingView;->resId:I

    if-eqz v0, :cond_0

    .line 475
    iget-object v1, p0, Lcom/powervision/camera/views/CameraSettingView;->mPhotoModeIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mPhotoModeIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/powervision/camera/views/CameraSettingView;->resId:I

    if-nez v1, :cond_1

    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private sendMsg(ILjava/lang/String;)V
    .locals 1

    .line 579
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 580
    iput p1, v0, Landroid/os/Message;->what:I

    .line 581
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 582
    iget-object p1, p0, Lcom/powervision/camera/views/CameraSettingView;->handler:Lcom/powervision/camera/views/CameraSettingView$SettingHandler;

    invoke-virtual {p1, v0}, Lcom/powervision/camera/views/CameraSettingView$SettingHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private setListener()V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mRadioGroup:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/powervision/camera/views/-$$Lambda$CameraSettingView$m3QM7_6pL2FfDajkUmCxAxLNImU;

    invoke-direct {v1, p0}, Lcom/powervision/camera/views/-$$Lambda$CameraSettingView$m3QM7_6pL2FfDajkUmCxAxLNImU;-><init>(Lcom/powervision/camera/views/CameraSettingView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 255
    iget-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mViewPager:Lcom/powervision/base/views/NoScrollViewPager;

    new-instance v1, Lcom/powervision/camera/views/CameraSettingView$1;

    invoke-direct {v1, p0}, Lcom/powervision/camera/views/CameraSettingView$1;-><init>(Lcom/powervision/camera/views/CameraSettingView;)V

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/NoScrollViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 272
    iget-boolean v0, p0, Lcom/powervision/camera/views/CameraSettingView;->isHandHeld:Z

    if-nez v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mRecordSelect:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mCameraImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    iget-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mCameraSetting:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mMediaLib:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    iget-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mMediaLib:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mTextTimer:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    :cond_0
    invoke-direct {p0}, Lcom/powervision/camera/views/CameraSettingView;->initCameraListener()V

    return-void
.end method

.method private setRadioButtonDrawable()V
    .locals 4

    .line 202
    iget-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mRadioCamera:Landroid/widget/RadioButton;

    iget-boolean v1, p0, Lcom/powervision/camera/views/CameraSettingView;->isPhoto:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/powervision/camera/views/CameraSettingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/lewis/camera/R$drawable;->camera_shoot_setting_selector:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/camera/views/CameraSettingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/lewis/camera/R$drawable;->camera_recording_setting_selector:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 202
    :goto_0
    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/RadioButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private switchCamerMenuStatus()V
    .locals 4

    .line 159
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraConnect()Ljava/lang/Boolean;

    move-result-object v0

    .line 160
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v1

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cameraConnectionStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " i = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CameraSettingView"

    invoke-static {v3, v2}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 163
    sget v0, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_RECORD:I

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v0, v1, :cond_1

    .line 164
    iget-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mCameraImage:Landroid/widget/ImageView;

    sget v1, Lcom/lewis/camera/R$mipmap;->flight_icon_record:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 165
    iget-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mRecordSelect:Landroid/widget/ImageView;

    sget v1, Lcom/lewis/camera/R$mipmap;->icon_recording_switch:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 166
    iget-boolean v0, p0, Lcom/powervision/camera/views/CameraSettingView;->isPhoto:Z

    if-eqz v0, :cond_0

    .line 167
    iput-boolean v2, p0, Lcom/powervision/camera/views/CameraSettingView;->isPhoto:Z

    .line 168
    invoke-virtual {p0}, Lcom/powervision/camera/views/CameraSettingView;->resetViewPager()V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mPhotoModeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mTextTimer:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 172
    :cond_1
    sget v0, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_RECORDING:I

    if-ne v0, v1, :cond_3

    .line 173
    iget-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mCameraImage:Landroid/widget/ImageView;

    sget v1, Lcom/lewis/camera/R$mipmap;->flight_icon_recording:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 174
    iget-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mRecordSelect:Landroid/widget/ImageView;

    sget v1, Lcom/lewis/camera/R$mipmap;->icon_recording_switch:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 175
    iget-boolean v0, p0, Lcom/powervision/camera/views/CameraSettingView;->isPhoto:Z

    if-eqz v0, :cond_2

    .line 176
    iput-boolean v2, p0, Lcom/powervision/camera/views/CameraSettingView;->isPhoto:Z

    .line 177
    invoke-virtual {p0}, Lcom/powervision/camera/views/CameraSettingView;->resetViewPager()V

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mPhotoModeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mTextTimer:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 182
    :cond_3
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/sdk/Ap03Manager;->getCurrentMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DELAY_SHOOT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 183
    iget-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mCameraImage:Landroid/widget/ImageView;

    sget v1, Lcom/lewis/camera/R$mipmap;->icon_delay_photo:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 185
    :cond_4
    iget-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mCameraImage:Landroid/widget/ImageView;

    sget v1, Lcom/lewis/camera/R$mipmap;->icon_capture:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 187
    :goto_0
    iget-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mRecordSelect:Landroid/widget/ImageView;

    sget v1, Lcom/lewis/camera/R$mipmap;->icon_photo_switch:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 188
    iget-boolean v0, p0, Lcom/powervision/camera/views/CameraSettingView;->isPhoto:Z

    if-nez v0, :cond_5

    const/4 v0, 0x1

    .line 189
    iput-boolean v0, p0, Lcom/powervision/camera/views/CameraSettingView;->isPhoto:Z

    .line 190
    invoke-virtual {p0}, Lcom/powervision/camera/views/CameraSettingView;->resetViewPager()V

    .line 192
    :cond_5
    invoke-virtual {p0}, Lcom/powervision/camera/views/CameraSettingView;->cancelTimer()V

    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public cancelTimer()V
    .locals 2

    .line 465
    iget-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mTextTimer:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    iget-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mTextTimer:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 467
    invoke-direct {p0}, Lcom/powervision/camera/views/CameraSettingView;->resetCapture()V

    return-void
.end method

.method public fail(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 628
    iget v0, p1, Landroid/os/Message;->what:I

    .line 629
    iget v1, p0, Lcom/powervision/camera/views/CameraSettingView;->ACTION_CODE_SWITCH_MENU:I

    if-ne v0, v1, :cond_0

    .line 630
    iget-boolean p1, p0, Lcom/powervision/camera/views/CameraSettingView;->isHandHeld:Z

    if-nez p1, :cond_10

    .line 631
    invoke-direct {p0}, Lcom/powervision/camera/views/CameraSettingView;->switchCamerMenuStatus()V

    goto/16 :goto_0

    .line 633
    :cond_0
    iget v1, p0, Lcom/powervision/camera/views/CameraSettingView;->ACTION_CODE_SWITCH_RECORD:I

    if-ne v0, v1, :cond_1

    .line 634
    iget-boolean p1, p0, Lcom/powervision/camera/views/CameraSettingView;->isHandHeld:Z

    if-nez p1, :cond_10

    .line 635
    iget-object p1, p0, Lcom/powervision/camera/views/CameraSettingView;->mRecordSelect:Landroid/widget/ImageView;

    sget v0, Lcom/lewis/camera/R$mipmap;->icon_recording_switch:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 636
    iget-object p1, p0, Lcom/powervision/camera/views/CameraSettingView;->mCameraImage:Landroid/widget/ImageView;

    sget v0, Lcom/lewis/camera/R$mipmap;->flight_icon_record:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 637
    invoke-direct {p0}, Lcom/powervision/camera/views/CameraSettingView;->switchCamerMenuStatus()V

    goto/16 :goto_0

    .line 639
    :cond_1
    iget v1, p0, Lcom/powervision/camera/views/CameraSettingView;->ACTION_CODE_SWITCH_PHOTO:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    .line 640
    iget-boolean p1, p0, Lcom/powervision/camera/views/CameraSettingView;->isHandHeld:Z

    if-nez p1, :cond_10

    .line 641
    iget-object p1, p0, Lcom/powervision/camera/views/CameraSettingView;->mRecordSelect:Landroid/widget/ImageView;

    sget v0, Lcom/lewis/camera/R$mipmap;->icon_photo_switch:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 642
    iget-object p1, p0, Lcom/powervision/camera/views/CameraSettingView;->mCameraImage:Landroid/widget/ImageView;

    sget v0, Lcom/lewis/camera/R$mipmap;->icon_capture:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 643
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getPhotoGraphType()I

    move-result p1

    if-nez p1, :cond_2

    .line 644
    iput v2, p0, Lcom/powervision/camera/views/CameraSettingView;->resId:I

    .line 645
    invoke-direct {p0}, Lcom/powervision/camera/views/CameraSettingView;->resetCapture()V

    .line 647
    :cond_2
    invoke-direct {p0}, Lcom/powervision/camera/views/CameraSettingView;->switchCamerMenuStatus()V

    goto/16 :goto_0

    .line 649
    :cond_3
    iget v1, p0, Lcom/powervision/camera/views/CameraSettingView;->ACTION_CODE_START_RECORD:I

    const/4 v3, 0x1

    if-ne v0, v1, :cond_6

    .line 650
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getCameraAudioState()I

    move-result p1

    if-eq p1, v3, :cond_4

    .line 651
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object p1

    .line 652
    invoke-virtual {p1}, Lcom/powervision/base/base/BaseApplication;->getAudioUtilInstance()Lcom/powervision/base/utils/AudioUtil;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/powervision/base/utils/AudioUtil;->playAudio(I)V

    .line 654
    :cond_4
    iget-boolean p1, p0, Lcom/powervision/camera/views/CameraSettingView;->isHandHeld:Z

    if-nez p1, :cond_5

    .line 655
    iget-object p1, p0, Lcom/powervision/camera/views/CameraSettingView;->mCameraImage:Landroid/widget/ImageView;

    sget v0, Lcom/lewis/camera/R$mipmap;->flight_icon_recording:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 657
    :cond_5
    iget-object p1, p0, Lcom/powervision/camera/views/CameraSettingView;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {}, Lcom/powervision/base/utils/UmengUtils;->getHookMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "ap03_start_recording"

    invoke-static {p1, v1, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 658
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    goto/16 :goto_0

    .line 659
    :cond_6
    iget v1, p0, Lcom/powervision/camera/views/CameraSettingView;->ACTION_CODE_STOP_RECORD:I

    if-ne v0, v1, :cond_9

    .line 660
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getCameraAudioState()I

    move-result p1

    if-eq p1, v3, :cond_7

    .line 661
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object p1

    .line 662
    invoke-virtual {p1}, Lcom/powervision/base/base/BaseApplication;->getAudioUtilInstance()Lcom/powervision/base/utils/AudioUtil;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/powervision/base/utils/AudioUtil;->playAudio(I)V

    .line 664
    :cond_7
    iget-boolean p1, p0, Lcom/powervision/camera/views/CameraSettingView;->isHandHeld:Z

    if-nez p1, :cond_8

    .line 665
    iget-object p1, p0, Lcom/powervision/camera/views/CameraSettingView;->mCameraImage:Landroid/widget/ImageView;

    sget v0, Lcom/lewis/camera/R$mipmap;->flight_icon_record:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 667
    :cond_8
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    goto/16 :goto_0

    .line 668
    :cond_9
    iget v1, p0, Lcom/powervision/camera/views/CameraSettingView;->ACTION_CODE_TAKE_PHOTO:I

    if-ne v0, v1, :cond_b

    .line 670
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object p1

    .line 671
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraAudioState()I

    move-result v0

    if-eq v0, v3, :cond_a

    .line 672
    invoke-virtual {p1}, Lcom/powervision/base/base/BaseApplication;->getAudioUtilInstance()Lcom/powervision/base/utils/AudioUtil;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/powervision/base/utils/AudioUtil;->playAudio(I)V

    .line 674
    :cond_a
    iget-object p1, p0, Lcom/powervision/camera/views/CameraSettingView;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {}, Lcom/powervision/base/utils/UmengUtils;->getHookMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "ap03_start_take_photo"

    invoke-static {p1, v1, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 675
    :cond_b
    iget v1, p0, Lcom/powervision/camera/views/CameraSettingView;->ACTION_CODE_SHOW_TOAST:I

    if-ne v0, v1, :cond_c

    .line 676
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    .line 677
    :cond_c
    iget p1, p0, Lcom/powervision/camera/views/CameraSettingView;->ACTION_CODE_START_TIME_CAPTURE:I

    if-ne v0, p1, :cond_d

    .line 678
    iget-object p1, p0, Lcom/powervision/camera/views/CameraSettingView;->mTextTimer:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 679
    iget-object p1, p0, Lcom/powervision/camera/views/CameraSettingView;->mPhotoModeIcon:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 680
    :cond_d
    iget p1, p0, Lcom/powervision/camera/views/CameraSettingView;->ACTION_CODE_TIME_CAPTURE_SUCCESS:I

    if-ne v0, p1, :cond_e

    .line 681
    invoke-virtual {p0}, Lcom/powervision/camera/views/CameraSettingView;->cancelTimer()V

    .line 682
    iget-object p1, p0, Lcom/powervision/camera/views/CameraSettingView;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/base/BaseApplication;

    .line 683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraManager.getInstance().getMultipleShotsNum() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getMultipleShotsNum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraSettingView"

    .line 683
    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    const/16 v1, 0xb6

    invoke-virtual {v0, v1}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    .line 686
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraAudioState()I

    move-result v0

    if-eq v0, v3, :cond_10

    .line 687
    invoke-virtual {p1}, Lcom/powervision/base/base/BaseApplication;->getAudioUtilInstance()Lcom/powervision/base/utils/AudioUtil;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/powervision/base/utils/AudioUtil;->playAudio(I)V

    goto :goto_0

    .line 689
    :cond_e
    iget p1, p0, Lcom/powervision/camera/views/CameraSettingView;->ACTION_CODE_TIME_CAPTURE_FAIL:I

    if-ne v0, p1, :cond_f

    .line 690
    invoke-virtual {p0}, Lcom/powervision/camera/views/CameraSettingView;->cancelTimer()V

    goto :goto_0

    .line 691
    :cond_f
    iget p1, p0, Lcom/powervision/camera/views/CameraSettingView;->ACTION_CODE_TIME_CAPTURE_CANCEL:I

    if-ne v0, p1, :cond_10

    .line 692
    invoke-virtual {p0}, Lcom/powervision/camera/views/CameraSettingView;->cancelTimer()V

    :cond_10
    :goto_0
    return-void
.end method

.method public synthetic lambda$setListener$0$CameraSettingView(Landroid/widget/RadioGroup;I)V
    .locals 3

    .line 236
    sget p1, Lcom/lewis/camera/R$id;->radio_basic:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, p1, :cond_0

    .line 237
    iput v1, p0, Lcom/powervision/camera/views/CameraSettingView;->mIndex:I

    goto :goto_0

    .line 238
    :cond_0
    sget p1, Lcom/lewis/camera/R$id;->radio_camera:I

    const/4 v2, 0x2

    if-ne p2, p1, :cond_2

    .line 239
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result p1

    if-ne p1, v2, :cond_1

    .line 240
    iget-object p1, p0, Lcom/powervision/camera/views/CameraSettingView;->mViewPager:Lcom/powervision/base/views/NoScrollViewPager;

    invoke-virtual {p1, v1, v0}, Lcom/powervision/base/views/NoScrollViewPager;->setCurrentItem(IZ)V

    .line 241
    iget-object p1, p0, Lcom/powervision/camera/views/CameraSettingView;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-direct {p0, v1}, Lcom/powervision/camera/views/CameraSettingView;->getCheckedId(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->check(I)V

    return-void

    .line 244
    :cond_1
    iput v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mIndex:I

    goto :goto_0

    .line 246
    :cond_2
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result p1

    if-ne p1, v2, :cond_3

    .line 247
    iget-object p1, p0, Lcom/powervision/camera/views/CameraSettingView;->mViewPager:Lcom/powervision/base/views/NoScrollViewPager;

    invoke-virtual {p1, v1, v0}, Lcom/powervision/base/views/NoScrollViewPager;->setCurrentItem(IZ)V

    .line 248
    iget-object p1, p0, Lcom/powervision/camera/views/CameraSettingView;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-direct {p0, v1}, Lcom/powervision/camera/views/CameraSettingView;->getCheckedId(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->check(I)V

    return-void

    .line 251
    :cond_3
    iput v2, p0, Lcom/powervision/camera/views/CameraSettingView;->mIndex:I

    .line 253
    :goto_0
    iget-object p1, p0, Lcom/powervision/camera/views/CameraSettingView;->mViewPager:Lcom/powervision/base/views/NoScrollViewPager;

    iget p2, p0, Lcom/powervision/camera/views/CameraSettingView;->mIndex:I

    invoke-virtual {p1, p2, v0}, Lcom/powervision/base/views/NoScrollViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public onAEBMultiplePhotoStart()V
    .locals 0

    return-void
.end method

.method public onCameraStateChange(I)V
    .locals 2

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ...getCameraWorkState  \u7ed3\u679c     cameraState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "settingView"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    iget-object p1, p0, Lcom/powervision/camera/views/CameraSettingView;->handler:Lcom/powervision/camera/views/CameraSettingView$SettingHandler;

    iget v0, p0, Lcom/powervision/camera/views/CameraSettingView;->ACTION_CODE_SWITCH_MENU:I

    invoke-virtual {p1, v0}, Lcom/powervision/camera/views/CameraSettingView$SettingHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 335
    invoke-static {}, Lcom/powervision/base/utils/NoFastClickUtil;->isFastClick()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 338
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 339
    sget v0, Lcom/lewis/camera/R$id;->photo_record_select:I

    if-ne p1, v0, :cond_1

    .line 340
    invoke-direct {p0}, Lcom/powervision/camera/views/CameraSettingView;->doClickCameraSwitch()V

    goto/16 :goto_0

    .line 341
    :cond_1
    sget v0, Lcom/lewis/camera/R$id;->camera_image:I

    if-ne p1, v0, :cond_2

    .line 342
    invoke-direct {p0}, Lcom/powervision/camera/views/CameraSettingView;->doClickCameraView()V

    goto/16 :goto_0

    .line 343
    :cond_2
    sget v0, Lcom/lewis/camera/R$id;->camera_setting:I

    const/16 v1, 0xb5

    if-ne p1, v0, :cond_3

    .line 344
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    goto :goto_0

    .line 345
    :cond_3
    sget v0, Lcom/lewis/camera/R$id;->media_library:I

    if-ne p1, v0, :cond_6

    .line 346
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result p1

    if-nez p1, :cond_4

    .line 347
    invoke-virtual {p0}, Lcom/powervision/camera/views/CameraSettingView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/lewis/camera/R$string;->AP03_Home_2:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    return-void

    .line 350
    :cond_4
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result p1

    sget v0, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_RECORDING:I

    if-ne p1, v0, :cond_5

    return-void

    .line 354
    :cond_5
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->takingPhoto()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-static {}, Lcom/powervision/camera/utils/RxCountDown;->getInstance()Lcom/powervision/camera/utils/RxCountDown;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/utils/RxCountDown;->isCounting()Z

    move-result p1

    if-nez p1, :cond_8

    .line 355
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object p1

    const-string v0, "/media/mediaLibActivity"

    invoke-virtual {p1, v0}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    goto :goto_0

    .line 357
    :cond_6
    sget v0, Lcom/lewis/camera/R$id;->camera_setting_empty_view:I

    if-ne p1, v0, :cond_7

    .line 358
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    goto :goto_0

    .line 359
    :cond_7
    sget v0, Lcom/lewis/camera/R$id;->photo_mode_text:I

    if-ne p1, v0, :cond_8

    .line 361
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->stopDelayTimePhoto()V

    :cond_8
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 774
    iget-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mPagerAdapter:Lcom/powervision/camera/views/CameraSettingView$ViewPagerAdapter;

    invoke-virtual {v0}, Lcom/powervision/camera/views/CameraSettingView$ViewPagerAdapter;->release()V

    const-string v0, "CameraSettingView"

    const-string v1, " aircraft.contorl....onDetachedFromWindow"

    .line 775
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    invoke-direct {p0}, Lcom/powervision/camera/views/CameraSettingView;->removeCameraListener()V

    .line 777
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/base/rxbus/RxBus;->unRegister(Ljava/lang/Object;)V

    .line 778
    iget-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mFragmentList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 779
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 781
    :cond_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onHDRMultiplePhotoStart()V
    .locals 0

    return-void
.end method

.method public onMultipleShotsStart()V
    .locals 0

    return-void
.end method

.method public onPhotograph(Ljava/lang/String;)V
    .locals 2

    const-string v0, "0"

    .line 526
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 527
    iget v0, p0, Lcom/powervision/camera/views/CameraSettingView;->ACTION_CODE_TAKE_PHOTO:I

    const-string v1, "\u62cd\u7167\u6210\u529f"

    invoke-direct {p0, v0, v1}, Lcom/powervision/camera/views/CameraSettingView;->sendMsg(ILjava/lang/String;)V

    goto :goto_0

    .line 529
    :cond_0
    iget v0, p0, Lcom/powervision/camera/views/CameraSettingView;->ACTION_CODE_SHOW_TOAST:I

    const-string v1, "\u62cd\u7167\u5931\u8d25"

    invoke-direct {p0, v0, v1}, Lcom/powervision/camera/views/CameraSettingView;->sendMsg(ILjava/lang/String;)V

    .line 531
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onPhotograph   ..\u7ed3\u679c .type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "settingView"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStartRecordVideo(Ljava/lang/String;)V
    .locals 2

    const-string v0, "0"

    .line 560
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 561
    iget v0, p0, Lcom/powervision/camera/views/CameraSettingView;->ACTION_CODE_START_RECORD:I

    const-string v1, "\u5f00\u59cb\u5f55\u50cf\u6210\u529f"

    invoke-direct {p0, v0, v1}, Lcom/powervision/camera/views/CameraSettingView;->sendMsg(ILjava/lang/String;)V

    goto :goto_0

    .line 563
    :cond_0
    iget v0, p0, Lcom/powervision/camera/views/CameraSettingView;->ACTION_CODE_SHOW_TOAST:I

    const-string v1, "\u5f00\u59cb\u5f55\u50cf\u5931\u8d25"

    invoke-direct {p0, v0, v1}, Lcom/powervision/camera/views/CameraSettingView;->sendMsg(ILjava/lang/String;)V

    .line 565
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onStartRecordVideo   ..\u7ed3\u679c .type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "settingView"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStopRecordVideo(Ljava/lang/String;)V
    .locals 2

    const-string v0, "0"

    .line 570
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 571
    iget v0, p0, Lcom/powervision/camera/views/CameraSettingView;->ACTION_CODE_STOP_RECORD:I

    const-string v1, "\u505c\u6b62\u5f55\u50cf\u6210\u529f"

    invoke-direct {p0, v0, v1}, Lcom/powervision/camera/views/CameraSettingView;->sendMsg(ILjava/lang/String;)V

    goto :goto_0

    .line 573
    :cond_0
    iget v0, p0, Lcom/powervision/camera/views/CameraSettingView;->ACTION_CODE_SHOW_TOAST:I

    const-string v1, "\u505c\u6b62\u5f55\u50cf\u5931\u8d25"

    invoke-direct {p0, v0, v1}, Lcom/powervision/camera/views/CameraSettingView;->sendMsg(ILjava/lang/String;)V

    .line 575
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onStopRecordVideo   ..\u7ed3\u679c .type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "settingView"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStorageFull(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onSwitchPhotographMode(Ljava/lang/String;)V
    .locals 2

    const-string v0, "0"

    .line 516
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 517
    iget v0, p0, Lcom/powervision/camera/views/CameraSettingView;->ACTION_CODE_SWITCH_PHOTO:I

    const-string v1, "\u5207\u6362\u62cd\u7167\u6210\u529f"

    invoke-direct {p0, v0, v1}, Lcom/powervision/camera/views/CameraSettingView;->sendMsg(ILjava/lang/String;)V

    goto :goto_0

    .line 519
    :cond_0
    iget v0, p0, Lcom/powervision/camera/views/CameraSettingView;->ACTION_CODE_SHOW_TOAST:I

    const-string v1, "\u5207\u6362\u62cd\u7167\u5931\u8d25"

    invoke-direct {p0, v0, v1}, Lcom/powervision/camera/views/CameraSettingView;->sendMsg(ILjava/lang/String;)V

    .line 521
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onSwitchPhotographMode   ..\u7ed3\u679c .type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "settingView"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSwitchRecordMode(Ljava/lang/String;)V
    .locals 2

    const-string v0, "0"

    .line 505
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 506
    iget v0, p0, Lcom/powervision/camera/views/CameraSettingView;->ACTION_CODE_SWITCH_RECORD:I

    const-string v1, "\u5207\u6362\u5f55\u50cf\u6210\u529f"

    invoke-direct {p0, v0, v1}, Lcom/powervision/camera/views/CameraSettingView;->sendMsg(ILjava/lang/String;)V

    goto :goto_0

    .line 508
    :cond_0
    iget v0, p0, Lcom/powervision/camera/views/CameraSettingView;->ACTION_CODE_SHOW_TOAST:I

    const-string v1, "\u5207\u6362\u5f55\u50cf\u5931\u8d25"

    invoke-direct {p0, v0, v1}, Lcom/powervision/camera/views/CameraSettingView;->sendMsg(ILjava/lang/String;)V

    .line 510
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onSwitchRecordMode   ..\u7ed3\u679c .type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "settingView"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTimingStart()V
    .locals 2

    .line 536
    invoke-static {}, Lcom/powervision/camera/utils/RxCountDown;->getInstance()Lcom/powervision/camera/utils/RxCountDown;

    move-result-object v0

    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getTimingTime()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/powervision/camera/utils/RxCountDown;->countdown(I)V

    .line 537
    iget v0, p0, Lcom/powervision/camera/views/CameraSettingView;->ACTION_CODE_START_TIME_CAPTURE:I

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/powervision/camera/views/CameraSettingView;->sendMsg(ILjava/lang/String;)V

    return-void
.end method

.method public resetViewPager()V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mFragmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 228
    iget-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mViewPager:Lcom/powervision/base/views/NoScrollViewPager;

    invoke-virtual {v0}, Lcom/powervision/base/views/NoScrollViewPager;->removeAllViews()V

    .line 229
    iget-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mViewPager:Lcom/powervision/base/views/NoScrollViewPager;

    invoke-virtual {v0}, Lcom/powervision/base/views/NoScrollViewPager;->removeAllViewsInLayout()V

    .line 230
    invoke-direct {p0}, Lcom/powervision/camera/views/CameraSettingView;->initViewPager()V

    return-void
.end method

.method public setRightPadding(I)V
    .locals 2

    .line 607
    iget-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mRightLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/high16 v1, 0x42a00000    # 80.0f

    .line 608
    invoke-static {v1}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v1

    add-int/2addr v1, p1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 609
    iget-object v1, p0, Lcom/powervision/camera/views/CameraSettingView;->mRightLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 610
    iget-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mRightLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setPadding(IIII)V

    return-void
.end method

.method public showTimer_(Landroid/util/SparseArray;)V
    .locals 3
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xb3
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sparseArray.get(0) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CameraSettingView"

    invoke-static {v2, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 446
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 447
    invoke-virtual {p0}, Lcom/powervision/camera/views/CameraSettingView;->cancelTimer()V

    return-void

    .line 450
    :cond_0
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 452
    invoke-virtual {p0}, Lcom/powervision/camera/views/CameraSettingView;->cancelTimer()V

    return-void

    .line 456
    :cond_1
    iget-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mPhotoModeIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 457
    iget-boolean v0, p0, Lcom/powervision/camera/views/CameraSettingView;->isHandHeld:Z

    if-nez v0, :cond_2

    .line 458
    iget-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mTextTimer:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 459
    iget-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mTextTimer:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public updateBasicFragmentAdapter()V
    .locals 1

    .line 791
    iget-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mBasicSettingFragment:Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;

    if-eqz v0, :cond_0

    .line 792
    invoke-virtual {v0}, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->notifyAdapter()V

    :cond_0
    return-void
.end method

.method public updateGeneralAdapter()V
    .locals 1

    .line 785
    iget-object v0, p0, Lcom/powervision/camera/views/CameraSettingView;->mGeneralSettingFragment:Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;

    if-eqz v0, :cond_0

    .line 786
    invoke-virtual {v0}, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->notifyAdapter()V

    :cond_0
    return-void
.end method

.method public updatePhotoModeIcon(Landroid/util/SparseIntArray;)V
    .locals 2
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xa6
        threadMode = .enum Lcom/powervision/base/rxbus/ThreadMode;->MAIN:Lcom/powervision/base/rxbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 299
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    iput p1, p0, Lcom/powervision/camera/views/CameraSettingView;->resId:I

    .line 300
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "photo mode resId= "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/camera/views/CameraSettingView;->resId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    iget p1, p0, Lcom/powervision/camera/views/CameraSettingView;->resId:I

    if-eqz p1, :cond_0

    .line 302
    iget-object v1, p0, Lcom/powervision/camera/views/CameraSettingView;->mPhotoModeIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 304
    :cond_0
    iget-object p1, p0, Lcom/powervision/camera/views/CameraSettingView;->mPhotoModeIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/powervision/camera/views/CameraSettingView;->resId:I

    if-nez v1, :cond_1

    const/16 v0, 0x8

    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method
