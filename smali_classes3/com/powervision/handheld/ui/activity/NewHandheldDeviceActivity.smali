.class public Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "NewHandheldDeviceActivity.java"

# interfaces
.implements Lcom/powervision/handheld/ui/view/INewHandheldView;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetCameraAllParametersListener;
.implements Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetRestRecordTimeListener;
.implements Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetRestPhotoNumberListener;
.implements Lcom/powervision/handheld/ui/views/RockerView$OnDirectionAndDistanceListener;
.implements Lcom/powervision/handheld/ui/views/TouchRectangleView$TouchGuideListener;
.implements Lcom/powervision/base/views/AircraftGimBalView$GimbalSetAgent;
.implements Lcom/powervision/camera/camera/CameraListener$CameraNotifyEnableAudioListener;
.implements Lcom/powervision/handheld/utils/AudioRecordManager$VolumeListener;
.implements Lcom/powervision/base/listener/PhoneCallListener;
.implements Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnQueryActivationStatusListener;
.implements Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$Ap03DeviceConnectionChangeListener;
.implements Lcom/appunite/player/PVCamPlayerHelperExt$OnSurfaceSizeChangeListener;
.implements Lcom/powervision/base/listener/OnBleConnectListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseActivity<",
        "Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;",
        "Lcom/powervision/handheld/model/impl/HandheldModel;",
        ">;",
        "Lcom/powervision/handheld/ui/view/INewHandheldView;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetCameraAllParametersListener;",
        "Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetRestRecordTimeListener;",
        "Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetRestPhotoNumberListener;",
        "Lcom/powervision/handheld/ui/views/RockerView$OnDirectionAndDistanceListener;",
        "Lcom/powervision/handheld/ui/views/TouchRectangleView$TouchGuideListener;",
        "Lcom/powervision/base/views/AircraftGimBalView$GimbalSetAgent;",
        "Lcom/powervision/camera/camera/CameraListener$CameraNotifyEnableAudioListener;",
        "Lcom/powervision/handheld/utils/AudioRecordManager$VolumeListener;",
        "Lcom/powervision/base/listener/PhoneCallListener;",
        "Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnQueryActivationStatusListener;",
        "Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$Ap03DeviceConnectionChangeListener;",
        "Lcom/appunite/player/PVCamPlayerHelperExt$OnSurfaceSizeChangeListener;",
        "Lcom/powervision/base/listener/OnBleConnectListener;",
        "Landroid/view/TextureView$SurfaceTextureListener;",
        "Landroid/media/AudioManager$OnAudioFocusChangeListener;"
    }
.end annotation


# static fields
.field private static final ACTION_CODE_SHOW_TOAST:I = 0x7

.field private static final ACTION_CODE_START_RECORD:I = 0x1

.field private static final ACTION_CODE_STOP_RECORD:I = 0x2

.field private static final ACTION_CODE_SWITCH_PHOTO:I = 0x6

.field private static final ACTION_CODE_SWITCH_RECORD:I = 0x5

.field private static final ACTION_CODE_TAKE_PHOTO:I = 0x8

.field private static final ACTION_CODE_TAKE_PHOTO_FAIL:I = 0xd

.field private static final ACTION_GET_CAMERA_PHOTO_NUMBER:I = 0x18

.field private static final CONNECT_CAMERA_SUCCESS:I = 0x9

.field private static final DISCONNECT_CAMERA:I = 0xa

.field private static final GET_CURRENT_ALL_PARAMS:I = 0x10

.field private static final GET_DEVICE_BATTERY:I = 0x0

.field private static final GET_GIMBAL_MODE:I = 0x13

.field private static final HANDHELD_CAMERA_HIGH_TEMPERATURE:I = 0x1e

.field private static final HANDHELD_GUIDE_GET_GESTURE_FIRST_STATE:I = 0x25

.field private static final HANDHELD_GUIDE_START_FOLLOW:I = 0x23

.field private static final HANDHELD_GUIDE_STOP_FOLLOW:I = 0x24

.field private static final HANDHELD_HIDE_BLURRY_VIEW:I = 0x1f

.field private static final HANDHELD_POST_GET_GUIDE_STATUS:I = 0x20

.field private static final HANDHELD_POST_SET_GESTURE_TYPE:I = 0x21

.field private static final HANDHELD_POST_SHOW_GESTURE_COMPLETE:I = 0x22

.field private static final HIDE_DELAY_TOAST:I = 0x15

.field private static final HIDE_SLOW_MOTION_TOAST:I = 0x17

.field private static final HIDE_VIDEO_TIME_VIEWS:I = 0x1b

.field private static final NEW_INTENT_EXTRA:Ljava/lang/String; = "intent_extra"

.field private static final PARAM_GET_LAST_TIME_NUM:I = 0x4

.field private static final PARAM_GET_RECORD_TIME_START:I = 0x12

.field private static final PARAM_UPDATE_CAMERA_PARAMS:I = 0x11

.field private static final PARAM_UPDATE_PHOTO_NUM_START:I = 0xb

.field private static final PARAM_UPDATE_RECCORD_TIME_START:I = 0xc

.field private static final PARAM_UPDATE_RECORD_TIME:I = 0x3

.field private static final REMIND_STORAGE_FULL:I = 0x17

.field private static final SCREEN_ORIENTATION:I = 0x1a

.field private static final SET_GIMBAL_MODE:I = 0x14

.field private static final SET_GIMBAL_MODE_DELAY:I = 0x1c

.field private static final SURFACE_CHANGE_SIZE:I = 0x1d

.field private static final SWITCH_FAIL:I = 0x16

.field private static final VOLUME_CHANGE:I = 0x19


# instance fields
.field private MODE_SCREEN_4_3:Z

.field adapter:Landroid/bluetooth/BluetoothAdapter;

.field private alertDialog:Landroidx/appcompat/app/AlertDialog;

.field alphaAnimation:Landroid/animation/ObjectAnimator;

.field private alpha_view:Landroid/view/View;

.field private audioRecordManager:Lcom/powervision/handheld/utils/AudioRecordManager;

.field private autoTransition:Landroidx/transition/AutoTransition;

.field private batteryValue:F

.field private blueToothConnectReceiver:Lcom/powervision/base/recevier/BlueToothConnectReceiver;

.field captureMode:I

.field private clRootContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private closeLayout:Landroid/widget/RelativeLayout;

.field private contentView:Landroid/view/View;

.field private currentItem:Ljava/lang/String;

.field private currentNum:I

.field deviceConnectType:I

.field private dialog:Landroidx/appcompat/app/AlertDialog;

.field private disposable:Lio/reactivex/disposables/Disposable;

.field private enable2:Z

.field private enable3:Z

.field private evOnly:Z

.field executedHandheldGuide:Z

.field private flexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

.field private flickerAnimation:Landroid/view/animation/Animation;

.field private followList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field fps:I

.field private generalSettingView:Lcom/powervision/handheld/ui/views/HandleGeneralSetting;

.field private getMode:I

.field private height:I

.field private histogramLayout:Lcom/powervision/camera/views/HistogramLayout;

.field private isBatteryLow:Z

.field private isBatteryWarn:Z

.field isFirstBasicGuide:Z

.field private isFullScreen:Z

.field private isFunctional:Z

.field private isGestureRecord:Z

.field private isPhoto:Z

.field private isReverse:Z

.field private isTakingImageAnimate:Z

.field private isVertical:Z

.field private landSet:Landroidx/constraintlayout/widget/ConstraintSet;

.field private liveCode:Ljava/lang/String;

.field private liveStreamDialog:Lcom/powervision/base/dialog/LiveStreamDialog;

.field private mAircraftGimBalView:Lcom/powervision/base/views/AircraftGimBalView;

.field private mAlphaAnimation:Landroid/animation/ObjectAnimator;

.field private mAudioImg:Landroid/widget/ImageView;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBatteryImg:Landroid/widget/ImageView;

.field private mBatteryText:Landroid/widget/TextView;

.field private mBlurryView:Landroid/widget/ImageView;

.field private mCameraSetImg:Landroid/widget/ImageView;

.field private mCameraSettingView:Lcom/powervision/camera/views/CameraNewSettingView;

.field private mCameraTemperatureIv:Landroid/widget/ImageView;

.field private mCountDownTime:Landroid/widget/TextView;

.field private mCustomLinesView:Lcom/powervision/base/views/CustomLinesView;

.field private mDisConenctText:Landroid/widget/TextView;

.field private mGeneralImg:Landroid/widget/ImageView;

.field private mGimbalModeImg:Landroid/widget/ImageView;

.field private mGimbalModeText:Landroid/widget/TextView;

.field private mGuideStub:Landroid/view/ViewStub;

.field private mHPickerView:Lcom/powervision/base/views/HPickerView;

.field private mHandheldBasicGuideView:Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;

.field private mHandheldGuideStubLayout:Lcom/powervision/handheld/ui/views/HandheldGuideView;

.field private mHandler:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;

.field private mHomeBack:Landroid/widget/ImageView;

.field private mImageDot1:Landroid/widget/ImageView;

.field private mImageDot2:Landroid/widget/ImageView;

.field private mImageFps:Landroid/widget/ImageView;

.field private mImageFpsMarker:Landroid/widget/ImageView;

.field private mImageRecordMarker:Landroid/widget/ImageView;

.field private mIsFollowing:Z

.field private mIsTakePhotoState:Z

.field private mLayoutDelayRecord:Landroid/widget/LinearLayout;

.field private mLayoutDelaySet:Landroid/widget/LinearLayout;

.field private mLayoutFps:Landroid/widget/LinearLayout;

.field private mLayoutRecord:Landroid/widget/RelativeLayout;

.field private mLayoutSlowMotion:Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;

.field private mLiveStatusView:Lcom/powervision/base/views/LiveStatusView;

.field mLiveStreamEnabled:Z

.field private mLoopShutter:Lcom/powervision/base/views/loopview/LoopView;

.field private mLoopTime:Lcom/powervision/base/views/loopview/LoopView;

.field private mMediaImg:Lcom/powervision/base/views/AnimateImageView;

.field private mNewCameraParamView:Lcom/powervision/handheld/ui/views/NewCameraParamView;

.field private mNoiseOpen:Landroid/widget/TextView;

.field private mPhoneReceiver:Lcom/powervision/base/recevier/PhoneReceiver;

.field private mReceiverTag:Z

.field private mRecordClose:Landroid/widget/TextView;

.field private mRecordOpen:Landroid/widget/TextView;

.field private mRelativeLayout:Landroid/widget/RelativeLayout;

.field private mRockerView:Lcom/powervision/handheld/ui/views/RockerView;

.field private mRootViewGroup:Landroid/view/ViewGroup;

.field private mRxPermission:Lcom/tbruyelle/rxpermissions2/RxPermissions;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSignalStatus:Landroid/widget/ImageView;

.field private mSoundUtil:Lcom/powervision/base/utils/SoundPoolUtils;

.field private mSurfaceGroupLayout:Landroid/widget/RelativeLayout;

.field private mSurfaceView:Landroid/view/TextureView;

.field private mTakeCameraImg:Lcom/powervision/base/views/AnimateImageView;

.field private mTemperatureTimer:Ljava/util/Timer;

.field private mTextBornTime:Landroid/widget/TextView;

.field private mTextDelayProgress:Landroid/widget/TextView;

.field private mTextDelayShow:Landroid/widget/TextView;

.field private mTextDelayTotal:Landroid/widget/TextView;

.field private mTextFps:Landroid/widget/TextView;

.field private mTextMode:Landroid/widget/TextView;

.field private mTextMulNum:Landroid/widget/TextView;

.field private mTextRecordTime:Landroid/widget/TextView;

.field private mTextRestTime:Landroid/widget/TextView;

.field private mTextResultTime:Landroid/widget/TextView;

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;

.field private mTimerTemperatureTask:Ljava/util/TimerTask;

.field private mTouchRectangleView:Lcom/powervision/handheld/ui/views/TouchRectangleView;

.field private mViewPaddingEnd:I

.field private mViewPaddingStart:I

.field private mViewPaddingTop:I

.field mViewPaddingTopBackUp:I

.field private modelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private noiseLayout:Landroid/widget/RelativeLayout;

.field private popupWindow:Landroid/widget/PopupWindow;

.field private portSet:Landroidx/constraintlayout/widget/ConstraintSet;

.field private preItem:Ljava/lang/String;

.field private progressBar:Lcom/powervision/base/views/LoadingProgressBar;

.field private pushUrl:Ljava/lang/String;

.field private recordLayout:Landroid/widget/RelativeLayout;

.field private recordingTime:I

.field result:I

.field private sb:Ljava/lang/StringBuilder;

.field private setMode:I

.field private sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

.field showTemperatureDialog:Z

.field shutter:I

.field time:I

.field private timer:Landroid/os/CountDownTimer;

.field private timerCount:I

.field private tryAgain:I

.field private url:Ljava/lang/String;

.field private warns:Lcom/powervision/base/warning/manager/WarningManager;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 157
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 241
    iput-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFullScreen:Z

    .line 242
    iput-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFunctional:Z

    .line 245
    iput-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isTakingImageAnimate:Z

    .line 254
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->followList:Ljava/util/List;

    const/4 v1, 0x1

    .line 260
    iput-boolean v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->enable2:Z

    .line 261
    iput-boolean v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->enable3:Z

    .line 262
    iput-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->evOnly:Z

    .line 272
    iput v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->deviceConnectType:I

    .line 280
    iput v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->tryAgain:I

    .line 302
    iput-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFirstBasicGuide:Z

    .line 303
    iput-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->executedHandheldGuide:Z

    .line 305
    iput-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->MODE_SCREEN_4_3:Z

    .line 565
    iput-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mReceiverTag:Z

    const-string v2, ""

    .line 647
    iput-object v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->preItem:Ljava/lang/String;

    const/4 v3, 0x5

    .line 748
    iput v3, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->shutter:I

    const/16 v3, 0x258

    .line 749
    iput v3, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->time:I

    const/16 v3, 0x1e

    .line 751
    iput v3, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->fps:I

    .line 760
    iput v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->captureMode:I

    .line 3512
    iput v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->recordingTime:I

    .line 3558
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->adapter:Landroid/bluetooth/BluetoothAdapter;

    .line 3560
    new-instance v3, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;

    invoke-direct {v3, p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V

    iput-object v3, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandler:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;

    .line 3751
    iput-boolean v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLiveStreamEnabled:Z

    .line 4558
    iput-object v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->url:Ljava/lang/String;

    .line 4559
    iput-object v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->liveCode:Ljava/lang/String;

    .line 4560
    iput-object v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->pushUrl:Ljava/lang/String;

    .line 4880
    iput-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mIsTakePhotoState:Z

    .line 4892
    iput-boolean v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->showTemperatureDialog:Z

    .line 4937
    iput v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->timerCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V
    .locals 0

    .line 157
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->registerPhoneStateReceiver()V

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V
    .locals 0

    .line 157
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mRecordPop()V

    return-void
.end method

.method static synthetic access$1000(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/base/views/loopview/LoopView;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLoopTime:Lcom/powervision/base/views/loopview/LoopView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/TextView;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextResultTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Z
    .locals 0

    .line 157
    iget-boolean p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFunctional:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;Z)Z
    .locals 0

    .line 157
    iput-boolean p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFunctional:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)I
    .locals 0

    .line 157
    iget p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->currentNum:I

    return p0
.end method

.method static synthetic access$1602(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;I)I
    .locals 0

    .line 157
    iput p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->currentNum:I

    return p1
.end method

.method static synthetic access$1700(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/base/views/AnimateImageView;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTakeCameraImg:Lcom/powervision/base/views/AnimateImageView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V
    .locals 0

    .line 157
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->showDelayLoading()V

    return-void
.end method

.method static synthetic access$1900(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V
    .locals 0

    .line 157
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->startDelay()V

    return-void
.end method

.method static synthetic access$200(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/base/views/LoadingProgressBar;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->progressBar:Lcom/powervision/base/views/LoadingProgressBar;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Ljava/util/Timer;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)I
    .locals 0

    .line 157
    iget p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->recordingTime:I

    return p0
.end method

.method static synthetic access$2204(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)I
    .locals 1

    .line 157
    iget v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->recordingTime:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->recordingTime:I

    return v0
.end method

.method static synthetic access$2300(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLayoutRecord:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/TextView;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextRecordTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/view/View;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->alpha_view:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/TextView;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextMode:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/TextView;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextMulNum:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Z
    .locals 0

    .line 157
    iget-boolean p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFullScreen:Z

    return p0
.end method

.method static synthetic access$2900(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;Z)V
    .locals 0

    .line 157
    invoke-direct {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->setTimeFucVisible(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLayoutSlowMotion:Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGeneralImg:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHomeBack:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraSetImg:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/base/views/AnimateImageView;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mMediaImg:Lcom/powervision/base/views/AnimateImageView;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;Z)V
    .locals 0

    .line 157
    invoke-direct {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->goFullScreen(Z)V

    return-void
.end method

.method static synthetic access$3500(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Z
    .locals 0

    .line 157
    iget-boolean p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->enable2:Z

    return p0
.end method

.method static synthetic access$3502(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;Z)Z
    .locals 0

    .line 157
    iput-boolean p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->enable2:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Z
    .locals 0

    .line 157
    iget-boolean p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->enable3:Z

    return p0
.end method

.method static synthetic access$3602(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;Z)Z
    .locals 0

    .line 157
    iput-boolean p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->enable3:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Z
    .locals 0

    .line 157
    iget-boolean p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->evOnly:Z

    return p0
.end method

.method static synthetic access$3702(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;Z)Z
    .locals 0

    .line 157
    iput-boolean p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->evOnly:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/camera/views/CameraNewSettingView;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraNewSettingView;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;Z)V
    .locals 0

    .line 157
    invoke-direct {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->setFucVisible(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/base/dialog/LiveStreamDialog;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->liveStreamDialog:Lcom/powervision/base/dialog/LiveStreamDialog;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLayoutFps:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/TextView;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextFps:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;I)V
    .locals 0

    .line 157
    invoke-direct {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->setSlowMarkerVisibility(I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mImageFps:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandler:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Z
    .locals 0

    .line 157
    iget-boolean p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isBatteryLow:Z

    return p0
.end method

.method static synthetic access$4502(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;Z)Z
    .locals 0

    .line 157
    iput-boolean p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isBatteryLow:Z

    return p1
.end method

.method static synthetic access$4600(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->dialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$4602(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;Landroidx/appcompat/app/AlertDialog;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->dialog:Landroidx/appcompat/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/base/warning/manager/WarningManager;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->warns:Lcom/powervision/base/warning/manager/WarningManager;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/TextView;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCountDownTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLayoutDelaySet:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Ljava/lang/String;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->preItem:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/TextView;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextDelayShow:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$502(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->preItem:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAudioImg:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mImageRecordMarker:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Z
    .locals 0

    .line 157
    iget-boolean p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isVertical:Z

    return p0
.end method

.method static synthetic access$5400(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLayoutDelayRecord:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$5500(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mImageDot2:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$5600(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;Landroid/view/View;)V
    .locals 0

    .line 157
    invoke-direct {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->startAnimation(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/TextView;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextDelayProgress:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/TextView;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextDelayTotal:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$5900(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/TextView;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextRestTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/base/views/HPickerView;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHPickerView:Lcom/powervision/base/views/HPickerView;

    return-object p0
.end method

.method static synthetic access$6000(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/TextView;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextBornTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$6100(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V
    .locals 0

    .line 157
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->resetDelayCapture()V

    return-void
.end method

.method static synthetic access$6200(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/base/base/BaseModel;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mModel:Lcom/powervision/base/base/BaseModel;

    return-object p0
.end method

.method static synthetic access$6300(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/base/views/AircraftGimBalView;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAircraftGimBalView:Lcom/powervision/base/views/AircraftGimBalView;

    return-object p0
.end method

.method static synthetic access$6400(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/base/utils/SharedPreferencesUtils;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    return-object p0
.end method

.method static synthetic access$6500(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/PopupWindow;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->popupWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$6600(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V
    .locals 0

    .line 157
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->stopRecordAudio()V

    return-void
.end method

.method static synthetic access$6700(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/handheld/utils/AudioRecordManager;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->audioRecordManager:Lcom/powervision/handheld/utils/AudioRecordManager;

    return-object p0
.end method

.method static synthetic access$6800(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V
    .locals 0

    .line 157
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->startRecordAudio()V

    return-void
.end method

.method static synthetic access$6900(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;Landroid/os/Message;)V
    .locals 0

    .line 157
    invoke-direct {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->dealWithMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$700(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;Ljava/lang/String;)V
    .locals 0

    .line 157
    invoke-direct {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->doClickCameraSwitch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7000(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Ljava/lang/String;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->url:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$7002(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->url:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7100(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Ljava/lang/String;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->liveCode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$7102(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->liveCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7200(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Ljava/lang/String;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->pushUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$7202(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->pushUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7300(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Ljava/lang/StringBuilder;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->sb:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method static synthetic access$7302(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->sb:Ljava/lang/StringBuilder;

    return-object p1
.end method

.method static synthetic access$7400(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V
    .locals 0

    .line 157
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->showTimeDown()V

    return-void
.end method

.method static synthetic access$7500(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/base/views/LiveStatusView;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLiveStatusView:Lcom/powervision/base/views/LiveStatusView;

    return-object p0
.end method

.method static synthetic access$7600(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)I
    .locals 0

    .line 157
    iget p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->timerCount:I

    return p0
.end method

.method static synthetic access$7604(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)I
    .locals 1

    .line 157
    iget v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->timerCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->timerCount:I

    return v0
.end method

.method static synthetic access$7700(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V
    .locals 0

    .line 157
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->onStopHighTemperatureAnimation()V

    return-void
.end method

.method static synthetic access$7800(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraTemperatureIv:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;Ljava/lang/String;)V
    .locals 0

    .line 157
    invoke-direct {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->changeMode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/base/views/loopview/LoopView;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLoopShutter:Lcom/powervision/base/views/loopview/LoopView;

    return-object p0
.end method

.method private addAndRemoveCameraSettingsView()V
    .locals 10

    .line 1174
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mRootViewGroup:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1176
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/ViewGroup;

    .line 1177
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mRootViewGroup:Landroid/view/ViewGroup;

    .line 1179
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCameraSettingView = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraNewSettingView;

    const/4 v3, 0x1

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 1180
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraNewSettingView;

    if-nez v0, :cond_4

    .line 1181
    new-instance v0, Lcom/powervision/camera/views/CameraNewSettingView;

    .line 1182
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v2

    sget v4, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_PHOTO:I

    if-ne v2, v4, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    const/4 v7, 0x0

    iget-boolean v8, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isVertical:Z

    const/4 v9, 0x1

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/powervision/camera/views/CameraNewSettingView;-><init>(Landroid/content/Context;ZIZZ)V

    iput-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraNewSettingView;

    .line 1184
    iget v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mViewPaddingStart:I

    invoke-virtual {v0, v1}, Lcom/powervision/camera/views/CameraNewSettingView;->setViewPaddingStart(I)V

    .line 1185
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mRootViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraNewSettingView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1186
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraNewSettingView;

    iget-boolean v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isVertical:Z

    if-eqz v1, :cond_3

    sget v1, Lcom/powervision/handheld/R$anim;->anim_bottom_in:I

    goto :goto_2

    :cond_3
    sget v1, Lcom/powervision/handheld/R$anim;->anim_left_in:I

    :goto_2
    invoke-static {v0, v1}, Lcom/powervision/base/utils/AnimUtils;->startAnimation(Landroid/view/View;I)V

    .line 1188
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->evOnly:Z

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->setEvOnly(Z)V

    .line 1189
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandler:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;

    new-instance v1, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$buSyVJN8txaLAw36EshMP86feiA;

    invoke-direct {v1, p0}, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$buSyVJN8txaLAw36EshMP86feiA;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 1196
    :cond_4
    iget-boolean v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isVertical:Z

    if-eqz v1, :cond_5

    sget v1, Lcom/powervision/handheld/R$anim;->anim_bottom_out:I

    goto :goto_3

    :cond_5
    sget v1, Lcom/powervision/handheld/R$anim;->anim_left_out:I

    :goto_3
    invoke-static {v0, v1}, Lcom/powervision/base/utils/AnimUtils;->startAnimation(Landroid/view/View;I)V

    .line 1198
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mRootViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraNewSettingView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 1199
    iput-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraNewSettingView;

    :goto_4
    return-void
.end method

.method private addAndRemoveHandheldSettingView(I)V
    .locals 3

    .line 1160
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 1161
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 1162
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->generalSettingView:Lcom/powervision/handheld/ui/views/HandleGeneralSetting;

    if-nez v0, :cond_0

    .line 1163
    new-instance v0, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;

    iget-boolean v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isVertical:Z

    invoke-direct {v0, p0, v1}, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->generalSettingView:Lcom/powervision/handheld/ui/views/HandleGeneralSetting;

    .line 1164
    iget v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mViewPaddingTop:I

    iget v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mViewPaddingEnd:I

    invoke-virtual {v0, v1, v2}, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->setNotchPadding(II)V

    .line 1165
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->generalSettingView:Lcom/powervision/handheld/ui/views/HandleGeneralSetting;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 1167
    :cond_0
    invoke-virtual {v0}, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->release()V

    .line 1168
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->generalSettingView:Lcom/powervision/handheld/ui/views/HandleGeneralSetting;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 1169
    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->generalSettingView:Lcom/powervision/handheld/ui/views/HandleGeneralSetting;

    :goto_0
    return-void
.end method

.method private cameraConnectStatusInit()V
    .locals 3

    .line 4413
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraSetImg:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 4414
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHPickerView:Lcom/powervision/base/views/HPickerView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/powervision/base/views/HPickerView;->setIsAuto(Z)V

    .line 4415
    iput-boolean v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->enable2:Z

    .line 4416
    iput-boolean v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->enable3:Z

    .line 4417
    iput-boolean v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->evOnly:Z

    .line 4418
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->evOnly:Z

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->setEvOnly(Z)V

    .line 4419
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraNewSettingView;

    if-eqz v0, :cond_0

    .line 4420
    iget-boolean v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->enable2:Z

    iget-boolean v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->enable3:Z

    invoke-virtual {v0, v1, v2}, Lcom/powervision/camera/views/CameraNewSettingView;->setCameraSettingEnable(ZZ)V

    :cond_0
    return-void
.end method

.method private cameraDisconnectStatusReset()V
    .locals 5

    const/4 v0, 0x0

    .line 4355
    iput-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFunctional:Z

    .line 4357
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHomeBack:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4358
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHomeBack:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 4359
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGeneralImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4360
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGeneralImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 4361
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mMediaImg:Lcom/powervision/base/views/AnimateImageView;

    invoke-virtual {v1, v0}, Lcom/powervision/base/views/AnimateImageView;->setVisibility(I)V

    .line 4362
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mMediaImg:Lcom/powervision/base/views/AnimateImageView;

    invoke-virtual {v1, v2}, Lcom/powervision/base/views/AnimateImageView;->setEnabled(Z)V

    .line 4363
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraSetImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4364
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraSetImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 4366
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->preItem:Ljava/lang/String;

    sget v3, Lcom/powervision/handheld/R$string;->AP03_DV_MediaLib_2:I

    invoke-virtual {p0, v3}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    .line 4367
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTakeCameraImg:Lcom/powervision/base/views/AnimateImageView;

    sget v4, Lcom/powervision/handheld/R$mipmap;->icon_capture:I

    invoke-virtual {v1, v4}, Lcom/powervision/base/views/AnimateImageView;->setImageResource(I)V

    .line 4368
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTakeCameraImg:Lcom/powervision/base/views/AnimateImageView;

    invoke-virtual {v1, v2}, Lcom/powervision/base/views/AnimateImageView;->setEnabled(Z)V

    .line 4369
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mImageFpsMarker:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4370
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mImageFps:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4371
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAudioImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4372
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mImageRecordMarker:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4373
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextMulNum:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4374
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCountDownTime:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4375
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextMode:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 4376
    :cond_0
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->preItem:Ljava/lang/String;

    sget v4, Lcom/powervision/handheld/R$string;->AP03_DV_MediaLib_3:I

    invoke-virtual {p0, v4}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4377
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTakeCameraImg:Lcom/powervision/base/views/AnimateImageView;

    sget v3, Lcom/powervision/handheld/R$mipmap;->icon_record:I

    invoke-virtual {v1, v3}, Lcom/powervision/base/views/AnimateImageView;->setImageResource(I)V

    .line 4378
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTakeCameraImg:Lcom/powervision/base/views/AnimateImageView;

    invoke-virtual {v1, v2}, Lcom/powervision/base/views/AnimateImageView;->setEnabled(Z)V

    .line 4379
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mMediaImg:Lcom/powervision/base/views/AnimateImageView;

    sget v3, Lcom/powervision/handheld/R$mipmap;->handheld_media_icon:I

    invoke-virtual {v1, v3}, Lcom/powervision/base/views/AnimateImageView;->setImageResource(I)V

    .line 4380
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mMediaImg:Lcom/powervision/base/views/AnimateImageView;

    invoke-virtual {v1, v2}, Lcom/powervision/base/views/AnimateImageView;->setEnabled(Z)V

    .line 4381
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAudioImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4382
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mImageRecordMarker:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4383
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->cameraStopRecording()V

    .line 4384
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->stopAnimation()V

    goto :goto_0

    .line 4385
    :cond_1
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->preItem:Ljava/lang/String;

    sget v4, Lcom/powervision/handheld/R$string;->AP03_DV_FuncGuide_13:I

    invoke-virtual {p0, v4}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4386
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTakeCameraImg:Lcom/powervision/base/views/AnimateImageView;

    sget v4, Lcom/powervision/handheld/R$mipmap;->icon_delay_photo:I

    invoke-virtual {v1, v4}, Lcom/powervision/base/views/AnimateImageView;->setImageResource(I)V

    .line 4387
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTakeCameraImg:Lcom/powervision/base/views/AnimateImageView;

    invoke-virtual {v1, v2}, Lcom/powervision/base/views/AnimateImageView;->setEnabled(Z)V

    .line 4388
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->resetDelayCapture()V

    .line 4389
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAudioImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4390
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mImageRecordMarker:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4391
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mImageFpsMarker:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4392
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mImageFps:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 4393
    :cond_2
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->preItem:Ljava/lang/String;

    sget v4, Lcom/powervision/handheld/R$string;->AP03_DV_Msg_18:I

    invoke-virtual {p0, v4}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4394
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTakeCameraImg:Lcom/powervision/base/views/AnimateImageView;

    sget v4, Lcom/powervision/handheld/R$mipmap;->icon_slow_motion:I

    invoke-virtual {v1, v4}, Lcom/powervision/base/views/AnimateImageView;->setImageResource(I)V

    .line 4395
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTakeCameraImg:Lcom/powervision/base/views/AnimateImageView;

    invoke-virtual {v1, v2}, Lcom/powervision/base/views/AnimateImageView;->setEnabled(Z)V

    .line 4396
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mMediaImg:Lcom/powervision/base/views/AnimateImageView;

    sget v4, Lcom/powervision/handheld/R$mipmap;->handheld_media_icon:I

    invoke-virtual {v1, v4}, Lcom/powervision/base/views/AnimateImageView;->setImageResource(I)V

    .line 4397
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mMediaImg:Lcom/powervision/base/views/AnimateImageView;

    invoke-virtual {v1, v2}, Lcom/powervision/base/views/AnimateImageView;->setEnabled(Z)V

    .line 4398
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAudioImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4399
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mImageRecordMarker:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4400
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mImageFpsMarker:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4401
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mImageFps:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4402
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLayoutSlowMotion:Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;

    invoke-virtual {v1, v3}, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->setVisibility(I)V

    .line 4403
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->stopAnimation()V

    .line 4404
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->cameraStopRecording()V

    .line 4406
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTakeCameraImg:Lcom/powervision/base/views/AnimateImageView;

    invoke-virtual {v1, v0}, Lcom/powervision/base/views/AnimateImageView;->setVisibility(I)V

    .line 4407
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHPickerView:Lcom/powervision/base/views/HPickerView;

    invoke-virtual {v1, v0}, Lcom/powervision/base/views/HPickerView;->setVisibility(I)V

    .line 4408
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHPickerView:Lcom/powervision/base/views/HPickerView;

    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->modelList:Ljava/util/List;

    iget-object v3, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->preItem:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/HPickerView;->setSclollSelectIndex(I)V

    .line 4409
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHPickerView:Lcom/powervision/base/views/HPickerView;

    invoke-virtual {v0, v2}, Lcom/powervision/base/views/HPickerView;->setCallBackResult(Z)V

    return-void
.end method

.method private cancleTemperatureTask()V
    .locals 2

    .line 4960
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTemperatureTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTimerTemperatureTask:Ljava/util/TimerTask;

    if-eqz v1, :cond_0

    .line 4961
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 4962
    iput v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->timerCount:I

    const/4 v0, 0x0

    .line 4963
    iput-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTimerTemperatureTask:Ljava/util/TimerTask;

    .line 4964
    iput-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTemperatureTimer:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method private changeMode(Ljava/lang/String;)V
    .locals 3

    .line 911
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resolution = item = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resolution = preItem = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->preItem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delayCapture : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->shutter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->result:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 914
    sget v0, Lcom/powervision/handheld/R$string;->AP03_DV_FuncGuide_13:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 915
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Lapse = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->result:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 916
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->preItem:Ljava/lang/String;

    sget v0, Lcom/powervision/handheld/R$string;->AP03_DV_MediaLib_3:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->preItem:Ljava/lang/String;

    sget v0, Lcom/powervision/handheld/R$string;->AP03_DV_Msg_18:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 920
    :cond_0
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast p1, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    const/4 v0, 0x5

    iget v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->shutter:I

    iget v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->result:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->setCaptureMode(III)V

    goto/16 :goto_2

    .line 918
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast p1, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-virtual {p1, v1}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->switchRecordToPhoto(Z)V

    goto/16 :goto_2

    .line 922
    :cond_2
    sget v0, Lcom/powervision/handheld/R$string;->AP03_DV_Msg_18:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 924
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mPresenter.getCameraCurrentResolution() save = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-virtual {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->getCameraCurrentResolution()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  preItem = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->preItem:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 926
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast p1, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-virtual {p1}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->isSlowMotionMode()Z

    move-result p1

    if-nez p1, :cond_3

    .line 927
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mPresenter.getCameraCurrentResolution() save == "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-virtual {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->getCameraCurrentResolution()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 928
    invoke-static {}, Lcom/powervision/base/utils/SPHelperUtils;->getInstance()Lcom/powervision/base/utils/SPHelperUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-virtual {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->getCameraCurrentResolution()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/powervision/base/utils/SPHelperUtils;->saveResolution(I)V

    .line 930
    :cond_3
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->preItem:Ljava/lang/String;

    sget v0, Lcom/powervision/handheld/R$string;->AP03_DV_MediaLib_2:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->preItem:Ljava/lang/String;

    sget v0, Lcom/powervision/handheld/R$string;->AP03_DV_FuncGuide_13:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    .line 933
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mPresenter.getCameraCurrentResolution() = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-virtual {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->getCameraCurrentResolution()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 934
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast p1, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-virtual {p1}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->isSlowMotionMode()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 935
    invoke-static {}, Lcom/powervision/base/utils/SPHelperUtils;->getInstance()Lcom/powervision/base/utils/SPHelperUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/base/utils/SPHelperUtils;->getSlowResolution()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->setSlowMotionModeSuccess(I)V

    goto :goto_2

    .line 937
    :cond_5
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast p1, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {}, Lcom/powervision/base/utils/SPHelperUtils;->getInstance()Lcom/powervision/base/utils/SPHelperUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/utils/SPHelperUtils;->getSlowResolution()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->setVideoResolution(I)V

    goto :goto_2

    .line 931
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast p1, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-virtual {p1, v1}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->switchPhotoToRecord(Z)V

    :cond_7
    :goto_2
    return-void
.end method

.method private changeToSlowMotion()V
    .locals 3

    .line 2189
    sget v0, Lcom/powervision/handheld/R$string;->AP03_DV_Msg_18:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->preItem:Ljava/lang/String;

    .line 2190
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHPickerView:Lcom/powervision/base/views/HPickerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/HPickerView;->setCallBackResult(Z)V

    .line 2192
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextDelayShow:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2194
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLayoutDelaySet:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2195
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLayoutDelayRecord:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2196
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextMode:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2197
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAudioImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2198
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mImageRecordMarker:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x0

    .line 2199
    invoke-direct {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->setSlowMarkerVisibility(I)V

    .line 2200
    invoke-direct {p0, v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->setFucVisible(Z)V

    .line 2201
    iput-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->enable2:Z

    .line 2202
    iput-boolean v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->enable3:Z

    .line 2203
    iput-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->evOnly:Z

    .line 2204
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraNewSettingView;

    if-eqz v0, :cond_0

    .line 2205
    invoke-virtual {v0}, Lcom/powervision/camera/views/CameraNewSettingView;->switchCamerMenuStatus()V

    .line 2207
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getRemainingCapacity()V

    .line 2208
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-virtual {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->getCameraCurrentResolution()I

    move-result v0

    .line 2209
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mImageFps:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/powervision/camera/utils/CameraUtil;->getCurrentResolutionImg(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private checkReverse()V
    .locals 3

    .line 733
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const-string v1, "AP03_MIRROR_REVERSE_SWITCH"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 735
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    const/4 v1, 0x1

    .line 736
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 737
    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->surfaceMirrorReverse(Landroid/util/SparseBooleanArray;)V

    :cond_0
    return-void
.end method

.method private checkSdCardLowSpeed()Z
    .locals 4

    .line 4731
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->isSlowSpeedCard()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4732
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getDeviceCurrentStorageTypeSD()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4733
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 4736
    :cond_0
    sget v0, Lcom/lewis/camera/R$string;->AP03_CameraSetting_69:I

    .line 4737
    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/lewis/camera/R$string;->AP03_ConnectGuide_47:I

    .line 4738
    invoke-virtual {p0, v2}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 4736
    invoke-static {p0, v3, v0, v2, v3}, Lcom/powervision/base/utils/DialogUtils;->defaultDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 4739
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private currentStorageFull(Z)V
    .locals 8

    .line 2532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCameraCurrentStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2533
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "getPhotoGraphType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2534
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getPhotoGraphType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wang"

    .line 2532
    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2535
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    sget v1, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_RECORDING:I

    if-ne v0, v1, :cond_0

    .line 2536
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandler:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;->sendEmptyMessage(I)Z

    .line 2537
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->setCameraCurrentStatus(I)V

    goto :goto_0

    .line 2538
    :cond_0
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    if-nez v0, :cond_1

    .line 2539
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getPhotoGraphType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 2540
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->stopDelayCapture()V

    goto :goto_0

    .line 2541
    :cond_1
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    sget v1, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_RECORD:I

    if-ne v0, v1, :cond_2

    return-void

    .line 2543
    :cond_2
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    sget v1, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_PHOTO:I

    if-ne v0, v1, :cond_3

    return-void

    .line 2546
    :cond_3
    :goto_0
    sget v0, Lcom/powervision/handheld/R$string;->AP03_CameraSetting_65:I

    if-nez p1, :cond_4

    .line 2548
    sget v0, Lcom/powervision/handheld/R$string;->AP03_DV_CameraSetting_65_1:I

    .line 2550
    :cond_4
    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/powervision/handheld/R$string;->AP03_DV_TimeLapsePhoto_7:I

    .line 2551
    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lcom/powervision/handheld/R$string;->AP03_DV_TimeLapsePhoto_6:I

    .line 2552
    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$lr9-sO8HaVxg0tsy_dc6OUUvFVY;

    invoke-direct {v6, p1}, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$lr9-sO8HaVxg0tsy_dc6OUUvFVY;-><init>(Z)V

    new-instance v7, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$RG91hzwIwVau-IN4e6D_KzlhpYU;

    invoke-direct {v7, p1}, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$RG91hzwIwVau-IN4e6D_KzlhpYU;-><init>(Z)V

    const-string v2, ""

    move-object v1, p0

    .line 2550
    invoke-static/range {v1 .. v7}, Lcom/powervision/base/utils/DialogUtils;->customDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/powervision/base/utils/DialogUtils$OnClickListener;Lcom/powervision/base/utils/DialogUtils$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private dealWithMessage(Landroid/os/Message;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3859
    iget v2, v1, Landroid/os/Message;->what:I

    const/16 v3, 0x14

    const/16 v4, 0xa

    const/4 v5, 0x5

    const/4 v6, 0x1

    if-nez v2, :cond_a

    .line 3861
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mBatteryText:Landroid/widget/TextView;

    if-eqz v1, :cond_72

    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mBatteryImg:Landroid/widget/ImageView;

    if-eqz v1, :cond_72

    .line 3862
    iget v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->batteryValue:F

    const/4 v2, 0x0

    cmpg-float v7, v1, v2

    if-gez v7, :cond_0

    const/4 v1, 0x0

    :cond_0
    iput v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->batteryValue:F

    const/high16 v2, 0x42c80000    # 100.0f

    cmpl-float v7, v1, v2

    if-lez v7, :cond_1

    const/high16 v1, 0x42c80000    # 100.0f

    .line 3863
    :cond_1
    iput v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->batteryValue:F

    .line 3865
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-ne v1, v6, :cond_2

    .line 3867
    iget-object v2, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mBatteryImg:Landroid/widget/ImageView;

    invoke-direct {v0, v2}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->setFlickerAnimation(Landroid/widget/ImageView;)V

    :cond_2
    if-gt v1, v5, :cond_3

    .line 3870
    sget v2, Lcom/powervision/handheld/R$mipmap;->handheld_new_battery_icon1:I

    .line 3871
    iget-boolean v3, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isBatteryWarn:Z

    if-nez v3, :cond_9

    .line 3872
    new-instance v3, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/powervision/handheld/R$string;->AP03_DV_Msg_28:I

    .line 3873
    invoke-virtual {v0, v4}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lcom/powervision/handheld/R$string;->AP03_DV_Msg_29:I

    .line 3874
    invoke-virtual {v0, v4}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lcom/powervision/base/R$string;->AP03_ConnectGuide_47:I

    .line 3875
    invoke-virtual {v0, v4}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$37;

    invoke-direct {v5, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$37;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    .line 3882
    invoke-virtual {v3}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v3

    iput-object v3, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->dialog:Landroidx/appcompat/app/AlertDialog;

    .line 3883
    invoke-virtual {v3}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 3884
    iput-boolean v6, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isBatteryWarn:Z

    goto :goto_0

    :cond_3
    if-gt v1, v4, :cond_4

    .line 3889
    sget v2, Lcom/powervision/handheld/R$mipmap;->handheld_new_battery_icon1:I

    goto :goto_0

    :cond_4
    if-ge v1, v3, :cond_5

    .line 3891
    sget v2, Lcom/powervision/handheld/R$mipmap;->handheld_new_battery_icon1:I

    goto :goto_0

    :cond_5
    const/16 v2, 0x28

    if-ge v1, v2, :cond_6

    .line 3893
    sget v2, Lcom/powervision/handheld/R$mipmap;->handheld_new_battery_icon2:I

    goto :goto_0

    :cond_6
    const/16 v2, 0x3c

    if-ge v1, v2, :cond_7

    .line 3895
    sget v2, Lcom/powervision/handheld/R$mipmap;->handheld_new_battery_icon3:I

    goto :goto_0

    :cond_7
    const/16 v2, 0x50

    if-ge v1, v2, :cond_8

    .line 3897
    sget v2, Lcom/powervision/handheld/R$mipmap;->handheld_new_battery_icon4:I

    goto :goto_0

    .line 3899
    :cond_8
    sget v2, Lcom/powervision/handheld/R$mipmap;->handheld_new_battery_icon5:I

    .line 3901
    :cond_9
    :goto_0
    iget-object v3, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mBatteryImg:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3902
    iget-object v2, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mBatteryText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_13

    :cond_a
    const-string v7, "nemo_record_info"

    const-string v8, "record_show"

    const-string v9, "AP03_RECORD_NOISE_SWITCH"

    const/4 v10, 0x2

    const/16 v11, 0x8

    const/4 v12, 0x0

    if-ne v2, v6, :cond_19

    .line 3905
    iput-boolean v6, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFunctional:Z

    .line 3906
    invoke-direct {v0, v12}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->setFucVisible(Z)V

    const-string v1, " \u5f00\u542f\u5f55\u50cf\u6210\u529f...000000"

    .line 3907
    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3908
    invoke-direct/range {p0 .. p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->startTimerTask()V

    .line 3909
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v1, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-virtual {v1}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->isSlowMotionMode()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-boolean v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isGestureRecord:Z

    if-nez v1, :cond_b

    const-string v1, "----------------- \u6162\u52a8\u4f5c"

    .line 3910
    invoke-static {v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 3911
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTakeCameraImg:Lcom/powervision/base/views/AnimateImageView;

    sget v2, Lcom/powervision/handheld/R$mipmap;->icon_slow_motion_pause:I

    invoke-virtual {v1, v2}, Lcom/powervision/base/views/AnimateImageView;->setImageResource(I)V

    .line 3912
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLayoutSlowMotion:Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;

    invoke-virtual {v1, v11}, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->setVisibility(I)V

    .line 3913
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mMediaImg:Lcom/powervision/base/views/AnimateImageView;

    invoke-virtual {v1}, Lcom/powervision/base/views/AnimateImageView;->clearAnimation()V

    .line 3914
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mMediaImg:Lcom/powervision/base/views/AnimateImageView;

    invoke-virtual {v1, v11}, Lcom/powervision/base/views/AnimateImageView;->setVisibility(I)V

    .line 3915
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAudioImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3916
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mImageRecordMarker:Landroid/widget/ImageView;

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3917
    invoke-direct {v0, v12}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->setSlowMarkerVisibility(I)V

    .line 3918
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mImageFps:Landroid/widget/ImageView;

    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 3919
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraNewSettingView;

    if-eqz v1, :cond_17

    .line 3920
    invoke-virtual {v1}, Lcom/powervision/camera/views/CameraNewSettingView;->switchCamerMenuStatus()V

    goto/16 :goto_5

    :cond_b
    const-string v1, "----------------- \u6b63\u5e38\u5f55\u50cf"

    .line 3923
    invoke-static {v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 3924
    iput-boolean v12, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isGestureRecord:Z

    .line 3925
    invoke-direct {v0, v11}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->setSlowMarkerVisibility(I)V

    .line 3926
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mImageFps:Landroid/widget/ImageView;

    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 3927
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getCameraAudioState()I

    move-result v1

    if-ne v1, v6, :cond_d

    .line 3928
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    invoke-virtual {v1, v9, v12}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 3929
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAudioImg:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/handheld/R$mipmap;->handheld_record_noise1:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 3931
    :cond_c
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAudioImg:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/handheld/R$mipmap;->handheld_new_audio_icon1:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 3934
    :cond_d
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAudioImg:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/handheld/R$mipmap;->handheld_new_audio_icon0:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3936
    :goto_1
    iget-boolean v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFullScreen:Z

    if-eqz v1, :cond_e

    iget-boolean v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isVertical:Z

    if-eqz v1, :cond_f

    .line 3937
    :cond_e
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAudioImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3938
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mImageRecordMarker:Landroid/widget/ImageView;

    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3940
    :cond_f
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAudioImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 3941
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTakeCameraImg:Lcom/powervision/base/views/AnimateImageView;

    sget v2, Lcom/powervision/handheld/R$mipmap;->icon_recording:I

    invoke-virtual {v1, v2}, Lcom/powervision/base/views/AnimateImageView;->setImageResource(I)V

    .line 3942
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraNewSettingView;

    if-eqz v1, :cond_10

    .line 3943
    invoke-virtual {v1}, Lcom/powervision/camera/views/CameraNewSettingView;->switchCamerMenuStatus()V

    .line 3945
    :cond_10
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentResolution()I

    move-result v1

    if-eq v1, v6, :cond_12

    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentResolution()I

    move-result v1

    if-nez v1, :cond_11

    goto :goto_2

    .line 3953
    :cond_11
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mMediaImg:Lcom/powervision/base/views/AnimateImageView;

    sget v2, Lcom/powervision/handheld/R$mipmap;->handheld_media_icon:I

    invoke-virtual {v1, v2}, Lcom/powervision/base/views/AnimateImageView;->setImageResource(I)V

    .line 3954
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mMediaImg:Lcom/powervision/base/views/AnimateImageView;

    invoke-virtual {v1, v11}, Lcom/powervision/base/views/AnimateImageView;->setVisibility(I)V

    .line 3956
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mMediaImg:Lcom/powervision/base/views/AnimateImageView;

    invoke-virtual {v1, v6}, Lcom/powervision/base/views/AnimateImageView;->setEnabled(Z)V

    const-string v1, "--------------------------->\u975e4k"

    .line 3957
    invoke-static {v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    goto :goto_3

    :cond_12
    :goto_2
    const-string v1, "--------------------------->4k"

    .line 3946
    invoke-static {v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 3947
    iget-boolean v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFullScreen:Z

    if-eqz v1, :cond_13

    iget-boolean v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isVertical:Z

    if-eqz v1, :cond_14

    .line 3948
    :cond_13
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mMediaImg:Lcom/powervision/base/views/AnimateImageView;

    invoke-virtual {v1, v12}, Lcom/powervision/base/views/AnimateImageView;->setVisibility(I)V

    .line 3950
    :cond_14
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mMediaImg:Lcom/powervision/base/views/AnimateImageView;

    sget v2, Lcom/powervision/handheld/R$mipmap;->icon_capture:I

    invoke-virtual {v1, v2}, Lcom/powervision/base/views/AnimateImageView;->setImageResource(I)V

    .line 3951
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mMediaImg:Lcom/powervision/base/views/AnimateImageView;

    invoke-virtual {v1, v6}, Lcom/powervision/base/views/AnimateImageView;->setEnabled(Z)V

    .line 3959
    :goto_3
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getCameraAudioState()I

    move-result v1

    if-ne v1, v6, :cond_17

    .line 3960
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, v6}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v1

    if-ne v10, v1, :cond_15

    .line 3961
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/powervision/handheld/utils/BluetoothUtil;->getInstance(Landroid/content/Context;)Lcom/powervision/handheld/utils/BluetoothUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/handheld/utils/BluetoothUtil;->closeSco()V

    .line 3962
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/powervision/handheld/utils/BluetoothUtil;->getInstance(Landroid/content/Context;)Lcom/powervision/handheld/utils/BluetoothUtil;

    move-result-object v1

    new-instance v2, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$38;

    invoke-direct {v2, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$38;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V

    invoke-virtual {v1, v2}, Lcom/powervision/handheld/utils/BluetoothUtil;->openSco(Lcom/powervision/handheld/utils/BluetoothUtil$IBluetoothConnectListener;)V

    goto :goto_4

    .line 3973
    :cond_15
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, v6}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "\u6b63\u5e38\u70b9\u51fb\u62cd\u7167\u6309\u94ae\uff0c\u5f00\u542f\u6536\u58f0\u8d70\u5916\u653e"

    .line 3974
    invoke-static {v7, v1}, Lcom/powervision/base/utils/LogConnectStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3975
    invoke-direct/range {p0 .. p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->startRecordAudio()V

    .line 3977
    :cond_16
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 3978
    invoke-static {}, Lcom/powervision/base/utils/UmengUtils;->getHookMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "dv_start_record"

    .line 3977
    invoke-static {v1, v3, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 3981
    :cond_17
    :goto_5
    invoke-direct {v0, v6}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->goFullScreen(Z)V

    .line 3982
    iget-boolean v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isVertical:Z

    if-eqz v1, :cond_18

    .line 3983
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHPickerView:Lcom/powervision/base/views/HPickerView;

    invoke-virtual {v1, v11}, Lcom/powervision/base/views/HPickerView;->setVisibility(I)V

    .line 3987
    :cond_18
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHPickerView:Lcom/powervision/base/views/HPickerView;

    invoke-virtual {v1, v6}, Lcom/powervision/base/views/HPickerView;->setIsAuto(Z)V

    .line 3988
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraSetImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 3989
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 3990
    invoke-static {}, Lcom/powervision/base/utils/UmengUtils;->getHookMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "dv_start_recording"

    .line 3989
    invoke-static {v1, v3, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_13

    :cond_19
    const/4 v13, 0x7

    const-string v14, ""

    const/4 v15, 0x4

    if-ne v2, v10, :cond_21

    .line 3993
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    .line 3994
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getCameraAudioState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3996
    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentResolution()I

    move-result v1

    if-eq v1, v15, :cond_1b

    if-eq v1, v13, :cond_1b

    if-ne v1, v11, :cond_1a

    goto :goto_6

    :cond_1a
    const/4 v3, 0x0

    goto :goto_7

    :cond_1b
    :goto_6
    const/4 v3, 0x1

    :goto_7
    if-nez v3, :cond_1c

    const-string v3, "AP03_C_Video"

    goto :goto_8

    :cond_1c
    const-string v3, "AP03_C_Slow_Motion"

    .line 4000
    :goto_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->recordingTime:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4002
    invoke-static {v1}, Lcom/powervision/base/utils/UmengUtils;->getCameraSizeStr(I)Ljava/lang/String;

    move-result-object v1

    .line 4001
    invoke-static {v3, v2, v4, v1}, Lcom/powervision/base/utils/UmengUtils;->getLogBpHookMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 4000
    invoke-static {v0, v3, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 4003
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "um-video---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v12, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4005
    invoke-direct/range {p0 .. p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->showBlurryView()V

    .line 4006
    iput-boolean v12, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFunctional:Z

    .line 4007
    invoke-direct {v0, v6}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->setFucVisible(Z)V

    .line 4008
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->cameraStopRecording()V

    .line 4009
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHPickerView:Lcom/powervision/base/views/HPickerView;

    invoke-virtual {v1}, Lcom/powervision/base/views/HPickerView;->getCurrentItem()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/powervision/handheld/R$string;->AP03_DV_Msg_18:I

    invoke-virtual {v0, v2}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 4010
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTakeCameraImg:Lcom/powervision/base/views/AnimateImageView;

    sget v2, Lcom/powervision/handheld/R$mipmap;->icon_slow_motion:I

    invoke-virtual {v1, v2}, Lcom/powervision/base/views/AnimateImageView;->setImageResource(I)V

    .line 4011
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAudioImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4012
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mImageRecordMarker:Landroid/widget/ImageView;

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4013
    invoke-direct {v0, v12}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->setSlowMarkerVisibility(I)V

    .line 4014
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mImageFps:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 4015
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mImageFps:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 4016
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraNewSettingView;

    if-eqz v1, :cond_1d

    .line 4017
    invoke-virtual {v1}, Lcom/powervision/camera/views/CameraNewSettingView;->switchCamerMenuStatus()V

    .line 4019
    :cond_1d
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mMediaImg:Lcom/powervision/base/views/AnimateImageView;

    sget v2, Lcom/powervision/handheld/R$mipmap;->handheld_media_icon:I

    invoke-virtual {v1, v2}, Lcom/powervision/base/views/AnimateImageView;->setImageResource(I)V

    goto :goto_9

    .line 4021
    :cond_1e
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTakeCameraImg:Lcom/powervision/base/views/AnimateImageView;

    sget v2, Lcom/powervision/handheld/R$mipmap;->icon_record:I

    invoke-virtual {v1, v2}, Lcom/powervision/base/views/AnimateImageView;->setImageResource(I)V

    .line 4022
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraNewSettingView;

    if-eqz v1, :cond_1f

    .line 4023
    invoke-virtual {v1}, Lcom/powervision/camera/views/CameraNewSettingView;->switchCamerMenuStatus()V

    .line 4025
    :cond_1f
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mMediaImg:Lcom/powervision/base/views/AnimateImageView;

    sget v2, Lcom/powervision/handheld/R$mipmap;->handheld_media_icon:I

    invoke-virtual {v1, v2}, Lcom/powervision/base/views/AnimateImageView;->setImageResource(I)V

    .line 4026
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getCameraAudioState()I

    move-result v1

    if-ne v1, v6, :cond_20

    .line 4027
    invoke-direct/range {p0 .. p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->stopRecordAudio()V

    const-string v1, "\u624b\u52a8\u70b9\u51fb\u4e86\u505c\u6b62\u5f55\u50cf\u6536\u58f0"

    .line 4028
    invoke-static {v7, v1}, Lcom/powervision/base/utils/LogConnectStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4031
    :cond_20
    :goto_9
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mMediaImg:Lcom/powervision/base/views/AnimateImageView;

    invoke-virtual {v1, v6}, Lcom/powervision/base/views/AnimateImageView;->setEnabled(Z)V

    .line 4032
    invoke-direct {v0, v12}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->goFullScreen(Z)V

    .line 4033
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAudioImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 4034
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHPickerView:Lcom/powervision/base/views/HPickerView;

    invoke-virtual {v1, v12}, Lcom/powervision/base/views/HPickerView;->setVisibility(I)V

    .line 4035
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHPickerView:Lcom/powervision/base/views/HPickerView;

    invoke-virtual {v1, v12}, Lcom/powervision/base/views/HPickerView;->setIsAuto(Z)V

    .line 4036
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraSetImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 4038
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getRemainingCapacity()V

    goto/16 :goto_13

    :cond_21
    const/4 v7, 0x3

    if-ne v2, v7, :cond_22

    .line 4040
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 4041
    iget-object v2, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " update  format  recordTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4043
    iput v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->recordingTime:I

    const-string v1, " PARAM_UPDATE_RECORD_TIME...111111"

    .line 4044
    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4045
    invoke-direct/range {p0 .. p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->startTimerTask()V

    .line 4048
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraNewSettingView;

    if-eqz v1, :cond_72

    .line 4049
    invoke-virtual {v1}, Lcom/powervision/camera/views/CameraNewSettingView;->switchCamerMenuStatus()V

    goto/16 :goto_13

    :cond_22
    if-ne v2, v15, :cond_25

    .line 4052
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 4053
    sget v2, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_RECORDING:I

    if-eq v1, v2, :cond_24

    sget v2, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_RECORD:I

    if-ne v1, v2, :cond_23

    goto :goto_a

    .line 4056
    :cond_23
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/powervision/camera/camera/CameraManager;->getRestPhotoNumber()V

    goto :goto_b

    .line 4054
    :cond_24
    :goto_a
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/powervision/camera/camera/CameraManager;->getRestRecordTime()V

    .line 4058
    :goto_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  \u5f53\u524d\u7c7b\u578b \u4e3a....... arg1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "n_camera"

    invoke-static {v2, v1}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_25
    if-ne v2, v5, :cond_29

    .line 4060
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLayoutDelaySet:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4061
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLayoutDelayRecord:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4062
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextMode:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4063
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAudioImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4064
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mImageRecordMarker:Landroid/widget/ImageView;

    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4065
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getCameraAudioState()I

    move-result v1

    if-nez v1, :cond_26

    .line 4066
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAudioImg:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/handheld/R$mipmap;->handheld_new_audio_icon0:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c

    .line 4067
    :cond_26
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getCameraAudioState()I

    move-result v1

    if-ne v1, v6, :cond_28

    .line 4068
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    invoke-virtual {v1, v9, v12}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 4069
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAudioImg:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/handheld/R$mipmap;->handheld_record_noise1:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c

    .line 4071
    :cond_27
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAudioImg:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/handheld/R$mipmap;->handheld_new_audio_icon1:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4074
    :cond_28
    :goto_c
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAudioImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 4075
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getAllParameters()V

    .line 4077
    invoke-direct {v0, v6}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->setFucVisible(Z)V

    goto/16 :goto_13

    :cond_29
    const/4 v8, 0x6

    if-ne v2, v8, :cond_2a

    .line 4079
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLayoutDelaySet:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4080
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getAllParameters()V

    .line 4081
    invoke-direct {v0, v6}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->setFucVisible(Z)V

    goto/16 :goto_13

    :cond_2a
    const/16 v3, 0x22

    if-ne v2, v11, :cond_34

    .line 4085
    invoke-static {}, Lcom/powervision/camera/utils/RxCountDown;->getInstance()Lcom/powervision/camera/utils/RxCountDown;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/utils/RxCountDown;->cancelCaptureDown()V

    .line 4086
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v1

    if-ne v1, v10, :cond_2d

    .line 4087
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentResolution()I

    move-result v1

    if-eqz v1, :cond_2b

    .line 4088
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentResolution()I

    move-result v1

    if-ne v1, v6, :cond_2d

    .line 4089
    :cond_2b
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getCameraAudioState()I

    move-result v1

    if-nez v1, :cond_2c

    .line 4090
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mSoundUtil:Lcom/powervision/base/utils/SoundPoolUtils;

    invoke-virtual {v1, v6}, Lcom/powervision/base/utils/SoundPoolUtils;->playAudio(I)V

    .line 4092
    :cond_2c
    invoke-direct/range {p0 .. p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->resetRecordingPhotoStatus()V

    return-void

    .line 4095
    :cond_2d
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getPhotoGraphType()I

    move-result v1

    if-eq v1, v10, :cond_2f

    if-eq v1, v7, :cond_2f

    .line 4096
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v2

    if-eqz v2, :cond_2e

    goto :goto_d

    .line 4100
    :cond_2e
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTakeCameraImg:Lcom/powervision/base/views/AnimateImageView;

    sget v2, Lcom/powervision/handheld/R$mipmap;->icon_capture:I

    invoke-virtual {v1, v2}, Lcom/powervision/base/views/AnimateImageView;->setImageResource(I)V

    .line 4101
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTakeCameraImg:Lcom/powervision/base/views/AnimateImageView;

    invoke-virtual {v1, v6}, Lcom/powervision/base/views/AnimateImageView;->setEnabled(Z)V

    .line 4103
    invoke-direct {v0, v12}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->goFullScreen(Z)V

    .line 4104
    invoke-direct {v0, v6}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->setTimeFucVisible(Z)V

    .line 4105
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraSetImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 4106
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getAllParameters()V

    goto :goto_e

    .line 4098
    :cond_2f
    :goto_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tt = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 4109
    :goto_e
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v1

    if-nez v1, :cond_30

    .line 4111
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mSoundUtil:Lcom/powervision/base/utils/SoundPoolUtils;

    invoke-virtual {v1, v6}, Lcom/powervision/base/utils/SoundPoolUtils;->playAudio(I)V

    .line 4112
    iget-boolean v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFirstBasicGuide:Z

    if-eqz v1, :cond_32

    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandheldBasicGuideView:Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;

    if-eqz v1, :cond_32

    iget-boolean v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->executedHandheldGuide:Z

    if-eqz v1, :cond_32

    .line 4113
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getGestureDiscerningType()I

    move-result v1

    if-ne v1, v6, :cond_32

    .line 4114
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandler:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;

    const-wide/16 v4, 0x190

    invoke-virtual {v1, v3, v4, v5}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_f

    :cond_30
    if-ne v1, v6, :cond_31

    .line 4117
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getCameraAudioState()I

    move-result v1

    if-nez v1, :cond_32

    .line 4118
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mSoundUtil:Lcom/powervision/base/utils/SoundPoolUtils;

    invoke-virtual {v1, v6}, Lcom/powervision/base/utils/SoundPoolUtils;->playAudio(I)V

    goto :goto_f

    :cond_31
    if-ne v1, v10, :cond_32

    .line 4121
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getCameraAudioState()I

    move-result v1

    if-nez v1, :cond_32

    .line 4122
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mSoundUtil:Lcom/powervision/base/utils/SoundPoolUtils;

    invoke-virtual {v1, v6}, Lcom/powervision/base/utils/SoundPoolUtils;->playAudio(I)V

    .line 4125
    :cond_32
    :goto_f
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v1

    if-eq v1, v10, :cond_33

    .line 4126
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->captureAnimation()V

    .line 4128
    :cond_33
    invoke-direct/range {p0 .. p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->resetRecordingPhotoStatus()V

    .line 4129
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getRemainingCapacity()V

    .line 4130
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCountDownTime:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4131
    invoke-direct {v0, v6}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->timeDownEnable(Z)V

    .line 4132
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 4133
    invoke-static {}, Lcom/powervision/base/utils/UmengUtils;->getHookMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "dv_start_take_photo"

    .line 4132
    invoke-static {v1, v3, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_13

    :cond_34
    const/16 v7, 0x9

    if-ne v2, v7, :cond_35

    .line 4135
    invoke-direct/range {p0 .. p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->cameraConnectStatusInit()V

    .line 4136
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getAllParameters()V

    goto/16 :goto_13

    :cond_35
    if-ne v2, v4, :cond_36

    .line 4141
    invoke-direct/range {p0 .. p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->cameraDisconnectStatusReset()V

    .line 4142
    invoke-direct {v0, v6}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->timeDownEnable(Z)V

    goto/16 :goto_13

    :cond_36
    const/16 v4, 0xb

    if-ne v2, v4, :cond_37

    .line 4144
    iget-object v2, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mNewCameraParamView:Lcom/powervision/handheld/ui/views/NewCameraParamView;

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v12, v1}, Lcom/powervision/handheld/ui/views/NewCameraParamView;->updatCapacityValue(ILjava/lang/String;)V

    goto/16 :goto_13

    :cond_37
    const/16 v4, 0xc

    if-ne v2, v4, :cond_38

    .line 4146
    iget-object v2, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mNewCameraParamView:Lcom/powervision/handheld/ui/views/NewCameraParamView;

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v6, v1}, Lcom/powervision/handheld/ui/views/NewCameraParamView;->updatCapacityValue(ILjava/lang/String;)V

    goto/16 :goto_13

    :cond_38
    if-ne v2, v13, :cond_39

    .line 4148
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTakeCameraImg:Lcom/powervision/base/views/AnimateImageView;

    invoke-virtual {v1, v6}, Lcom/powervision/base/views/AnimateImageView;->setEnabled(Z)V

    .line 4149
    invoke-direct {v0, v6}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->setFucVisible(Z)V

    .line 4150
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHPickerView:Lcom/powervision/base/views/HPickerView;

    invoke-virtual {v1, v12}, Lcom/powervision/base/views/HPickerView;->setIsAuto(Z)V

    .line 4151
    invoke-direct/range {p0 .. p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->resetRecordingPhotoStatus()V

    goto/16 :goto_13

    .line 4152
    :cond_39
    iget v4, v1, Landroid/os/Message;->what:I

    const/16 v7, 0x11

    if-ne v4, v7, :cond_3a

    .line 4153
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mNewCameraParamView:Lcom/powervision/handheld/ui/views/NewCameraParamView;

    invoke-virtual {v1}, Lcom/powervision/handheld/ui/views/NewCameraParamView;->updateCameraView()V

    .line 4154
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getRemainingCapacity()V

    goto/16 :goto_13

    :cond_3a
    const/16 v4, 0x10

    if-ne v2, v4, :cond_3b

    .line 4156
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getAllParameters()V

    .line 4157
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mNewCameraParamView:Lcom/powervision/handheld/ui/views/NewCameraParamView;

    invoke-virtual {v1}, Lcom/powervision/handheld/ui/views/NewCameraParamView;->updateCameraView()V

    goto/16 :goto_13

    :cond_3b
    const/16 v4, 0x13

    const-string v7, "NewHandheldPersenter"

    if-ne v2, v4, :cond_43

    .line 4159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=====getMode===="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4160
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v6, :cond_3f

    .line 4161
    iget v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getMode:I

    if-ne v1, v15, :cond_3c

    .line 4162
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGimbalModeImg:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/handheld/R$mipmap;->handheld_gimbal_lock_mode_delay:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4163
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGimbalModeText:Landroid/widget/TextView;

    sget v2, Lcom/powervision/handheld/R$string;->AP03_DV_Msg_21:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_13

    :cond_3c
    if-ne v1, v5, :cond_3d

    .line 4165
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGimbalModeImg:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/handheld/R$mipmap;->handheld_gimbal_follow_mode_delay:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4166
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGimbalModeText:Landroid/widget/TextView;

    sget v2, Lcom/powervision/handheld/R$string;->AP03_DV_Msg_20:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_13

    :cond_3d
    if-ne v1, v8, :cond_3e

    .line 4168
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGimbalModeImg:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/handheld/R$mipmap;->handheld_gimbal_fpv_mode_delay:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4169
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGimbalModeText:Landroid/widget/TextView;

    sget v2, Lcom/powervision/handheld/R$string;->AP03_DV_Msg_22:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_13

    .line 4171
    :cond_3e
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGimbalModeImg:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/handheld/R$mipmap;->handheld_gimbal_lock_mode_delay:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4172
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGimbalModeText:Landroid/widget/TextView;

    sget v2, Lcom/powervision/handheld/R$string;->AP03_DV_Msg_21:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_13

    .line 4175
    :cond_3f
    iget v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getMode:I

    if-ne v1, v15, :cond_40

    .line 4176
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGimbalModeImg:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/handheld/R$mipmap;->handheld_gimbal_lock_mode_land_delay:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4177
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGimbalModeText:Landroid/widget/TextView;

    sget v2, Lcom/powervision/handheld/R$string;->AP03_DV_Msg_21:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_13

    :cond_40
    if-ne v1, v5, :cond_41

    .line 4179
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGimbalModeImg:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/handheld/R$mipmap;->handheld_gimbal_follow_mode_land_delay:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4180
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGimbalModeText:Landroid/widget/TextView;

    sget v2, Lcom/powervision/handheld/R$string;->AP03_DV_Msg_20:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_13

    :cond_41
    if-ne v1, v8, :cond_42

    .line 4182
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGimbalModeImg:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/handheld/R$mipmap;->handheld_gimbal_fpv_mode_land_delay:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4183
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGimbalModeText:Landroid/widget/TextView;

    sget v2, Lcom/powervision/handheld/R$string;->AP03_DV_Msg_22:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_13

    .line 4185
    :cond_42
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGimbalModeImg:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/handheld/R$mipmap;->handheld_gimbal_lock_mode_land_delay:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4186
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGimbalModeText:Landroid/widget/TextView;

    sget v2, Lcom/powervision/handheld/R$string;->AP03_DV_Msg_21:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_13

    :cond_43
    const/16 v4, 0x1c

    const-string v13, "=====PORTRAIT===="

    const-string v3, "=====land===="

    const/16 v12, 0x14

    if-ne v2, v12, :cond_4b

    .line 4190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=====setMode===="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->setMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4191
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v6, :cond_47

    .line 4192
    invoke-static {v7, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4193
    iget v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->setMode:I

    if-ne v1, v15, :cond_44

    .line 4194
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGimbalModeImg:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/handheld/R$mipmap;->handheld_gimbal_lock_mode:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4195
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGimbalModeText:Landroid/widget/TextView;

    sget v2, Lcom/powervision/handheld/R$string;->AP03_DV_Msg_21:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_10

    :cond_44
    if-ne v1, v5, :cond_45

    .line 4197
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGimbalModeImg:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/handheld/R$mipmap;->handheld_gimbal_follow_mode:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4198
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGimbalModeText:Landroid/widget/TextView;

    sget v2, Lcom/powervision/handheld/R$string;->AP03_DV_Msg_20:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_10

    :cond_45
    if-ne v1, v8, :cond_46

    .line 4200
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGimbalModeImg:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/handheld/R$mipmap;->handheld_gimbal_fpv_mode:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4201
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGimbalModeText:Landroid/widget/TextView;

    sget v2, Lcom/powervision/handheld/R$string;->AP03_DV_Msg_22:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_10

    .line 4203
    :cond_46
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGimbalModeImg:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/handheld/R$mipmap;->handheld_gimbal_lock_mode:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4204
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGimbalModeText:Landroid/widget/TextView;

    sget v2, Lcom/powervision/handheld/R$string;->AP03_DV_Msg_21:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_10

    .line 4207
    :cond_47
    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4208
    iget v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->setMode:I

    if-ne v1, v15, :cond_48

    .line 4209
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGimbalModeImg:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/handheld/R$mipmap;->handheld_gimbal_lock_mode_land:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4210
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGimbalModeText:Landroid/widget/TextView;

    sget v2, Lcom/powervision/handheld/R$string;->AP03_DV_Msg_21:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_10

    :cond_48
    if-ne v1, v5, :cond_49

    .line 4212
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGimbalModeImg:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/handheld/R$mipmap;->handheld_gimbal_follow_mode_land:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4213
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGimbalModeText:Landroid/widget/TextView;

    sget v2, Lcom/powervision/handheld/R$string;->AP03_DV_Msg_20:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_10

    :cond_49
    if-ne v1, v8, :cond_4a

    .line 4215
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGimbalModeImg:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/handheld/R$mipmap;->handheld_gimbal_fpv_mode_land:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4216
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGimbalModeText:Landroid/widget/TextView;

    sget v2, Lcom/powervision/handheld/R$string;->AP03_DV_Msg_22:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_10

    .line 4218
    :cond_4a
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGimbalModeImg:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/handheld/R$mipmap;->handheld_gimbal_lock_mode_land:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4219
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGimbalModeText:Landroid/widget/TextView;

    sget v2, Lcom/powervision/handheld/R$string;->AP03_DV_Msg_21:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 4222
    :goto_10
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandler:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v4, v2, v3}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_13

    :cond_4b
    const/16 v12, 0x15

    if-ne v2, v12, :cond_4c

    .line 4224
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextDelayShow:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_13

    :cond_4c
    const/16 v12, 0x16

    if-ne v2, v12, :cond_4d

    .line 4226
    invoke-direct/range {p0 .. p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->pickerResetToPre()V

    goto/16 :goto_13

    :cond_4d
    const/16 v12, 0xd

    if-ne v2, v12, :cond_4f

    .line 4228
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v1

    if-ne v1, v10, :cond_4e

    .line 4229
    invoke-direct/range {p0 .. p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->resetRecordingPhotoStatus()V

    return-void

    :cond_4e
    const/4 v1, 0x0

    .line 4232
    invoke-direct {v0, v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->goFullScreen(Z)V

    .line 4233
    iget-object v2, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTakeCameraImg:Lcom/powervision/base/views/AnimateImageView;

    sget v3, Lcom/powervision/handheld/R$mipmap;->icon_capture:I

    invoke-virtual {v2, v3}, Lcom/powervision/base/views/AnimateImageView;->setImageResource(I)V

    .line 4234
    iget-object v2, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTakeCameraImg:Lcom/powervision/base/views/AnimateImageView;

    invoke-virtual {v2, v6}, Lcom/powervision/base/views/AnimateImageView;->setEnabled(Z)V

    .line 4235
    invoke-direct {v0, v6}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->setFucVisible(Z)V

    .line 4236
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/powervision/camera/camera/CameraManager;->setPhotoGraphType(I)V

    .line 4237
    invoke-direct/range {p0 .. p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->resetRecordingPhotoStatus()V

    .line 4238
    iget-object v2, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraSetImg:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4239
    iget-object v2, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraSetImg:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 4240
    iget-object v2, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHPickerView:Lcom/powervision/base/views/HPickerView;

    invoke-virtual {v2, v1}, Lcom/powervision/base/views/HPickerView;->setIsAuto(Z)V

    .line 4241
    invoke-direct {v0, v6}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->timeDownEnable(Z)V

    goto/16 :goto_13

    :cond_4f
    const/16 v12, 0x17

    if-ne v2, v12, :cond_50

    .line 4243
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLayoutFps:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_13

    :cond_50
    const/16 v12, 0x18

    if-ne v2, v12, :cond_51

    .line 4245
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getRestPhotoNumber()V

    goto/16 :goto_13

    :cond_51
    const/16 v12, 0x19

    if-ne v2, v12, :cond_5e

    .line 4247
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 4248
    invoke-static {}, Lcom/powervision/handheld/utils/AudioRecordManager;->getInstance()Lcom/powervision/handheld/utils/AudioRecordManager;

    move-result-object v3

    iget-object v3, v3, Lcom/powervision/handheld/utils/AudioRecordManager;->isRecord:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_5d

    iget-object v3, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->audioRecordManager:Lcom/powervision/handheld/utils/AudioRecordManager;

    invoke-virtual {v3}, Lcom/powervision/handheld/utils/AudioRecordManager;->getIsOpenRecord()Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 4249
    iget-object v3, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const/4 v4, 0x0

    invoke-virtual {v3, v9, v4}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_57

    const-wide/high16 v3, 0x4034000000000000L    # 20.0

    cmpg-double v5, v1, v3

    if-gez v5, :cond_52

    .line 4251
    iget-object v3, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAudioImg:Landroid/widget/ImageView;

    sget v4, Lcom/powervision/handheld/R$mipmap;->handheld_record_noise1:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_11

    :cond_52
    const-wide/high16 v3, 0x4044000000000000L    # 40.0

    cmpg-double v5, v1, v3

    if-gez v5, :cond_53

    .line 4253
    iget-object v3, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAudioImg:Landroid/widget/ImageView;

    sget v4, Lcom/powervision/handheld/R$mipmap;->handheld_record_noise2:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_11

    :cond_53
    const-wide/high16 v3, 0x404e000000000000L    # 60.0

    cmpg-double v5, v1, v3

    if-gez v5, :cond_54

    .line 4255
    iget-object v3, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAudioImg:Landroid/widget/ImageView;

    sget v4, Lcom/powervision/handheld/R$mipmap;->handheld_record_noise3:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_11

    :cond_54
    const-wide/high16 v3, 0x4054000000000000L    # 80.0

    cmpg-double v5, v1, v3

    if-gez v5, :cond_55

    .line 4257
    iget-object v3, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAudioImg:Landroid/widget/ImageView;

    sget v4, Lcom/powervision/handheld/R$mipmap;->handheld_record_noise4:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_11

    :cond_55
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    cmpg-double v5, v1, v3

    if-gez v5, :cond_56

    .line 4259
    iget-object v3, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAudioImg:Landroid/widget/ImageView;

    sget v4, Lcom/powervision/handheld/R$mipmap;->handheld_record_noise5:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_11

    .line 4261
    :cond_56
    iget-object v3, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAudioImg:Landroid/widget/ImageView;

    sget v4, Lcom/powervision/handheld/R$mipmap;->handheld_record_noise6:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_11

    :cond_57
    const-wide/high16 v3, 0x4034000000000000L    # 20.0

    cmpg-double v5, v1, v3

    if-gez v5, :cond_58

    .line 4265
    iget-object v3, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAudioImg:Landroid/widget/ImageView;

    sget v4, Lcom/powervision/handheld/R$mipmap;->handheld_new_audio_icon1:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_11

    :cond_58
    const-wide/high16 v3, 0x4044000000000000L    # 40.0

    cmpg-double v5, v1, v3

    if-gez v5, :cond_59

    .line 4267
    iget-object v3, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAudioImg:Landroid/widget/ImageView;

    sget v4, Lcom/powervision/handheld/R$mipmap;->handheld_new_audio_icon2:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_11

    :cond_59
    const-wide/high16 v3, 0x404e000000000000L    # 60.0

    cmpg-double v5, v1, v3

    if-gez v5, :cond_5a

    .line 4269
    iget-object v3, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAudioImg:Landroid/widget/ImageView;

    sget v4, Lcom/powervision/handheld/R$mipmap;->handheld_new_audio_icon3:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_11

    :cond_5a
    const-wide/high16 v3, 0x4054000000000000L    # 80.0

    cmpg-double v5, v1, v3

    if-gez v5, :cond_5b

    .line 4271
    iget-object v3, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAudioImg:Landroid/widget/ImageView;

    sget v4, Lcom/powervision/handheld/R$mipmap;->handheld_new_audio_icon4:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_11

    :cond_5b
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    cmpg-double v5, v1, v3

    if-gez v5, :cond_5c

    .line 4273
    iget-object v3, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAudioImg:Landroid/widget/ImageView;

    sget v4, Lcom/powervision/handheld/R$mipmap;->handheld_new_audio_icon5:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_11

    .line 4275
    :cond_5c
    iget-object v3, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAudioImg:Landroid/widget/ImageView;

    sget v4, Lcom/powervision/handheld/R$mipmap;->handheld_new_audio_icon6:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4279
    :cond_5d
    :goto_11
    invoke-static {}, Lcom/powervision/handheld/utils/AudioRecordManager;->getInstance()Lcom/powervision/handheld/utils/AudioRecordManager;

    move-result-object v3

    iget-object v3, v3, Lcom/powervision/handheld/utils/AudioRecordManager;->isRecord:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_72

    invoke-static {}, Lcom/powervision/handheld/utils/AudioRecordManager;->getInstance()Lcom/powervision/handheld/utils/AudioRecordManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/powervision/handheld/utils/AudioRecordManager;->getLiveStreamAudioMute()Z

    move-result v3

    if-nez v3, :cond_72

    .line 4280
    iget-object v3, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLiveStatusView:Lcom/powervision/base/views/LiveStatusView;

    if-eqz v3, :cond_72

    .line 4281
    invoke-virtual {v3, v1, v2}, Lcom/powervision/base/views/LiveStatusView;->setDecibelChange(D)V

    goto/16 :goto_13

    :cond_5e
    const/16 v9, 0x1b

    if-ne v2, v9, :cond_5f

    .line 4285
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextRecordTime:Landroid/widget/TextView;

    if-eqz v1, :cond_72

    .line 4286
    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4287
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextRecordTime:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_13

    :cond_5f
    if-ne v2, v4, :cond_67

    .line 4291
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v6, :cond_63

    .line 4292
    invoke-static {v7, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4293
    iget v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->setMode:I

    if-ne v1, v15, :cond_60

    .line 4294
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGimbalModeImg:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/handheld/R$mipmap;->handheld_gimbal_lock_mode_delay:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4295
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGimbalModeText:Landroid/widget/TextView;

    sget v2, Lcom/powervision/handheld/R$string;->AP03_DV_Msg_21:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_13

    :cond_60
    if-ne v1, v5, :cond_61

    .line 4297
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGimbalModeImg:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/handheld/R$mipmap;->handheld_gimbal_follow_mode_delay:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4298
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGimbalModeText:Landroid/widget/TextView;

    sget v2, Lcom/powervision/handheld/R$string;->AP03_DV_Msg_20:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_13

    :cond_61
    if-ne v1, v8, :cond_62

    .line 4300
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGimbalModeImg:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/handheld/R$mipmap;->handheld_gimbal_fpv_mode_delay:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4301
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGimbalModeText:Landroid/widget/TextView;

    sget v2, Lcom/powervision/handheld/R$string;->AP03_DV_Msg_22:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_13

    .line 4303
    :cond_62
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGimbalModeImg:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/handheld/R$mipmap;->handheld_gimbal_lock_mode_delay:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4304
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGimbalModeText:Landroid/widget/TextView;

    sget v2, Lcom/powervision/handheld/R$string;->AP03_DV_Msg_21:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_13

    .line 4307
    :cond_63
    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4308
    iget v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->setMode:I

    if-ne v1, v15, :cond_64

    .line 4309
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGimbalModeImg:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/handheld/R$mipmap;->handheld_gimbal_lock_mode_land_delay:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4310
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGimbalModeText:Landroid/widget/TextView;

    sget v2, Lcom/powervision/handheld/R$string;->AP03_DV_Msg_21:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_13

    :cond_64
    if-ne v1, v5, :cond_65

    .line 4312
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGimbalModeImg:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/handheld/R$mipmap;->handheld_gimbal_follow_mode_land_delay:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4313
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGimbalModeText:Landroid/widget/TextView;

    sget v2, Lcom/powervision/handheld/R$string;->AP03_DV_Msg_20:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_13

    :cond_65
    if-ne v1, v8, :cond_66

    .line 4315
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGimbalModeImg:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/handheld/R$mipmap;->handheld_gimbal_fpv_mode_land_delay:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4316
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGimbalModeText:Landroid/widget/TextView;

    sget v2, Lcom/powervision/handheld/R$string;->AP03_DV_Msg_22:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_13

    .line 4318
    :cond_66
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGimbalModeImg:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/handheld/R$mipmap;->handheld_gimbal_lock_mode_land_delay:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4319
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGimbalModeText:Landroid/widget/TextView;

    sget v2, Lcom/powervision/handheld/R$string;->AP03_DV_Msg_21:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_13

    :cond_67
    const/16 v3, 0x1d

    if-ne v2, v3, :cond_68

    .line 4323
    invoke-direct/range {p0 .. p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->onSurfaceSizeAutoChange()V

    goto/16 :goto_13

    :cond_68
    const/16 v3, 0x1e

    if-ne v2, v3, :cond_69

    .line 4325
    invoke-direct/range {p0 .. p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->onTemperatureUpdate(Landroid/os/Message;)V

    goto/16 :goto_13

    :cond_69
    const/16 v1, 0x1f

    if-ne v2, v1, :cond_6c

    .line 4327
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mBlurryView:Landroid/widget/ImageView;

    if-eqz v1, :cond_72

    .line 4328
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_6b

    invoke-virtual/range {p0 .. p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_6a

    goto :goto_12

    .line 4331
    :cond_6a
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iget-object v2, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mBlurryView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->clear(Landroid/view/View;)V

    .line 4332
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mBlurryView:Landroid/widget/ImageView;

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_13

    :cond_6b
    :goto_12
    return-void

    :cond_6c
    const/16 v1, 0x20

    if-ne v2, v1, :cond_6d

    .line 4335
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getGestureFirstTimeTeachingState()I

    goto :goto_13

    :cond_6d
    const/16 v1, 0x21

    if-ne v2, v1, :cond_6e

    .line 4337
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/powervision/camera/camera/CameraManager;->setGestureOnlyDiscerningType(I)I

    goto :goto_13

    :cond_6e
    const/16 v1, 0x22

    if-ne v2, v1, :cond_6f

    .line 4339
    invoke-direct/range {p0 .. p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->onGestureTakePicture()V

    goto :goto_13

    :cond_6f
    const/16 v1, 0x23

    if-ne v2, v1, :cond_70

    .line 4341
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandheldBasicGuideView:Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;

    invoke-virtual {v1}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->onFollowGestureCallBack()V

    .line 4342
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/powervision/camera/camera/CameraManager;->setGestureOnlyDiscerningType(I)I

    goto :goto_13

    :cond_70
    const/16 v1, 0x24

    if-ne v2, v1, :cond_71

    .line 4344
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandheldBasicGuideView:Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;

    invoke-virtual {v1}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->onCloseFollowGestureCallBack()V

    .line 4345
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/powervision/camera/camera/CameraManager;->setGestureOnlyDiscerningType(I)I

    goto :goto_13

    :cond_71
    const/16 v1, 0x25

    if-ne v2, v1, :cond_72

    .line 4347
    invoke-direct/range {p0 .. p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->initHandheldBasicGuideViews()V

    :cond_72
    :goto_13
    return-void
.end method

.method private doClickCameraSwitch(Ljava/lang/String;)V
    .locals 4

    .line 1865
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/handheld/R$string;->AP03_DV_MediaLib_2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1866
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->preItem:Ljava/lang/String;

    sget v2, Lcom/powervision/handheld/R$string;->AP03_DV_Msg_19:I

    invoke-virtual {p0, v2}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1868
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    const-string v2, "photo_type"

    const-string v3, "0-0"

    invoke-virtual {v0, v2, v3}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "-"

    .line 1870
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1871
    aget-object v2, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    .line 1872
    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1873
    iget-object v3, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v3, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-virtual {v3, v2, v0, v1}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->setCaptureMode(III)V

    goto :goto_0

    .line 1875
    :cond_0
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-virtual {v0, v1}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->switchRecordToPhoto(Z)V

    .line 1878
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/powervision/handheld/R$string;->AP03_DV_MediaLib_3:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1879
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSwitchRecordMode = start   CameraManager.getInstance().getCameraCurrentStatus() = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1881
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  CurrentResolution = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    .line 1882
    invoke-virtual {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->getCameraCurrentResolution()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1879
    invoke-static {p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 1883
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->preItem:Ljava/lang/String;

    sget v0, Lcom/powervision/handheld/R$string;->AP03_DV_Msg_18:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1884
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast p1, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {}, Lcom/powervision/base/utils/SPHelperUtils;->getInstance()Lcom/powervision/base/utils/SPHelperUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/utils/SPHelperUtils;->getResolution()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->setVideoResolution(I)V

    goto :goto_1

    .line 1886
    :cond_2
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast p1, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-virtual {p1, v1}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->switchPhotoToRecord(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method private getDelayCaptureData()V
    .locals 9

    .line 1801
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mModel:Lcom/powervision/base/base/BaseModel;

    check-cast v0, Lcom/powervision/handheld/model/impl/HandheldModel;

    invoke-virtual {v0}, Lcom/powervision/handheld/model/impl/HandheldModel;->getShutterTimeIntList()Ljava/util/List;

    move-result-object v0

    .line 1802
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mModel:Lcom/powervision/base/base/BaseModel;

    check-cast v1, Lcom/powervision/handheld/model/impl/HandheldModel;

    invoke-virtual {v1}, Lcom/powervision/handheld/model/impl/HandheldModel;->getRecordTimeIntList()Ljava/util/List;

    move-result-object v1

    .line 1803
    iget-object v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mModel:Lcom/powervision/base/base/BaseModel;

    check-cast v2, Lcom/powervision/handheld/model/impl/HandheldModel;

    invoke-virtual {v2}, Lcom/powervision/handheld/model/impl/HandheldModel;->getShutterTimeList()Ljava/util/List;

    move-result-object v2

    .line 1804
    iget-object v3, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mModel:Lcom/powervision/base/base/BaseModel;

    check-cast v3, Lcom/powervision/handheld/model/impl/HandheldModel;

    invoke-virtual {v3}, Lcom/powervision/handheld/model/impl/HandheldModel;->getRecordTimeList()Ljava/util/List;

    move-result-object v3

    .line 1805
    iget-object v4, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mModel:Lcom/powervision/base/base/BaseModel;

    check-cast v4, Lcom/powervision/handheld/model/impl/HandheldModel;

    invoke-virtual {v4}, Lcom/powervision/handheld/model/impl/HandheldModel;->getShutterMap()Ljava/util/HashMap;

    move-result-object v4

    .line 1806
    iget-object v5, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mModel:Lcom/powervision/base/base/BaseModel;

    check-cast v5, Lcom/powervision/handheld/model/impl/HandheldModel;

    invoke-virtual {v5}, Lcom/powervision/handheld/model/impl/HandheldModel;->getRecordTimeMap()Ljava/util/HashMap;

    move-result-object v5

    .line 1807
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/powervision/camera/camera/CameraManager;->getDelayTime()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_0

    return-void

    .line 1810
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "shutter  = before = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->shutter:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 1811
    iget v6, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->shutter:I

    if-nez v6, :cond_1

    .line 1812
    iget-object v6, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLoopShutter:Lcom/powervision/base/views/loopview/LoopView;

    invoke-virtual {v6}, Lcom/powervision/base/views/loopview/LoopView;->getSelectedItem()I

    move-result v6

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->shutter:I

    .line 1814
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "shutter  = after = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->shutter:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 1816
    iget v6, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->shutter:I

    iget v7, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->result:I

    mul-int v6, v6, v7

    iget v7, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->fps:I

    mul-int v6, v6, v7

    iput v6, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->time:I

    .line 1817
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "shutter  = after = shutter index  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->shutter:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 1818
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "shutter  = after = time index  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->shutter:I

    iget v8, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->result:I

    mul-int v7, v7, v8

    iget v8, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->fps:I

    mul-int v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 1819
    iget v6, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->time:I

    iget v7, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->shutter:I

    div-int/2addr v6, v7

    iget v7, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->fps:I

    div-int/2addr v6, v7

    iput v6, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->result:I

    .line 1820
    iget-object v7, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextResultTime:Landroid/widget/TextView;

    invoke-static {v6}, Lcom/powervision/base/utils/TimeUtils;->formatRecordVideoTime(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1821
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "shutter  = after shutter = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->shutter:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "  time = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->time:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "  result = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->result:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 1822
    iget-object v6, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextDelayTotal:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->result:I

    mul-int/lit8 v8, v8, 0x1e

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1824
    iget v6, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->shutter:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    iget v6, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->shutter:I

    iget v8, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->result:I

    mul-int v6, v6, v8

    iget v8, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->fps:I

    mul-int v6, v6, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-ne v6, v7, :cond_2

    goto :goto_0

    .line 1843
    :cond_2
    iget-object v6, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLoopShutter:Lcom/powervision/base/views/loopview/LoopView;

    iget v7, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->shutter:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/powervision/base/views/loopview/LoopView;->setCurrentPosition(I)V

    .line 1844
    iget-object v6, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLoopTime:Lcom/powervision/base/views/loopview/LoopView;

    iget v7, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->shutter:I

    iget v8, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->result:I

    mul-int v7, v7, v8

    iget v8, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->fps:I

    mul-int v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/powervision/base/views/loopview/LoopView;->setCurrentPosition(I)V

    .line 1845
    iget-object v6, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLoopShutter:Lcom/powervision/base/views/loopview/LoopView;

    iget v7, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->shutter:I

    iget v8, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->result:I

    mul-int v7, v7, v8

    iget v8, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->fps:I

    mul-int v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v6, v1}, Lcom/powervision/base/views/loopview/LoopView;->setAvailableData(Ljava/util/List;)V

    .line 1846
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLoopTime:Lcom/powervision/base/views/loopview/LoopView;

    iget v3, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->shutter:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/powervision/base/views/loopview/LoopView;->setAvailableData(Ljava/util/List;)V

    return-void

    .line 1825
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandler:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;

    new-instance v1, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$14;

    invoke-direct {v1, p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$14;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private goFullScreen(Z)V
    .locals 8

    .line 1041
    iget-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isVertical:Z

    if-eqz v0, :cond_0

    return-void

    .line 1042
    :cond_0
    iget-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFullScreen:Z

    if-ne v0, p1, :cond_1

    return-void

    .line 1045
    :cond_1
    iput-boolean p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFullScreen:Z

    .line 1046
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "goFullScreen 2222 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isFunctional = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFunctional:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 1047
    iget-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFunctional:Z

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-nez v0, :cond_4

    .line 1049
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGeneralImg:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    const/4 v3, 0x4

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-static {v0, v3}, Lcom/powervision/base/utils/AnimUtils;->hideOrShowRightViews(Landroid/view/View;I)V

    .line 1051
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHomeBack:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    const/4 v3, 0x4

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-static {v0, v3}, Lcom/powervision/base/utils/AnimUtils;->hideOrShowRightViews(Landroid/view/View;I)V

    .line 1054
    :cond_4
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHPickerView:Lcom/powervision/base/views/HPickerView;

    if-eqz p1, :cond_5

    const/4 v3, 0x4

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v0, v3}, Lcom/powervision/base/views/HPickerView;->setVisibility(I)V

    .line 1056
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/16 v5, 0x8

    if-ne v0, v3, :cond_6

    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraAudioState()I

    move-result v0

    if-eq v0, v4, :cond_9

    .line 1057
    :cond_6
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAudioImg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, v5, :cond_9

    .line 1058
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAudioImg:Landroid/widget/ImageView;

    if-eqz p1, :cond_7

    const/4 v3, 0x4

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    invoke-static {v0, v3}, Lcom/powervision/base/utils/AnimUtils;->hideOrShowRightView(Landroid/view/View;I)V

    .line 1059
    invoke-static {}, Lcom/powervision/camera/utils/RxCountDown;->getInstance()Lcom/powervision/camera/utils/RxCountDown;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/utils/RxCountDown;->isCounting()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1060
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    if-eqz v0, :cond_9

    .line 1061
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mImageRecordMarker:Landroid/widget/ImageView;

    if-eqz p1, :cond_8

    const/4 v3, 0x4

    goto :goto_4

    :cond_8
    const/4 v3, 0x0

    :goto_4
    invoke-static {v0, v3}, Lcom/powervision/base/utils/AnimUtils;->hideOrShowRightView(Landroid/view/View;I)V

    .line 1066
    :cond_9
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mImageFps:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, v5, :cond_c

    .line 1067
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mImageFps:Landroid/widget/ImageView;

    if-eqz p1, :cond_a

    const/4 v3, 0x4

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    invoke-static {v0, v3}, Lcom/powervision/base/utils/AnimUtils;->hideOrShowRightView(Landroid/view/View;I)V

    .line 1068
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mImageFpsMarker:Landroid/widget/ImageView;

    if-eqz p1, :cond_b

    const/4 v3, 0x4

    goto :goto_6

    :cond_b
    const/4 v3, 0x0

    :goto_6
    invoke-static {v0, v3}, Lcom/powervision/base/utils/AnimUtils;->hideOrShowRightView(Landroid/view/View;I)V

    .line 1070
    :cond_c
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mSignalStatus:Landroid/widget/ImageView;

    if-eqz p1, :cond_d

    const/4 v3, 0x4

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    invoke-static {v0, v3}, Lcom/powervision/base/utils/AnimUtils;->hideOrShowRightView(Landroid/view/View;I)V

    .line 1071
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mBatteryImg:Landroid/widget/ImageView;

    if-eqz p1, :cond_e

    const/4 v3, 0x4

    goto :goto_8

    :cond_e
    const/4 v3, 0x0

    :goto_8
    invoke-static {v0, v3}, Lcom/powervision/base/utils/AnimUtils;->hideOrShowRightView(Landroid/view/View;I)V

    .line 1072
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mBatteryText:Landroid/widget/TextView;

    if-eqz p1, :cond_f

    const/4 v3, 0x4

    goto :goto_9

    :cond_f
    const/4 v3, 0x0

    :goto_9
    invoke-static {v0, v3}, Lcom/powervision/base/utils/AnimUtils;->hideOrShowRightView(Landroid/view/View;I)V

    .line 1074
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGimbalModeImg:Landroid/widget/ImageView;

    if-eqz p1, :cond_10

    const/4 v3, 0x4

    goto :goto_a

    :cond_10
    const/4 v3, 0x0

    :goto_a
    invoke-static {v0, v3}, Lcom/powervision/base/utils/AnimUtils;->hideOrShowBottomView(Landroid/view/View;I)V

    .line 1076
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGimbalModeText:Landroid/widget/TextView;

    if-eqz p1, :cond_11

    const/4 v3, 0x4

    goto :goto_b

    :cond_11
    const/4 v3, 0x0

    :goto_b
    invoke-static {v0, v3}, Lcom/powervision/base/utils/AnimUtils;->hideOrShowBottomView(Landroid/view/View;I)V

    .line 1079
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mNewCameraParamView:Lcom/powervision/handheld/ui/views/NewCameraParamView;

    if-eqz p1, :cond_12

    const/4 v3, 0x4

    goto :goto_c

    :cond_12
    const/4 v3, 0x0

    :goto_c
    invoke-static {v0, v3}, Lcom/powervision/base/utils/AnimUtils;->hideOrShowTopView(Landroid/view/View;I)V

    .line 1082
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTakeCameraImg:Lcom/powervision/base/views/AnimateImageView;

    if-eqz p1, :cond_13

    const/4 v3, 0x4

    goto :goto_d

    :cond_13
    const/4 v3, 0x0

    :goto_d
    invoke-static {v0, v3}, Lcom/powervision/base/utils/AnimUtils;->hideOrShowLeftView(Landroid/view/View;I)V

    .line 1083
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTakeCameraImg:Lcom/powervision/base/views/AnimateImageView;

    invoke-virtual {v0}, Lcom/powervision/base/views/AnimateImageView;->getResId()I

    move-result v0

    sget v3, Lcom/powervision/handheld/R$mipmap;->icon_capture_wating:I

    if-ne v0, v3, :cond_14

    if-nez p1, :cond_14

    .line 1084
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTakeCameraImg:Lcom/powervision/base/views/AnimateImageView;

    sget v3, Lcom/powervision/handheld/R$mipmap;->icon_capture_wating:I

    const/4 v6, -0x1

    sget v7, Lcom/powervision/handheld/R$mipmap;->icon_capture:I

    invoke-virtual {v0, v3, v4, v6, v7}, Lcom/powervision/base/views/AnimateImageView;->setImageResource(IZII)V

    .line 1087
    :cond_14
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraSetImg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, v5, :cond_16

    .line 1088
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraSetImg:Landroid/widget/ImageView;

    if-eqz p1, :cond_15

    const/4 v3, 0x4

    goto :goto_e

    :cond_15
    const/4 v3, 0x0

    :goto_e
    invoke-static {v0, v3}, Lcom/powervision/base/utils/AnimUtils;->hideOrShowLeftView(Landroid/view/View;I)V

    .line 1091
    :cond_16
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLayoutSlowMotion:Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;

    invoke-direct {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->setViewFull(Landroid/view/View;)V

    .line 1092
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mRockerView:Lcom/powervision/handheld/ui/views/RockerView;

    invoke-direct {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->setViewFull(Landroid/view/View;)V

    .line 1093
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLayoutDelaySet:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->setViewFull(Landroid/view/View;)V

    .line 1098
    invoke-static {}, Lcom/powervision/camera/utils/RxCountDown;->getInstance()Lcom/powervision/camera/utils/RxCountDown;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/utils/RxCountDown;->isCounting()Z

    move-result v0

    if-nez v0, :cond_19

    iget-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFunctional:Z

    if-eqz v0, :cond_17

    goto :goto_10

    .line 1108
    :cond_17
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mMediaImg:Lcom/powervision/base/views/AnimateImageView;

    if-eqz p1, :cond_18

    goto :goto_f

    :cond_18
    const/4 v1, 0x0

    :goto_f
    invoke-static {v0, v1}, Lcom/powervision/base/utils/AnimUtils;->hideOrShowLeftViews(Landroid/view/View;I)V

    goto :goto_12

    .line 1099
    :cond_19
    :goto_10
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isCaptureInVideo()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1101
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mMediaImg:Lcom/powervision/base/views/AnimateImageView;

    if-eqz p1, :cond_1a

    goto :goto_11

    :cond_1a
    const/4 v1, 0x0

    :goto_11
    invoke-static {v0, v1}, Lcom/powervision/base/utils/AnimUtils;->hideOrShowLeftView(Landroid/view/View;I)V

    :cond_1b
    :goto_12
    return-void
.end method

.method private initHandheldBasicGuideViews()V
    .locals 4

    .line 5008
    iget-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFirstBasicGuide:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->executedHandheldGuide:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraConnect()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5010
    iget-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isVertical:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 5011
    invoke-virtual {p0, v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 5013
    :cond_0
    invoke-virtual {p0, v2}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->setRequestedOrientation(I)V

    .line 5015
    :goto_0
    sget v0, Lcom/powervision/handheld/R$id;->handheld_basic_guide_stub:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;

    iput-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandheldBasicGuideView:Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;

    .line 5016
    invoke-virtual {v0, v2}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->setVisibility(I)V

    .line 5017
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandheldBasicGuideView:Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;

    new-instance v3, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$JuGJYyPFUyiqSsIjj_L7vGaPbCw;

    invoke-direct {v3, p0}, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$JuGJYyPFUyiqSsIjj_L7vGaPbCw;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V

    invoke-virtual {v0, v3}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->setOnBasicGuideCompleteListener(Lcom/powervision/handheld/ui/views/HandheldBasicGuideView$OnBasicGuideCompleteListener;)V

    .line 5027
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getGestureState()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 5028
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/powervision/camera/camera/CameraManager;->enableGesture(I)V

    .line 5031
    :cond_1
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandler:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;

    const/16 v1, 0x21

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void
.end method

.method private initHandheldGuideViews()V
    .locals 2

    .line 4996
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandheldGuideStubLayout:Lcom/powervision/handheld/ui/views/HandheldGuideView;

    new-instance v1, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$2NH4DgsMd2A0Nc43e206eSNQqZY;

    invoke-direct {v1, p0}, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$2NH4DgsMd2A0Nc43e206eSNQqZY;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V

    invoke-virtual {v0, v1}, Lcom/powervision/handheld/ui/views/HandheldGuideView;->setOnGuideCompleteListener(Lcom/powervision/handheld/ui/views/HandheldGuideView$OnGuideCompleteListener;)V

    return-void
.end method

.method private initLines()V
    .locals 3

    .line 1394
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const-string v1, "HANDHELD_GRID_LINE_TAG"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " initLines .... mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "initLines"

    invoke-static {v2, v1}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/powervision/camera/camera/CameraManager;->setLinesMode(I)V

    .line 1397
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCustomLinesView:Lcom/powervision/base/views/CustomLinesView;

    if-eqz v1, :cond_0

    .line 1398
    invoke-virtual {v1, v0}, Lcom/powervision/base/views/CustomLinesView;->setLineMode(I)V

    :cond_0
    return-void
.end method

.method private initScreenSize()V
    .locals 4

    .line 4746
    invoke-static {p0}, Lcom/powervision/base/utils/ScreenUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    .line 4747
    invoke-static {p0}, Lcom/powervision/base/utils/ScreenUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    .line 4748
    iput v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mScreenWidth:I

    .line 4749
    iput v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mScreenHeight:I

    if-le v0, v1, :cond_0

    .line 4753
    div-int/lit8 v2, v1, 0x10

    mul-int/lit8 v2, v2, 0x9

    .line 4754
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/powervision/camera/camera/CameraManager;->setLocalVScreenHeight(I)V

    .line 4755
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/powervision/camera/camera/CameraManager;->setLocalVScreenWidth(I)V

    .line 4757
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/powervision/camera/camera/CameraManager;->setLocalHScreenHeight(I)V

    .line 4758
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/powervision/camera/camera/CameraManager;->setLocalHScreenWidth(I)V

    goto :goto_0

    .line 4760
    :cond_0
    div-int/lit8 v2, v0, 0x10

    mul-int/lit8 v2, v2, 0x9

    .line 4761
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/powervision/camera/camera/CameraManager;->setLocalVScreenHeight(I)V

    .line 4762
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/powervision/camera/camera/CameraManager;->setLocalVScreenWidth(I)V

    .line 4764
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/powervision/camera/camera/CameraManager;->setLocalHScreenHeight(I)V

    .line 4765
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->setLocalHScreenWidth(I)V

    :goto_0
    return-void
.end method

.method private initWarnManager()V
    .locals 2

    .line 745
    new-instance v0, Lcom/powervision/base/warning/manager/WarningManager;

    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->flexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-direct {v0, p0, v1}, Lcom/powervision/base/warning/manager/WarningManager;-><init>(Landroid/content/Context;Lcom/google/android/flexbox/FlexboxLayout;)V

    iput-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->warns:Lcom/powervision/base/warning/manager/WarningManager;

    return-void
.end method

.method private intoMedia()V
    .locals 5

    .line 1683
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraConnect()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    sget v1, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_RECORDING:I

    if-ne v0, v1, :cond_1

    .line 1685
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentResolution()I

    move-result v0

    .line 1686
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getCameraConnect()Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    if-ne v0, v2, :cond_3

    .line 1687
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1688
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mMediaImg:Lcom/powervision/base/views/AnimateImageView;

    invoke-virtual {v0}, Lcom/powervision/base/views/AnimateImageView;->getResId()I

    move-result v0

    sget v1, Lcom/powervision/handheld/R$mipmap;->icon_capture:I

    if-ne v0, v1, :cond_3

    .line 1689
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mMediaImg:Lcom/powervision/base/views/AnimateImageView;

    sget v1, Lcom/powervision/handheld/R$mipmap;->icon_capture_wating:I

    const/4 v3, -0x1

    sget v4, Lcom/powervision/handheld/R$mipmap;->icon_capture:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/powervision/base/views/AnimateImageView;->setImageResource(IZII)V

    .line 1690
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mMediaImg:Lcom/powervision/base/views/AnimateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/AnimateImageView;->setEnabled(Z)V

    .line 1691
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-virtual {v0, v1}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->startCapture(I)V

    goto :goto_0

    .line 1695
    :cond_1
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1696
    sget v0, Lcom/powervision/handheld/R$string;->AP03_Home_2:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    return-void

    .line 1700
    :cond_2
    iget v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mViewPaddingTop:I

    iput v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mViewPaddingTopBackUp:I

    .line 1701
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object v0

    const-string v1, "/media/mediaLibActivity"

    invoke-virtual {v0, v1}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    :cond_3
    :goto_0
    return-void
.end method

.method private isCaptureInVideo()Z
    .locals 5

    .line 1027
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    .line 1028
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentResolution()I

    move-result v1

    .line 1029
    iget-object v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCaptureInVideo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "   cameraCurrentResolution = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    if-eqz v1, :cond_0

    if-ne v1, v0, :cond_1

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isTotalValid()Z
    .locals 2

    .line 2177
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextDelayTotal:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2178
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "/0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$currentStorageFull$8(ZLandroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 2555
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/powervision/camera/camera/CameraManager;->setCurrentStorageDevice(I)V

    goto :goto_0

    .line 2557
    :cond_0
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/camera/camera/CameraManager;->getSDAllCapacity()I

    move-result p0

    if-gtz p0, :cond_1

    .line 2558
    sget p0, Lcom/powervision/handheld/R$string;->AP03_Msg_203:I

    invoke-static {p0}, Lcom/powervision/base/utils/ToastUtils;->showDefaultToast(I)V

    goto :goto_0

    .line 2560
    :cond_1
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/powervision/camera/camera/CameraManager;->setCurrentStorageDevice(I)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$currentStorageFull$9(ZLandroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 2565
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/camera/camera/CameraManager;->getSDStorageSize()V

    goto :goto_0

    .line 2567
    :cond_0
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/camera/camera/CameraManager;->getEmmcStorageSize()V

    :goto_0
    return-void
.end method

.method static synthetic lambda$onClick$2(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$setDelayTime$4(Ljava/lang/Long;)Ljava/lang/Long;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1634
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private mBackHome()V
    .locals 0

    .line 1709
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->onBackPressed()V

    return-void
.end method

.method private mRecordPop()V
    .locals 6

    .line 481
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x2

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    .line 483
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v5, Lcom/powervision/handheld/R$layout;->handheld_record_pop_layout:I

    invoke-virtual {v0, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->contentView:Landroid/view/View;

    .line 485
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->contentView:Landroid/view/View;

    invoke-direct {v0, v1, v3, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 487
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->contentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 488
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 489
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->popupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAudioImg:Landroid/widget/ImageView;

    const/16 v3, -0x64

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_0

    .line 492
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v5, Lcom/powervision/handheld/R$layout;->handheld_record_pop_layout_land:I

    invoke-virtual {v0, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->contentView:Landroid/view/View;

    .line 494
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->contentView:Landroid/view/View;

    invoke-direct {v0, v1, v3, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 496
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->contentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 497
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 498
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->popupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAudioImg:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    neg-int v3, v3

    add-int/lit16 v3, v3, -0xd2

    iget-object v5, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAudioImg:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    neg-int v5, v5

    add-int/lit8 v5, v5, -0x64

    invoke-virtual {v0, v1, v3, v5}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 500
    :goto_0
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->contentView:Landroid/view/View;

    sget v1, Lcom/powervision/handheld/R$id;->close_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->closeLayout:Landroid/widget/RelativeLayout;

    .line 501
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->contentView:Landroid/view/View;

    sget v1, Lcom/powervision/handheld/R$id;->record_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->recordLayout:Landroid/widget/RelativeLayout;

    .line 502
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->contentView:Landroid/view/View;

    sget v1, Lcom/powervision/handheld/R$id;->noise_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->noiseLayout:Landroid/widget/RelativeLayout;

    .line 504
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->contentView:Landroid/view/View;

    sget v1, Lcom/powervision/handheld/R$id;->record_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mRecordClose:Landroid/widget/TextView;

    .line 505
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->contentView:Landroid/view/View;

    sget v1, Lcom/powervision/handheld/R$id;->record_open:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mRecordOpen:Landroid/widget/TextView;

    .line 506
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->contentView:Landroid/view/View;

    sget v1, Lcom/powervision/handheld/R$id;->noise_open:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mNoiseOpen:Landroid/widget/TextView;

    .line 508
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraAudioState()I

    move-result v0

    if-nez v0, :cond_1

    .line 509
    invoke-direct {p0, v2}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->setRecordText(I)V

    goto :goto_1

    .line 510
    :cond_1
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraAudioState()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 511
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const-string v1, "AP03_RECORD_NOISE_SWITCH"

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 512
    invoke-direct {p0, v4}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->setRecordText(I)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    .line 514
    invoke-direct {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->setRecordText(I)V

    .line 518
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->closeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 519
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->recordLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 520
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->noiseLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private onDeviceStatusChanged(Z)V
    .locals 2

    .line 4462
    iget v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->deviceConnectType:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 4463
    iput v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->deviceConnectType:I

    goto :goto_0

    .line 4464
    :cond_0
    iget v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->deviceConnectType:I

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 4465
    iput v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->deviceConnectType:I

    goto :goto_0

    .line 4466
    :cond_1
    iget v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->deviceConnectType:I

    if-nez v0, :cond_2

    if-nez p1, :cond_2

    return-void

    .line 4469
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u672c\u5730\u8bbe\u7f6e\u503c...isConnected= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "...deviceConnectType= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->deviceConnectType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "device_conned"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4471
    new-instance v0, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$VGFfSXLX5vpuZkI-ObtSBG1Pvdg;

    invoke-direct {v0, p0, p1}, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$VGFfSXLX5vpuZkI-ObtSBG1Pvdg;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onGestureTakePicture()V
    .locals 2

    .line 5083
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->TAG:Ljava/lang/String;

    const-string v1, "onGestureTakePicture: 111"

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5084
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandheldBasicGuideView:Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;

    if-eqz v0, :cond_0

    .line 5085
    invoke-virtual {v0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->onPhotoGestureCallBack()V

    :cond_0
    return-void
.end method

.method private onStartHighTemperatureAnimation()V
    .locals 3

    .line 4837
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAlphaAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraTemperatureIv:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    return-void

    .line 4840
    :cond_0
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraTemperatureIv:Landroid/widget/ImageView;

    const/4 v1, 0x6

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAlphaAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x3e8

    .line 4841
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 4842
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAlphaAnimation:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 4843
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAlphaAnimation:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 4844
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAlphaAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private onStopHighTemperatureAnimation()V
    .locals 1

    .line 4848
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAlphaAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 4849
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 4851
    :cond_0
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->cancleTemperatureTask()V

    return-void
.end method

.method private onSurfaceSizeAutoChange()V
    .locals 5

    .line 4783
    iget-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->MODE_SCREEN_4_3:Z

    if-eqz v0, :cond_1

    .line 4784
    iget-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isVertical:Z

    if-eqz v0, :cond_0

    .line 4785
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getLocalVScreenHeight()I

    move-result v0

    .line 4786
    div-int/lit8 v1, v0, 0x3

    mul-int/lit8 v1, v1, 0x4

    .line 4787
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/powervision/camera/camera/CameraManager;->setLocalVSurfaceWidth(I)V

    .line 4788
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/powervision/camera/camera/CameraManager;->setLocalVSurfaceHeight(I)V

    goto :goto_0

    .line 4790
    :cond_0
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getLocalHScreenHeight()I

    move-result v0

    .line 4791
    div-int/lit8 v1, v0, 0x3

    mul-int/lit8 v1, v1, 0x4

    .line 4793
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/powervision/camera/camera/CameraManager;->setLocalSurfaceWidth(I)V

    .line 4794
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/powervision/camera/camera/CameraManager;->setLocalSurfaceHeight(I)V

    goto :goto_0

    .line 4797
    :cond_1
    iget-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isVertical:Z

    if-eqz v0, :cond_2

    .line 4798
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getLocalVScreenHeight()I

    move-result v0

    .line 4799
    div-int/lit8 v1, v0, 0x9

    mul-int/lit8 v1, v1, 0x10

    .line 4800
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/powervision/camera/camera/CameraManager;->setLocalVSurfaceWidth(I)V

    .line 4801
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/powervision/camera/camera/CameraManager;->setLocalVSurfaceHeight(I)V

    goto :goto_0

    .line 4803
    :cond_2
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getLocalHScreenHeight()I

    move-result v0

    .line 4804
    div-int/lit8 v1, v0, 0x9

    mul-int/lit8 v1, v1, 0x10

    .line 4806
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/powervision/camera/camera/CameraManager;->setLocalSurfaceWidth(I)V

    .line 4807
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/powervision/camera/camera/CameraManager;->setLocalSurfaceHeight(I)V

    .line 4811
    :goto_0
    iget-object v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTouchRectangleView:Lcom/powervision/handheld/ui/views/TouchRectangleView;

    if-eqz v2, :cond_3

    .line 4812
    invoke-virtual {v2, v1, v0}, Lcom/powervision/handheld/ui/views/TouchRectangleView;->setWidthAndHeight(II)V

    .line 4814
    :cond_3
    iget-object v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mSurfaceView:Landroid/view/TextureView;

    if-eqz v2, :cond_4

    .line 4815
    invoke-virtual {v2}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 4816
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 4817
    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/16 v3, 0xd

    .line 4818
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 4819
    iget-object v4, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mSurfaceView:Landroid/view/TextureView;

    invoke-virtual {v4, v2}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4820
    iget-object v4, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mBlurryView:Landroid/widget/ImageView;

    if-eqz v4, :cond_4

    .line 4821
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 4822
    iput v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 4823
    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 4824
    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 4825
    iget-object v3, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mBlurryView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4829
    :cond_4
    iget-boolean v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLiveStreamEnabled:Z

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/powervision/livestreaming/LiveStreaming;->getInstance()Lcom/powervision/livestreaming/LiveStreaming;

    move-result-object v2

    invoke-virtual {v2}, Lcom/powervision/livestreaming/LiveStreaming;->getLiveStreamEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4830
    iget-object v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "========== onSurfaceSizeAutoChange updatePlayerTextureView============= targetWidth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  targetHeight = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4831
    iget-object v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "3333333 updatePlayerTextureView: width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4832
    invoke-static {}, Lcom/powervision/livestreaming/LiveStreaming;->getInstance()Lcom/powervision/livestreaming/LiveStreaming;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/powervision/livestreaming/LiveStreaming;->updatePlayerTextureView(II)V

    :cond_5
    return-void
.end method

.method private onTemperatureUpdate(Landroid/os/Message;)V
    .locals 3

    .line 4895
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v0, 0x4

    const/16 v1, 0x37

    if-lt p1, v1, :cond_1

    .line 4897
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraTemperatureIv:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-ne p1, v0, :cond_0

    .line 4898
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraTemperatureIv:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/handheld/R$mipmap;->camera_temperature_warning:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4899
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraTemperatureIv:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4900
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->onStartHighTemperatureAnimation()V

    .line 4901
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->showTemperatureDialog()V

    .line 4903
    :cond_0
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->cancleTemperatureTask()V

    goto :goto_0

    :cond_1
    const/16 v2, 0x2d

    if-lt p1, v2, :cond_2

    if-ge p1, v1, :cond_2

    .line 4905
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraTemperatureIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 4906
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraTemperatureIv:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/handheld/R$mipmap;->camera_temperature_remind:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4907
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->onStartHighTemperatureAnimation()V

    const/16 v0, 0x32

    if-ge p1, v0, :cond_3

    .line 4909
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->startTemperatureTask()V

    goto :goto_0

    .line 4913
    :cond_2
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraTemperatureIv:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    .line 4914
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraTemperatureIv:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4915
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->onStopHighTemperatureAnimation()V

    const/4 p1, 0x1

    .line 4916
    iput-boolean p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->showTemperatureDialog:Z

    .line 4917
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->cancleTemperatureTask()V

    :cond_3
    :goto_0
    return-void
.end method

.method private pickerResetToPre()V
    .locals 3

    .line 947
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHPickerView:Lcom/powervision/base/views/HPickerView;

    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->modelList:Ljava/util/List;

    iget-object v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->preItem:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/HPickerView;->setSclollSelectIndex(I)V

    .line 948
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHPickerView:Lcom/powervision/base/views/HPickerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/HPickerView;->setCallBackResult(Z)V

    return-void
.end method

.method private registerBlueToothReceiver()V
    .locals 2

    .line 571
    iget-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mReceiverTag:Z

    if-nez v0, :cond_0

    .line 572
    new-instance v0, Lcom/powervision/base/recevier/BlueToothConnectReceiver;

    invoke-direct {v0}, Lcom/powervision/base/recevier/BlueToothConnectReceiver;-><init>()V

    iput-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->blueToothConnectReceiver:Lcom/powervision/base/recevier/BlueToothConnectReceiver;

    .line 573
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 574
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->blueToothConnectReceiver:Lcom/powervision/base/recevier/BlueToothConnectReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 575
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 576
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->blueToothConnectReceiver:Lcom/powervision/base/recevier/BlueToothConnectReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 577
    iput-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mReceiverTag:Z

    .line 578
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->blueToothConnectReceiver:Lcom/powervision/base/recevier/BlueToothConnectReceiver;

    invoke-virtual {v0, p0}, Lcom/powervision/base/recevier/BlueToothConnectReceiver;->setOnBleConnectListener(Lcom/powervision/base/listener/OnBleConnectListener;)V

    :cond_0
    return-void
.end method

.method private registerPhoneStateReceiver()V
    .locals 2

    .line 555
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPhoneReceiver:Lcom/powervision/base/recevier/PhoneReceiver;

    if-nez v0, :cond_0

    .line 556
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 557
    new-instance v1, Lcom/powervision/base/recevier/PhoneReceiver;

    invoke-direct {v1}, Lcom/powervision/base/recevier/PhoneReceiver;-><init>()V

    iput-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPhoneReceiver:Lcom/powervision/base/recevier/PhoneReceiver;

    const-string v1, "android.intent.action.NEW_OUTGOING_CALL"

    .line 558
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PHONE_STATE"

    .line 559
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 560
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPhoneReceiver:Lcom/powervision/base/recevier/PhoneReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 561
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPhoneReceiver:Lcom/powervision/base/recevier/PhoneReceiver;

    invoke-virtual {v0, p0}, Lcom/powervision/base/recevier/PhoneReceiver;->setOnPhoneStateListener(Lcom/powervision/base/listener/PhoneCallListener;)V

    :cond_0
    return-void
.end method

.method private removeCameraSettingView()V
    .locals 3

    .line 4440
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraNewSettingView;

    if-eqz v0, :cond_1

    .line 4441
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 4442
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 4443
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraNewSettingView;

    iget-boolean v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isVertical:Z

    if-eqz v2, :cond_0

    sget v2, Lcom/powervision/handheld/R$anim;->anim_bottom_out:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/powervision/handheld/R$anim;->anim_left_out:I

    :goto_0
    invoke-static {v1, v2}, Lcom/powervision/base/utils/AnimUtils;->startAnimation(Landroid/view/View;I)V

    .line 4445
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraNewSettingView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 4446
    iput-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraNewSettingView;

    :cond_1
    return-void
.end method

.method private removeListener()V
    .locals 2

    .line 2290
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraGetCameraAllParametersListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetCameraAllParametersListener;)V

    .line 2291
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraNotifyGetRestRecordTimeListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetRestRecordTimeListener;)V

    .line 2292
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraNotifyGetRestPhotoNumberListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetRestPhotoNumberListener;)V

    .line 2293
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraNotifyEnableAudioListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyEnableAudioListener;)V

    .line 2294
    invoke-static {}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->getAp03ConnectionInstance()Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->removeConnectionChangeListener(Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$Ap03DeviceConnectionChangeListener;)V

    .line 2295
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeAp03NotifyOnQueryActivationStatusListener(Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnQueryActivationStatusListener;)V

    .line 2297
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->audioRecordManager:Lcom/powervision/handheld/utils/AudioRecordManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/handheld/utils/AudioRecordManager;->setVolumeListener(Lcom/powervision/handheld/utils/AudioRecordManager$VolumeListener;)V

    return-void
.end method

.method private requestPermission()V
    .locals 2

    .line 528
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mRxPermission:Lcom/tbruyelle/rxpermissions2/RxPermissions;

    const-string v1, "android.permission.READ_PHONE_STATE"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->request([Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$1;

    invoke-direct {v1, p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$1;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V

    .line 529
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private resetDelayCapture()V
    .locals 5

    const/4 v0, 0x0

    .line 873
    iput-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFunctional:Z

    .line 874
    iput v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->currentNum:I

    .line 875
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTakeCameraImg:Lcom/powervision/base/views/AnimateImageView;

    sget v2, Lcom/powervision/handheld/R$mipmap;->icon_delay_photo:I

    invoke-virtual {v1, v2}, Lcom/powervision/base/views/AnimateImageView;->setImageResource(I)V

    .line 876
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTakeCameraImg:Lcom/powervision/base/views/AnimateImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/powervision/base/views/AnimateImageView;->setEnabled(Z)V

    .line 877
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLayoutDelaySet:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 878
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLayoutDelayRecord:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 879
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHPickerView:Lcom/powervision/base/views/HPickerView;

    invoke-virtual {v1, v0}, Lcom/powervision/base/views/HPickerView;->setVisibility(I)V

    .line 880
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHPickerView:Lcom/powervision/base/views/HPickerView;

    invoke-virtual {v1, v0}, Lcom/powervision/base/views/HPickerView;->setIsAuto(Z)V

    .line 881
    iget v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->time:I

    iget v3, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->shutter:I

    div-int/2addr v1, v3

    iget v3, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->fps:I

    div-int/2addr v1, v3

    iput v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->result:I

    .line 882
    iget-object v3, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextResultTime:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/powervision/base/utils/TimeUtils;->formatRecordVideoTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 883
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mMediaImg:Lcom/powervision/base/views/AnimateImageView;

    invoke-virtual {v1, v0}, Lcom/powervision/base/views/AnimateImageView;->setVisibility(I)V

    .line 884
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHomeBack:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 885
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHomeBack:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 886
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGeneralImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 887
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGeneralImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 888
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->stopAnimation()V

    .line 889
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->progressBar:Lcom/powervision/base/views/LoadingProgressBar;

    if-eqz v1, :cond_0

    .line 890
    invoke-virtual {v1}, Lcom/powervision/base/views/LoadingProgressBar;->dismiss()V

    .line 892
    :cond_0
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextRestTime:Landroid/widget/TextView;

    const-string v3, "00:00:00"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 893
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextDelayProgress:Landroid/widget/TextView;

    const-string v4, "0"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 894
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextBornTime:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 895
    iput-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->enable2:Z

    .line 896
    iput-boolean v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->enable3:Z

    .line 897
    iput-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->evOnly:Z

    .line 898
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    iget-boolean v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->evOnly:Z

    invoke-virtual {v1, v2}, Lcom/powervision/camera/camera/CameraManager;->setEvOnly(Z)V

    .line 899
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraNewSettingView;

    if-eqz v1, :cond_1

    .line 900
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->addAndRemoveCameraSettingsView()V

    .line 902
    :cond_1
    invoke-direct {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->goFullScreen(Z)V

    return-void
.end method

.method private resetRecordingPhotoStatus()V
    .locals 2

    .line 4526
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mMediaImg:Lcom/powervision/base/views/AnimateImageView;

    if-eqz v0, :cond_0

    const-string v0, "resetRecordingPhotoStatus"

    const-string v1, "result..."

    .line 4528
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4529
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mMediaImg:Lcom/powervision/base/views/AnimateImageView;

    sget v1, Lcom/powervision/handheld/R$mipmap;->icon_capture:I

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/AnimateImageView;->setImageResource(I)V

    goto :goto_0

    .line 4531
    :cond_0
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mMediaImg:Lcom/powervision/base/views/AnimateImageView;

    sget v1, Lcom/powervision/handheld/R$mipmap;->handheld_media_icon:I

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/AnimateImageView;->setImageResource(I)V

    .line 4533
    :goto_0
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mMediaImg:Lcom/powervision/base/views/AnimateImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/AnimateImageView;->setEnabled(Z)V

    return-void
.end method

.method private setDelayData()V
    .locals 12

    .line 763
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mModel:Lcom/powervision/base/base/BaseModel;

    check-cast v0, Lcom/powervision/handheld/model/impl/HandheldModel;

    invoke-virtual {v0}, Lcom/powervision/handheld/model/impl/HandheldModel;->getShutterTimeIntList()Ljava/util/List;

    move-result-object v4

    .line 764
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mModel:Lcom/powervision/base/base/BaseModel;

    check-cast v0, Lcom/powervision/handheld/model/impl/HandheldModel;

    invoke-virtual {v0}, Lcom/powervision/handheld/model/impl/HandheldModel;->getRecordTimeIntList()Ljava/util/List;

    move-result-object v8

    .line 765
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mModel:Lcom/powervision/base/base/BaseModel;

    check-cast v0, Lcom/powervision/handheld/model/impl/HandheldModel;

    invoke-virtual {v0}, Lcom/powervision/handheld/model/impl/HandheldModel;->getShutterTimeList()Ljava/util/List;

    move-result-object v10

    .line 766
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mModel:Lcom/powervision/base/base/BaseModel;

    check-cast v0, Lcom/powervision/handheld/model/impl/HandheldModel;

    invoke-virtual {v0}, Lcom/powervision/handheld/model/impl/HandheldModel;->getRecordTimeList()Ljava/util/List;

    move-result-object v9

    .line 767
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mModel:Lcom/powervision/base/base/BaseModel;

    check-cast v0, Lcom/powervision/handheld/model/impl/HandheldModel;

    invoke-virtual {v0}, Lcom/powervision/handheld/model/impl/HandheldModel;->getShutterMap()Ljava/util/HashMap;

    move-result-object v3

    .line 768
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mModel:Lcom/powervision/base/base/BaseModel;

    check-cast v0, Lcom/powervision/handheld/model/impl/HandheldModel;

    invoke-virtual {v0}, Lcom/powervision/handheld/model/impl/HandheldModel;->getRecordTimeMap()Ljava/util/HashMap;

    move-result-object v7

    .line 769
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLoopShutter:Lcom/powervision/base/views/loopview/LoopView;

    invoke-virtual {v0, v10}, Lcom/powervision/base/views/loopview/LoopView;->setItems(Ljava/util/List;)V

    .line 770
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLoopTime:Lcom/powervision/base/views/loopview/LoopView;

    invoke-virtual {v0, v9}, Lcom/powervision/base/views/loopview/LoopView;->setItems(Ljava/util/List;)V

    .line 771
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLoopTime:Lcom/powervision/base/views/loopview/LoopView;

    const-string v1, "5s"

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/loopview/LoopView;->setAvailableData(Ljava/util/List;)V

    .line 772
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLoopShutter:Lcom/powervision/base/views/loopview/LoopView;

    const-string v1, "00:10:00"

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/loopview/LoopView;->setAvailableData(Ljava/util/List;)V

    .line 773
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLoopShutter:Lcom/powervision/base/views/loopview/LoopView;

    new-instance v11, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$6;

    move-object v1, v11

    move-object v2, p0

    move-object v5, v10

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$6;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;Ljava/util/HashMap;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v11}, Lcom/powervision/base/views/loopview/LoopView;->setListener(Lcom/powervision/base/views/loopview/OnItemSelectedListener;)V

    .line 800
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLoopTime:Lcom/powervision/base/views/loopview/LoopView;

    new-instance v1, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$7;

    move-object v5, v1

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$7;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;Ljava/util/HashMap;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/loopview/LoopView;->setListener(Lcom/powervision/base/views/loopview/OnItemSelectedListener;)V

    .line 824
    iget v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->time:I

    iget v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->shutter:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->fps:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->result:I

    .line 825
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextResultTime:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/powervision/base/utils/TimeUtils;->formatRecordVideoTime(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 826
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraConnect()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 827
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLoopShutter:Lcom/powervision/base/views/loopview/LoopView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/loopview/LoopView;->setInitPosition(I)V

    .line 828
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLoopTime:Lcom/powervision/base/views/loopview/LoopView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/loopview/LoopView;->setInitPosition(I)V

    goto :goto_0

    .line 830
    :cond_0
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLoopShutter:Lcom/powervision/base/views/loopview/LoopView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/loopview/LoopView;->setInitPosition(I)V

    .line 831
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLoopTime:Lcom/powervision/base/views/loopview/LoopView;

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/loopview/LoopView;->setInitPosition(I)V

    :goto_0
    return-void
.end method

.method private setFlickerAnimation(Landroid/widget/ImageView;)V
    .locals 3

    .line 4452
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->flickerAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x3e8

    .line 4454
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 4455
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->flickerAnimation:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4456
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->flickerAnimation:Landroid/view/animation/Animation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 4457
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->flickerAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 4458
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->flickerAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private setFucVisible(Z)V
    .locals 4

    .line 842
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mMediaImg:Lcom/powervision/base/views/AnimateImageView;

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    :goto_0
    invoke-virtual {v0, v3}, Lcom/powervision/base/views/AnimateImageView;->setVisibility(I)V

    .line 843
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGeneralImg:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/4 v3, 0x4

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 844
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHomeBack:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5ef6\u65f6\u6444\u5f71\u3002\u3002 setFucVisible "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 846
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHomeBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 847
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGeneralImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 848
    iput-boolean p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->enable2:Z

    .line 849
    iput-boolean p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->enable3:Z

    xor-int/lit8 p1, p1, 0x1

    .line 850
    iput-boolean p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->evOnly:Z

    .line 851
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    iget-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->evOnly:Z

    invoke-virtual {p1, v0}, Lcom/powervision/camera/camera/CameraManager;->setEvOnly(Z)V

    .line 852
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraNewSettingView;

    if-eqz p1, :cond_3

    .line 853
    iget-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->enable2:Z

    iget-boolean v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->enable3:Z

    invoke-virtual {p1, v0, v1}, Lcom/powervision/camera/views/CameraNewSettingView;->setCameraSettingEnable(ZZ)V

    :cond_3
    return-void
.end method

.method private setRecordText(I)V
    .locals 2

    if-nez p1, :cond_0

    .line 3493
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mRecordClose:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/handheld/R$color;->cursor_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3494
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mRecordOpen:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/handheld/R$color;->white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3495
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mNoiseOpen:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/handheld/R$color;->white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 3497
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mRecordClose:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/handheld/R$color;->white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3498
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mNoiseOpen:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/handheld/R$color;->cursor_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3499
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mRecordOpen:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/handheld/R$color;->white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 3501
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mRecordClose:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/handheld/R$color;->white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3502
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mNoiseOpen:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/handheld/R$color;->white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3503
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mRecordOpen:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/handheld/R$color;->cursor_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setScreenArrts()V
    .locals 2

    .line 319
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 320
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 322
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 323
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->systemFullScreen()V

    .line 324
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 325
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    .line 326
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 328
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private setSlowMarkerVisibility(I)V
    .locals 1

    .line 4431
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mImageFpsMarker:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4432
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mImageFps:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4433
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mImageFpsMarker = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mImageFpsMarker:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    return-void
.end method

.method private setTimeFucVisible(Z)V
    .locals 3

    .line 863
    invoke-direct {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->setFucVisible(Z)V

    .line 864
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHPickerView:Lcom/powervision/base/views/HPickerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/HPickerView;->setVisibility(I)V

    .line 865
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHPickerView:Lcom/powervision/base/views/HPickerView;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Lcom/powervision/base/views/HPickerView;->setIsAuto(Z)V

    .line 866
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraSetImg:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private setViewFull(Landroid/view/View;)V
    .locals 2

    .line 1114
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 1115
    iget-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFullScreen:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private showBlurryView()V
    .locals 4

    .line 4969
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4972
    :cond_0
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mSurfaceView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4974
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 4975
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    new-instance v1, Lcom/powervision/base/utils/BlurTransformation;

    const/16 v2, 0x14

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/powervision/base/utils/BlurTransformation;-><init>(II)V

    .line 4976
    invoke-static {v1}, Lcom/bumptech/glide/request/RequestOptions;->bitmapTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mBlurryView:Landroid/widget/ImageView;

    .line 4977
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 4979
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mBlurryView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4980
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandler:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;

    const/16 v1, 0x1f

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private showDelayLESLoading()V
    .locals 2

    .line 3216
    new-instance v0, Lcom/powervision/base/views/LoadingProgressBar;

    invoke-direct {v0, p0}, Lcom/powervision/base/views/LoadingProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->progressBar:Lcom/powervision/base/views/LoadingProgressBar;

    .line 3217
    sget v1, Lcom/powervision/handheld/R$string;->AP03_DV_Msg_24_1:I

    invoke-virtual {p0, v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/LoadingProgressBar;->setText(Ljava/lang/String;)V

    .line 3218
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->progressBar:Lcom/powervision/base/views/LoadingProgressBar;

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->show()V

    return-void
.end method

.method private showDelayLoading()V
    .locals 2

    .line 3207
    new-instance v0, Lcom/powervision/base/views/LoadingProgressBar;

    invoke-direct {v0, p0}, Lcom/powervision/base/views/LoadingProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->progressBar:Lcom/powervision/base/views/LoadingProgressBar;

    .line 3208
    sget v1, Lcom/powervision/handheld/R$string;->AP03_DV_Msg_23:I

    invoke-virtual {p0, v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/LoadingProgressBar;->setText(Ljava/lang/String;)V

    .line 3209
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->progressBar:Lcom/powervision/base/views/LoadingProgressBar;

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->show()V

    return-void
.end method

.method private showTemperatureDialog()V
    .locals 4

    .line 4923
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->showTemperatureDialog:Z

    if-nez v0, :cond_0

    return-void

    .line 4926
    :cond_0
    sget v0, Lcom/lewis/camera/R$string;->AP03_CameraSetting_57:I

    .line 4927
    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$string;->AP03_Msg_139_14:I

    .line 4928
    invoke-virtual {p0, v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/lewis/camera/R$string;->AP03_ConnectGuide_47:I

    .line 4929
    invoke-virtual {p0, v2}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 4926
    invoke-static {p0, v0, v1, v2, v3}, Lcom/powervision/base/utils/DialogUtils;->defaultDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 4930
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    const/4 v0, 0x0

    .line 4931
    iput-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->showTemperatureDialog:Z

    return-void
.end method

.method private showTimeDown()V
    .locals 7

    .line 4625
    new-instance v6, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$41;

    const-wide/16 v2, 0x1324

    const-wide/16 v4, 0x3e8

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$41;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;JJ)V

    iput-object v6, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->timer:Landroid/os/CountDownTimer;

    .line 4653
    invoke-virtual {v6}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private startAebMultiCapture()V
    .locals 5

    .line 1591
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTakeCameraImg:Lcom/powervision/base/views/AnimateImageView;

    invoke-virtual {v0}, Lcom/powervision/base/views/AnimateImageView;->clearAnimation()V

    .line 1592
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTakeCameraImg:Lcom/powervision/base/views/AnimateImageView;

    sget v1, Lcom/powervision/handheld/R$mipmap;->icon_capture_wating:I

    sget v2, Lcom/powervision/handheld/R$mipmap;->icon_capture:I

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/powervision/base/views/AnimateImageView;->setImageResource(IZII)V

    .line 1593
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTakeCameraImg:Lcom/powervision/base/views/AnimateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/AnimateImageView;->setEnabled(Z)V

    .line 1594
    invoke-direct {p0, v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->setTimeFucVisible(Z)V

    return-void
.end method

.method private startAnimation(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 1718
    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->alphaAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x7d0

    .line 1719
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1720
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->alphaAnimation:Landroid/animation/ObjectAnimator;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 1721
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->alphaAnimation:Landroid/animation/ObjectAnimator;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 1722
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->alphaAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startDelay()V
    .locals 8

    .line 1651
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getDeviceCurrentStorageTypeSD()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1652
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->isSDFull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1653
    sget v0, Lcom/powervision/handheld/R$string;->AP03_CameraSetting_65:I

    .line 1654
    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/powervision/handheld/R$string;->AP03_DV_TimeLapsePhoto_7:I

    .line 1655
    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lcom/powervision/handheld/R$string;->AP03_DV_TimeLapsePhoto_6:I

    .line 1656
    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$11;

    invoke-direct {v6, p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$11;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V

    new-instance v7, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$12;

    invoke-direct {v7, p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$12;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V

    const-string v2, ""

    move-object v1, p0

    .line 1653
    invoke-static/range {v1 .. v7}, Lcom/powervision/base/utils/DialogUtils;->customDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/powervision/base/utils/DialogUtils$OnClickListener;Lcom/powervision/base/utils/DialogUtils$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    return-void

    .line 1671
    :cond_0
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraConnect()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->isEmmcFull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1672
    sget v0, Lcom/powervision/handheld/R$string;->AP03_CameraSetting_66:I

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->showDefaultToast(I)V

    return-void

    .line 1676
    :cond_1
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->startCapture(I)V

    return-void
.end method

.method private startHdrCapture()V
    .locals 5

    .line 1612
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTakeCameraImg:Lcom/powervision/base/views/AnimateImageView;

    invoke-virtual {v0}, Lcom/powervision/base/views/AnimateImageView;->clearAnimation()V

    .line 1613
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTakeCameraImg:Lcom/powervision/base/views/AnimateImageView;

    sget v1, Lcom/powervision/handheld/R$mipmap;->icon_capture_wating:I

    sget v2, Lcom/powervision/handheld/R$mipmap;->icon_capture:I

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/powervision/base/views/AnimateImageView;->setImageResource(IZII)V

    .line 1614
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTakeCameraImg:Lcom/powervision/base/views/AnimateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/AnimateImageView;->setEnabled(Z)V

    .line 1615
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextMode:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1616
    invoke-direct {p0, v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->setTimeFucVisible(Z)V

    return-void
.end method

.method private startMultipleCapture()V
    .locals 5

    .line 1601
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTakeCameraImg:Lcom/powervision/base/views/AnimateImageView;

    invoke-virtual {v0}, Lcom/powervision/base/views/AnimateImageView;->clearAnimation()V

    .line 1603
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTakeCameraImg:Lcom/powervision/base/views/AnimateImageView;

    sget v1, Lcom/powervision/handheld/R$mipmap;->icon_capture_wating:I

    sget v2, Lcom/powervision/handheld/R$mipmap;->icon_capture:I

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/powervision/base/views/AnimateImageView;->setImageResource(IZII)V

    .line 1604
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTakeCameraImg:Lcom/powervision/base/views/AnimateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/AnimateImageView;->setEnabled(Z)V

    .line 1605
    invoke-direct {p0, v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->setTimeFucVisible(Z)V

    return-void
.end method

.method private startRecordAudio()V
    .locals 4

    const-string v0, "nemo_record_info"

    const-string v1, "\u5f00\u59cb\u6536\u58f0\u5566\u3002\u3002\u3002\u3002"

    .line 3724
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogConnectStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3725
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getCameraAudioState()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 3726
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->audioRecordManager:Lcom/powervision/handheld/utils/AudioRecordManager;

    if-nez v1, :cond_0

    .line 3727
    invoke-static {}, Lcom/powervision/handheld/utils/AudioRecordManager;->getInstance()Lcom/powervision/handheld/utils/AudioRecordManager;

    move-result-object v1

    iput-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->audioRecordManager:Lcom/powervision/handheld/utils/AudioRecordManager;

    .line 3729
    :cond_0
    invoke-static {}, Lcom/powervision/natives/connect/AudioConnectSDK;->getInstance()Lcom/powervision/natives/connect/AudioConnectSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/natives/connect/AudioConnectSDK;->isAudioConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3730
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->audioRecordManager:Lcom/powervision/handheld/utils/AudioRecordManager;

    invoke-virtual {v0, v2}, Lcom/powervision/handheld/utils/AudioRecordManager;->startRecordFrom(I)V

    goto :goto_0

    :cond_1
    const-string v1, "\u94fe\u8def\u5df2\u65ad\u5f00\uff0c\u65e0\u6cd5\u53d1\u9001\u6536\u58f0\u97f3\u9891\u6570\u636e"

    .line 3732
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogConnectStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u6536\u58f0\u94fe\u8def\u5df2\u65ad\u5f00"

    .line 3733
    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private startSingleCapture()V
    .locals 5

    .line 1623
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTakeCameraImg:Lcom/powervision/base/views/AnimateImageView;

    sget v1, Lcom/powervision/handheld/R$mipmap;->icon_capture_wating:I

    sget v2, Lcom/powervision/handheld/R$mipmap;->icon_capture:I

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/powervision/base/views/AnimateImageView;->setImageResource(IZII)V

    .line 1624
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTakeCameraImg:Lcom/powervision/base/views/AnimateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/AnimateImageView;->setEnabled(Z)V

    .line 1625
    invoke-direct {p0, v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->setTimeFucVisible(Z)V

    return-void
.end method

.method private startTemperatureTask()V
    .locals 7

    .line 4940
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTemperatureTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTimerTemperatureTask:Ljava/util/TimerTask;

    if-nez v0, :cond_0

    .line 4941
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTemperatureTimer:Ljava/util/Timer;

    .line 4942
    new-instance v2, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$42;

    invoke-direct {v2, p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$42;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V

    iput-object v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTimerTemperatureTask:Ljava/util/TimerTask;

    .line 4955
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTemperatureTimer:Ljava/util/Timer;

    const-wide/16 v3, 0x3e8

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method

.method private startTimerTask()V
    .locals 7

    .line 1732
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1735
    :cond_0
    iget v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->recordingTime:I

    invoke-static {v0}, Lcom/powervision/base/utils/TimeUtils;->formatRecordVideoTime(I)Ljava/lang/String;

    move-result-object v0

    .line 1736
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mImageDot1:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->startAnimation(Landroid/view/View;)V

    .line 1737
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextRecordTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1738
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextRecordTime:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1740
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLayoutRecord:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1741
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTimerTask:Ljava/util/TimerTask;

    if-nez v0, :cond_1

    .line 1742
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTimer:Ljava/util/Timer;

    .line 1743
    new-instance v2, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$13;

    invoke-direct {v2, p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$13;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V

    iput-object v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTimerTask:Ljava/util/TimerTask;

    .line 1769
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTimer:Ljava/util/Timer;

    const-wide/16 v3, 0x3e8

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private stopAnimation()V
    .locals 1

    .line 1726
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->alphaAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 1727
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private stopRecordAudio()V
    .locals 2

    .line 3742
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->audioRecordManager:Lcom/powervision/handheld/utils/AudioRecordManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/powervision/handheld/utils/AudioRecordManager;->isStartRecord()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "nemo_record_info"

    const-string v1, "\u505c\u6b62\u6536\u58f0\u8c03\u7528"

    .line 3743
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogConnectStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3744
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->audioRecordManager:Lcom/powervision/handheld/utils/AudioRecordManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/powervision/handheld/utils/AudioRecordManager;->stopRecordFrom(I)V

    :cond_0
    return-void
.end method

.method private switchAudioIcon()V
    .locals 3

    .line 4486
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraAudioState()I

    move-result v0

    if-nez v0, :cond_0

    .line 4487
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAudioImg:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/handheld/R$mipmap;->handheld_new_audio_icon0:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 4488
    :cond_0
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraAudioState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 4489
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const/4 v1, 0x0

    const-string v2, "AP03_RECORD_NOISE_SWITCH"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4490
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAudioImg:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/handheld/R$mipmap;->handheld_record_noise1:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 4492
    :cond_1
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAudioImg:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/handheld/R$mipmap;->handheld_new_audio_icon1:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private switchCameraMenuStatus()V
    .locals 10

    .line 1944
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraConnect()Ljava/lang/Boolean;

    move-result-object v0

    .line 1945
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v1

    .line 1946
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

    const-string v3, "NewHandheldDeviceActivity"

    invoke-static {v3, v2}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 1948
    :goto_0
    iput-boolean v4, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isPhoto:Z

    .line 1949
    iget-object v4, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLayoutSlowMotion:Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->setVisibility(I)V

    .line 1951
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentResolution()I

    move-result v4

    .line 1952
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "switchCameraMenuStatus = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "   getCameraCurrentResolution = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    const/4 v6, 0x2

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_3

    .line 1953
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    if-ne v1, v6, :cond_4

    if-eqz v4, :cond_2

    if-ne v4, v2, :cond_4

    .line 1956
    :cond_2
    iget-object v4, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mMediaImg:Lcom/powervision/base/views/AnimateImageView;

    sget v7, Lcom/powervision/handheld/R$mipmap;->icon_capture:I

    invoke-virtual {v4, v7}, Lcom/powervision/base/views/AnimateImageView;->setImageResource(I)V

    goto :goto_2

    .line 1954
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mMediaImg:Lcom/powervision/base/views/AnimateImageView;

    sget v7, Lcom/powervision/handheld/R$mipmap;->handheld_media_icon:I

    invoke-virtual {v4, v7}, Lcom/powervision/base/views/AnimateImageView;->setImageResource(I)V

    .line 1959
    :cond_4
    :goto_2
    invoke-direct {p0, v5}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->setSlowMarkerVisibility(I)V

    .line 1960
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->showCaptureMode()V

    .line 1961
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1962
    sget v0, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_RECORD:I

    const-string v4, "preItem =  = "

    if-ne v0, v1, :cond_8

    .line 1963
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    if-nez v0, :cond_5

    return-void

    .line 1966
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cameraConnectionStatus CurrentResolution= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v1, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-virtual {v1}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->isSlowMotionMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 1967
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-virtual {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->isSlowMotionMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1968
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTakeCameraImg:Lcom/powervision/base/views/AnimateImageView;

    sget v1, Lcom/lewis/camera/R$mipmap;->icon_slow_motion:I

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/AnimateImageView;->setImageResource(I)V

    .line 1969
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->changeToSlowMotion()V

    goto :goto_3

    .line 1971
    :cond_6
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAudioImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1972
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAudioImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1973
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mImageRecordMarker:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1974
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTakeCameraImg:Lcom/powervision/base/views/AnimateImageView;

    sget v1, Lcom/lewis/camera/R$mipmap;->icon_record:I

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/AnimateImageView;->setImageResource(I)V

    .line 1975
    sget v0, Lcom/powervision/handheld/R$string;->AP03_DV_MediaLib_3:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->preItem:Ljava/lang/String;

    .line 1976
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->switchAudioIcon()V

    .line 1978
    :goto_3
    iget-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isPhoto:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraNewSettingView;

    if-eqz v0, :cond_7

    .line 1979
    iput-boolean v3, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isPhoto:Z

    .line 1980
    invoke-virtual {v0}, Lcom/powervision/camera/views/CameraNewSettingView;->resetViewPager()V

    .line 1982
    :cond_7
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLayoutDelayRecord:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1983
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLayoutDelaySet:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1984
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLayoutRecord:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1985
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHPickerView:Lcom/powervision/base/views/HPickerView;

    invoke-virtual {v0, v3}, Lcom/powervision/base/views/HPickerView;->setVisibility(I)V

    .line 1986
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHPickerView:Lcom/powervision/base/views/HPickerView;

    invoke-virtual {v0, v3}, Lcom/powervision/base/views/HPickerView;->setIsAuto(Z)V

    .line 1987
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHomeBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1988
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGeneralImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    .line 1989
    :cond_8
    sget v0, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_RECORDING:I

    if-ne v0, v1, :cond_a

    .line 1990
    iput-boolean v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFunctional:Z

    .line 1991
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-virtual {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->isSlowMotionMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1992
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTakeCameraImg:Lcom/powervision/base/views/AnimateImageView;

    sget v1, Lcom/lewis/camera/R$mipmap;->icon_slow_motion:I

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/AnimateImageView;->setImageResource(I)V

    .line 1993
    sget v0, Lcom/powervision/handheld/R$string;->AP03_DV_Msg_18:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->preItem:Ljava/lang/String;

    .line 1994
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-virtual {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->getCameraCurrentResolution()I

    move-result v0

    .line 1995
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mImageFps:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/powervision/camera/utils/CameraUtil;->getCurrentResolutionImg(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1996
    invoke-direct {p0, v3}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->setSlowMarkerVisibility(I)V

    goto :goto_4

    .line 1998
    :cond_9
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTakeCameraImg:Lcom/powervision/base/views/AnimateImageView;

    sget v1, Lcom/lewis/camera/R$mipmap;->icon_record:I

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/AnimateImageView;->setImageResource(I)V

    .line 1999
    sget v0, Lcom/powervision/handheld/R$string;->AP03_DV_MediaLib_3:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->preItem:Ljava/lang/String;

    .line 2001
    :goto_4
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getRecordTime()V

    .line 2002
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandler:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;

    invoke-virtual {v0, v2}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_6

    .line 2017
    :cond_a
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getPhotoGraphType()I

    move-result v0

    .line 2019
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLayoutDelayRecord:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2020
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLayoutDelaySet:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2021
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "type = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "  isFunctional = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFunctional:Z

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    .line 2023
    iput-boolean v3, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFunctional:Z

    .line 2024
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getTimingTime()I

    move-result v1

    .line 2025
    iget-object v6, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mModel:Lcom/powervision/base/base/BaseModel;

    check-cast v6, Lcom/powervision/handheld/model/impl/HandheldModel;

    invoke-virtual {v6, v1}, Lcom/powervision/handheld/model/impl/HandheldModel;->getHandleTimeIcon(I)I

    move-result v6

    .line 2026
    iget-object v7, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTakeCameraImg:Lcom/powervision/base/views/AnimateImageView;

    sget v8, Lcom/powervision/handheld/R$mipmap;->icon_capture:I

    invoke-virtual {v7, v8}, Lcom/powervision/base/views/AnimateImageView;->setImageResource(I)V

    .line 2027
    iget-object v7, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAudioImg:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2028
    iget-object v6, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->modelList:Ljava/util/List;

    sget v7, Lcom/powervision/handheld/R$string;->AP03_DV_MediaLib_2:I

    invoke-virtual {p0, v7}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->preItem:Ljava/lang/String;

    .line 2029
    iget-object v6, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAudioImg:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2030
    iget-object v6, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mImageRecordMarker:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2031
    iget-object v5, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAudioImg:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2032
    iget-object v5, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "photo_type"

    invoke-virtual {v5, v6, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2033
    invoke-static {}, Lcom/powervision/camera/utils/RxCountDown;->getInstance()Lcom/powervision/camera/utils/RxCountDown;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/utils/RxCountDown;->isCounting()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2034
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTakeCameraImg:Lcom/powervision/base/views/AnimateImageView;

    sget v5, Lcom/powervision/handheld/R$mipmap;->icon_capture_pause:I

    invoke-virtual {v1, v5}, Lcom/powervision/base/views/AnimateImageView;->setImageResource(I)V

    .line 2035
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCountDownTime:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2036
    invoke-direct {p0, v3}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->setTimeFucVisible(Z)V

    .line 2037
    iput-boolean v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFunctional:Z

    goto/16 :goto_5

    :cond_b
    const/4 v1, 0x5

    if-ne v0, v1, :cond_d

    .line 2040
    iput-boolean v3, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFunctional:Z

    .line 2041
    iget-object v6, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAudioImg:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2042
    iget-object v6, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mImageRecordMarker:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2043
    iget-object v6, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTakeCameraImg:Lcom/powervision/base/views/AnimateImageView;

    sget v7, Lcom/powervision/handheld/R$mipmap;->icon_delay_photo:I

    invoke-virtual {v6, v7}, Lcom/powervision/base/views/AnimateImageView;->setImageResource(I)V

    .line 2044
    iget-object v6, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->modelList:Ljava/util/List;

    sget v7, Lcom/powervision/handheld/R$string;->AP03_DV_FuncGuide_13:I

    invoke-virtual {p0, v7}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->preItem:Ljava/lang/String;

    .line 2046
    iput v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->captureMode:I

    .line 2047
    sget v1, Lcom/powervision/handheld/R$string;->AP03_DV_FuncGuide_13:I

    invoke-virtual {p0, v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->preItem:Ljava/lang/String;

    .line 2048
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHPickerView:Lcom/powervision/base/views/HPickerView;

    invoke-virtual {v1, v2}, Lcom/powervision/base/views/HPickerView;->setCallBackResult(Z)V

    .line 2049
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHPickerView:Lcom/powervision/base/views/HPickerView;

    invoke-virtual {v1, v3}, Lcom/powervision/base/views/HPickerView;->setIsAuto(Z)V

    .line 2050
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLayoutDelaySet:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2052
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTakeCameraImg:Lcom/powervision/base/views/AnimateImageView;

    sget v6, Lcom/powervision/handheld/R$mipmap;->icon_delay_photo:I

    invoke-virtual {v1, v6}, Lcom/powervision/base/views/AnimateImageView;->setImageResource(I)V

    .line 2053
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAudioImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2054
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mImageRecordMarker:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2055
    iput-boolean v3, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->enable2:Z

    .line 2056
    iput-boolean v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->enable3:Z

    .line 2058
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraNewSettingView;

    if-eqz v1, :cond_c

    .line 2059
    invoke-virtual {v1}, Lcom/powervision/camera/views/CameraNewSettingView;->switchCamerMenuStatus()V

    .line 2061
    :cond_c
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getDelayCaptureData()V

    .line 2062
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->preItem:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_d
    const/4 v1, 0x6

    if-ne v0, v1, :cond_11

    .line 2064
    iput-boolean v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFunctional:Z

    .line 2065
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAudioImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2066
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mImageRecordMarker:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2067
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTakeCameraImg:Lcom/powervision/base/views/AnimateImageView;

    sget v7, Lcom/powervision/handheld/R$mipmap;->icon_delay_photoing:I

    invoke-virtual {v1, v7}, Lcom/powervision/base/views/AnimateImageView;->setImageResource(I)V

    .line 2068
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLayoutDelayRecord:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2069
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->modelList:Ljava/util/List;

    sget v7, Lcom/powervision/handheld/R$string;->AP03_DV_FuncGuide_13:I

    invoke-virtual {p0, v7}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->preItem:Ljava/lang/String;

    .line 2070
    invoke-direct {p0, v3}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->setFucVisible(Z)V

    .line 2071
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "currentNum =  = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->currentNum:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 2072
    iget v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->currentNum:I

    if-nez v1, :cond_e

    const-string v1, "yanshi  \u9996\u6b21\u8fdb\u5165"

    .line 2073
    invoke-static {v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 2074
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getDelayCaptureData()V

    .line 2075
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->startDelayCapture()V

    .line 2077
    :cond_e
    iget-boolean v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isVertical:Z

    if-eqz v1, :cond_f

    .line 2078
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHPickerView:Lcom/powervision/base/views/HPickerView;

    invoke-virtual {v1, v5}, Lcom/powervision/base/views/HPickerView;->setVisibility(I)V

    .line 2080
    :cond_f
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHPickerView:Lcom/powervision/base/views/HPickerView;

    invoke-virtual {v1, v2}, Lcom/powervision/base/views/HPickerView;->setIsAuto(Z)V

    .line 2081
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isTotalValid()Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "shutter"

    const-string v5, "\u603b\u6570\u4e3a0!!!!!"

    .line 2084
    invoke-static {v1, v5}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2085
    iget-object v5, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextDelayTotal:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->result:I

    mul-int/lit8 v8, v8, 0x1e

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2086
    iget v5, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->tryAgain:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->tryAgain:I

    .line 2087
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isTotalValid()Z

    move-result v5

    if-eqz v5, :cond_10

    const-string v5, "\u603b\u6570\u4e3a0!!!!!-------\u5df2\u4fee\u6b63"

    .line 2089
    invoke-static {v1, v5}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2090
    iput v3, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->tryAgain:I

    goto/16 :goto_5

    :cond_10
    const-string v3, "\u603b\u6570\u4e3a0!!!!!-------\u672a\u4fee\u6b63========="

    .line 2093
    invoke-static {v1, v3}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2094
    iget v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->tryAgain:I

    if-ge v1, v6, :cond_19

    .line 2095
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getCameraAllParameters()V

    goto/16 :goto_5

    :cond_11
    const/4 v1, 0x7

    if-ne v0, v1, :cond_12

    .line 2100
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAudioImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2101
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mImageRecordMarker:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2102
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTakeCameraImg:Lcom/powervision/base/views/AnimateImageView;

    sget v3, Lcom/powervision/handheld/R$mipmap;->icon_delay_photo:I

    invoke-virtual {v1, v3}, Lcom/powervision/base/views/AnimateImageView;->setImageResource(I)V

    .line 2103
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->modelList:Ljava/util/List;

    sget v3, Lcom/powervision/handheld/R$string;->AP03_DV_FuncGuide_13:I

    invoke-virtual {p0, v3}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->preItem:Ljava/lang/String;

    .line 2104
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getDelayCaptureData()V

    .line 2105
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->showDelayLoading()V

    .line 2106
    iget v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->result:I

    mul-int/lit8 v1, v1, 0x1e

    iput v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->currentNum:I

    goto/16 :goto_5

    .line 2108
    :cond_12
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAudioImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2109
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mImageRecordMarker:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2110
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTakeCameraImg:Lcom/powervision/base/views/AnimateImageView;

    sget v7, Lcom/powervision/handheld/R$mipmap;->icon_capture:I

    invoke-virtual {v1, v7}, Lcom/powervision/base/views/AnimateImageView;->setImageResource(I)V

    .line 2111
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->modelList:Ljava/util/List;

    sget v7, Lcom/powervision/handheld/R$string;->AP03_DV_MediaLib_2:I

    invoke-virtual {p0, v7}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->preItem:Ljava/lang/String;

    if-nez v0, :cond_13

    .line 2113
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switchCameraMenuStatus: isFunctional = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFunctional:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    iget-boolean v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFunctional:Z

    if-eqz v1, :cond_19

    .line 2115
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->startSingleCapture()V

    goto/16 :goto_5

    :cond_13
    if-ne v0, v2, :cond_15

    .line 2118
    sget v1, Lcom/powervision/handheld/R$string;->AP03_CameraSetting_8:I

    invoke-virtual {p0, v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2119
    iget-boolean v6, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFunctional:Z

    if-eqz v6, :cond_14

    .line 2120
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->startHdrCapture()V

    .line 2121
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextMode:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 2124
    :cond_14
    iget-object v5, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextMode:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2125
    iget-object v3, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextMode:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_15
    const-string v1, ")"

    const-string v7, "("

    if-ne v0, v6, :cond_17

    .line 2128
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/powervision/camera/camera/CameraManager;->getMultipleShotsNum()I

    move-result v6

    .line 2129
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget v9, Lcom/powervision/handheld/R$string;->AP03_CameraSetting_9:I

    invoke-virtual {p0, v9}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2130
    iget-boolean v6, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFunctional:Z

    if-eqz v6, :cond_16

    .line 2131
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->startMultipleCapture()V

    .line 2132
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextMulNum:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2133
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextMode:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 2135
    :cond_16
    iget-object v5, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextMode:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2136
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextMode:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    :cond_17
    const/4 v6, 0x3

    if-ne v0, v6, :cond_19

    .line 2139
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/powervision/camera/camera/CameraManager;->getAebValue()I

    move-result v6

    .line 2140
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget v9, Lcom/powervision/handheld/R$string;->AP03_CameraSetting_10:I

    invoke-virtual {p0, v9}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2141
    iget-boolean v6, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFunctional:Z

    if-eqz v6, :cond_18

    .line 2142
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->startAebMultiCapture()V

    .line 2143
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextMulNum:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2144
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextMode:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 2146
    :cond_18
    iget-object v5, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextMode:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2147
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextMode:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2152
    :cond_19
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type =  = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 2154
    iget-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isPhoto:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraNewSettingView;

    if-eqz v0, :cond_1a

    .line 2155
    invoke-virtual {v0}, Lcom/powervision/camera/views/CameraNewSettingView;->resetViewPager()V

    .line 2158
    :cond_1a
    :goto_6
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mNewCameraParamView:Lcom/powervision/handheld/ui/views/NewCameraParamView;

    invoke-virtual {v0}, Lcom/powervision/handheld/ui/views/NewCameraParamView;->updateCameraView()V

    .line 2159
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraNewSettingView;

    if-eqz v0, :cond_1b

    .line 2160
    invoke-virtual {v0}, Lcom/powervision/camera/views/CameraNewSettingView;->switchCamerMenuStatus()V

    .line 2162
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->preItem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  modelList.indexOf(preItem) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->modelList:Ljava/util/List;

    iget-object v3, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->preItem:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 2163
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHPickerView:Lcom/powervision/base/views/HPickerView;

    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->modelList:Ljava/util/List;

    iget-object v3, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->preItem:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/HPickerView;->setSclollSelectIndex(I)V

    .line 2164
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHPickerView:Lcom/powervision/base/views/HPickerView;

    invoke-virtual {v0, v2}, Lcom/powervision/base/views/HPickerView;->setCallBackResult(Z)V

    .line 2165
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPhoto = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isPhoto:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 2167
    :cond_1c
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->cameraDisconnectStatusReset()V

    :goto_7
    return-void
.end method

.method private timeDownEnable(Z)V
    .locals 1

    .line 2970
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mImageFps:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2971
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLayoutSlowMotion:Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->setVisibility(I)V

    return-void
.end method

.method private updateCameraSettingView()V
    .locals 1

    .line 4707
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraNewSettingView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/powervision/camera/views/CameraNewSettingView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4708
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraNewSettingView;

    invoke-virtual {v0}, Lcom/powervision/camera/views/CameraNewSettingView;->updateHandheldGeneralAdapter()V

    :cond_0
    return-void
.end method


# virtual methods
.method public cameraSettingClick()V
    .locals 1
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xb5
    .end annotation

    .line 1241
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraConnect()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1242
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getAllParameters()V

    .line 1244
    :cond_0
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->addAndRemoveCameraSettingsView()V

    return-void
.end method

.method public cameraStopRecording()V
    .locals 5

    .line 1774
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTimer:Ljava/util/Timer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1775
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1776
    iput-object v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTimer:Ljava/util/Timer;

    .line 1777
    iput v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->recordingTime:I

    .line 1778
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   cameraStopRecording ... recordingTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->recordingTime:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1781
    :cond_0
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 1782
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 1783
    iput-object v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTimerTask:Ljava/util/TimerTask;

    .line 1785
    :cond_1
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHPickerView:Lcom/powervision/base/views/HPickerView;

    invoke-virtual {v0}, Lcom/powervision/base/views/HPickerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 1786
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHPickerView:Lcom/powervision/base/views/HPickerView;

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/HPickerView;->setVisibility(I)V

    .line 1788
    :cond_2
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLayoutRecord:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_3

    .line 1789
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLayoutRecord:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1791
    :cond_3
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextRecordTime:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1792
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextRecordTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "record_tag_in"

    const-string v1, "   cameraStopRecording ... setView ..gone"

    .line 1793
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->stopAnimation()V

    return-void
.end method

.method public captureAnimation()V
    .locals 3

    .line 1911
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->alpha_view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1913
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->alpha_view:Landroid/view/View;

    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "scaleY"

    .line 1914
    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1915
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xc8

    .line 1916
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$15;

    invoke-direct {v2, p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$15;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1936
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public clickClose()V
    .locals 4

    const-string v0, "touch"

    .line 3397
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "click close"

    invoke-interface {v0, v2, v1}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3398
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-virtual {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->setMannalMode()V

    .line 3399
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandler:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;

    new-instance v1, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$_DEhc4Vznjxf64fJkt0lFLiobZY;

    invoke-direct {v1, p0}, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$_DEhc4Vznjxf64fJkt0lFLiobZY;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 3400
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->followList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public closeCameraSettingView()V
    .locals 2
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xd3
    .end annotation

    .line 1121
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->addAndRemoveCameraSettingsView()V

    const-string v0, "set_camera"

    const-string v1, "  -------... addAndRemoveCameraSettingsView"

    .line 1122
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public closeCameraViewResetData()V
    .locals 5
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xf2
    .end annotation

    .line 1128
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCustomLinesView:Lcom/powervision/base/views/CustomLinesView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/CustomLinesView;->setLineMode(I)V

    .line 1129
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "HANDHELD_GRID_LINE_TAG"

    invoke-virtual {v0, v3, v2}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1130
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->setLinesMode(I)V

    .line 1132
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->setLuminanceValue(I)V

    .line 1133
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->setContrastValue(I)V

    .line 1134
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->setSaturationValue(I)V

    .line 1136
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->removeCameraSettingView()V

    .line 1137
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getAllParameters()V

    const/4 v0, 0x5

    .line 1138
    iput v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->shutter:I

    const/16 v2, 0x258

    .line 1140
    div-int/lit8 v0, v2, 0x5

    iget v3, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->fps:I

    div-int/2addr v0, v3

    iput v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->result:I

    .line 1141
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const-string v3, "photo_type"

    const-string v4, "0-0"

    invoke-virtual {v0, v3, v4}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1142
    invoke-static {}, Lcom/powervision/base/utils/SPHelperUtils;->getInstance()Lcom/powervision/base/utils/SPHelperUtils;

    move-result-object v0

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/powervision/base/utils/SPHelperUtils;->saveSlowResolution(I)V

    .line 1143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shutter  = reset = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->shutter:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->result:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1146
    iput-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->enable2:Z

    .line 1147
    iput-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->enable3:Z

    .line 1148
    iput-boolean v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->evOnly:Z

    .line 1149
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    iget-boolean v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->evOnly:Z

    invoke-virtual {v0, v2}, Lcom/powervision/camera/camera/CameraManager;->setEvOnly(Z)V

    .line 1150
    iget-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isReverse:Z

    if-eqz v0, :cond_0

    .line 1151
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "AP03_MIRROR_REVERSE_SWITCH"

    invoke-virtual {v0, v3, v2}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1152
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 1153
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1154
    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->surfaceMirrorReverse(Landroid/util/SparseBooleanArray;)V

    :cond_0
    return-void
.end method

.method public connectFail()V
    .locals 2

    .line 2823
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandler:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public connected()V
    .locals 2

    .line 2818
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandler:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public disConnect()V
    .locals 2

    .line 2828
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandler:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public doClickCameraView()V
    .locals 8
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xf1
        threadMode = .enum Lcom/powervision/base/rxbus/ThreadMode;->MAIN:Lcom/powervision/base/rxbus/ThreadMode;
    .end annotation

    .line 1450
    invoke-static {}, Lcom/powervision/base/utils/NoFastClickUtil;->isFastClick()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraConnect()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 1453
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1454
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getPhotoGraphType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Delayes"

    .line 1453
    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 1457
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getExposureMode()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 1458
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getPhotoGraphType()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 1459
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getPhotoGraphType()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 1460
    :cond_1
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/handheld/R$string;->AP03_DV_Msg_24_2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    return-void

    .line 1462
    :cond_2
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    const/4 v3, 0x2

    if-nez v0, :cond_3

    .line 1463
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getExposureMode()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 1464
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getPhotoGraphType()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 1465
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getExptimeValue()I

    move-result v0

    const/4 v4, 0x7

    if-gt v0, v4, :cond_3

    .line 1466
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/handheld/R$string;->AP03_DV_Msg_24_3:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    return-void

    .line 1469
    :cond_3
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->removeCameraSettingView()V

    .line 1470
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getDeviceCurrentStorageTypeSD()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1471
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraConnect()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->isSDFull()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1472
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/handheld/R$string;->AP03_CameraSetting_66:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    return-void

    .line 1476
    :cond_4
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraConnect()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->isEmmcFull()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1477
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/handheld/R$string;->AP03_CameraSetting_66:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    return-void

    .line 1482
    :cond_5
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    .line 1483
    sget v4, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_RECORD:I

    if-ne v0, v4, :cond_8

    .line 1484
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraConnect()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/powervision/camera/utils/CameraUtil;->checkStorageAvailiable()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1485
    sget v0, Lcom/powervision/handheld/R$string;->AP03_CameraSetting_66:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    return-void

    .line 1488
    :cond_6
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->checkSdCardLowSpeed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1492
    :cond_7
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->startRecordVideo()V

    .line 1493
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraAudioState()I

    move-result v0

    if-nez v0, :cond_13

    .line 1494
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mSoundUtil:Lcom/powervision/base/utils/SoundPoolUtils;

    invoke-virtual {v0, v3}, Lcom/powervision/base/utils/SoundPoolUtils;->playAudio(I)V

    goto/16 :goto_0

    .line 1496
    :cond_8
    sget v4, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_RECORDING:I

    if-ne v0, v4, :cond_9

    .line 1498
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->stopRecordVideo()V

    .line 1499
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraAudioState()I

    move-result v0

    if-nez v0, :cond_13

    .line 1500
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mSoundUtil:Lcom/powervision/base/utils/SoundPoolUtils;

    invoke-virtual {v0, v1}, Lcom/powervision/base/utils/SoundPoolUtils;->playAudio(I)V

    goto/16 :goto_0

    .line 1502
    :cond_9
    sget v4, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_PHOTO:I

    if-ne v0, v4, :cond_13

    .line 1503
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraConnect()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/powervision/camera/utils/CameraUtil;->checkStorageAvailiable()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1504
    sget v0, Lcom/powervision/handheld/R$string;->AP03_CameraSetting_66:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    return-void

    .line 1517
    :cond_a
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getPhotoGraphType()I

    move-result v0

    .line 1518
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Lapse = type   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    if-nez v0, :cond_b

    .line 1522
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v1, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-virtual {v1, v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->startCapture(I)V

    .line 1523
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->startSingleCapture()V

    .line 1524
    iput-boolean v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFunctional:Z

    goto/16 :goto_0

    :cond_b
    if-ne v0, v2, :cond_c

    .line 1526
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v1, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-virtual {v1, v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->startCapture(I)V

    .line 1527
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->startHdrCapture()V

    .line 1528
    iput-boolean v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFunctional:Z

    goto/16 :goto_0

    :cond_c
    if-ne v0, v3, :cond_d

    .line 1530
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getMultipleShotsNum()I

    move-result v1

    .line 1531
    iget-object v3, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v3, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-virtual {v3, v0, v1}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->startCapture(II)V

    .line 1532
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->startMultipleCapture()V

    .line 1533
    iput-boolean v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFunctional:Z

    goto/16 :goto_0

    :cond_d
    if-ne v0, v1, :cond_e

    .line 1535
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getAebValue()I

    move-result v1

    .line 1536
    iget-object v3, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v3, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-virtual {v3, v0, v1}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->startCapture(II)V

    .line 1537
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->startAebMultiCapture()V

    .line 1538
    iput-boolean v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFunctional:Z

    goto/16 :goto_0

    :cond_e
    const/4 v1, 0x4

    if-ne v0, v1, :cond_10

    .line 1540
    invoke-static {}, Lcom/powervision/camera/utils/RxCountDown;->getInstance()Lcom/powervision/camera/utils/RxCountDown;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/utils/RxCountDown;->isCounting()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1541
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-virtual {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->stopTimingCapture()V

    goto :goto_0

    .line 1543
    :cond_f
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getTimingTime()I

    move-result v1

    .line 1544
    iget-object v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v2, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-virtual {v2, v0, v1}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->startCapture(II)V

    goto :goto_0

    :cond_10
    const/4 v1, 0x5

    if-ne v0, v1, :cond_11

    .line 1547
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-virtual {v0, v2}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->setGimbalStatus(I)V

    .line 1548
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->showDelayLESLoading()V

    .line 1549
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->setDelayTime()V

    goto :goto_0

    :cond_11
    const/4 v1, 0x6

    if-ne v0, v1, :cond_13

    .line 1551
    iget v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->currentNum:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_12

    .line 1552
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->createLapseFile()V

    .line 1553
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->showDelayLoading()V

    .line 1554
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTakeCameraImg:Lcom/powervision/base/views/AnimateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/AnimateImageView;->setEnabled(Z)V

    .line 1555
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-virtual {v0, v1}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->setGimbalStatus(I)V

    goto :goto_0

    .line 1558
    :cond_12
    sget v0, Lcom/powervision/handheld/R$string;->AP03_DV_Msg_26:I

    .line 1559
    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/powervision/handheld/R$string;->AP03_Activation_6:I

    .line 1560
    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lcom/powervision/handheld/R$string;->AP03_Activation_9:I

    .line 1561
    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$8;

    invoke-direct {v6, p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$8;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V

    new-instance v7, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$9;

    invoke-direct {v7, p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$9;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V

    const-string v2, ""

    move-object v1, p0

    .line 1558
    invoke-static/range {v1 .. v7}, Lcom/powervision/base/utils/DialogUtils;->customDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/powervision/base/utils/DialogUtils$OnClickListener;Lcom/powervision/base/utils/DialogUtils$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    :cond_13
    :goto_0
    return-void
.end method

.method public gestureStartRecord()V
    .locals 1

    const/4 v0, 0x1

    .line 3012
    iput-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFunctional:Z

    .line 3013
    iput-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isGestureRecord:Z

    .line 3014
    new-instance v0, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$gNRBAozTC0p5fQp0DAHPkV1MIv0;

    invoke-direct {v0, p0}, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$gNRBAozTC0p5fQp0DAHPkV1MIv0;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3029
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getAllParameters()V

    return-void
.end method

.method public gestureStopRecord()V
    .locals 2

    const/4 v0, 0x0

    .line 3037
    iput-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFunctional:Z

    .line 3038
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraAudioState()I

    move-result v0

    if-nez v0, :cond_0

    .line 3039
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mSoundUtil:Lcom/powervision/base/utils/SoundPoolUtils;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/powervision/base/utils/SoundPoolUtils;->playAudio(I)V

    .line 3041
    :cond_0
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandler:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public gestureTakePhotoStart()V
    .locals 1

    .line 2985
    invoke-static {}, Lcom/powervision/camera/utils/RxCountDown;->getInstance()Lcom/powervision/camera/utils/RxCountDown;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/utils/RxCountDown;->cancelCaptureDown()V

    .line 2986
    new-instance v0, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$YvCd0ry91zhl0WkfRKqEkWFLqMI;

    invoke-direct {v0, p0}, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$YvCd0ry91zhl0WkfRKqEkWFLqMI;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCameraAllParameters()V
    .locals 4

    .line 2775
    new-instance v0, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$FQOTuO6_iMM_Ymwr16WaiMvzTm8;

    invoke-direct {v0, p0}, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$FQOTuO6_iMM_Ymwr16WaiMvzTm8;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2790
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandler:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;->sendEmptyMessage(I)Z

    const-string v0, "camera_get_all"

    const-string v1, "  actvitiy ...getCameraAllParameters()   "

    .line 2791
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2793
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    sget v1, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_RECORDING:I

    const-wide/16 v2, 0xc8

    if-ne v0, v1, :cond_0

    .line 2794
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandler:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2796
    :cond_0
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandler:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method

.method protected getLayoutRes()I
    .locals 1

    .line 312
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->setScreenArrts()V

    .line 314
    sget v0, Lcom/powervision/handheld/R$layout;->handheld_new_device_layout:I

    return v0
.end method

.method public getRemainingCapacity()V
    .locals 5

    .line 1853
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    .line 1854
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1855
    iput v0, v1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x4

    .line 1856
    iput v2, v1, Landroid/os/Message;->what:I

    .line 1857
    iget-object v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandler:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;

    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v1, v3, v4}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1858
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getSDRemainingCapacity   type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "P_camera"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getRestPhotoNumber(Ljava/lang/String;)V
    .locals 1

    .line 2802
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2803
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 p1, 0xb

    .line 2804
    iput p1, v0, Landroid/os/Message;->what:I

    .line 2805
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandler:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;

    invoke-virtual {p1, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getRestRecordTime(Ljava/lang/String;)V
    .locals 1

    .line 2810
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandler:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;

    invoke-virtual {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2811
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 p1, 0xc

    .line 2812
    iput p1, v0, Landroid/os/Message;->what:I

    .line 2813
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandler:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;

    invoke-virtual {p1, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getShakeDate(II)V
    .locals 3

    .line 3416
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCustomLinesView:Lcom/powervision/base/views/CustomLinesView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/CustomLinesView;->setOnTouchRocker(Z)V

    .line 3417
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    if-eqz v0, :cond_8

    const/16 v0, 0x32

    .line 3419
    iget-boolean v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mIsFollowing:Z

    if-eqz v2, :cond_0

    .line 3420
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-virtual {v0, v1}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->setComposition(I)V

    const/16 v0, 0xa

    :cond_0
    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 3424
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast p1, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    neg-int p2, p2

    mul-int p2, p2, v0

    invoke-virtual {p1, v2, p2}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->setGimbalPitchPalstance(II)V

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    .line 3426
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast p1, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    neg-int p2, p2

    mul-int p2, p2, v0

    invoke-virtual {p1, p2, v2}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->setGimbalPitchPalstance(II)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 3428
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast p1, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    mul-int p2, p2, v0

    invoke-virtual {p1, v2, p2}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->setGimbalPitchPalstance(II)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    .line 3430
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast p1, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    mul-int p2, p2, v0

    invoke-virtual {p1, p2, v2}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->setGimbalPitchPalstance(II)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x4

    if-ne p1, v1, :cond_5

    .line 3432
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast p1, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    neg-int p2, p2

    mul-int p2, p2, v0

    invoke-virtual {p1, p2, p2}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->setGimbalPitchPalstance(II)V

    goto :goto_0

    :cond_5
    const/4 v1, 0x5

    if-ne p1, v1, :cond_6

    .line 3434
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast p1, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    neg-int v1, p2

    mul-int v1, v1, v0

    mul-int p2, p2, v0

    invoke-virtual {p1, v1, p2}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->setGimbalPitchPalstance(II)V

    goto :goto_0

    :cond_6
    const/4 v1, 0x6

    if-ne p1, v1, :cond_7

    .line 3436
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast p1, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    mul-int p2, p2, v0

    invoke-virtual {p1, p2, p2}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->setGimbalPitchPalstance(II)V

    goto :goto_0

    :cond_7
    const/4 v1, 0x7

    if-ne p1, v1, :cond_8

    .line 3438
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast p1, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    mul-int v1, p2, v0

    neg-int p2, p2

    mul-int p2, p2, v0

    invoke-virtual {p1, v1, p2}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->setGimbalPitchPalstance(II)V

    :cond_8
    :goto_0
    return-void
.end method

.method protected initData()V
    .locals 5

    .line 659
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->initData()V

    const-string v0, "AP03_AI_Camera"

    const-string v1, ""

    .line 662
    invoke-static {v0, v1, v1, v1}, Lcom/powervision/base/utils/UmengUtils;->getLogBpHookMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 661
    invoke-static {p0, v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 664
    invoke-static {v0}, Lcom/powervision/base/utils/UmengUtils;->workUmServiceLogBpFun(Ljava/lang/String;)V

    .line 666
    invoke-static {p0}, Lcom/powervision/base/utils/SoundPoolUtils;->getInstance(Landroid/content/Context;)Lcom/powervision/base/utils/SoundPoolUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mSoundUtil:Lcom/powervision/base/utils/SoundPoolUtils;

    .line 667
    invoke-static {p0}, Lcom/powervision/base/utils/ScreenUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->width:I

    .line 668
    invoke-static {p0}, Lcom/powervision/base/utils/ScreenUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->height:I

    .line 669
    iget v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->width:I

    if-ge v1, v0, :cond_0

    mul-int/lit8 v1, v1, 0x9

    .line 670
    div-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->height:I

    .line 672
    :cond_0
    invoke-static {}, Lcom/powervision/handheld/utils/AudioRecordManager;->getInstance()Lcom/powervision/handheld/utils/AudioRecordManager;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->audioRecordManager:Lcom/powervision/handheld/utils/AudioRecordManager;

    .line 674
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const-string v1, "AP03_HANDHELD_GUIDE"

    const/4 v2, 0x0

    .line 675
    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->executedHandheldGuide:Z

    if-nez v0, :cond_1

    .line 677
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGuideStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 678
    sget v1, Lcom/powervision/handheld/R$id;->handheld_guide:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/powervision/handheld/ui/views/HandheldGuideView;

    iput-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandheldGuideStubLayout:Lcom/powervision/handheld/ui/views/HandheldGuideView;

    .line 679
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->initHandheldGuideViews()V

    .line 681
    :cond_1
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mModel:Lcom/powervision/base/base/BaseModel;

    check-cast v0, Lcom/powervision/handheld/model/impl/HandheldModel;

    invoke-virtual {v0}, Lcom/powervision/handheld/model/impl/HandheldModel;->getModeList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->modelList:Ljava/util/List;

    .line 682
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHPickerView:Lcom/powervision/base/views/HPickerView;

    invoke-virtual {v1, v0}, Lcom/powervision/base/views/HPickerView;->setData(Ljava/util/List;)V

    .line 683
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHPickerView:Lcom/powervision/base/views/HPickerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/HPickerView;->setCallBackResult(Z)V

    .line 684
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHPickerView:Lcom/powervision/base/views/HPickerView;

    sget v3, Lcom/powervision/handheld/R$color;->white:I

    invoke-virtual {v0, v3}, Lcom/powervision/base/views/HPickerView;->setSelectPaintColor(I)V

    .line 685
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHPickerView:Lcom/powervision/base/views/HPickerView;

    sget v3, Lcom/powervision/handheld/R$color;->gray_color:I

    invoke-virtual {v0, v3}, Lcom/powervision/base/views/HPickerView;->setUnSelectPaintColor(I)V

    .line 686
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraConnect()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 687
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHPickerView:Lcom/powervision/base/views/HPickerView;

    iget-object v3, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->modelList:Ljava/util/List;

    sget v4, Lcom/powervision/handheld/R$string;->AP03_DV_MediaLib_3:I

    invoke-virtual {p0, v4}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/powervision/base/views/HPickerView;->setSclollSelectIndex(I)V

    .line 689
    :cond_2
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHPickerView:Lcom/powervision/base/views/HPickerView;

    invoke-virtual {v0, v2}, Lcom/powervision/base/views/HPickerView;->setIsAuto(Z)V

    .line 690
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHPickerView:Lcom/powervision/base/views/HPickerView;

    new-instance v2, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$5;

    invoke-direct {v2, p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$5;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V

    invoke-virtual {v0, v2}, Lcom/powervision/base/views/HPickerView;->setOnScrollListener(Lcom/powervision/base/views/HPickerView$OnScrollListener;)V

    .line 710
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->initLines()V

    .line 711
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->setDelayData()V

    .line 713
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraConnect()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 714
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-virtual {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->getGimbalMode()V

    :cond_3
    const-string v0, "audio"

    .line 717
    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 718
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 719
    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    .line 720
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->initWarnManager()V

    .line 721
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->registerBlueToothReceiver()V

    .line 722
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->checkReverse()V

    .line 723
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraAudioState()I

    move-result v0

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mRxPermission:Lcom/tbruyelle/rxpermissions2/RxPermissions;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->isGranted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 724
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->registerPhoneStateReceiver()V

    .line 726
    :cond_4
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandler:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;

    const/16 v1, 0x20

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 3

    .line 335
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->initScreenSize()V

    .line 336
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/powervision/base/rxbus/RxBus;->register(Ljava/lang/Object;)V

    .line 337
    new-instance p1, Lcom/tbruyelle/rxpermissions2/RxPermissions;

    invoke-direct {p1, p0}, Lcom/tbruyelle/rxpermissions2/RxPermissions;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mRxPermission:Lcom/tbruyelle/rxpermissions2/RxPermissions;

    .line 338
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 339
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 340
    new-instance v0, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$jrst58__S1aAfqHySIeGtgH6G3g;

    invoke-direct {v0, p0}, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$jrst58__S1aAfqHySIeGtgH6G3g;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 370
    :cond_0
    sget p1, Lcom/powervision/handheld/R$id;->root:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->clRootContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 371
    sget p1, Lcom/powervision/handheld/R$id;->back_home_img:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHomeBack:Landroid/widget/ImageView;

    .line 372
    sget p1, Lcom/powervision/handheld/R$id;->handheld_signal_img:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mSignalStatus:Landroid/widget/ImageView;

    .line 373
    sget p1, Lcom/powervision/handheld/R$id;->handheld_battery_img:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mBatteryImg:Landroid/widget/ImageView;

    .line 374
    sget p1, Lcom/powervision/handheld/R$id;->handheld_battery_text:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mBatteryText:Landroid/widget/TextView;

    .line 375
    sget p1, Lcom/powervision/handheld/R$id;->handheld_audio_img:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAudioImg:Landroid/widget/ImageView;

    .line 376
    sget p1, Lcom/powervision/handheld/R$id;->handheld_general_img:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGeneralImg:Landroid/widget/ImageView;

    .line 377
    sget p1, Lcom/powervision/handheld/R$id;->handheld_new_photo_video_btn:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/views/AnimateImageView;

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTakeCameraImg:Lcom/powervision/base/views/AnimateImageView;

    .line 384
    sget p1, Lcom/powervision/handheld/R$id;->handheld_new_camera_media_btn:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/views/AnimateImageView;

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mMediaImg:Lcom/powervision/base/views/AnimateImageView;

    .line 385
    sget p1, Lcom/powervision/handheld/R$id;->handheld_new_camera_settings_btn:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraSetImg:Landroid/widget/ImageView;

    .line 386
    sget p1, Lcom/powervision/handheld/R$id;->biography_surface_view_group:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mSurfaceGroupLayout:Landroid/widget/RelativeLayout;

    .line 388
    sget p1, Lcom/powervision/handheld/R$id;->biography_surface_view:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/TextureView;

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mSurfaceView:Landroid/view/TextureView;

    .line 389
    sget p1, Lcom/powervision/handheld/R$id;->follow_touch_rectangle_view:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/handheld/ui/views/TouchRectangleView;

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTouchRectangleView:Lcom/powervision/handheld/ui/views/TouchRectangleView;

    .line 390
    sget p1, Lcom/powervision/handheld/R$id;->blurry_view:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mBlurryView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    .line 391
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 392
    sget p1, Lcom/powervision/handheld/R$id;->handheld_camera_param_view:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/handheld/ui/views/NewCameraParamView;

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mNewCameraParamView:Lcom/powervision/handheld/ui/views/NewCameraParamView;

    .line 393
    sget p1, Lcom/powervision/handheld/R$id;->handheld_rocker_controller:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/handheld/ui/views/RockerView;

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mRockerView:Lcom/powervision/handheld/ui/views/RockerView;

    .line 394
    sget p1, Lcom/powervision/handheld/R$id;->pickerView:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/views/HPickerView;

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHPickerView:Lcom/powervision/base/views/HPickerView;

    .line 395
    sget p1, Lcom/powervision/handheld/R$id;->alpha_view:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->alpha_view:Landroid/view/View;

    .line 396
    sget p1, Lcom/powervision/handheld/R$id;->full_screen_lines_view:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/views/CustomLinesView;

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCustomLinesView:Lcom/powervision/base/views/CustomLinesView;

    const/4 v0, 0x1

    .line 397
    invoke-virtual {p1, v0}, Lcom/powervision/base/views/CustomLinesView;->setLineWorkMode(Z)V

    .line 398
    sget p1, Lcom/powervision/handheld/R$id;->layout_record:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLayoutRecord:Landroid/widget/RelativeLayout;

    .line 399
    sget p1, Lcom/powervision/handheld/R$id;->image_dot1:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mImageDot1:Landroid/widget/ImageView;

    .line 400
    sget p1, Lcom/powervision/handheld/R$id;->image_dot2:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mImageDot2:Landroid/widget/ImageView;

    .line 401
    sget p1, Lcom/powervision/handheld/R$id;->text_record_time:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextRecordTime:Landroid/widget/TextView;

    .line 402
    sget p1, Lcom/powervision/handheld/R$id;->gimbal_layout:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/views/AircraftGimBalView;

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAircraftGimBalView:Lcom/powervision/base/views/AircraftGimBalView;

    .line 403
    sget p1, Lcom/powervision/handheld/R$id;->handheld_gimbal_set_img:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGimbalModeImg:Landroid/widget/ImageView;

    .line 404
    sget p1, Lcom/powervision/handheld/R$id;->count_down_time:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCountDownTime:Landroid/widget/TextView;

    .line 405
    sget p1, Lcom/powervision/handheld/R$id;->text_mode:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextMode:Landroid/widget/TextView;

    .line 406
    sget p1, Lcom/powervision/handheld/R$id;->text_delay_show:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextDelayShow:Landroid/widget/TextView;

    .line 408
    sget p1, Lcom/powervision/handheld/R$id;->layout_delay_set:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLayoutDelaySet:Landroid/widget/LinearLayout;

    .line 409
    sget p1, Lcom/powervision/handheld/R$id;->loop_shutter:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/views/loopview/LoopView;

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLoopShutter:Lcom/powervision/base/views/loopview/LoopView;

    .line 410
    sget p1, Lcom/powervision/handheld/R$id;->loop_all_time:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/views/loopview/LoopView;

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLoopTime:Lcom/powervision/base/views/loopview/LoopView;

    .line 411
    sget p1, Lcom/powervision/handheld/R$id;->text_result_time:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextResultTime:Landroid/widget/TextView;

    .line 412
    sget p1, Lcom/powervision/handheld/R$id;->text_rest_time:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextRestTime:Landroid/widget/TextView;

    .line 413
    sget p1, Lcom/powervision/handheld/R$id;->text_delay_total:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextDelayTotal:Landroid/widget/TextView;

    .line 414
    sget p1, Lcom/powervision/handheld/R$id;->text_born_time:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextBornTime:Landroid/widget/TextView;

    .line 415
    sget p1, Lcom/powervision/handheld/R$id;->text_delay_progress:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextDelayProgress:Landroid/widget/TextView;

    .line 416
    sget p1, Lcom/powervision/handheld/R$id;->text_mul_num:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextMulNum:Landroid/widget/TextView;

    .line 417
    sget p1, Lcom/powervision/handheld/R$id;->text_device_disconnect:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mDisConenctText:Landroid/widget/TextView;

    .line 419
    sget p1, Lcom/powervision/handheld/R$id;->layout_delay_record:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLayoutDelayRecord:Landroid/widget/LinearLayout;

    .line 421
    sget p1, Lcom/powervision/handheld/R$id;->layout_fps:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLayoutFps:Landroid/widget/LinearLayout;

    .line 422
    sget p1, Lcom/powervision/handheld/R$id;->text_fps:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextFps:Landroid/widget/TextView;

    .line 423
    sget p1, Lcom/powervision/handheld/R$id;->handheld_slow_motion_img:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mImageFps:Landroid/widget/ImageView;

    .line 424
    sget p1, Lcom/powervision/handheld/R$id;->handheld_slow_notion_marker_img:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mImageFpsMarker:Landroid/widget/ImageView;

    .line 425
    sget p1, Lcom/powervision/handheld/R$id;->handheld_record_marker_img:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mImageRecordMarker:Landroid/widget/ImageView;

    .line 426
    sget p1, Lcom/powervision/handheld/R$id;->layout_slow_motion:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLayoutSlowMotion:Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;

    .line 428
    sget p1, Lcom/powervision/handheld/R$id;->parentLayout:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/camera/views/HistogramLayout;

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->histogramLayout:Lcom/powervision/camera/views/HistogramLayout;

    .line 429
    sget p1, Lcom/powervision/handheld/R$id;->flexbox_layout:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/flexbox/FlexboxLayout;

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->flexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    .line 432
    sget p1, Lcom/powervision/handheld/R$id;->handheld_gimbal_set_text:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGimbalModeText:Landroid/widget/TextView;

    .line 433
    sget p1, Lcom/powervision/handheld/R$id;->camera_temperature:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraTemperatureIv:Landroid/widget/ImageView;

    .line 435
    sget p1, Lcom/powervision/handheld/R$id;->handheld_guide_stub:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGuideStub:Landroid/view/ViewStub;

    .line 437
    sget p1, Lcom/powervision/handheld/R$id;->live_stream_status_view:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/views/LiveStatusView;

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLiveStatusView:Lcom/powervision/base/views/LiveStatusView;

    .line 438
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const v1, 0x1020002

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 439
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mRootViewGroup:Landroid/view/ViewGroup;

    .line 441
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mSurfaceView:Landroid/view/TextureView;

    invoke-virtual {p1, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 443
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 445
    iput-boolean v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isVertical:Z

    goto :goto_0

    .line 446
    :cond_1
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v0, :cond_2

    .line 448
    iput-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isVertical:Z

    .line 450
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NewHandheldDeviceActivity initView().. GCSConnectionManager.get().isAp03Connected()="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "connect_status"

    .line 450
    invoke-static {v0, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->onDeviceStatusChanged(Z)V

    .line 457
    new-instance p1, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {p1}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->portSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 458
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->clRootContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 460
    new-instance p1, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {p1}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->landSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 461
    sget v0, Lcom/powervision/handheld/R$layout;->handheld_new_device_layout_land:I

    invoke-virtual {p1, p0, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroid/content/Context;I)V

    .line 463
    new-instance p1, Landroidx/transition/AutoTransition;

    invoke-direct {p1}, Landroidx/transition/AutoTransition;-><init>()V

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->autoTransition:Landroidx/transition/AutoTransition;

    const-wide/16 v0, 0xa

    .line 464
    invoke-virtual {p1, v0, v1}, Landroidx/transition/AutoTransition;->setDuration(J)Landroidx/transition/TransitionSet;

    .line 465
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->onSurfaceSizeAutoChange()V

    .line 466
    iget-boolean p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isVertical:Z

    if-nez p1, :cond_3

    .line 467
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->landSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->clRootContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_3
    return-void
.end method

.method public synthetic lambda$addAndRemoveCameraSettingsView$3$NewHandheldDeviceActivity()V
    .locals 3

    .line 1190
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraNewSettingView;

    if-eqz v0, :cond_0

    .line 1191
    iget-boolean v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->enable2:Z

    iget-boolean v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->enable3:Z

    invoke-virtual {v0, v1, v2}, Lcom/powervision/camera/views/CameraNewSettingView;->setCameraSettingEnable(ZZ)V

    .line 1192
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraNewSettingView;

    invoke-virtual {v0}, Lcom/powervision/camera/views/CameraNewSettingView;->switchCamerMenuStatus()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$clickClose$16$NewHandheldDeviceActivity()V
    .locals 1

    .line 3399
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-virtual {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->setFollowMode()V

    return-void
.end method

.method public synthetic lambda$gestureStartRecord$15$NewHandheldDeviceActivity()V
    .locals 2

    const-string v0, "AP03_C_G_Video"

    const-string v1, ""

    .line 3017
    invoke-static {v0, v1, v1, v1}, Lcom/powervision/base/utils/UmengUtils;->getLogBpHookMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 3016
    invoke-static {p0, v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 3019
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->showBlurryView()V

    .line 3020
    iget-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isPhoto:Z

    if-eqz v0, :cond_0

    .line 3021
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->switchCameraMenuStatus()V

    .line 3022
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLayoutDelaySet:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3024
    :cond_0
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraAudioState()I

    move-result v0

    if-nez v0, :cond_1

    .line 3025
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mSoundUtil:Lcom/powervision/base/utils/SoundPoolUtils;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/powervision/base/utils/SoundPoolUtils;->playAudio(I)V

    .line 3027
    :cond_1
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->removeCameraSettingView()V

    return-void
.end method

.method public synthetic lambda$gestureTakePhotoStart$14$NewHandheldDeviceActivity()V
    .locals 6

    .line 2988
    iget-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mIsTakePhotoState:Z

    if-nez v0, :cond_0

    const-string v0, "AP03_C_G_Photo"

    goto :goto_0

    :cond_0
    const-string v0, "AP03_C_G_Group_Photo"

    :goto_0
    const-string v1, ""

    .line 2990
    invoke-static {v0, v1, v1, v1}, Lcom/powervision/base/utils/UmengUtils;->getLogBpHookMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 2989
    invoke-static {p0, v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v0, 0x0

    .line 2991
    iput-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mIsTakePhotoState:Z

    .line 2993
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 2994
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isCaptureInVideo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2995
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mMediaImg:Lcom/powervision/base/views/AnimateImageView;

    sget v2, Lcom/powervision/handheld/R$mipmap;->icon_capture_wating:I

    const/4 v3, 0x1

    const/4 v4, -0x1

    sget v5, Lcom/powervision/handheld/R$mipmap;->icon_capture:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/powervision/base/views/AnimateImageView;->setImageResource(IZII)V

    .line 2996
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mMediaImg:Lcom/powervision/base/views/AnimateImageView;

    invoke-virtual {v1, v0}, Lcom/powervision/base/views/AnimateImageView;->setEnabled(Z)V

    :cond_1
    return-void

    .line 3000
    :cond_2
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->isGestureRecordToPhoto()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3001
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->showBlurryView()V

    .line 3003
    :cond_3
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getAllParameters()V

    return-void
.end method

.method public synthetic lambda$getCameraAllParameters$11$NewHandheldDeviceActivity()V
    .locals 2

    .line 2777
    sget v0, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_PHOTO:I

    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 2778
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getPhotoGraphType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 2780
    :cond_0
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getDelayTime()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->shutter:I

    .line 2781
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getLapseFileDuration()I

    move-result v0

    iput v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->result:I

    .line 2784
    :cond_1
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->switchCameraMenuStatus()V

    .line 2785
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraNewSettingView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/powervision/camera/views/CameraNewSettingView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2786
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraNewSettingView;

    invoke-virtual {v0}, Lcom/powervision/camera/views/CameraNewSettingView;->updateBasicFragmentAdapter()V

    :cond_2
    return-void
.end method

.method public synthetic lambda$initHandheldBasicGuideViews$24$NewHandheldDeviceActivity()V
    .locals 2

    .line 5019
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandheldBasicGuideView:Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->setVisibility(I)V

    const/4 v0, 0x4

    .line 5020
    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->setRequestedOrientation(I)V

    .line 5022
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->setGestureFirstTimeTeachingState()I

    const/4 v0, 0x0

    .line 5023
    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->openGuideCameraSettingView(Z)V

    .line 5024
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraSetImg:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method public synthetic lambda$initHandheldGuideViews$23$NewHandheldDeviceActivity()V
    .locals 4

    .line 4997
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGuideStub:Landroid/view/ViewStub;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 4998
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "AP03_HANDHELD_GUIDE"

    invoke-virtual {v0, v3, v2}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4999
    iput-boolean v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->executedHandheldGuide:Z

    .line 5000
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->initHandheldBasicGuideViews()V

    return-void
.end method

.method public synthetic lambda$initView$0$NewHandheldDeviceActivity(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    .line 341
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 343
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v0

    iput v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mViewPaddingStart:I

    .line 344
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v0

    iput v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mViewPaddingTop:I

    .line 345
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v0

    iput v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mViewPaddingEnd:I

    .line 346
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result p1

    .line 348
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHomeBack:Landroid/widget/ImageView;

    .line 349
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 350
    iget v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mViewPaddingStart:I

    iget v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mViewPaddingTop:I

    iget v3, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mViewPaddingEnd:I

    invoke-virtual {v0, v1, v2, v3, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMargins(IIII)V

    .line 352
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHomeBack:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 354
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGuideStub:Landroid/view/ViewStub;

    .line 355
    invoke-virtual {v0}, Landroid/view/ViewStub;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 356
    iget v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mViewPaddingStart:I

    iget v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mViewPaddingTop:I

    iget v3, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mViewPaddingEnd:I

    invoke-virtual {v0, v1, v2, v3, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMargins(IIII)V

    .line 358
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGuideStub:Landroid/view/ViewStub;

    invoke-virtual {p1, v0}, Landroid/view/ViewStub;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 360
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraNewSettingView;

    if-eqz p1, :cond_0

    .line 361
    iget v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mViewPaddingStart:I

    invoke-virtual {p1, v0}, Lcom/powervision/camera/views/CameraNewSettingView;->setViewPaddingStart(I)V

    .line 363
    :cond_0
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->generalSettingView:Lcom/powervision/handheld/ui/views/HandleGeneralSetting;

    if-eqz p1, :cond_1

    .line 364
    iget v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mViewPaddingTop:I

    iget v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mViewPaddingEnd:I

    invoke-virtual {p1, v0, v1}, Lcom/powervision/handheld/ui/views/HandleGeneralSetting;->setNotchPadding(II)V

    .line 367
    :cond_1
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$onClick$1$NewHandheldDeviceActivity(Landroid/view/View;)V
    .locals 0

    .line 963
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mBackHome()V

    return-void
.end method

.method public synthetic lambda$onDeviceConnectionChange$19$NewHandheldDeviceActivity(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 4721
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->onDeviceConnectStatus()V

    goto :goto_0

    .line 4723
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->onDeviceDisConnecetStatus()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$onDeviceStatusChanged$17$NewHandheldDeviceActivity(Z)V
    .locals 2

    .line 4472
    iget v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->deviceConnectType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4473
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->onDeviceConnectStatus()V

    goto :goto_0

    .line 4475
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->onDeviceDisConnecetStatus()V

    .line 4477
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2222222222\u672c\u5730\u8bbe\u7f6e\u503c...isConnected= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "...deviceConnectType= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->deviceConnectType:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "device_conned"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onGestureFull$18$NewHandheldDeviceActivity(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 4521
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/powervision/handheld/R$string;->AP03_DV_CameraSetting_90:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 4522
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/powervision/handheld/R$string;->AP03_CameraSetting_66:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 4520
    :goto_0
    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->showDefaultToast(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onInternalStorageFull$7$NewHandheldDeviceActivity()V
    .locals 1

    const/4 v0, 0x0

    .line 2528
    invoke-direct {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->currentStorageFull(Z)V

    return-void
.end method

.method public synthetic lambda$onSDFull$6$NewHandheldDeviceActivity()V
    .locals 1

    const/4 v0, 0x1

    .line 2523
    invoke-direct {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->currentStorageFull(Z)V

    return-void
.end method

.method public synthetic lambda$onSDStorageSlowNotify$22$NewHandheldDeviceActivity()V
    .locals 0

    .line 4988
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->checkSdCardLowSpeed()Z

    return-void
.end method

.method public synthetic lambda$onStartRecordVideo$5$NewHandheldDeviceActivity()V
    .locals 0

    .line 2369
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->showBlurryView()V

    return-void
.end method

.method public synthetic lambda$onSwitchPhotoMode$20$NewHandheldDeviceActivity()V
    .locals 0

    .line 4868
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->showBlurryView()V

    return-void
.end method

.method public synthetic lambda$onSwitchRecordMode$21$NewHandheldDeviceActivity()V
    .locals 0

    .line 4875
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->showBlurryView()V

    return-void
.end method

.method public synthetic lambda$onUpdateRecordingTime$10$NewHandheldDeviceActivity(I)V
    .locals 1

    .line 2769
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mNewCameraParamView:Lcom/powervision/handheld/ui/views/NewCameraParamView;

    invoke-virtual {v0, p1}, Lcom/powervision/handheld/ui/views/NewCameraParamView;->updateRecordingTime(I)V

    return-void
.end method

.method public synthetic lambda$showHistogramData$13$NewHandheldDeviceActivity([I)V
    .locals 2

    .line 2881
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->ismCameraEnableHistogram()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2882
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->histogramLayout:Lcom/powervision/camera/views/HistogramLayout;

    invoke-virtual {v0}, Lcom/powervision/camera/views/HistogramLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2883
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->histogramLayout:Lcom/powervision/camera/views/HistogramLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/camera/views/HistogramLayout;->setVisibility(I)V

    .line 2885
    :cond_0
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->histogramLayout:Lcom/powervision/camera/views/HistogramLayout;

    invoke-virtual {v0, p1}, Lcom/powervision/camera/views/HistogramLayout;->setData([I)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$showHistogramView$12$NewHandheldDeviceActivity(I)V
    .locals 2

    .line 2865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "===============  result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    if-nez p1, :cond_1

    .line 2868
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->ismCameraEnableHistogram()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2869
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->histogramLayout:Lcom/powervision/camera/views/HistogramLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/powervision/camera/views/HistogramLayout;->setVisibility(I)V

    goto :goto_0

    .line 2871
    :cond_0
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->histogramLayout:Lcom/powervision/camera/views/HistogramLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/powervision/camera/views/HistogramLayout;->setVisibility(I)V

    .line 2874
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->updateCameraSettingView()V

    return-void
.end method

.method public liveCloseConnectionResult()V
    .locals 2

    .line 4682
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/handheld/R$string;->AP03_DV_GeneralSetting_45_2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    .line 4683
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLiveStatusView:Lcom/powervision/base/views/LiveStatusView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/powervision/base/views/LiveStatusView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 4684
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLiveStatusView:Lcom/powervision/base/views/LiveStatusView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/LiveStatusView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public liveOpenConnectionFailed()V
    .locals 2

    .line 4665
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->TAG:Ljava/lang/String;

    const-string v1, "\u76f4\u64ad\u63a8\u6d41\u8fde\u63a5\u5931\u8d25\u3002\u3002\u3002"

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4666
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/handheld/R$string;->AP03_DV_GeneralSetting_44:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    .line 4667
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLiveStatusView:Lcom/powervision/base/views/LiveStatusView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/powervision/base/views/LiveStatusView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 4668
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLiveStatusView:Lcom/powervision/base/views/LiveStatusView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/LiveStatusView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public liveOpenConnectionSuccess()V
    .locals 2

    .line 4658
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/handheld/R$string;->AP03_DV_GeneralSetting_40_4:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    .line 4659
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLiveStatusView:Lcom/powervision/base/views/LiveStatusView;

    invoke-virtual {v0}, Lcom/powervision/base/views/LiveStatusView;->startTimerTask()V

    .line 4660
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLiveStatusView:Lcom/powervision/base/views/LiveStatusView;

    invoke-virtual {v0}, Lcom/powervision/base/views/LiveStatusView;->stopFlickerAnimation()V

    return-void
.end method

.method public liveWriteError(I)V
    .locals 1

    .line 4674
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/powervision/handheld/R$string;->AP03_DV_GeneralSetting_44_1:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    .line 4675
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLiveStatusView:Lcom/powervision/base/views/LiveStatusView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/powervision/base/views/LiveStatusView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 4676
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLiveStatusView:Lcom/powervision/base/views/LiveStatusView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/powervision/base/views/LiveStatusView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public lockDevice()V
    .locals 2
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xf7
    .end annotation

    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2.2 lockDevice "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqFirm"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->finish()V

    return-void
.end method

.method public multiShotsFail()V
    .locals 1

    const/4 v0, 0x0

    .line 2489
    iput-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFunctional:Z

    .line 2490
    new-instance v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$17;

    invoke-direct {v0, p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$17;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAudioFocusChange(I)V
    .locals 4

    const/4 v0, -0x3

    const-string v1, "nemo_record_info"

    if-eq p1, v0, :cond_4

    const/4 v0, -0x2

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "\u91cd\u65b0\u62ff\u56de\u7126\u70b9"

    .line 3822
    invoke-static {v1, p1}, Lcom/powervision/base/utils/LogConnectStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3823
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result p1

    if-ne v2, p1, :cond_1

    const-string p1, "\u84dd\u7259\u8033\u673a\u8fde\u63a5\u4e2d\uff0c\u6253\u5f00SCO\u8fde\u63a5"

    .line 3824
    invoke-static {v1, p1}, Lcom/powervision/base/utils/LogConnectStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3825
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/handheld/utils/BluetoothUtil;->getInstance(Landroid/content/Context;)Lcom/powervision/handheld/utils/BluetoothUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/handheld/utils/BluetoothUtil;->closeSco()V

    .line 3826
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/handheld/utils/BluetoothUtil;->getInstance(Landroid/content/Context;)Lcom/powervision/handheld/utils/BluetoothUtil;

    move-result-object p1

    new-instance v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$36;

    invoke-direct {v0, p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$36;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V

    invoke-virtual {p1, v0}, Lcom/powervision/handheld/utils/BluetoothUtil;->openSco(Lcom/powervision/handheld/utils/BluetoothUtil$IBluetoothConnectListener;)V

    goto :goto_0

    .line 3838
    :cond_1
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->startRecordAudio()V

    goto :goto_0

    :cond_2
    const-string p1, "\u957f\u65f6\u95f4\u5931\u53bb\u7126\u70b9"

    .line 3808
    invoke-static {v1, p1}, Lcom/powervision/base/utils/LogConnectStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "\u6682\u65f6\u6027\u5931\u53bb\u7126\u70b9"

    .line 3811
    invoke-static {v1, p1}, Lcom/powervision/base/utils/LogConnectStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3812
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->stopRecordAudio()V

    .line 3813
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result p1

    if-ne v2, p1, :cond_5

    const-string p1, "\u84dd\u7259\u8033\u673a\u8fde\u63a5\u4e2d\uff0c\u505c\u6b62SCO\u8fde\u63a5"

    .line 3814
    invoke-static {v1, p1}, Lcom/powervision/base/utils/LogConnectStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3815
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/handheld/utils/BluetoothUtil;->getInstance(Landroid/content/Context;)Lcom/powervision/handheld/utils/BluetoothUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/handheld/utils/BluetoothUtil;->closeSco()V

    goto :goto_0

    :cond_4
    const-string p1, "\u77ed\u6682\u6027\u4e22\u5931\u7126\u70b9\u5e76\u4f5c\u964d\u97f3\u5904\u7406"

    .line 3819
    invoke-static {v1, p1}, Lcom/powervision/base/utils/LogConnectStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 2302
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraNewSettingView;

    if-eqz v0, :cond_0

    .line 2303
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->addAndRemoveCameraSettingsView()V

    return-void

    .line 2306
    :cond_0
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->generalSettingView:Lcom/powervision/handheld/ui/views/HandleGeneralSetting;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2307
    invoke-direct {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->addAndRemoveHandheldSettingView(I)V

    return-void

    .line 2310
    :cond_1
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCountDownTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 2313
    :cond_2
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->finish()V

    .line 2314
    invoke-static {}, Lcom/powervision/base/router/RouterUtil$Home;->getHomeActivity()Landroid/app/Activity;

    return-void
.end method

.method public onCameraSensorHighTemperature(I)V
    .locals 2

    .line 4856
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraTemperatureIv:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 4859
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x1e

    .line 4860
    iput v1, v0, Landroid/os/Message;->what:I

    .line 4861
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 4862
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandler:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;

    invoke-virtual {p1, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onCameraStateChange(I)V
    .locals 0

    return-void
.end method

.method public onCaptureFail(Ljava/lang/String;)V
    .locals 1

    const/4 p1, 0x0

    .line 2392
    iput-boolean p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFunctional:Z

    .line 2393
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandler:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onClick()V
    .locals 1

    .line 3405
    iget-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFullScreen:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->goFullScreen(Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 953
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 954
    sget v0, Lcom/powervision/handheld/R$id;->handheld_new_photo_video_btn:I

    if-ne p1, v0, :cond_0

    .line 955
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->doClickCameraView()V

    goto/16 :goto_0

    .line 956
    :cond_0
    sget v0, Lcom/powervision/handheld/R$id;->handheld_new_camera_media_btn:I

    if-ne p1, v0, :cond_1

    .line 957
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->intoMedia()V

    goto/16 :goto_0

    .line 958
    :cond_1
    sget v0, Lcom/powervision/handheld/R$id;->back_home_img:I

    if-ne p1, v0, :cond_3

    .line 959
    invoke-static {}, Lcom/powervision/livestreaming/LiveStreaming;->getInstance()Lcom/powervision/livestreaming/LiveStreaming;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/livestreaming/LiveStreaming;->isLiveRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    .line 960
    sget p1, Lcom/powervision/handheld/R$string;->AP03_DV_GeneralSetting_46:I

    .line 961
    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget p1, Lcom/powervision/handheld/R$string;->AP03_Activation_6:I

    .line 962
    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget p1, Lcom/powervision/handheld/R$string;->AP03_Activation_9:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$qL8IZQ0VD3fNyXYw3UFX8AEipRw;

    invoke-direct {v5, p0}, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$qL8IZQ0VD3fNyXYw3UFX8AEipRw;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V

    sget-object v6, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$fP1WbNkRcgxDbHkibn1JOFRcTKA;->INSTANCE:Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$fP1WbNkRcgxDbHkibn1JOFRcTKA;

    move-object v0, p0

    .line 960
    invoke-static/range {v0 .. v6}, Lcom/powervision/base/utils/DialogUtils;->customDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/powervision/base/utils/DialogUtils$OnClickListener;Lcom/powervision/base/utils/DialogUtils$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    goto/16 :goto_0

    .line 968
    :cond_2
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mBackHome()V

    goto/16 :goto_0

    .line 970
    :cond_3
    sget v0, Lcom/powervision/handheld/R$id;->handheld_new_camera_settings_btn:I

    if-ne p1, v0, :cond_5

    .line 971
    invoke-static {}, Lcom/powervision/base/utils/NoFastClickUtil;->isFastClick()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 974
    :cond_4
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->addAndRemoveCameraSettingsView()V

    .line 975
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getCameraConnect()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 976
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getAllParameters()V

    goto/16 :goto_0

    .line 978
    :cond_5
    sget v0, Lcom/powervision/handheld/R$id;->handheld_gimbal_set_img:I

    if-ne p1, v0, :cond_b

    .line 979
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "=====getMode Onclick===="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->setMode:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NewHandheldPersenter"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    invoke-static {}, Lcom/powervision/base/utils/NoFastClickUtil;->isFastClick()Z

    move-result p1

    if-eqz p1, :cond_6

    return-void

    .line 984
    :cond_6
    iget-boolean p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mIsFollowing:Z

    if-eqz p1, :cond_7

    .line 985
    sget p1, Lcom/powervision/handheld/R$string;->AP03_DV_Msg_27:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 987
    :cond_7
    iget p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->setMode:I

    const/4 v0, 0x4

    const/4 v1, 0x5

    if-ne p1, v0, :cond_8

    .line 988
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast p1, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-virtual {p1, v1}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->setGimbaMode(I)V

    goto/16 :goto_0

    :cond_8
    const/4 v2, 0x6

    if-ne p1, v1, :cond_9

    .line 990
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast p1, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-virtual {p1, v2}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->setGimbaMode(I)V

    goto/16 :goto_0

    :cond_9
    if-ne p1, v2, :cond_a

    .line 992
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast p1, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-virtual {p1, v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->setGimbaMode(I)V

    goto/16 :goto_0

    .line 994
    :cond_a
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast p1, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-virtual {p1, v1}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->setGimbaMode(I)V

    goto :goto_0

    .line 997
    :cond_b
    sget v0, Lcom/powervision/handheld/R$id;->handheld_general_img:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_d

    .line 998
    invoke-static {}, Lcom/powervision/base/utils/NoFastClickUtil;->isFastClick()Z

    move-result p1

    if-eqz p1, :cond_c

    return-void

    .line 1001
    :cond_c
    invoke-direct {p0, v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->addAndRemoveHandheldSettingView(I)V

    goto :goto_0

    .line 1002
    :cond_d
    sget v0, Lcom/powervision/handheld/R$id;->handheld_audio_img:I

    if-ne p1, v0, :cond_e

    .line 1006
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mRecordPop()V

    goto :goto_0

    .line 1008
    :cond_e
    sget v0, Lcom/powervision/handheld/R$id;->handheld_slow_motion_img:I

    if-ne p1, v0, :cond_f

    .line 1009
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLayoutSlowMotion:Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;

    invoke-virtual {p1, v1}, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->setVisibility(I)V

    goto :goto_0

    .line 1010
    :cond_f
    sget v0, Lcom/powervision/handheld/R$id;->close_layout:I

    const/4 v2, 0x1

    if-ne p1, v0, :cond_10

    .line 1011
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getCameraAudioState()I

    move-result p1

    if-ne p1, v2, :cond_12

    .line 1012
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/powervision/camera/camera/CameraManager;->enableAudio(I)V

    goto :goto_0

    .line 1014
    :cond_10
    sget v0, Lcom/powervision/handheld/R$id;->record_layout:I

    const-string v3, "AP03_RECORD_NOISE_SWITCH"

    if-ne p1, v0, :cond_11

    .line 1015
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/powervision/camera/camera/CameraManager;->enableAudio(I)V

    .line 1016
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1017
    :cond_11
    sget v0, Lcom/powervision/handheld/R$id;->noise_layout:I

    if-ne p1, v0, :cond_12

    .line 1018
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/powervision/camera/camera/CameraManager;->enableAudio(I)V

    .line 1019
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_12
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 1339
    invoke-super {p0, p1}, Lcom/powervision/base/base/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , isFunctional = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFunctional:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onConfigurationChanged"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isVertical:Z

    .line 1342
    iput-boolean v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFullScreen:Z

    .line 1343
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1344
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1346
    :cond_1
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraNewSettingView;

    if-eqz p1, :cond_2

    .line 1347
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->addAndRemoveCameraSettingsView()V

    .line 1349
    :cond_2
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->generalSettingView:Lcom/powervision/handheld/ui/views/HandleGeneralSetting;

    if-eqz p1, :cond_3

    .line 1350
    invoke-direct {p0, v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->addAndRemoveHandheldSettingView(I)V

    .line 1353
    :cond_3
    invoke-static {p0}, Lcom/powervision/base/utils/ScreenUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mScreenWidth:I

    .line 1354
    invoke-static {p0}, Lcom/powervision/base/utils/ScreenUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mScreenHeight:I

    .line 1355
    iget-boolean p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isVertical:Z

    if-eqz p1, :cond_4

    .line 1356
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->clRootContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->autoTransition:Landroidx/transition/AutoTransition;

    invoke-static {p1, v2}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    .line 1357
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->portSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraTemperatureIv:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraTemperatureIv:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    .line 1358
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->portSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLiveStatusView:Lcom/powervision/base/views/LiveStatusView;

    invoke-virtual {v2}, Lcom/powervision/base/views/LiveStatusView;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLiveStatusView:Lcom/powervision/base/views/LiveStatusView;

    invoke-virtual {v3}, Lcom/powervision/base/views/LiveStatusView;->getVisibility()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    .line 1359
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->portSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->clRootContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 1361
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHomeBack:Landroid/widget/ImageView;

    .line 1362
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1363
    iget v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mViewPaddingTopBackUp:I

    invoke-virtual {p1, v1, v2, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMargins(IIII)V

    .line 1364
    iget-object v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHomeBack:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 1366
    :cond_4
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->clRootContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->autoTransition:Landroidx/transition/AutoTransition;

    invoke-static {p1, v2}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    .line 1367
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->landSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraTemperatureIv:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraTemperatureIv:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    .line 1368
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->landSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLiveStatusView:Lcom/powervision/base/views/LiveStatusView;

    invoke-virtual {v2}, Lcom/powervision/base/views/LiveStatusView;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLiveStatusView:Lcom/powervision/base/views/LiveStatusView;

    invoke-virtual {v3}, Lcom/powervision/base/views/LiveStatusView;->getVisibility()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    .line 1369
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->landSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->clRootContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 1370
    invoke-static {p0}, Lcom/powervision/base/utils/ScreenUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    const/high16 v2, 0x430c0000    # 140.0f

    invoke-static {v2}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v2

    sub-int/2addr p1, v2

    .line 1371
    iget-object v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHPickerView:Lcom/powervision/base/views/HPickerView;

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {v2, p1}, Lcom/powervision/base/views/HPickerView;->setTranslationX(F)V

    .line 1376
    :goto_1
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mRockerView:Lcom/powervision/handheld/ui/views/RockerView;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2}, Lcom/powervision/handheld/ui/views/RockerView;->moveRocker(FF)V

    .line 1377
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->switchCameraMenuStatus()V

    .line 1378
    iput-boolean v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFullScreen:Z

    .line 1379
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->onSurfaceSizeAutoChange()V

    .line 1380
    iget-boolean p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isReverse:Z

    if-eqz p1, :cond_5

    .line 1381
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 1382
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1383
    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->surfaceMirrorReverse(Landroid/util/SparseBooleanArray;)V

    .line 1385
    :cond_5
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandler:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;

    const/16 v0, 0x14

    invoke-virtual {p1, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onConnect(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 3640
    invoke-static {}, Lcom/powervision/base/thread/ThreadPoolManager;->getInstance()Lcom/powervision/base/thread/ThreadPoolManager;

    move-result-object p1

    new-instance v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$34;

    invoke-direct {v0, p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$34;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V

    invoke-virtual {p1, v0}, Lcom/powervision/base/thread/ThreadPoolManager;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 2247
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-virtual {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->removeListener()V

    .line 2248
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onDestroy()V

    const-string v0, "onDestroy.."

    .line 2249
    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 2250
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/base/rxbus/RxBus;->unRegister(Ljava/lang/Object;)V

    .line 2251
    invoke-static {}, Lcom/appunite/player/PVCamPlayerHelperExt;->getHelper()Lcom/appunite/player/PVCamPlayerHelperExt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/appunite/player/PVCamPlayerHelperExt;->setOnSurfaceSizeChangeListener(Lcom/appunite/player/PVCamPlayerHelperExt$OnSurfaceSizeChangeListener;)V

    .line 2252
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->removeListener()V

    .line 2253
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->progressBar:Lcom/powervision/base/views/LoadingProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2254
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->progressBar:Lcom/powervision/base/views/LoadingProgressBar;

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->dismiss()V

    .line 2256
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->cameraStopRecording()V

    .line 2258
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPhoneReceiver:Lcom/powervision/base/recevier/PhoneReceiver;

    if-eqz v0, :cond_1

    .line 2259
    invoke-virtual {v0, v1}, Lcom/powervision/base/recevier/PhoneReceiver;->setOnPhoneStateListener(Lcom/powervision/base/listener/PhoneCallListener;)V

    .line 2260
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPhoneReceiver:Lcom/powervision/base/recevier/PhoneReceiver;

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2261
    iput-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPhoneReceiver:Lcom/powervision/base/recevier/PhoneReceiver;

    .line 2263
    :cond_1
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->disposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2264
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->disposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 2266
    :cond_2
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandler:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;

    if-eqz v0, :cond_3

    .line 2267
    invoke-virtual {v0, v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2270
    :cond_3
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/handheld/utils/BluetoothUtil;->getInstance(Landroid/content/Context;)Lcom/powervision/handheld/utils/BluetoothUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/handheld/utils/BluetoothUtil;->closeSco()V

    const-string v0, "audio"

    .line 2272
    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    .line 2273
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 2274
    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    return-void
.end method

.method public onDeviceConnectStatus()V
    .locals 3

    .line 1299
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mSignalStatus:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/handheld/R$mipmap;->handheld_new_signal_icon4:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1300
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mDisConenctText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1301
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraConnect()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1302
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 1303
    iget-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isVertical:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFullScreen:Z

    if-nez v0, :cond_3

    .line 1304
    :cond_0
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mBatteryImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1305
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mBatteryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1308
    :cond_1
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mBatteryImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1309
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mBatteryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1312
    :cond_2
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mBatteryImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1313
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mBatteryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1316
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->startRecordAudio()V

    return-void
.end method

.method public onDeviceConnectionChange(Z)V
    .locals 1

    .line 4719
    new-instance v0, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$KULZghpbeswXtl9v7hlGl4xRqHg;

    invoke-direct {v0, p0, p1}, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$KULZghpbeswXtl9v7hlGl4xRqHg;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDeviceDisConnecetStatus()V
    .locals 2

    .line 1320
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mSignalStatus:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/handheld/R$mipmap;->handheld_new_signal_disconnect_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1321
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mDisConenctText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1322
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mBatteryImg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1323
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mBatteryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1324
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->flickerAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 1325
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 1327
    :cond_0
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->stopRecordAudio()V

    const-string v0, "nemo_record_info"

    const-string v1, "\u65ad\u5f00\u4e86\u8bbe\u5907\u7684\u8fde\u63a5\uff0c\u8d70\u505c\u6b62\u6536\u58f0\uff0c\u80fd\u4e0d\u80fd\u8d70\u8fdb\u53bb\uff0c\u8981\u770b\u662f\u5426\u65ad\u5f00\u524d\u5f00\u542f\u4e86\u5f55\u50cf\u6536\u58f0"

    .line 1328
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogConnectStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDisConnect(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 3697
    invoke-static {}, Lcom/powervision/base/thread/ThreadPoolManager;->getInstance()Lcom/powervision/base/thread/ThreadPoolManager;

    move-result-object p1

    new-instance v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$35;

    invoke-direct {v0, p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$35;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V

    invoke-virtual {p1, v0}, Lcom/powervision/base/thread/ThreadPoolManager;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDoubleCenter()V
    .locals 1

    .line 3460
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-virtual {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->setGimbalHoming()V

    return-void
.end method

.method public onGestureBuriedPoint(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "AP03_C_G_Follow"

    const-string v0, ""

    .line 4886
    invoke-static {p1, v0, v0, v0}, Lcom/powervision/base/utils/UmengUtils;->getLogBpHookMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 4885
    invoke-static {p0, p1, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 4888
    iput-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mIsTakePhotoState:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onGestureFull(Z)V
    .locals 2

    .line 4518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " .....onGestureFull ...isSdFull="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tag_sdfull"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4519
    new-instance v0, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$FTT7ftsRccBiMGDGsUi8srMOJwM;

    invoke-direct {v0, p0, p1}, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$FTT7ftsRccBiMGDGsUi8srMOJwM;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onGestureStartFollow()V
    .locals 2

    .line 5066
    iget-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFirstBasicGuide:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandheldBasicGuideView:Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->executedHandheldGuide:Z

    if-eqz v0, :cond_0

    .line 5068
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandler:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onGestureStopFollow()V
    .locals 2

    .line 5076
    iget-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFirstBasicGuide:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandheldBasicGuideView:Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->executedHandheldGuide:Z

    if-eqz v0, :cond_0

    .line 5078
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandler:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onGetGestureFirstTimeState(Ljava/lang/String;)V
    .locals 2

    .line 5091
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->TAG:Ljava/lang/String;

    const-string v1, "onGestureTakePicture: 2222"

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5092
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "...onGetGestureFirstTimeState..... reslut ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "new_camera"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5093
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 5094
    iput-boolean p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFirstBasicGuide:Z

    .line 5095
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandler:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;

    const/16 v0, 0x25

    invoke-virtual {p1, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onIDLE()V
    .locals 2

    const-string v0, "nemo_record_info"

    const-string v1, "\u8d70\u5e7f\u64ad\u4e86\uff0c\u7535\u8bdd\u6302\u65ad\u4e86"

    .line 3614
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogConnectStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInternalStorageFull()V
    .locals 1

    .line 2528
    new-instance v0, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$pRqwjVz6OLu2_z4J5AVDa7wCB90;

    invoke-direct {v0, p0}, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$pRqwjVz6OLu2_z4J5AVDa7wCB90;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    .line 4690
    invoke-super {p0, p1}, Lcom/powervision/base/base/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "gestureStopRecord...11"

    .line 4691
    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 4692
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 4693
    iput-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFunctional:Z

    .line 4694
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getAllParameters()V

    :cond_0
    const/4 v0, 0x0

    const-string v2, "intent_extra"

    .line 4696
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4698
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result p1

    if-ne p1, v1, :cond_1

    return-void

    .line 4702
    :cond_1
    invoke-static {}, Lcom/powervision/camera/utils/RxCountDown;->getInstance()Lcom/powervision/camera/utils/RxCountDown;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/powervision/camera/utils/RxCountDown;->countCaptureDown(I)V

    :cond_2
    return-void
.end method

.method public onOffHook()V
    .locals 2

    const-string v0, "nemo_record_info"

    const-string v1, "\u8d70\u5e7f\u64ad\uff0c\u63a5\u7535\u8bdd\u4e86"

    .line 3605
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogConnectStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3606
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->stopRecordAudio()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 2279
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onPause()V

    .line 2280
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->blueToothConnectReceiver:Lcom/powervision/base/recevier/BlueToothConnectReceiver;

    if-eqz v0, :cond_0

    .line 2281
    iget-boolean v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mReceiverTag:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 2282
    invoke-virtual {v0, v1}, Lcom/powervision/base/recevier/BlueToothConnectReceiver;->setOnBleConnectListener(Lcom/powervision/base/listener/OnBleConnectListener;)V

    const/4 v0, 0x0

    .line 2283
    iput-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mReceiverTag:Z

    .line 2284
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->blueToothConnectReceiver:Lcom/powervision/base/recevier/BlueToothConnectReceiver;

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onPhotograph(Ljava/lang/String;)V
    .locals 2

    .line 2354
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    sget v1, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_RECORDING:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2355
    iput-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFunctional:Z

    .line 2357
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2358
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandler:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2360
    :cond_1
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandler:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 2214
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onResume()V

    .line 2216
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-virtual {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->setFollowMode()V

    .line 2217
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-virtual {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->setGimbalParamter()V

    .line 2218
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHPickerView:Lcom/powervision/base/views/HPickerView;

    invoke-virtual {v0}, Lcom/powervision/base/views/HPickerView;->getRotation()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 2219
    invoke-static {p0}, Lcom/powervision/base/utils/ScreenUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/high16 v1, 0x430c0000    # 140.0f

    invoke-static {v1}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v1

    sub-int/2addr v0, v1

    .line 2220
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHPickerView:Lcom/powervision/base/views/HPickerView;

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/powervision/base/views/HPickerView;->setTranslationX(F)V

    .line 2222
    :cond_0
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    .line 2223
    sget v1, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_PHOTO:I

    if-ne v0, v1, :cond_1

    .line 2224
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getPhotoGraphType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    return-void

    .line 2229
    :cond_1
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->registerBlueToothReceiver()V

    .line 2231
    sget-boolean v0, Lcom/powervision/base/utils/CacheUtil;->IS_MEDIA_DELETE_SUCCESS:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 2232
    sput-boolean v0, Lcom/powervision/base/utils/CacheUtil;->IS_MEDIA_DELETE_SUCCESS:Z

    .line 2233
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getAllParameters()V

    :cond_2
    const-string v0, "audio"

    .line 2236
    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x1

    .line 2237
    invoke-virtual {v0, p0, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    return-void
.end method

.method public onRinging()V
    .locals 2

    const-string v0, "nemo_record_info"

    const-string v1, "\u8d70\u5e7f\u64ad\uff0c\u7535\u8bdd\u54cd\u94c3\u4e86"

    .line 3596
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogConnectStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3597
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->stopRecordAudio()V

    return-void
.end method

.method public onSDFull()V
    .locals 1

    .line 2523
    new-instance v0, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$JoWWmXadnMNzUUMld-t2ArzI4Wo;

    invoke-direct {v0, p0}, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$JoWWmXadnMNzUUMld-t2ArzI4Wo;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSDStorageSlowNotify()V
    .locals 1

    .line 4987
    new-instance v0, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$8wu3u6L3YG2pvO7lIdrP3dkCe6s;

    invoke-direct {v0, p0}, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$8wu3u6L3YG2pvO7lIdrP3dkCe6s;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSetGestureFirstTimeState(Ljava/lang/String;)V
    .locals 2

    .line 5101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "...onSetGestureFirstTimeState.set... reslut ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "new_camera"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSetGestureOnlyDiscerningResult(Ljava/lang/String;)V
    .locals 2

    .line 5106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "...onSetGestureOnlyDiscerningResult..get ... reslut ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "new_camera"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 2242
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onStart()V

    return-void
.end method

.method public onStartRecordVideo(Ljava/lang/String;)V
    .locals 1

    const-string v0, "0"

    .line 2367
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2368
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandler:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;->sendEmptyMessage(I)Z

    .line 2369
    new-instance p1, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$QOf91BCwdakQga1oxs02Bd_n_Ww;

    invoke-direct {p1, p0}, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$QOf91BCwdakQga1oxs02Bd_n_Ww;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2371
    :cond_0
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandler:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method public onStopRecordVideo(Ljava/lang/String;)V
    .locals 1

    const-string v0, "0"

    .line 2378
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2379
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandler:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2381
    :cond_0
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandler:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method public onSurfaceSizeChange(ZIIII)V
    .locals 3

    .line 4771
    iput-boolean p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->MODE_SCREEN_4_3:Z

    .line 4772
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandler:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;

    const/16 v1, 0x1d

    invoke-virtual {v0, v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;->sendEmptyMessage(I)Z

    .line 4774
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=============onSurfaceSizeChange MODE_SCREEN_4_3 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "  width = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  height = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  videoWidth = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "   videoHeight = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4775
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/powervision/camera/camera/CameraManager;->setVideoSurfaceWidth(I)V

    .line 4776
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/powervision/camera/camera/CameraManager;->setVideoSurfaceHeight(I)V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 6

    .line 3755
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->TAG:Ljava/lang/String;

    const-string v1, "onSurfaceTextureAvailable: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3757
    iget-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLiveStreamEnabled:Z

    if-eqz v0, :cond_0

    .line 3758
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceTextureAvailable: width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "  height = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3759
    invoke-static {}, Lcom/powervision/livestreaming/LiveStreaming;->getInstance()Lcom/powervision/livestreaming/LiveStreaming;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/powervision/livestreaming/LiveStreaming;->setLiveStreamEnabled(Z)V

    .line 3760
    invoke-static {}, Lcom/powervision/livestreaming/LiveStreaming;->getInstance()Lcom/powervision/livestreaming/LiveStreaming;

    move-result-object p2

    invoke-virtual {p2}, Lcom/powervision/livestreaming/LiveStreaming;->prepare()Z

    .line 3761
    invoke-static {}, Lcom/powervision/livestreaming/LiveStreaming;->getInstance()Lcom/powervision/livestreaming/LiveStreaming;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/powervision/livestreaming/LiveStreaming;->startPlay(Landroid/graphics/SurfaceTexture;)Z

    .line 3763
    invoke-static {}, Lcom/powervision/livestreaming/LiveStreaming;->getInstance()Lcom/powervision/livestreaming/LiveStreaming;

    move-result-object p2

    invoke-virtual {p2}, Lcom/powervision/livestreaming/LiveStreaming;->getPlayerSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    const-string p2, "live streaming get player surfaceTexture is null!!!"

    .line 3766
    invoke-static {p2}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;)V

    move-object v2, p1

    goto :goto_1

    :cond_1
    move-object v2, p2

    .line 3769
    :goto_1
    invoke-static {}, Lcom/appunite/player/PVCamPlayerHelperExt;->getHelper()Lcom/appunite/player/PVCamPlayerHelperExt;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mSurfaceView:Landroid/view/TextureView;

    const/4 v3, 0x2

    iget v4, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mScreenHeight:I

    iget v5, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mScreenWidth:I

    invoke-virtual/range {v0 .. v5}, Lcom/appunite/player/PVCamPlayerHelperExt;->initCamPlayer(Landroid/view/TextureView;Landroid/graphics/SurfaceTexture;III)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .line 3782
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->TAG:Ljava/lang/String;

    const-string v0, "onSurfaceTextureDestroyed: "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3783
    invoke-static {}, Lcom/appunite/player/PVCamPlayerHelperExt;->getHelper()Lcom/appunite/player/PVCamPlayerHelperExt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appunite/player/PVCamPlayerHelperExt;->prepareToDes()V

    .line 3785
    iget-boolean p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLiveStreamEnabled:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/powervision/livestreaming/LiveStreaming;->getInstance()Lcom/powervision/livestreaming/LiveStreaming;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/livestreaming/LiveStreaming;->getLiveStreamEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3786
    invoke-static {}, Lcom/powervision/handheld/utils/AudioRecordManager;->getInstance()Lcom/powervision/handheld/utils/AudioRecordManager;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/powervision/handheld/utils/AudioRecordManager;->stopRecordFrom(I)V

    .line 3787
    invoke-static {}, Lcom/powervision/livestreaming/LiveStreaming;->getInstance()Lcom/powervision/livestreaming/LiveStreaming;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/powervision/livestreaming/LiveStreaming;->stopPlay(Z)Z

    .line 3788
    invoke-static {}, Lcom/powervision/livestreaming/LiveStreaming;->getInstance()Lcom/powervision/livestreaming/LiveStreaming;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/livestreaming/LiveStreaming;->destory()Z

    .line 3789
    invoke-static {}, Lcom/powervision/livestreaming/LiveStreaming;->getInstance()Lcom/powervision/livestreaming/LiveStreaming;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/powervision/livestreaming/LiveStreaming;->setLiveStreamEnabled(Z)V

    :cond_0
    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 3774
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceTextureSizeChanged: width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "   height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3775
    iget-boolean p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLiveStreamEnabled:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/powervision/livestreaming/LiveStreaming;->getInstance()Lcom/powervision/livestreaming/LiveStreaming;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/livestreaming/LiveStreaming;->getLiveStreamEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3776
    invoke-static {}, Lcom/powervision/livestreaming/LiveStreaming;->getInstance()Lcom/powervision/livestreaming/LiveStreaming;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/powervision/livestreaming/LiveStreaming;->updatePlayerTextureView(II)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onSwitchPhotoMode()V
    .locals 1

    .line 4867
    new-instance v0, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$BRP1VBoGQ6bocsziBRJloXMOUDw;

    invoke-direct {v0, p0}, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$BRP1VBoGQ6bocsziBRJloXMOUDw;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSwitchPhotographMode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "0"

    .line 2343
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2344
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandler:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2346
    :cond_0
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandler:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;

    const/16 v0, 0x16

    invoke-virtual {p1, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method public onSwitchRecordMode()V
    .locals 1

    .line 4874
    new-instance v0, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$JtLs2c8f3XECiGEOzG7g3DIaRqs;

    invoke-direct {v0, p0}, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$JtLs2c8f3XECiGEOzG7g3DIaRqs;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSwitchRecordMode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "0"

    .line 2329
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2330
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandler:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2332
    :cond_0
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandler:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;

    const/16 v0, 0x16

    invoke-virtual {p1, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method public onTouchView(FFFF)V
    .locals 1

    .line 3380
    iget-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isVertical:Z

    if-eqz v0, :cond_0

    .line 3381
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getLocalVSurfaceWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 3382
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getLocalVSurfaceHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    .line 3383
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getLocalVSurfaceWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p3, v0

    .line 3384
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getLocalVSurfaceHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p4, v0

    .line 3385
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->setTrackData(FFFF)V

    goto :goto_0

    .line 3387
    :cond_0
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getLocalSurfaceWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 3388
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getLocalSurfaceHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    .line 3389
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getLocalSurfaceWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p3, v0

    .line 3390
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getLocalSurfaceHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p4, v0

    .line 3391
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->setTrackData(FFFF)V

    :goto_0
    return-void
.end method

.method public onUpdateRecordingTime(I)V
    .locals 1

    .line 2768
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mNewCameraParamView:Lcom/powervision/handheld/ui/views/NewCameraParamView;

    if-eqz v0, :cond_0

    .line 2769
    new-instance v0, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$Y03vhJyNwUwN3rwM9hNqCZ0chbI;

    invoke-direct {v0, p0, p1}, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$Y03vhJyNwUwN3rwM9hNqCZ0chbI;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;I)V

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onVolumeChange(D)V
    .locals 2

    .line 3585
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandler:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;

    invoke-virtual {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x19

    .line 3586
    iput v1, v0, Landroid/os/Message;->what:I

    .line 3587
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3588
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandler:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;

    invoke-virtual {p1, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public openGuideCameraSettingView(Z)V
    .locals 7

    if-eqz p1, :cond_3

    .line 5042
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mRootViewGroup:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 5043
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const v1, 0x1020002

    .line 5044
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mRootViewGroup:Landroid/view/ViewGroup;

    .line 5046
    :cond_0
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraNewSettingView;

    if-nez p1, :cond_5

    .line 5047
    new-instance p1, Lcom/powervision/camera/views/CameraNewSettingView;

    .line 5048
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v1

    sget v2, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_PHOTO:I

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    iget-boolean v5, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isVertical:Z

    const/4 v6, 0x1

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/powervision/camera/views/CameraNewSettingView;-><init>(Landroid/content/Context;ZIZZ)V

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraNewSettingView;

    .line 5050
    iget v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mViewPaddingStart:I

    invoke-virtual {p1, v0}, Lcom/powervision/camera/views/CameraNewSettingView;->setViewPaddingStart(I)V

    .line 5051
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mRootViewGroup:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraNewSettingView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 5052
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraNewSettingView;

    iget-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isVertical:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/powervision/handheld/R$anim;->anim_bottom_in:I

    goto :goto_1

    :cond_2
    sget v0, Lcom/powervision/handheld/R$anim;->anim_left_in:I

    :goto_1
    invoke-static {p1, v0}, Lcom/powervision/base/utils/AnimUtils;->startAnimation(Landroid/view/View;I)V

    goto :goto_3

    .line 5055
    :cond_3
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraNewSettingView;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mRootViewGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    .line 5056
    iget-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isVertical:Z

    if-eqz v0, :cond_4

    sget v0, Lcom/powervision/handheld/R$anim;->anim_bottom_out:I

    goto :goto_2

    :cond_4
    sget v0, Lcom/powervision/handheld/R$anim;->anim_left_out:I

    :goto_2
    invoke-static {p1, v0}, Lcom/powervision/base/utils/AnimUtils;->startAnimation(Landroid/view/View;I)V

    .line 5058
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mRootViewGroup:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraNewSettingView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 5059
    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraNewSettingView;

    :cond_5
    :goto_3
    return-void
.end method

.method public removeFlightSettingView()V
    .locals 1
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xa1
    .end annotation

    const/4 v0, 0x0

    .line 1252
    invoke-direct {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->addAndRemoveHandheldSettingView(I)V

    return-void
.end method

.method public setAEBMultipleShotsFail()V
    .locals 1

    const/4 v0, 0x0

    .line 2636
    iput-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFunctional:Z

    .line 2638
    new-instance v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$19;

    invoke-direct {v0, p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$19;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAEBMultipleShotsSuccess(Ljava/lang/String;II)V
    .locals 0

    if-lez p2, :cond_0

    .line 2576
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandler:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;->sendEmptyMessage(I)Z

    :cond_0
    const/4 p1, 0x1

    .line 2578
    iput-boolean p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFunctional:Z

    .line 2580
    new-instance p1, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$18;

    invoke-direct {p1, p0, p2}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$18;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;I)V

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setCaptureDelayMode()V
    .locals 4

    const-string v0, "shutter  = ----->"

    .line 2398
    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 2399
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    iget v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->shutter:I

    iget v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->result:I

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v1, v2}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->setCaptureMode(III)V

    .line 2400
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandler:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setDelayCaptureDataSuccess()V
    .locals 0

    return-void
.end method

.method public setDelayCaptureSuccess()V
    .locals 2

    const-string v0, "Delayes"

    const-string v1, " setDelayCaptureSuccess ------------------ > "

    .line 3105
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3106
    new-instance v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$26;

    invoke-direct {v0, p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$26;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setDelayTime()V
    .locals 9

    .line 1632
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x4

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x1

    invoke-static/range {v0 .. v8}, Lio/reactivex/Flowable;->intervalRange(JJJJLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;

    move-result-object v0

    sget-object v1, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$jgzyV_8mX-rImUuYDr3NN8oeNuY;->INSTANCE:Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$jgzyV_8mX-rImUuYDr3NN8oeNuY;

    .line 1634
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 1635
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 1636
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$10;

    invoke-direct {v1, p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$10;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V

    .line 1637
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->doOnComplete(Lio/reactivex/functions/Action;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 1644
    invoke-virtual {v0}, Lio/reactivex/Flowable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->disposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public setEnableAudio(Ljava/lang/String;)V
    .locals 1

    .line 3465
    new-instance v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$33;

    invoke-direct {v0, p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$33;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setHDRMultipleShotsFail()V
    .locals 1

    const/4 v0, 0x0

    .line 2701
    iput-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFunctional:Z

    .line 2702
    new-instance v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$21;

    invoke-direct {v0, p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$21;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setHDRMultipleShotsStart()V
    .locals 0

    return-void
.end method

.method public setHDRMultipleShotsSuccess()V
    .locals 2

    const/4 v0, 0x0

    .line 2672
    iput-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFunctional:Z

    .line 2673
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandler:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;->sendEmptyMessage(I)Z

    .line 2674
    new-instance v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$20;

    invoke-direct {v0, p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$20;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setListener()V
    .locals 3

    .line 584
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->setListener()V

    .line 586
    invoke-static {}, Lcom/appunite/player/PVCamPlayerHelperExt;->getHelper()Lcom/appunite/player/PVCamPlayerHelperExt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appunite/player/PVCamPlayerHelperExt;->setOnSurfaceSizeChangeListener(Lcom/appunite/player/PVCamPlayerHelperExt$OnSurfaceSizeChangeListener;)V

    .line 587
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraGetCameraAllParametersListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetCameraAllParametersListener;)V

    .line 589
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraNotifyGetRestRecordTimeListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetRestRecordTimeListener;)V

    .line 591
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraNotifyGetRestPhotoNumberListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetRestPhotoNumberListener;)V

    .line 592
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraNotifyEnableAudioListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyEnableAudioListener;)V

    .line 593
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraConnect()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 594
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->initCameraSdk(Z)V

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mSurfaceView:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 597
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTouchRectangleView:Lcom/powervision/handheld/ui/views/TouchRectangleView;

    invoke-virtual {v0, p0}, Lcom/powervision/handheld/ui/views/TouchRectangleView;->setTouchGuideListener(Lcom/powervision/handheld/ui/views/TouchRectangleView$TouchGuideListener;)V

    .line 600
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mRockerView:Lcom/powervision/handheld/ui/views/RockerView;

    invoke-virtual {v0, p0}, Lcom/powervision/handheld/ui/views/RockerView;->setOnDirectionAndDistanceListener(Lcom/powervision/handheld/ui/views/RockerView$OnDirectionAndDistanceListener;)V

    .line 601
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTakeCameraImg:Lcom/powervision/base/views/AnimateImageView;

    invoke-virtual {v0, p0}, Lcom/powervision/base/views/AnimateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 602
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mMediaImg:Lcom/powervision/base/views/AnimateImageView;

    invoke-virtual {v0, p0}, Lcom/powervision/base/views/AnimateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 603
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHomeBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 604
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraSetImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 605
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGeneralImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 606
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mGimbalModeImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 607
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAircraftGimBalView:Lcom/powervision/base/views/AircraftGimBalView;

    invoke-virtual {v0, p0}, Lcom/powervision/base/views/AircraftGimBalView;->setGimbalSetListener(Lcom/powervision/base/views/AircraftGimBalView$GimbalSetAgent;)V

    .line 608
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAudioImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 609
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mImageFps:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 610
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLayoutSlowMotion:Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;

    new-instance v1, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$2;

    invoke-direct {v1, p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$2;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V

    invoke-virtual {v0, v1}, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->setCallBack(Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout$SlowMotionSelectCallBack;)V

    .line 622
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraConnect()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 623
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getAllParameters()V

    .line 626
    :cond_1
    invoke-static {}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->getAp03ConnectionInstance()Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->addConnectionChangeListener(Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$Ap03DeviceConnectionChangeListener;)V

    .line 628
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->addAp03NotifyOnQueryActivationStatusListener(Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnQueryActivationStatusListener;)V

    .line 629
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->audioRecordManager:Lcom/powervision/handheld/utils/AudioRecordManager;

    invoke-virtual {v0, p0}, Lcom/powervision/handheld/utils/AudioRecordManager;->setVolumeListener(Lcom/powervision/handheld/utils/AudioRecordManager$VolumeListener;)V

    .line 630
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLiveStatusView:Lcom/powervision/base/views/LiveStatusView;

    new-instance v1, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$3;

    invoke-direct {v1, p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$3;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/LiveStatusView;->setCallback(Lcom/powervision/base/views/LiveStatusView$LiveViewCallback;)V

    .line 637
    invoke-static {}, Lcom/powervision/base/databus/LiveDataBusX;->getInstance()Lcom/powervision/base/databus/LiveDataBusX;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    const-string v2, "ota_force_update"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/databus/LiveDataBusX;->with(Ljava/lang/String;Ljava/lang/Class;)Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$4;

    invoke-direct {v1, p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$4;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public setMultipleShotsSuccess(Ljava/lang/String;II)V
    .locals 0

    if-lez p2, :cond_0

    .line 2432
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandler:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;->sendEmptyMessage(I)Z

    .line 2434
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/powervision/camera/camera/CameraManager;->getMultipleShotsNum()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    .line 2435
    iput-boolean p3, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFunctional:Z

    .line 2437
    new-instance p3, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$16;

    invoke-direct {p3, p0, p2, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$16;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;ILjava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setQueryActivationResultDisable()V
    .locals 1

    .line 3569
    invoke-static {}, Lcom/powervision/base/router/RouterUtil$Home;->getActivationActivity()Landroid/app/Activity;

    const/4 v0, 0x1

    .line 3570
    sput-boolean v0, Lcom/powervision/base/constant/Constant;->ACTIVATION_FLAG:Z

    return-void
.end method

.method public setQueryActivationResultEnable()V
    .locals 0

    return-void
.end method

.method public setQueryActivationResultTimeout()V
    .locals 0

    return-void
.end method

.method public setRecordingTime(Ljava/lang/String;)V
    .locals 2

    .line 2406
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "="

    .line 2409
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2410
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 2411
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "s"

    .line 2415
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 2416
    :cond_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2417
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/os/Message;->arg1:I

    const/4 p1, 0x3

    .line 2418
    iput p1, v0, Landroid/os/Message;->what:I

    .line 2419
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandler:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;

    invoke-virtual {p1, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method

.method public setRollValue(I)V
    .locals 1

    .line 2849
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-virtual {v0, p1}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->setRollValue(I)V

    return-void
.end method

.method public setSlowMotionModeFail()V
    .locals 1

    .line 2763
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getAllParameters()V

    return-void
.end method

.method public setSlowMotionModeSuccess(I)V
    .locals 1

    .line 2737
    new-instance v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$22;

    invoke-direct {v0, p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$22;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;I)V

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setYawValue(I)V
    .locals 1

    .line 2859
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-virtual {v0, p1}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->setYawValue(I)V

    return-void
.end method

.method public showCaptureMode()V
    .locals 8
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xe9
        threadMode = .enum Lcom/powervision/base/rxbus/ThreadMode;->MAIN:Lcom/powervision/base/rxbus/ThreadMode;
    .end annotation

    .line 1205
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    const/16 v1, 0x8

    const-string v2, ""

    if-eqz v0, :cond_0

    .line 1206
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextMode:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1207
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextMode:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1210
    :cond_0
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getPhotoGraphType()I

    move-result v0

    const-string v3, "photo_type"

    if-nez v0, :cond_1

    .line 1213
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const-string v4, "0-0"

    invoke-virtual {v0, v3, v4}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_1
    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    .line 1215
    sget v0, Lcom/powervision/handheld/R$string;->AP03_CameraSetting_8:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1216
    iget-object v4, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const-string v5, "1-0"

    invoke-virtual {v4, v3, v5}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    const/4 v4, 0x2

    const-string v5, ")"

    const-string v6, "("

    if-ne v0, v4, :cond_3

    .line 1218
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getMultipleShotsNum()I

    move-result v0

    .line 1219
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v7, Lcom/powervision/handheld/R$string;->AP03_CameraSetting_9:I

    invoke-virtual {p0, v7}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1220
    iget-object v5, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "2-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    move-object v0, v4

    goto :goto_2

    :cond_3
    const/4 v4, 0x3

    if-ne v0, v4, :cond_4

    .line 1222
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getAebValue()I

    move-result v0

    .line 1223
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v7, Lcom/powervision/handheld/R$string;->AP03_CameraSetting_10:I

    invoke-virtual {p0, v7}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1224
    iget-object v5, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "3-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    :goto_1
    move-object v0, v2

    .line 1230
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1231
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextMode:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1232
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextMode:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1234
    :cond_5
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextMode:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1235
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextMode:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method

.method public showGimbalFineTuning()V
    .locals 2
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xc
    .end annotation

    .line 1261
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->removeFlightSettingView()V

    .line 1262
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAircraftGimBalView:Lcom/powervision/base/views/AircraftGimBalView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/AircraftGimBalView;->setVisibility(I)V

    .line 1263
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-virtual {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->getGimbalValue()V

    return-void
.end method

.method public showHideLines(Landroid/util/SparseIntArray;)V
    .locals 3
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xa7
    .end annotation

    if-eqz p1, :cond_0

    .line 1407
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 1408
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p1

    .line 1409
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCustomLinesView:Lcom/powervision/base/views/CustomLinesView;

    invoke-virtual {v0, p1}, Lcom/powervision/base/views/CustomLinesView;->setLineMode(I)V

    .line 1410
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "HANDHELD_GRID_LINE_TAG"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1411
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/camera/camera/CameraManager;->setLinesMode(I)V

    .line 1412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " showHideLines .... mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "initLines"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public showHistogramData([II)V
    .locals 0

    .line 2880
    new-instance p2, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$PenonKMLgu3pF-CKdY-vBff4LNc;

    invoke-direct {p2, p0, p1}, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$PenonKMLgu3pF-CKdY-vBff4LNc;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;[I)V

    invoke-virtual {p0, p2}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showHistogramView(I)V
    .locals 1

    .line 2864
    new-instance v0, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$sgZ6vaH0lr-R20DBdbisxVncIUY;

    invoke-direct {v0, p0, p1}, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$sgZ6vaH0lr-R20DBdbisxVncIUY;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;I)V

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showLiveStreamDialog(Landroid/util/SparseIntArray;)V
    .locals 2
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xf45
        threadMode = .enum Lcom/powervision/base/rxbus/ThreadMode;->MAIN:Lcom/powervision/base/rxbus/ThreadMode;
    .end annotation

    .line 4569
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->removeFlightSettingView()V

    .line 4570
    new-instance v0, Lcom/powervision/base/dialog/LiveStreamDialog;

    invoke-direct {v0}, Lcom/powervision/base/dialog/LiveStreamDialog;-><init>()V

    iput-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->liveStreamDialog:Lcom/powervision/base/dialog/LiveStreamDialog;

    const/4 v0, 0x0

    .line 4571
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 4572
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->liveStreamDialog:Lcom/powervision/base/dialog/LiveStreamDialog;

    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "push_streaming"

    invoke-virtual {p1, v0, v1}, Lcom/powervision/base/dialog/LiveStreamDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 4573
    :cond_0
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 4574
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->liveStreamDialog:Lcom/powervision/base/dialog/LiveStreamDialog;

    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "start_push_stream"

    invoke-virtual {p1, v0, v1}, Lcom/powervision/base/dialog/LiveStreamDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 4576
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->liveStreamDialog:Lcom/powervision/base/dialog/LiveStreamDialog;

    new-instance v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$39;

    invoke-direct {v0, p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$39;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V

    invoke-virtual {p1, v0}, Lcom/powervision/base/dialog/LiveStreamDialog;->setStreamCallback(Lcom/powervision/base/dialog/LiveStreamDialog$LiveStreamCallback;)V

    .line 4606
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->liveStreamDialog:Lcom/powervision/base/dialog/LiveStreamDialog;

    new-instance v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$40;

    invoke-direct {v0, p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$40;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V

    invoke-virtual {p1, v0}, Lcom/powervision/base/dialog/LiveStreamDialog;->setAudioCallback(Lcom/powervision/base/dialog/LiveStreamDialog$AudioStatusCallback;)V

    return-void
.end method

.method public showTimer(Landroid/util/SparseArray;)V
    .locals 4
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

    .line 1283
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sparseArray.get(0) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 1284
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1285
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTextRestTime:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/powervision/base/utils/TimeUtils;->formatRecordVideoTime(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1287
    :cond_0
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_1

    .line 1289
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCountDownTime:Landroid/widget/TextView;

    const-string v0, "1"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1291
    :cond_1
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCountDownTime:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1292
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCountDownTime:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1293
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTakeCameraImg:Lcom/powervision/base/views/AnimateImageView;

    sget v0, Lcom/powervision/handheld/R$mipmap;->icon_capture_pause:I

    invoke-virtual {p1, v0}, Lcom/powervision/base/views/AnimateImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public startDelayCapture()V
    .locals 2

    const-string v0, "Delayes"

    const-string v1, " startDelayCapture ------------------ > "

    .line 3140
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u6536\u5230\u5f00\u59cb\u5ef6\u65f6\u6444\u5f71\u56de\u8c03"

    .line 3141
    invoke-static {v0}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    .line 3142
    new-instance v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$27;

    invoke-direct {v0, p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$27;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startSelf()V
    .locals 3
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xf25
        threadMode = .enum Lcom/powervision/base/rxbus/ThreadMode;->MAIN:Lcom/powervision/base/rxbus/ThreadMode;
    .end annotation

    .line 4541
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->disposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4542
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->progressBar:Lcom/powervision/base/views/LoadingProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4543
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->progressBar:Lcom/powervision/base/views/LoadingProgressBar;

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->dismiss()V

    .line 4545
    :cond_0
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->setGimbalStatus(I)V

    .line 4546
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->disposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 4548
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4549
    const-class v1, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 v1, 0x1

    const-string v2, "intent_extra"

    .line 4550
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4551
    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->startActivity(Landroid/content/Intent;)V

    .line 4552
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraAudioState()I

    move-result v0

    if-nez v0, :cond_2

    .line 4553
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mSoundUtil:Lcom/powervision/base/utils/SoundPoolUtils;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/powervision/base/utils/SoundPoolUtils;->playAudio(I)V

    :cond_2
    return-void
.end method

.method public startTimeCapture(I)V
    .locals 1

    .line 3049
    invoke-static {}, Lcom/powervision/camera/utils/RxCountDown;->getInstance()Lcom/powervision/camera/utils/RxCountDown;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/camera/utils/RxCountDown;->countdown(I)V

    .line 3050
    new-instance p1, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$24;

    invoke-direct {p1, p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$24;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopDelayCapture()V
    .locals 1

    .line 3251
    new-instance v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$30;

    invoke-direct {v0, p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$30;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopShake()V
    .locals 2

    .line 3448
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    if-eqz v0, :cond_0

    .line 3450
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->setGimbalPitchPalstance(II)V

    .line 3451
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-virtual {v0, v1, v1}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->setGimbalPitchPalstance(II)V

    .line 3452
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCustomLinesView:Lcom/powervision/base/views/CustomLinesView;

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/CustomLinesView;->setOnTouchRocker(Z)V

    .line 3453
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-virtual {v0, v1}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->setComposition(I)V

    .line 3454
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-virtual {v0, v1}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->setComposition(I)V

    :cond_0
    return-void
.end method

.method public stopTimeCapture()V
    .locals 1

    .line 3081
    invoke-static {}, Lcom/powervision/camera/utils/RxCountDown;->getInstance()Lcom/powervision/camera/utils/RxCountDown;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/utils/RxCountDown;->cancelCount()V

    .line 3082
    new-instance v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$25;

    invoke-direct {v0, p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$25;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public storageFull(I)V
    .locals 1

    .line 3263
    new-instance v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$31;

    invoke-direct {v0, p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$31;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;I)V

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public surfaceMirrorReverse(Landroid/util/SparseBooleanArray;)V
    .locals 1
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xf0
    .end annotation

    const/4 v0, 0x0

    .line 1268
    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isReverse:Z

    if-eqz p1, :cond_0

    .line 1270
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mSurfaceGroupLayout:Landroid/widget/RelativeLayout;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setScaleX(F)V

    goto :goto_0

    .line 1272
    :cond_0
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mSurfaceGroupLayout:Landroid/widget/RelativeLayout;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setScaleX(F)V

    :goto_0
    return-void
.end method

.method public timeCaptureFail()V
    .locals 2

    const/4 v0, 0x0

    .line 3075
    iput-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFunctional:Z

    .line 3076
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandler:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public timeCaptureSuccess()V
    .locals 2

    const/4 v0, 0x0

    .line 3069
    iput-boolean v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFunctional:Z

    .line 3070
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandler:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public updateCameraView()V
    .locals 4
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xe8
        threadMode = .enum Lcom/powervision/base/rxbus/ThreadMode;->MAIN:Lcom/powervision/base/rxbus/ThreadMode;
    .end annotation

    .line 1435
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mNewCameraParamView:Lcom/powervision/handheld/ui/views/NewCameraParamView;

    if-eqz v0, :cond_0

    .line 1436
    invoke-virtual {v0}, Lcom/powervision/handheld/ui/views/NewCameraParamView;->updateCameraView()V

    .line 1438
    :cond_0
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    if-nez v0, :cond_1

    .line 1439
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandler:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;

    const/16 v1, 0x18

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method public updateCurrentMode(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateDetectData(J[F[F[F[F[F[SI)V
    .locals 11

    move-object v0, p0

    .line 3360
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTouchRectangleView:Lcom/powervision/handheld/ui/views/TouchRectangleView;

    if-eqz v1, :cond_0

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p9

    move-wide v7, p1

    move-object/from16 v9, p8

    move-object/from16 v10, p7

    .line 3361
    invoke-virtual/range {v1 .. v10}, Lcom/powervision/handheld/ui/views/TouchRectangleView;->getVisionDetectInfo([F[F[F[FIJ[S[F)V

    :cond_0
    const-wide/16 v1, 0x1

    cmp-long v3, p1, v1

    if-nez v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 3364
    :goto_0
    iput-boolean v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mIsFollowing:Z

    if-nez v3, :cond_2

    .line 3365
    iget v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->setMode:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    .line 3366
    iget-object v1, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v1, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-virtual {v1, v2}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->setGimbaMode(I)V

    :cond_2
    return-void
.end method

.method public updateFileSize(II)V
    .locals 1

    .line 3224
    new-instance v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$29;

    invoke-direct {v0, p0, p1, p2}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$29;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;II)V

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateGimbalStatus(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 3280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=====status===="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "====name==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "======value==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NewHandheldPersenter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DOWNLOAD_SUCCESS"

    .line 3282
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "PV_GIM_DV_MODE"

    if-eqz v0, :cond_0

    .line 3283
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3284
    iput p3, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getMode:I

    .line 3285
    iput p3, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->setMode:I

    .line 3286
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandler:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;

    const/16 v0, 0x13

    invoke-virtual {p1, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    const-string v0, "UPLOAD_SUCCESS"

    .line 3288
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3289
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3290
    iput p3, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->setMode:I

    .line 3291
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandler:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;

    const/16 v0, 0x14

    invoke-virtual {p1, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;->sendEmptyMessage(I)Z

    .line 3294
    :cond_1
    :goto_0
    new-instance p1, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$32;

    invoke-direct {p1, p0, p2, p3}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$32;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;Ljava/lang/String;I)V

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateHandleBattery(F)V
    .locals 1

    .line 2838
    iput p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->batteryValue:F

    .line 2839
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHandler:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$NewHandheldHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public updatePhotoModeIcon(Landroid/util/SparseIntArray;)V
    .locals 3
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xa6
        threadMode = .enum Lcom/powervision/base/rxbus/ThreadMode;->MAIN:Lcom/powervision/base/rxbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 1419
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    .line 1420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "photo mode resId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    .line 1422
    iget-object v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAudioImg:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1423
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAudioImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1424
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mImageRecordMarker:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1425
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAudioImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    .line 1427
    :cond_0
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mAudioImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1428
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mImageRecordMarker:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updatePhotoNum(I)V
    .locals 1

    .line 3171
    new-instance v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$28;

    invoke-direct {v0, p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$28;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;I)V

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateStorageCameraView(Landroid/util/SparseArray;)V
    .locals 1
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xf3
        threadMode = .enum Lcom/powervision/base/rxbus/ThreadMode;->MAIN:Lcom/powervision/base/rxbus/ThreadMode;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 4502
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 4503
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 4504
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4505
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/powervision/handheld/R$string;->AP03_DV_GeneralSetting_11:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->showDefaultToast(Ljava/lang/String;)V

    .line 4506
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mNewCameraParamView:Lcom/powervision/handheld/ui/views/NewCameraParamView;

    if-eqz p1, :cond_0

    .line 4507
    invoke-virtual {p1}, Lcom/powervision/handheld/ui/views/NewCameraParamView;->updateCameraView()V

    .line 4509
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getRemainingCapacity()V

    goto :goto_0

    .line 4511
    :cond_1
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/powervision/handheld/R$string;->AP03_DV_GeneralSetting_12:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->showDefaultToast(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateTimeDown(Landroid/util/SparseArray;)V
    .locals 4
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xf27
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2936
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x1

    .line 2938
    iput-boolean v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isFunctional:Z

    .line 2939
    iget-object v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTakeCameraImg:Lcom/powervision/base/views/AnimateImageView;

    invoke-virtual {v2, v0}, Lcom/powervision/base/views/AnimateImageView;->setEnabled(Z)V

    .line 2940
    iget-object v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCountDownTime:Landroid/widget/TextView;

    if-nez p1, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2941
    iget-object v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCountDownTime:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2942
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "countTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 2944
    iget-object v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mSoundUtil:Lcom/powervision/base/utils/SoundPoolUtils;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/powervision/base/utils/SoundPoolUtils;->playAudio(I)V

    .line 2945
    iget-object v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mImageFps:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_2

    .line 2947
    :cond_2
    iget-object v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTakeCameraImg:Lcom/powervision/base/views/AnimateImageView;

    invoke-virtual {v2, v1}, Lcom/powervision/base/views/AnimateImageView;->setEnabled(Z)V

    .line 2949
    :goto_2
    invoke-direct {p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->removeCameraSettingView()V

    .line 2950
    iget-object v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->generalSettingView:Lcom/powervision/handheld/ui/views/HandleGeneralSetting;

    if-eqz v2, :cond_3

    .line 2951
    invoke-direct {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->addAndRemoveHandheldSettingView(I)V

    :cond_3
    if-eqz p1, :cond_4

    .line 2954
    invoke-direct {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->setFucVisible(Z)V

    .line 2956
    :cond_4
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mCameraSetImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2957
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mHPickerView:Lcom/powervision/base/views/HPickerView;

    invoke-virtual {p1, v1}, Lcom/powervision/base/views/HPickerView;->setIsAuto(Z)V

    .line 2958
    invoke-direct {p0, v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->timeDownEnable(Z)V

    return-void
.end method

.method public updateTrackStatus(FFFFFII)V
    .locals 5

    .line 3324
    iget-boolean p6, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->isVertical:Z

    const/4 p7, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p6, :cond_0

    .line 3325
    iget-object p6, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->followList:Ljava/util/List;

    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/powervision/camera/camera/CameraManager;->getLocalVSurfaceWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, p2

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {p6, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3326
    iget-object p6, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->followList:Ljava/util/List;

    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/powervision/camera/camera/CameraManager;->getLocalVSurfaceHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, p3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {p6, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3327
    iget-object p6, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->followList:Ljava/util/List;

    add-float/2addr p2, p4

    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p4

    invoke-virtual {p4}, Lcom/powervision/camera/camera/CameraManager;->getLocalVSurfaceWidth()I

    move-result p4

    int-to-float p4, p4

    mul-float p2, p2, p4

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p6, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3328
    iget-object p2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->followList:Ljava/util/List;

    add-float/2addr p3, p5

    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p4

    invoke-virtual {p4}, Lcom/powervision/camera/camera/CameraManager;->getLocalVSurfaceHeight()I

    move-result p4

    int-to-float p4, p4

    mul-float p3, p3, p4

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-interface {p2, v0, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3329
    iget-object p2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->followList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p2, p7, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 3331
    :cond_0
    iget-object p6, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->followList:Ljava/util/List;

    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/powervision/camera/camera/CameraManager;->getLocalSurfaceWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, p2

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {p6, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3332
    iget-object p6, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->followList:Ljava/util/List;

    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/powervision/camera/camera/CameraManager;->getLocalSurfaceHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, p3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {p6, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3333
    iget-object p6, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->followList:Ljava/util/List;

    add-float/2addr p2, p4

    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p4

    invoke-virtual {p4}, Lcom/powervision/camera/camera/CameraManager;->getLocalSurfaceWidth()I

    move-result p4

    int-to-float p4, p4

    mul-float p2, p2, p4

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p6, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3334
    iget-object p2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->followList:Ljava/util/List;

    add-float/2addr p3, p5

    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p4

    invoke-virtual {p4}, Lcom/powervision/camera/camera/CameraManager;->getLocalSurfaceHeight()I

    move-result p4

    int-to-float p4, p4

    mul-float p3, p3, p4

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-interface {p2, v0, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3335
    iget-object p2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->followList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p2, p7, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3338
    :goto_0
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mTouchRectangleView:Lcom/powervision/handheld/ui/views/TouchRectangleView;

    if-eqz p1, :cond_1

    .line 3339
    iget-object p2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->followList:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/powervision/handheld/ui/views/TouchRectangleView;->getVisionTrackInfo(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public updateWarnInfo(III)V
    .locals 0

    .line 2903
    new-instance p1, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$23;

    invoke-direct {p1, p0, p3}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$23;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;I)V

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
