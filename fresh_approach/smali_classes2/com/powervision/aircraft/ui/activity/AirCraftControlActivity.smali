.class public Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "AirCraftControlActivity.java"

# interfaces
.implements Lcom/powervision/aircraft/ui/views/GeneralSettingsView$OnCloseClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment$MenuItemClickListener;
.implements Lcom/powervision/aircraft/ui/view/IAircraftView;
.implements Lcom/powervision/aircraft/ui/views/TouchRectangleView$ThouchGuideListener;
.implements Lcom/powervision/camera/camera/CameraListener;
.implements Lcom/powervision/base/imap/DistanceListener;
.implements Lcom/powervision/base/views/AircraftGimBalView$GimbalSetAgent;
.implements Lcom/powervision/aircraft/ui/views/MapOptionView$MapOptionAgent;
.implements Lcom/powervision/map/callback/AircraftLocationChangeListener;
.implements Lcom/powervision/natives/connect/Ap03ConnectSdk$OnDeviceLockChangeListener;
.implements Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetCameraAllParametersListener;
.implements Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetRecordTimeListener;
.implements Lcom/powervision/aircraft/ui/views/AircraftTopView$TopMenuAgent;
.implements Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetRestRecordTimeListener;
.implements Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetRestPhotoNumberListener;
.implements Lcom/powervision/base/listener/PhoneCallListener;
.implements Lcom/powervision/map/manager/MapSwitchManager$OnCameraChangeListener;
.implements Lcom/powervision/base/views/LongTouchStickPointView$DoubleFlingListener;
.implements Lcom/powervision/base/warning/manager/WarningManager$OnWarningCallback;
.implements Lcom/powervision/base/warning/manager/WarningManager$OnShowDialogCallback;
.implements Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnQueryActivationStatusListener;
.implements Lcom/powervision/aircraft/utils/AudioRecordManager$VolumeListener;
.implements Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$Ap03DeviceConnectionChangeListener;
.implements Lcom/appunite/player/PVCamPlayerHelperExt$OnSurfaceSizeChangeListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseActivity<",
        "Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;",
        "Lcom/powervision/aircraft/model/impl/AircraftModel;",
        ">;",
        "Lcom/powervision/aircraft/ui/views/GeneralSettingsView$OnCloseClickListener;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment$MenuItemClickListener;",
        "Lcom/powervision/aircraft/ui/view/IAircraftView;",
        "Lcom/powervision/aircraft/ui/views/TouchRectangleView$ThouchGuideListener;",
        "Lcom/powervision/camera/camera/CameraListener;",
        "Lcom/powervision/base/imap/DistanceListener;",
        "Lcom/powervision/base/views/AircraftGimBalView$GimbalSetAgent;",
        "Lcom/powervision/aircraft/ui/views/MapOptionView$MapOptionAgent;",
        "Lcom/powervision/map/callback/AircraftLocationChangeListener;",
        "Lcom/powervision/natives/connect/Ap03ConnectSdk$OnDeviceLockChangeListener;",
        "Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetCameraAllParametersListener;",
        "Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetRecordTimeListener;",
        "Lcom/powervision/aircraft/ui/views/AircraftTopView$TopMenuAgent;",
        "Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetRestRecordTimeListener;",
        "Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetRestPhotoNumberListener;",
        "Lcom/powervision/base/listener/PhoneCallListener;",
        "Lcom/powervision/map/manager/MapSwitchManager$OnCameraChangeListener;",
        "Lcom/powervision/base/views/LongTouchStickPointView$DoubleFlingListener;",
        "Lcom/powervision/base/warning/manager/WarningManager$OnWarningCallback;",
        "Lcom/powervision/base/warning/manager/WarningManager$OnShowDialogCallback;",
        "Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnQueryActivationStatusListener;",
        "Lcom/powervision/aircraft/utils/AudioRecordManager$VolumeListener;",
        "Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$Ap03DeviceConnectionChangeListener;",
        "Lcom/appunite/player/PVCamPlayerHelperExt$OnSurfaceSizeChangeListener;",
        "Landroid/view/TextureView$SurfaceTextureListener;"
    }
.end annotation


# static fields
.field private static final CAMERA_HIGH_TEMPERATURE:I = 0x11

.field private static final CHANGE_AIR_DL01_COUNTRY:I = 0x12

.field private static final CHANGE_AIR_GROUND_DL01_COUNTRY:I = 0x14

.field private static final CHANGE_GROUND_DL01_COUNTRY:I = 0x13

.field private static final CONNECT_CAMERA_SUCCESS:I = 0x1

.field private static final DISCONNECT_CAMERA:I = 0x0

.field private static final HANDHELD_HIDE_BLURRY_VIEW:I = 0x15

.field private static final HIDE_VIDEO_TIME_VIEWS:I = 0xf

.field private static final PARAM_GETALL_PARAM_START:I = 0x4

.field private static final PARAM_GET_FLIGT_GUIDE_MODE:I = 0x16

.field private static final PARAM_GET_LAST_TIME_NUM:I = 0xa

.field private static final PARAM_GET_RECORD_TIME_START:I = 0x8

.field private static final PARAM_UPDATE_CAMERA_PARAMS:I = 0x7

.field private static final PARAM_UPDATE_PHOTO_NUM_START:I = 0x5

.field private static final PARAM_UPDATE_RECCORD_TIME_START:I = 0x6

.field private static final PARAM_UPDATE_RECORD_TIME:I = 0x9

.field private static final POST_GET_ARM_STATUS:I = 0x17

.field private static final SHOW_CHANGE_AIR_MODE_DIALOG:I = 0xc

.field private static final SHOW_CHANGE_WATER_MODE_DIALOG:I = 0xb

.field private static final START_RECORDING_STATE_FAILED:I = 0x3

.field private static final START_RECORDING_STATE_SUCCESS:I = 0x2

.field private static final SURFACE_CHANGE_SIZE:I = 0x10

.field private static final SWITCH_RECORD_MODE:I = 0x19

.field private static final SWITCH_RECORD_MODE_DELAY_TIME:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AirCraftCo"

.field private static final TRY_SET_MAX_SPEED:I = 0x1a

.field private static final UPDATE_REMOTE_CONTROLER_ICON_STATUS:I = 0x18

.field private static final VOLUME_CHANGE:I = 0xe


# instance fields
.field private GPS_REQUEST_CODE:I

.field private airMapManager:Lcom/powervision/map/manager/AirMapManager;

.field private alertDialog:Landroidx/appcompat/app/AlertDialog;

.field private alpha_view:Landroid/view/View;

.field private barrierGroup:Lcom/powervision/aircraft/ui/views/BarrierGroup;

.field private barrierOpen:Z

.field private basicGuideView:Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;

.field battaryPresenter:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

.field private batteryInfo:Landroid/util/SparseIntArray;

.field private batterySnInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field bearing:F

.field private clickNum:I

.field private countryCode:Ljava/lang/String;

.field private currentBattery:F

.field private currentMode:Ljava/lang/String;

.field private currentNum:I

.field currentTime:J

.field private decorView:Landroid/view/View;

.field private delayMode:I

.field private delaySpeed:F

.field private delayedCustomDialog:Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog;

.field detector:Lcom/powervision/aircraft/utils/OrientationDetector;

.field private dis:F

.field private disposable:Lio/reactivex/disposables/Disposable;

.field private distanceValue:F

.field private drawLineEnable:Z

.field private flexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

.field private followList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private guideStub:Landroid/view/ViewStub;

.field private hightValue:F

.field private histogramLayout:Lcom/powervision/camera/views/HistogramLayout;

.field private inflatedFreeMode:Z

.field private inflatedTrailMode:Z

.field private isAirChange:I

.field private isBigMap:Z

.field private isChangeDL01:Z

.field private isFirstLocation:Z

.field private isFling:Z

.field private isFocus:Z

.field private isGroundChange:I

.field private isInputDelay:Z

.field private isReturn:I

.field private isReturnLast:Z

.field private isShowViews:Z

.field private isUnit:Z

.field private isWarnGPS:Z

.field private isWarnNavigation:Z

.field private isWaterFollowBol:Z

.field private ivSateLliteLayer:Landroid/widget/ImageView;

.field private ivStandardLayer:Landroid/widget/ImageView;

.field private lapseStopDialog:Landroidx/appcompat/app/AlertDialog;

.field private lastMode:Ljava/lang/String;

.field private lastNum:I

.field private lastSubMode:Ljava/lang/String;

.field private liveCode:Ljava/lang/String;

.field private liveStreamDialog:Lcom/powervision/base/dialog/LiveStreamDialog;

.field private lowPower:Lio/reactivex/disposables/Disposable;

.field private mAirLat:I

.field private mAirLon:I

.field private mAircraftGimBalView:Lcom/powervision/base/views/AircraftGimBalView;

.field private mAlphaAnimation:Landroid/animation/ObjectAnimator;

.field private mArmStatus:Z

.field private mAttitudeLayout:Lcom/powervision/base/views/CircleRelativeLayout;

.field private mAttitudeView:Lcom/powervision/aircraft/ui/views/AircraftAttitudeView;

.field private mBasicFlightGuideStub:Landroid/view/ViewStub;

.field private mBatteryProgressView:Lcom/powervision/base/views/CustomBatteryProgressView;

.field private mBigParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

.field private mBlurryView:Landroid/widget/ImageView;

.field private mCameraMenuView:Lcom/powervision/aircraft/ui/views/CameraMenuView;

.field private mCameraParamView:Lcom/powervision/aircraft/ui/views/CameraParamView;

.field private mCameraSettingView:Lcom/powervision/camera/views/CameraSettingView;

.field private mCameraTemperatureIv:Landroid/widget/ImageView;

.field private mCircleLeft:I

.field private mCircleRadius:I

.field private mCircleTop:I

.field private mCloseMapIcon:Landroid/widget/ImageView;

.field private mCompassIcon:Lcom/powervision/aircraft/ui/views/CompassView;

.field private mCountDownTime:Landroid/widget/TextView;

.field private mCountryCount:I

.field private mCustomLinesView:Lcom/powervision/base/views/CustomLinesView;

.field private mDisplayCutEnd:I

.field private mDisplayCutStart:I

.field private mFlightFunctionsIv:Landroid/widget/ImageView;

.field private mFlightParameterView:Lcom/powervision/aircraft/ui/views/FlightParameterView;

.field private mGeneralSettingsView:Lcom/powervision/aircraft/ui/views/GeneralSettingsView;

.field private mImageMapMask:Landroid/widget/ImageView;

.field private mLapseFreeView:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

.field private mLapseTrailView:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

.field private mLastArmStatus:Z

.field private mLastEnabled:J

.field private mLastHealth:J

.field private mLastNoFlyType:I

.field private mLastPresent:J

.field private mLayerPopuWindow:Landroid/widget/PopupWindow;

.field private mLayoutContainer:Landroid/widget/FrameLayout;

.field private mLiveStatusView:Lcom/powervision/base/views/LiveStatusView;

.field private mLocationPopupWindow:Landroid/widget/PopupWindow;

.field private mLongTouchStickPointView:Lcom/powervision/base/views/LongTouchStickPointView;

.field private mMapLayout:Lcom/powervision/base/views/CircleRelativeLayout;

.field private mNoFlyType:I

.field private mOneKeyReturnIv:Landroid/widget/ImageView;

.field private mOnekeyTakeOffIv:Landroid/widget/ImageView;

.field private mPermissionDialog:Landroidx/appcompat/app/AlertDialog;

.field private mPhoneReceiver:Lcom/powervision/base/recevier/PhoneReceiver;

.field private mRecordImg:Landroid/widget/ImageView;

.field private mRecordingTimeTv:Landroid/widget/TextView;

.field private mRootLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSmallParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

.field private mSmartMode:I

.field private mSmartTopFuncitonView:Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;

.field private mSmartViewContainer:Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;

.field private mStubLapseFree:Landroid/view/ViewStub;

.field private mStubLapseTrail:Landroid/view/ViewStub;

.field private mTakeOrLand:Z

.field private mTemperatureTimer:Ljava/util/Timer;

.field private mTextMulNum:Landroid/widget/TextView;

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;

.field private mTimerTemperatureTask:Ljava/util/TimerTask;

.field private mTopView:Lcom/powervision/aircraft/ui/views/AircraftTopView;

.field private mTouchRectangleView:Lcom/powervision/aircraft/ui/views/TouchRectangleView;

.field private mVideoLayout:Lcom/powervision/base/views/CircleRelativeLayout;

.field private mView:Landroid/view/ViewGroup;

.field private mWaterFollow:Landroid/widget/ImageView;

.field private mapOptionView:Lcom/powervision/aircraft/ui/views/MapOptionView;

.field private mapSwitchManager:Lcom/powervision/map/manager/MapSwitchManager;

.field private mapView:Lcom/powervision/airmap/mapview/AirMapView;

.field private maybe:Z

.field private myHandler:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;

.field private noramlFollowStatus:I

.field private numValue:I

.field onAirClickListener:Landroid/view/View$OnClickListener;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field onReturnClickListener:Landroid/view/View$OnClickListener;

.field onSateLliteClickListener:Landroid/view/View$OnClickListener;

.field onStandardClickListener:Landroid/view/View$OnClickListener;

.field private onStopLapseClickListener:Lcom/powervision/aircraft/ui/views/CameraMenuView$OnStopLapseClickListener;

.field onUserClickListener:Landroid/view/View$OnClickListener;

.field private positionInfo:Lcom/powervision/aircraft/lapse/data/PositionInfo;

.field private preMaybe:Z

.field private preUsing:Z

.field private preValid:Z

.field private progressBar:Lcom/powervision/base/views/LoadingProgressBar;

.field private pushUrl:Ljava/lang/String;

.field private recordingTime:I

.field private remoteMode:I

.field private resetSpeedCount:I

.field private resultIndex:I

.field private rotation:I

.field private rotationListener:Lcom/powervision/aircraft/utils/OrientationDetector$RotationListener;

.field private sb:Ljava/lang/StringBuilder;

.field private sensorEventListener:Landroid/hardware/SensorEventListener;

.field private sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

.field private showAirGuide:Z

.field private showAircraftGuide:Z

.field showTemperatureDialog:Z

.field private slideReturnView:Lcom/powervision/aircraft/ui/views/SlideReturnView;

.field private slideTakeOffView:Lcom/powervision/aircraft/ui/views/SlideReturnView;

.field private smartHight:F

.field soundPoolUtils:Lcom/powervision/base/utils/SoundPoolUtils;

.field private surfaceViewMask:Landroid/view/View;

.field private tempMode:I

.field private tempR:I

.field private tempX:I

.field private tempY:I

.field private tempZ:I

.field private textureView:Landroid/view/TextureView;

.field private timer:Landroid/os/CountDownTimer;

.field private timerCount:I

.field private unit:I

.field private updageHeightSpeed:Z

.field private url:Ljava/lang/String;

.field private waitingProgressBar:Lcom/powervision/base/views/LoadingProgressBar;

.field private warningManager:Lcom/powervision/base/warning/manager/WarningManager;

.field private waterMode:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 207
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 285
    iput-boolean v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isFirstLocation:Z

    const/4 v1, -0x1

    .line 289
    iput v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isReturn:I

    const/16 v2, 0x10e

    .line 291
    iput v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->rotation:I

    const/4 v2, 0x0

    .line 307
    iput-boolean v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->inflatedFreeMode:Z

    .line 308
    iput-boolean v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->inflatedTrailMode:Z

    .line 316
    iput v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartMode:I

    const/16 v3, 0x10

    .line 326
    iput v3, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->GPS_REQUEST_CODE:I

    const/4 v3, 0x0

    .line 328
    iput v3, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->smartHight:F

    .line 338
    iput v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->resultIndex:I

    .line 339
    iput v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->remoteMode:I

    .line 636
    iput v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCountryCount:I

    .line 671
    iput-boolean v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isShowViews:Z

    .line 675
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->followList:Ljava/util/List;

    const-string v3, ""

    .line 678
    iput-object v3, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lastMode:Ljava/lang/String;

    .line 680
    new-instance v4, Landroid/util/SparseIntArray;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v4, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->batteryInfo:Landroid/util/SparseIntArray;

    .line 681
    new-instance v4, Landroid/util/SparseArray;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v4, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->batterySnInfo:Landroid/util/SparseArray;

    .line 684
    iput-boolean v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->showAircraftGuide:Z

    .line 726
    iput-boolean v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isChangeDL01:Z

    .line 1628
    iput-boolean v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->barrierOpen:Z

    .line 1655
    iput v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->clickNum:I

    .line 2094
    iput-boolean v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->drawLineEnable:Z

    const-wide/16 v4, 0x0

    .line 2255
    iput-wide v4, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->currentTime:J

    .line 3582
    new-instance v4, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$26;

    invoke-direct {v4, p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$26;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    iput-object v4, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->rotationListener:Lcom/powervision/aircraft/utils/OrientationDetector$RotationListener;

    .line 3609
    new-instance v4, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$27;

    invoke-direct {v4, p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$27;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    iput-object v4, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->sensorEventListener:Landroid/hardware/SensorEventListener;

    .line 3817
    iput v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->recordingTime:I

    .line 4142
    new-instance v4, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$30;

    invoke-direct {v4, p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$30;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    iput-object v4, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->onClickListener:Landroid/view/View$OnClickListener;

    .line 4153
    new-instance v4, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$31;

    invoke-direct {v4, p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$31;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    iput-object v4, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->onAirClickListener:Landroid/view/View$OnClickListener;

    .line 4163
    new-instance v4, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$32;

    invoke-direct {v4, p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$32;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    iput-object v4, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->onUserClickListener:Landroid/view/View$OnClickListener;

    .line 4171
    new-instance v4, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$33;

    invoke-direct {v4, p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$33;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    iput-object v4, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->onReturnClickListener:Landroid/view/View$OnClickListener;

    .line 4179
    new-instance v4, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$34;

    invoke-direct {v4, p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$34;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    iput-object v4, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->onSateLliteClickListener:Landroid/view/View$OnClickListener;

    .line 4189
    new-instance v4, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$35;

    invoke-direct {v4, p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$35;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    iput-object v4, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->onStandardClickListener:Landroid/view/View$OnClickListener;

    .line 4401
    iput-boolean v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isReturnLast:Z

    .line 4513
    iput-boolean v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->updageHeightSpeed:Z

    .line 4647
    iput v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->noramlFollowStatus:I

    .line 5100
    iput-object v3, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->url:Ljava/lang/String;

    .line 5101
    iput-object v3, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->liveCode:Ljava/lang/String;

    .line 5102
    iput-object v3, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->pushUrl:Ljava/lang/String;

    .line 5482
    iput v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isAirChange:I

    iput v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isGroundChange:I

    .line 5794
    iput v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->resetSpeedCount:I

    .line 6004
    new-instance v1, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$lGai1A7sPHnk5JaSbvWN7mJe_lQ;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$lGai1A7sPHnk5JaSbvWN7mJe_lQ;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    iput-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->onStopLapseClickListener:Lcom/powervision/aircraft/ui/views/CameraMenuView$OnStopLapseClickListener;

    .line 6124
    iput-boolean v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->showTemperatureDialog:Z

    .line 6156
    iput v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->timerCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V
    .locals 0

    .line 207
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->registerPhoneStateReceiver()V

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V
    .locals 0

    .line 207
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->doResume()V

    return-void
.end method

.method static synthetic access$1000(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartViewContainer:Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;

    return-object p0
.end method

.method static synthetic access$10000(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Ljava/util/Timer;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$10100(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Z)V
    .locals 0

    .line 207
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->resetSmartModeViews(Z)V

    return-void
.end method

.method static synthetic access$10202(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Z)Z
    .locals 0

    .line 207
    iput-boolean p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isWaterFollowBol:Z

    return p1
.end method

.method static synthetic access$10302(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;I)I
    .locals 0

    .line 207
    iput p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->noramlFollowStatus:I

    return p1
.end method

.method static synthetic access$10400(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Landroid/widget/PopupWindow;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLocationPopupWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$10500(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/map/manager/MapSwitchManager;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mapSwitchManager:Lcom/powervision/map/manager/MapSwitchManager;

    return-object p0
.end method

.method static synthetic access$10600(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Landroid/widget/PopupWindow;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLayerPopuWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$10700(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->ivSateLliteLayer:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$10800(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->ivStandardLayer:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$10900(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/aircraft/ui/views/FlightParameterView;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mFlightParameterView:Lcom/powervision/aircraft/ui/views/FlightParameterView;

    return-object p0
.end method

.method static synthetic access$11000(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$11100(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$11200(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;I)V
    .locals 0

    .line 207
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->showPointSurround(I)V

    return-void
.end method

.method static synthetic access$11300(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mWaterFollow:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$11400(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$11500(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/aircraft/ui/views/AirLapseTrailView;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLapseTrailView:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    return-object p0
.end method

.method static synthetic access$11600(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Landroid/view/ViewStub;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mStubLapseTrail:Landroid/view/ViewStub;

    return-object p0
.end method

.method static synthetic access$11700(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mRootLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method static synthetic access$11800(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Landroid/view/ViewStub;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mStubLapseFree:Landroid/view/ViewStub;

    return-object p0
.end method

.method static synthetic access$11902(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;F)F
    .locals 0

    .line 207
    iput p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->delaySpeed:F

    return p1
.end method

.method static synthetic access$1200(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Landroid/util/SparseArray;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->batterySnInfo:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$12000(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$12100(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$12200(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Ljava/lang/String;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->url:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$12202(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->url:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$12300(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Ljava/lang/String;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->liveCode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$12302(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->liveCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$12400(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Ljava/lang/String;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->pushUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$12402(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->pushUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$12500(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Ljava/lang/StringBuilder;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->sb:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method static synthetic access$12502(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->sb:Ljava/lang/StringBuilder;

    return-object p1
.end method

.method static synthetic access$12600(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V
    .locals 0

    .line 207
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->showTimeDown()V

    return-void
.end method

.method static synthetic access$12700(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Landroid/widget/TextView;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCountDownTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$12802(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;I)I
    .locals 0

    .line 207
    iput p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->tempMode:I

    return p1
.end method

.method static synthetic access$12900(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V
    .locals 0

    .line 207
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->showForeignNoFlyZoneUnlockDialog()V

    return-void
.end method

.method static synthetic access$13000(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$13100(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->disposable:Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method static synthetic access$13200(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$13300(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lowPower:Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method static synthetic access$13302(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lowPower:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$13400(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$13500(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$13600(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/aircraft/ui/views/AircraftTopView;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTopView:Lcom/powervision/aircraft/ui/views/AircraftTopView;

    return-object p0
.end method

.method static synthetic access$13700(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$13800(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$13900(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Z
    .locals 0

    .line 207
    iget-boolean p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->showAirGuide:Z

    return p0
.end method

.method static synthetic access$14000(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$14100(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$14200(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$14300(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$14400(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$14500(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)I
    .locals 0

    .line 207
    iget p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->timerCount:I

    return p0
.end method

.method static synthetic access$14504(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)I
    .locals 1

    .line 207
    iget v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->timerCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->timerCount:I

    return v0
.end method

.method static synthetic access$14600(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V
    .locals 0

    .line 207
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->onStopHighTemperatureAnimation()V

    return-void
.end method

.method static synthetic access$14700(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraTemperatureIv:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$14800(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$14900(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)I
    .locals 0

    .line 207
    iget p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->currentNum:I

    return p0
.end method

.method static synthetic access$1500(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Z
    .locals 0

    .line 207
    iget-boolean p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isBigMap:Z

    return p0
.end method

.method static synthetic access$15000(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V
    .locals 0

    .line 207
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->showDelayLoading()V

    return-void
.end method

.method static synthetic access$1502(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Z)Z
    .locals 0

    .line 207
    iput-boolean p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isBigMap:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/views/CircleRelativeLayout;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mVideoLayout:Lcom/powervision/base/views/CircleRelativeLayout;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/views/CircleRelativeLayout;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mMapLayout:Lcom/powervision/base/views/CircleRelativeLayout;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Lcom/powervision/base/views/CircleRelativeLayout;Lcom/powervision/base/views/CircleRelativeLayout;)V
    .locals 0

    .line 207
    invoke-direct {p0, p1, p2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->switchViewMode(Lcom/powervision/base/views/CircleRelativeLayout;Lcom/powervision/base/views/CircleRelativeLayout;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;I)V
    .locals 0

    .line 207
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->showGeneralSettingsView(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)J
    .locals 2

    .line 207
    iget-wide v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastHealth:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Landroidx/appcompat/app/AlertDialog;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPermissionDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/utils/SharedPreferencesUtils;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/warning/manager/WarningManager;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartTopFuncitonView:Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)I
    .locals 0

    .line 207
    iget p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->clickNum:I

    return p0
.end method

.method static synthetic access$2402(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;I)I
    .locals 0

    .line 207
    iput p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->clickNum:I

    return p1
.end method

.method static synthetic access$2500(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V
    .locals 0

    .line 207
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->requestBasicPermission()V

    return-void
.end method

.method static synthetic access$3000(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Ljava/lang/String;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->countryCode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3002(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->countryCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)F
    .locals 0

    .line 207
    iget p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->distanceValue:F

    return p0
.end method

.method static synthetic access$3200(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)F
    .locals 0

    .line 207
    iget p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->hightValue:F

    return p0
.end method

.method static synthetic access$3300(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)I
    .locals 0

    .line 207
    iget p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->numValue:I

    return p0
.end method

.method static synthetic access$3400(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Z
    .locals 0

    .line 207
    iget-boolean p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isChangeDL01:Z

    return p0
.end method

.method static synthetic access$3500(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)I
    .locals 0

    .line 207
    iget p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCountryCount:I

    return p0
.end method

.method static synthetic access$4000(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$408(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)I
    .locals 2

    .line 207
    iget v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCountryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCountryCount:I

    return v0
.end method

.method static synthetic access$4100(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Landroid/view/View;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->alpha_view:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V
    .locals 0

    .line 207
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->startRecordAudio()V

    return-void
.end method

.method static synthetic access$4400(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Landroid/view/View;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->surfaceViewMask:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V
    .locals 0

    .line 207
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->onStopRecordingCancleTimer()V

    return-void
.end method

.method static synthetic access$4600(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/aircraft/ui/views/CameraMenuView;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraMenuView:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Landroid/widget/TextView;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTextMulNum:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/aircraft/ui/views/CameraParamView;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraParamView:Lcom/powervision/aircraft/ui/views/CameraParamView;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/camera/views/CameraSettingView;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraSettingView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)I
    .locals 0

    .line 207
    iget p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isAirChange:I

    return p0
.end method

.method static synthetic access$5000(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mRecordImg:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$502(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;I)I
    .locals 0

    .line 207
    iput p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isAirChange:I

    return p1
.end method

.method static synthetic access$5100(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)I
    .locals 0

    .line 207
    iget p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->recordingTime:I

    return p0
.end method

.method static synthetic access$5102(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;I)I
    .locals 0

    .line 207
    iput p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->recordingTime:I

    return p1
.end method

.method static synthetic access$5104(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)I
    .locals 1

    .line 207
    iget v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->recordingTime:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->recordingTime:I

    return v0
.end method

.method static synthetic access$5200(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Z)V
    .locals 0

    .line 207
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->startTimerTask(Z)V

    return-void
.end method

.method static synthetic access$5300(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V
    .locals 0

    .line 207
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->showChangeWaterModeDialog()V

    return-void
.end method

.method static synthetic access$5400(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V
    .locals 0

    .line 207
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->showChangeAirModeDialog()V

    return-void
.end method

.method static synthetic access$5500(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/views/LiveStatusView;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLiveStatusView:Lcom/powervision/base/views/LiveStatusView;

    return-object p0
.end method

.method static synthetic access$5600(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Landroid/widget/TextView;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mRecordingTimeTv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$5700(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Landroid/os/Message;)V
    .locals 0

    .line 207
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->chagneSurfaceSize(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Landroid/os/Message;)V
    .locals 0

    .line 207
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->onTemperatureUpdate(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mBlurryView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)I
    .locals 0

    .line 207
    iget p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isGroundChange:I

    return p0
.end method

.method static synthetic access$6000(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V
    .locals 0

    .line 207
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->hideBlurryView()V

    return-void
.end method

.method static synthetic access$602(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;I)I
    .locals 0

    .line 207
    iput p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isGroundChange:I

    return p1
.end method

.method static synthetic access$6100(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V
    .locals 0

    .line 207
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->onConnectWifiCheck()V

    return-void
.end method

.method static synthetic access$6200(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V
    .locals 0

    .line 207
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->onRemoteControlerIconUpdate()V

    return-void
.end method

.method static synthetic access$6300(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V
    .locals 0

    .line 207
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->dismissLoading()V

    return-void
.end method

.method static synthetic access$6400(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V
    .locals 0

    .line 207
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->dismissWaiting()V

    return-void
.end method

.method static synthetic access$6500(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V
    .locals 0

    .line 207
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->setMaxSpeed()V

    return-void
.end method

.method static synthetic access$6600(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$6700(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$6800(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$6900(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$700(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->myHandler:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;

    return-object p0
.end method

.method static synthetic access$7002(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Z)Z
    .locals 0

    .line 207
    iput-boolean p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->inflatedFreeMode:Z

    return p1
.end method

.method static synthetic access$7102(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Z)Z
    .locals 0

    .line 207
    iput-boolean p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->inflatedTrailMode:Z

    return p1
.end method

.method static synthetic access$7200(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Z
    .locals 0

    .line 207
    iget-boolean p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isFirstLocation:Z

    return p0
.end method

.method static synthetic access$7202(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Z)Z
    .locals 0

    .line 207
    iput-boolean p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isFirstLocation:Z

    return p1
.end method

.method static synthetic access$7300(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$7400(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$7500(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)I
    .locals 0

    .line 207
    iget p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mNoFlyType:I

    return p0
.end method

.method static synthetic access$7600(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/aircraft/ui/views/SlideReturnView;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->slideReturnView:Lcom/powervision/aircraft/ui/views/SlideReturnView;

    return-object p0
.end method

.method static synthetic access$7700(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Ljava/lang/String;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->currentMode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$7800(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)I
    .locals 0

    .line 207
    iget p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isReturn:I

    return p0
.end method

.method static synthetic access$7900(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$800(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mFlightFunctionsIv:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$8000(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V
    .locals 0

    .line 207
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->returnLastMode()V

    return-void
.end method

.method static synthetic access$8100(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/aircraft/ui/views/SlideReturnView;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->slideTakeOffView:Lcom/powervision/aircraft/ui/views/SlideReturnView;

    return-object p0
.end method

.method static synthetic access$8200(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Ljava/lang/String;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lastMode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$8300(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)J
    .locals 2

    .line 207
    iget-wide v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastEnabled:J

    return-wide v0
.end method

.method static synthetic access$8400(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Landroid/util/SparseIntArray;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->batteryInfo:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static synthetic access$8500(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;I)Z
    .locals 0

    .line 207
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->checkUnlock(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$8600(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$8700(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)F
    .locals 0

    .line 207
    iget p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->currentBattery:F

    return p0
.end method

.method static synthetic access$8800(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$8900(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$900(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mOnekeyTakeOffIv:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$9000(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$9100(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$9200(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$9300(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Z
    .locals 0

    .line 207
    iget-boolean p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isShowViews:Z

    return p0
.end method

.method static synthetic access$9302(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Z)Z
    .locals 0

    .line 207
    iput-boolean p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isShowViews:Z

    return p1
.end method

.method static synthetic access$9400(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;IZ)V
    .locals 0

    .line 207
    invoke-direct {p0, p1, p2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->hideOrShowAllViews(IZ)V

    return-void
.end method

.method static synthetic access$9500(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$9600(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/dialog/LiveStreamDialog;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->liveStreamDialog:Lcom/powervision/base/dialog/LiveStreamDialog;

    return-object p0
.end method

.method static synthetic access$9700(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)I
    .locals 0

    .line 207
    iget p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->rotation:I

    return p0
.end method

.method static synthetic access$9702(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;I)I
    .locals 0

    .line 207
    iput p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->rotation:I

    return p1
.end method

.method static synthetic access$9800(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/aircraft/ui/views/CompassView;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCompassIcon:Lcom/powervision/aircraft/ui/views/CompassView;

    return-object p0
.end method

.method static synthetic access$9900(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/aircraft/ui/views/AircraftAttitudeView;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mAttitudeView:Lcom/powervision/aircraft/ui/views/AircraftAttitudeView;

    return-object p0
.end method

.method private cancleTemperatureTask()V
    .locals 2

    .line 6179
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTemperatureTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTimerTemperatureTask:Ljava/util/TimerTask;

    if-eqz v1, :cond_0

    .line 6180
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 6181
    iput v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->timerCount:I

    const/4 v0, 0x0

    .line 6182
    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTimerTemperatureTask:Ljava/util/TimerTask;

    .line 6183
    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTemperatureTimer:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method private chagneSurfaceSize(Landroid/os/Message;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 5692
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->setLocalSurfaceWidth(I)V

    .line 5693
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->setLocalSurfaceHeight(I)V

    .line 5695
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->textureView:Landroid/view/TextureView;

    const/16 v1, 0xd

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 5696
    invoke-virtual {v0}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 5697
    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 5698
    iget v2, p1, Landroid/os/Message;->arg2:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 5699
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 5700
    iget-object v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->textureView:Landroid/view/TextureView;

    invoke-virtual {v2, v0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5702
    :cond_1
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCustomLinesView:Lcom/powervision/base/views/CustomLinesView;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 5703
    invoke-virtual {v0}, Lcom/powervision/base/views/CustomLinesView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 5704
    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 5705
    iget v2, p1, Landroid/os/Message;->arg2:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 5706
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 5707
    iget-object v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCustomLinesView:Lcom/powervision/base/views/CustomLinesView;

    invoke-virtual {v2, v0}, Lcom/powervision/base/views/CustomLinesView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5709
    :cond_2
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mBlurryView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 5710
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 5711
    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 5712
    iget p1, p1, Landroid/os/Message;->arg2:I

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 5713
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 5714
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mBlurryView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5717
    :cond_3
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartViewContainer:Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartMode:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    .line 5718
    :cond_4
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartViewContainer:Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;

    invoke-virtual {p1}, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->updateSmartFollowViewSize()V

    goto :goto_0

    .line 5719
    :cond_5
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartViewContainer:Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;

    if-eqz p1, :cond_6

    iget v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 5720
    invoke-virtual {p1}, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->updateSmartClipsViewSize()V

    :cond_6
    :goto_0
    return-void
.end method

.method private checkFreeEnable()V
    .locals 1

    .line 5875
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLapseFreeView:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    if-nez v0, :cond_0

    .line 5876
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->initFreeMode()V

    :cond_0
    return-void
.end method

.method private checkInWaterFollowMode()Z
    .locals 4

    .line 3990
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3991
    invoke-static {}, Lcom/powervision/camera/utils/CameraUtil;->canInFollow()I

    move-result v0

    if-nez v0, :cond_0

    .line 3992
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    new-instance v1, Lcom/powervision/base/warning/HoverMessage;

    const/4 v2, 0x4

    sget v3, Lcom/powervision/aircraft/R$string;->AP03_AI_107:I

    invoke-virtual {p0, v3}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private checkNavigationStatus()V
    .locals 7

    .line 1522
    iget-wide v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastPresent:J

    long-to-int v1, v0

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xb

    if-eqz v0, :cond_0

    .line 1523
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    new-instance v3, Lcom/powervision/base/warning/HoverMessage;

    sget v4, Lcom/powervision/aircraft/R$string;->AP03_Msg_26_55:I

    .line 1524
    invoke-virtual {p0, v4}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 1523
    invoke-virtual {v0, v3}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    .line 1525
    iput-boolean v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isWarnGPS:Z

    goto :goto_0

    .line 1526
    :cond_0
    iget-wide v3, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastPresent:J

    long-to-int v0, v3

    const/4 v3, 0x3

    invoke-static {v0, v3}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1527
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    new-instance v3, Lcom/powervision/base/warning/HoverMessage;

    sget v4, Lcom/powervision/aircraft/R$string;->AP03_Msg_26_56:I

    .line 1528
    invoke-virtual {p0, v4}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 1527
    invoke-virtual {v0, v3}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    .line 1529
    iput-boolean v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isWarnGPS:Z

    goto :goto_0

    .line 1530
    :cond_1
    iget-wide v3, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastPresent:J

    long-to-int v0, v3

    const/4 v3, 0x5

    invoke-static {v0, v3}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1531
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    new-instance v3, Lcom/powervision/base/warning/HoverMessage;

    sget v4, Lcom/powervision/aircraft/R$string;->AP03_Msg_26_40:I

    .line 1532
    invoke-virtual {p0, v4}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 1531
    invoke-virtual {v0, v3}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    .line 1533
    iput-boolean v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isWarnGPS:Z

    goto :goto_0

    .line 1534
    :cond_2
    iget-wide v3, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastPresent:J

    long-to-int v0, v3

    const/4 v3, 0x6

    invoke-static {v0, v3}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1535
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    new-instance v3, Lcom/powervision/base/warning/HoverMessage;

    sget v4, Lcom/powervision/aircraft/R$string;->AP03_Msg_26_39:I

    .line 1536
    invoke-virtual {p0, v4}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 1535
    invoke-virtual {v0, v3}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    .line 1537
    iput-boolean v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isWarnGPS:Z

    .line 1539
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isWarnGPS:Z

    const/16 v3, 0xc

    if-nez v0, :cond_5

    .line 1540
    iget-wide v4, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastPresent:J

    long-to-int v0, v4

    invoke-static {v0, v3}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v0

    const/4 v4, 0x4

    if-eqz v0, :cond_4

    iget-wide v5, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastPresent:J

    long-to-int v0, v5

    const/16 v5, 0x12

    invoke-static {v0, v5}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->numValue:I

    if-lt v0, v4, :cond_4

    .line 1541
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    new-instance v4, Lcom/powervision/base/warning/HoverMessage;

    sget v5, Lcom/powervision/aircraft/R$string;->AP03_Msg_115_13:I

    .line 1542
    invoke-virtual {p0, v5}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 1541
    invoke-virtual {v0, v4}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    .line 1543
    iput-boolean v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isWarnNavigation:Z

    goto :goto_1

    .line 1544
    :cond_4
    iget-wide v5, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastPresent:J

    long-to-int v0, v5

    invoke-static {v0, v3}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-wide v5, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastPresent:J

    long-to-int v0, v5

    const/16 v5, 0x14

    invoke-static {v0, v5}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->numValue:I

    if-ge v0, v4, :cond_5

    .line 1545
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    new-instance v4, Lcom/powervision/base/warning/HoverMessage;

    sget v5, Lcom/powervision/aircraft/R$string;->AP03_Msg_115_14:I

    .line 1546
    invoke-virtual {p0, v5}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 1545
    invoke-virtual {v0, v4}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    .line 1547
    iput-boolean v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isWarnNavigation:Z

    .line 1550
    :cond_5
    :goto_1
    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isWarnNavigation:Z

    if-nez v0, :cond_6

    .line 1551
    iget-wide v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastPresent:J

    long-to-int v1, v0

    invoke-static {v1, v3}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1552
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    new-instance v1, Lcom/powervision/base/warning/HoverMessage;

    sget v3, Lcom/powervision/aircraft/R$string;->AP03_Msg_26_41:I

    .line 1553
    invoke-virtual {p0, v3}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 1552
    invoke-virtual {v0, v1}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    :cond_6
    return-void
.end method

.method private checkTrailEnable()V
    .locals 2

    .line 5888
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLapseTrailView:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    if-nez v0, :cond_0

    const-string v0, "AirCraftContainerFragme"

    const-string v1, "checkTrailEnable: mLapseTrailView == null"

    .line 5889
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5890
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->initTrailMode()V

    :cond_0
    return-void
.end method

.method private checkUnlock(I)Z
    .locals 7

    .line 1450
    iget-wide v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastEnabled:J

    long-to-int p1, v0

    const/16 v0, 0x19

    invoke-static {p1, v0}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result p1

    const/16 v1, 0xb

    const/4 v2, 0x0

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->batteryInfo:Landroid/util/SparseIntArray;

    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    const/16 v4, 0x24d

    if-ge p1, v4, :cond_0

    goto/16 :goto_0

    .line 1454
    :cond_0
    iget-wide v4, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastPresent:J

    long-to-int p1, v4

    const/16 v4, 0x13

    invoke-static {p1, v4}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1455
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    new-instance v0, Lcom/powervision/base/warning/HoverMessage;

    sget v3, Lcom/powervision/aircraft/R$string;->AP03_Msg_26_42:I

    .line 1456
    invoke-virtual {p0, v3}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 1455
    invoke-virtual {p1, v0}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    goto/16 :goto_1

    .line 1458
    :cond_1
    iget-wide v4, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastPresent:J

    long-to-int p1, v4

    const/16 v4, 0x1d

    invoke-static {p1, v4}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1459
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    new-instance v0, Lcom/powervision/base/warning/HoverMessage;

    sget v3, Lcom/powervision/aircraft/R$string;->AP03_Msg_26_43:I

    .line 1460
    invoke-virtual {p0, v3}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 1459
    invoke-virtual {p1, v0}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    goto/16 :goto_1

    .line 1462
    :cond_2
    iget-wide v5, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastPresent:J

    long-to-int p1, v5

    const/16 v5, 0x1f

    invoke-static {p1, v5}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1463
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    new-instance v0, Lcom/powervision/base/warning/HoverMessage;

    sget v3, Lcom/powervision/aircraft/R$string;->AP03_Msg_26_44:I

    .line 1464
    invoke-virtual {p0, v3}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 1463
    invoke-virtual {p1, v0}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    goto/16 :goto_1

    .line 1466
    :cond_3
    iget-wide v5, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastEnabled:J

    long-to-int p1, v5

    const/4 v5, 0x2

    invoke-static {p1, v5}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1467
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    new-instance v0, Lcom/powervision/base/warning/HoverMessage;

    sget v3, Lcom/powervision/aircraft/R$string;->AP03_Msg_26_45:I

    .line 1468
    invoke-virtual {p0, v3}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 1467
    invoke-virtual {p1, v0}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    goto/16 :goto_1

    .line 1470
    :cond_4
    iget-wide v5, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastEnabled:J

    long-to-int p1, v5

    const/4 v5, 0x3

    invoke-static {p1, v5}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1471
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    new-instance v0, Lcom/powervision/base/warning/HoverMessage;

    sget v3, Lcom/powervision/aircraft/R$string;->AP03_Msg_26_33:I

    .line 1472
    invoke-virtual {p0, v3}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 1471
    invoke-virtual {p1, v0}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    goto/16 :goto_1

    .line 1474
    :cond_5
    iget-wide v5, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastEnabled:J

    long-to-int p1, v5

    invoke-static {p1, v3}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1475
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    new-instance v0, Lcom/powervision/base/warning/HoverMessage;

    sget v3, Lcom/powervision/aircraft/R$string;->AP03_Msg_26_46:I

    .line 1476
    invoke-virtual {p0, v3}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 1475
    invoke-virtual {p1, v0}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    goto/16 :goto_1

    .line 1478
    :cond_6
    iget-wide v5, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastHealth:J

    long-to-int p1, v5

    const/16 v3, 0x10

    invoke-static {p1, v3}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1479
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    new-instance v0, Lcom/powervision/base/warning/HoverMessage;

    sget v3, Lcom/powervision/aircraft/R$string;->AP03_Msg_196:I

    .line 1480
    invoke-virtual {p0, v3}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 1479
    invoke-virtual {p1, v0}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    goto/16 :goto_1

    .line 1482
    :cond_7
    iget-wide v5, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastHealth:J

    long-to-int p1, v5

    const/16 v3, 0x15

    invoke-static {p1, v3}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1483
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    new-instance v0, Lcom/powervision/base/warning/HoverMessage;

    const/4 v1, 0x4

    sget v3, Lcom/powervision/aircraft/R$string;->AP03_Msg_62_23:I

    .line 1484
    invoke-virtual {p0, v3}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 1483
    invoke-virtual {p1, v0}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    goto/16 :goto_1

    .line 1486
    :cond_8
    iget-wide v5, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastHealth:J

    long-to-int p1, v5

    const/16 v3, 0x16

    invoke-static {p1, v3}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1487
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    new-instance v0, Lcom/powervision/base/warning/HoverMessage;

    sget v3, Lcom/powervision/aircraft/R$string;->AP03_Msg_26_51:I

    .line 1488
    invoke-virtual {p0, v3}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 1487
    invoke-virtual {p1, v0}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    goto/16 :goto_1

    .line 1490
    :cond_9
    iget-wide v5, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastHealth:J

    long-to-int p1, v5

    invoke-static {p1, v0}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1491
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    new-instance v0, Lcom/powervision/base/warning/HoverMessage;

    sget v3, Lcom/powervision/aircraft/R$string;->AP03_Msg_26_54:I

    .line 1492
    invoke-virtual {p0, v3}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 1491
    invoke-virtual {p1, v0}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    goto :goto_1

    .line 1494
    :cond_a
    iget-wide v5, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastPresent:J

    long-to-int p1, v5

    const/16 v0, 0x9

    invoke-static {p1, v0}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1495
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    new-instance v0, Lcom/powervision/base/warning/HoverMessage;

    sget v3, Lcom/powervision/aircraft/R$string;->AP03_Msg_26_57:I

    .line 1496
    invoke-virtual {p0, v3}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 1495
    invoke-virtual {p1, v0}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    goto :goto_1

    .line 1498
    :cond_b
    iget-wide v5, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastHealth:J

    long-to-int p1, v5

    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 1499
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    new-instance v0, Lcom/powervision/base/warning/HoverMessage;

    sget v3, Lcom/powervision/aircraft/R$string;->AP03_Msg_26_58:I

    .line 1500
    invoke-virtual {p0, v3}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 1499
    invoke-virtual {p1, v0}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    goto :goto_1

    .line 1502
    :cond_c
    iget-wide v5, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastHealth:J

    long-to-int p1, v5

    invoke-static {p1, v4}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 1503
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    new-instance v0, Lcom/powervision/base/warning/HoverMessage;

    sget v3, Lcom/powervision/aircraft/R$string;->AP03_Msg_26_58:I

    .line 1504
    invoke-virtual {p0, v3}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 1503
    invoke-virtual {p1, v0}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    goto :goto_1

    :cond_d
    const/4 v2, 0x1

    goto :goto_1

    .line 1451
    :cond_e
    :goto_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    new-instance v0, Lcom/powervision/base/warning/HoverMessage;

    sget v3, Lcom/powervision/aircraft/R$string;->AP03_Msg_64:I

    .line 1452
    invoke-virtual {p0, v3}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 1451
    invoke-virtual {p1, v0}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    :goto_1
    return v2
.end method

.method private checkWaterModeDisableRecord()Z
    .locals 4

    .line 5725
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getWaterModeTag()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 5726
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentResolution()I

    move-result v0

    const/16 v3, 0xa

    if-eq v0, v3, :cond_0

    const/16 v3, 0x9

    if-eq v0, v3, :cond_0

    if-ne v0, v2, :cond_2

    .line 5728
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 5731
    :cond_1
    sget v0, Lcom/lewis/camera/R$string;->AP03_waterproof_8:I

    .line 5732
    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$string;->AP03_ConnectGuide_47:I

    .line 5733
    invoke-virtual {p0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 5731
    invoke-static {p0, v3, v0, v1, v3}, Lcom/powervision/base/utils/DialogUtils;->defaultDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 5734
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return v2

    :cond_2
    return v1
.end method

.method public static covert(Ljava/lang/String;)I
    .locals 12

    const-string v0, "A"

    const-string v1, "B"

    const-string v2, "C"

    const-string v3, "D"

    const-string v4, "E"

    const-string v5, "F"

    .line 2311
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    .line 2312
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x9

    if-gt v3, v4, :cond_0

    .line 2314
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0xa

    :goto_1
    const/16 v4, 0x10

    if-ge v3, v4, :cond_1

    add-int/lit8 v4, v3, -0xa

    .line 2317
    aget-object v4, v0, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2319
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v0, :cond_2

    add-int/lit8 v5, v4, 0x1

    .line 2321
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    move v4, v5

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_3
    if-ge v2, v0, :cond_3

    int-to-double v4, p0

    .line 2324
    aget-object p0, v3, v2

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-double v6, p0

    const-wide/high16 v8, 0x4030000000000000L    # 16.0

    add-int/lit8 p0, v0, -0x1

    sub-int/2addr p0, v2

    int-to-double v10, p0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double v6, v6, v8

    add-double/2addr v4, v6

    double-to-int p0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    return p0
.end method

.method private currentStorageFull(Z)V
    .locals 8

    .line 2040
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    sget v1, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_RECORDING:I

    if-ne v0, v1, :cond_0

    .line 2041
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->setCameraCurrentStatus(I)V

    .line 2042
    new-instance v0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$TciEDbT-J35651KvJAGX7oDBAM8;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$TciEDbT-J35651KvJAGX7oDBAM8;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2043
    :cond_0
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    sget v1, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_RECORD:I

    if-ne v0, v1, :cond_1

    return-void

    .line 2045
    :cond_1
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    sget v1, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_PHOTO:I

    if-ne v0, v1, :cond_2

    return-void

    .line 2048
    :cond_2
    :goto_0
    sget v0, Lcom/powervision/aircraft/R$string;->AP03_CameraSetting_65:I

    if-nez p1, :cond_3

    .line 2050
    sget v0, Lcom/powervision/aircraft/R$string;->AP03_DV_CameraSetting_65_1:I

    .line 2052
    :cond_3
    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_DV_TimeLapsePhoto_7:I

    .line 2053
    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_DV_TimeLapsePhoto_6:I

    .line 2054
    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$H7vhBAGTuevFTn0lPPAIPKKM7AA;

    invoke-direct {v6, p1}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$H7vhBAGTuevFTn0lPPAIPKKM7AA;-><init>(Z)V

    new-instance v7, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$mAH8l5kSzLyU7bKSpJW0O3LdKlc;

    invoke-direct {v7, p1}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$mAH8l5kSzLyU7bKSpJW0O3LdKlc;-><init>(Z)V

    const-string v2, ""

    move-object v1, p0

    .line 2052
    invoke-static/range {v1 .. v7}, Lcom/powervision/base/utils/DialogUtils;->customDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/powervision/base/utils/DialogUtils$OnClickListener;Lcom/powervision/base/utils/DialogUtils$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private dismissLoading()V
    .locals 1

    .line 5789
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->progressBar:Lcom/powervision/base/views/LoadingProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5790
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->progressBar:Lcom/powervision/base/views/LoadingProgressBar;

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->dismiss()V

    :cond_0
    return-void
.end method

.method private dismissWaiting()V
    .locals 1

    .line 5809
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->waitingProgressBar:Lcom/powervision/base/views/LoadingProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5810
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->waitingProgressBar:Lcom/powervision/base/views/LoadingProgressBar;

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->dismiss()V

    :cond_0
    return-void
.end method

.method private doResume()V
    .locals 6

    .line 561
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->setCompassView()V

    .line 562
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const-string v1, "PV_UNIT_STATUS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->unit:I

    .line 563
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const-string v1, "AP03_DELAY_MODE"

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->delayMode:I

    .line 564
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraMenuView:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-virtual {v1, v0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->setCurrentDealyMode(I)V

    .line 565
    iget v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->unit:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 566
    iput-boolean v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isUnit:Z

    .line 567
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mFlightParameterView:Lcom/powervision/aircraft/ui/views/FlightParameterView;

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/FlightParameterView;->setUnit(Z)V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 569
    iput-boolean v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isUnit:Z

    .line 570
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mFlightParameterView:Lcom/powervision/aircraft/ui/views/FlightParameterView;

    invoke-virtual {v0, v2}, Lcom/powervision/aircraft/ui/views/FlightParameterView;->setUnit(Z)V

    .line 572
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AircraftControlActivity... doResume()  ...GCSConnectionManager.get().isAp03Connected()= "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "....Ap03ConnectSdk.isDroneConnectStatus()= "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    invoke-static {}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->isDroneConnectStatus()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "connect_status"

    .line 572
    invoke-static {v3, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    invoke-static {}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->isDroneConnectStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTopView:Lcom/powervision/aircraft/ui/views/AircraftTopView;

    if-eqz v0, :cond_2

    .line 577
    new-instance v0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$r0bm7TmK4hwo4Cq2AML_sfBr7yk;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$r0bm7TmK4hwo4Cq2AML_sfBr7yk;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 579
    :cond_2
    new-instance v0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$3VyT-997jko7B6gh2ux0LxF2Yq0;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$3VyT-997jko7B6gh2ux0LxF2Yq0;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 582
    :goto_1
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mapSwitchManager:Lcom/powervision/map/manager/MapSwitchManager;

    invoke-virtual {v0}, Lcom/powervision/map/manager/MapSwitchManager;->onResume()V

    .line 583
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraConnect()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 584
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->myHandler:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;

    const/4 v3, 0x4

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v3, v4, v5}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    const-string v0, "camera_get_all"

    const-string v3, "  actvitiy .\u8bf7\u6c42..PARAM_GETALL_PARAM_START()   "

    .line 585
    invoke-static {v0, v3}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    :cond_3
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraAudioState()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 588
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mRecordImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 590
    :cond_4
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mRecordImg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 593
    :goto_2
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    const/16 v1, 0xa

    const-string v3, ""

    invoke-virtual {v0, v1, v3, v2}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->setGetAirDL01Value(ILjava/lang/String;I)V

    .line 607
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$2;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$2;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method

.method private exitAndResetMode()V
    .locals 4

    .line 4387
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const-string v1, "CURRENT_MODE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 4388
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-virtual {v0}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->setTripleMode()V

    goto :goto_0

    .line 4389
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 4390
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-virtual {v0}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->setFastMode()V

    goto :goto_0

    .line 4391
    :cond_1
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 4392
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-virtual {v0}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->setPosctlMode()V

    :cond_2
    :goto_0
    return-void
.end method

.method private getMcVersion(Ljava/lang/String;)I
    .locals 4

    const-string v0, "."

    .line 2289
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "\\."

    .line 2290
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 2291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "versions.length = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "helin"

    invoke-static {v2, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2295
    array-length v0, p1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 2297
    :try_start_0
    aget-object v0, p1, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    const/4 v2, 0x1

    .line 2298
    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    const/4 v3, 0x2

    .line 2299
    aget-object p1, p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v2

    add-int/2addr v0, p1

    return v0

    :catch_0
    :cond_0
    return v1
.end method

.method private hideBlurryView()V
    .locals 2

    .line 6290
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6293
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mBlurryView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->clear(Landroid/view/View;)V

    .line 6294
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mBlurryView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private hideOrShowAllViews(IZ)V
    .locals 2

    .line 4041
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mOneKeyReturnIv:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/powervision/base/utils/AnimUtils;->hideOrShowLeftView(Landroid/view/View;I)V

    .line 4042
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mFlightFunctionsIv:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/powervision/base/utils/AnimUtils;->hideOrShowLeftView(Landroid/view/View;I)V

    .line 4043
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mWaterFollow:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/powervision/base/utils/AnimUtils;->hideOrShowLeftViews(Landroid/view/View;I)V

    .line 4044
    invoke-static {}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->getInstance()Lcom/powervision/natives/connect/Ap03ConnectSdk;

    move-result-object v0

    iget-boolean v0, v0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->isArmed:Z

    if-nez v0, :cond_0

    .line 4045
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mOnekeyTakeOffIv:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/powervision/base/utils/AnimUtils;->hideOrShowLeftView(Landroid/view/View;I)V

    .line 4048
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTopView:Lcom/powervision/aircraft/ui/views/AircraftTopView;

    invoke-static {v0, p1}, Lcom/powervision/base/utils/AnimUtils;->hideOrShowTopView(Landroid/view/View;I)V

    .line 4050
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCloseMapIcon:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/powervision/base/utils/AnimUtils;->hideOrShowTopView(Landroid/view/View;I)V

    .line 4051
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mRecordingTimeTv:Landroid/widget/TextView;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v0, p1, v1}, Lcom/powervision/base/utils/AnimUtils;->hideOrShowCustomTopView(Landroid/view/View;IF)V

    .line 4052
    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isBigMap:Z

    if-nez v0, :cond_1

    .line 4053
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraParamView:Lcom/powervision/aircraft/ui/views/CameraParamView;

    invoke-static {v0, p1}, Lcom/powervision/base/utils/AnimUtils;->hideOrShowTopView(Landroid/view/View;I)V

    .line 4055
    :cond_1
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCompassIcon:Lcom/powervision/aircraft/ui/views/CompassView;

    invoke-static {v0, p1}, Lcom/powervision/base/utils/AnimUtils;->hideOrShowTopView(Landroid/view/View;I)V

    if-eqz p2, :cond_2

    .line 4057
    iget-boolean p2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isBigMap:Z

    if-nez p2, :cond_2

    .line 4058
    iget-object p2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->currentMode:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->currentMode:Ljava/lang/String;

    const-string v0, "INTEL_SHOOT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 4059
    iget-object p2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraMenuView:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-static {p2, p1}, Lcom/powervision/base/utils/AnimUtils;->hideOrShowRightView(Landroid/view/View;I)V

    :cond_2
    return-void
.end method

.method private initBasicGuideView()V
    .locals 2

    .line 6215
    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->showAircraftGuide:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->remoteMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->showAirGuide:Z

    if-nez v0, :cond_1

    .line 6216
    sget v0, Lcom/powervision/aircraft/R$id;->basic_flight_guide_stub:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mBasicFlightGuideStub:Landroid/view/ViewStub;

    .line 6217
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 6218
    sget v1, Lcom/powervision/aircraft/R$id;->basic_guide_view:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->basicGuideView:Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;

    .line 6219
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    if-eqz v0, :cond_0

    .line 6220
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-virtual {v0}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->setRemoteControlerResultListener()V

    .line 6222
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->basicGuideView:Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;

    new-instance v1, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$yZkQaMnfhCNkDQ5kSTwN6mO-m1I;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$yZkQaMnfhCNkDQ5kSTwN6mO-m1I;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->setOnGuideDismissListener(Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView$OnGuideCompleteListener;)V

    :cond_1
    return-void
.end method

.method private initCameraParameters()V
    .locals 1

    .line 3321
    sget v0, Lcom/powervision/aircraft/R$id;->camera_parameter:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/ui/views/CameraParamView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraParamView:Lcom/powervision/aircraft/ui/views/CameraParamView;

    .line 3322
    sget v0, Lcom/powervision/aircraft/R$id;->recording_time:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mRecordingTimeTv:Landroid/widget/TextView;

    return-void
.end method

.method private initCameraSDK()V
    .locals 2

    .line 3286
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3287
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.powervision.aircraft"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3289
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->initCameraSdk(Z)V

    goto :goto_0

    .line 3291
    :cond_0
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->initCameraSdk(Z)V

    :goto_0
    return-void
.end method

.method private initFreeMode()V
    .locals 5

    .line 4943
    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->inflatedFreeMode:Z

    if-nez v0, :cond_0

    .line 4944
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mStubLapseFree:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 4945
    sget v1, Lcom/powervision/aircraft/R$id;->air_lapse_free_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLapseFreeView:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    .line 4947
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mStubLapseFree:Landroid/view/ViewStub;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 4948
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLapseFreeView:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->setVisibility(I)V

    .line 4950
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLapseFreeView:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->getCurrentLength()I

    move-result v0

    .line 4951
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLapseFreeView:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-virtual {v1}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->getCurrentInterval()I

    move-result v1

    .line 4952
    iget-object v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLapseFreeView:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-virtual {v2}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->getCurrentSpeed()F

    move-result v2

    .line 4953
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v1, v0}, Lcom/powervision/camera/camera/CameraManager;->setCaptureMode(III)V

    .line 4954
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-virtual {v0, v2}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->setTimeLapsePhotoMaxSpeed(F)V

    .line 4955
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLapseFreeView:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    new-instance v1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$46;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$46;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->setSelectListener(Lcom/powervision/aircraft/ui/views/AirLapseFreeView$LapseSelectListener;)V

    .line 4963
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLapseFreeView:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    new-instance v1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$47;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$47;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->setCloseListener(Lcom/powervision/aircraft/ui/views/AirLapseFreeView$LapseCloseListener;)V

    .line 4970
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLapseFreeView:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    new-instance v1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$48;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$48;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->setSpeedListener(Lcom/powervision/aircraft/ui/views/AirLapseFreeView$LapseSpeedListener;)V

    .line 4980
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mFlightFunctionsIv:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/aircraft/R$mipmap;->aircraft_lapse_free:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private initGuideView()V
    .locals 3

    .line 3197
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const-string v1, "AIR_GUIDE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->showAirGuide:Z

    if-eqz v0, :cond_0

    .line 3199
    sget v0, Lcom/powervision/aircraft/R$id;->guide_stub:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->guideStub:Landroid/view/ViewStub;

    .line 3200
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 3201
    sget v1, Lcom/powervision/aircraft/R$id;->guideview:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/ui/views/AircraftGuideView;

    .line 3203
    new-instance v1, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$KtyaAlXHViSYqfCG0jqaQ8J49b4;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$KtyaAlXHViSYqfCG0jqaQ8J49b4;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/AircraftGuideView;->setOnGuideDismissListener(Lcom/powervision/aircraft/ui/views/AircraftGuideView$OnGuideCompleteListener;)V

    goto :goto_0

    .line 3211
    :cond_0
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->setGpsEnable()V

    :goto_0
    return-void
.end method

.method private initLapseView()V
    .locals 2

    .line 3174
    sget v0, Lcom/powervision/aircraft/R$id;->stub_lapse_free:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mStubLapseFree:Landroid/view/ViewStub;

    .line 3175
    sget v0, Lcom/powervision/aircraft/R$id;->stub_lapse_trail:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mStubLapseTrail:Landroid/view/ViewStub;

    .line 3177
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mStubLapseFree:Landroid/view/ViewStub;

    new-instance v1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$16;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$16;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    .line 3184
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mStubLapseTrail:Landroid/view/ViewStub;

    new-instance v1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$17;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$17;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    return-void
.end method

.method private initLayoutParams()V
    .locals 3

    .line 3388
    iget v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mDisplayCutStart:I

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v1}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCircleLeft:I

    const/high16 v0, 0x40a00000    # 5.0f

    .line 3389
    invoke-static {v0}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v0

    iput v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCircleTop:I

    .line 3390
    invoke-static {v1}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v0

    iput v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCircleRadius:I

    .line 3391
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mBigParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 3393
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCircleRadius:I

    mul-int/lit8 v2, v1, 0x2

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v2, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmallParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 3394
    iget v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCircleLeft:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    .line 3395
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmallParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCircleTop:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    .line 3396
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmallParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mRootLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 3397
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmallParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mRootLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    return-void
.end method

.method private initLeftFlyFunctionViews()V
    .locals 1

    .line 3312
    sget v0, Lcom/powervision/aircraft/R$id;->one_key_return:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mOneKeyReturnIv:Landroid/widget/ImageView;

    .line 3313
    sget v0, Lcom/powervision/aircraft/R$id;->flight_functions:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mFlightFunctionsIv:Landroid/widget/ImageView;

    .line 3314
    sget v0, Lcom/powervision/aircraft/R$id;->one_key_takeoff:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mOnekeyTakeOffIv:Landroid/widget/ImageView;

    .line 3315
    sget v0, Lcom/powervision/aircraft/R$id;->image_water_follow:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mWaterFollow:Landroid/widget/ImageView;

    .line 3317
    sget v0, Lcom/powervision/aircraft/R$id;->camera_temperature:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraTemperatureIv:Landroid/widget/ImageView;

    return-void
.end method

.method private initLines()V
    .locals 3

    .line 3591
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const-string v1, "AIRCRAFT_GRID_LINE_TAG"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3592
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/powervision/camera/camera/CameraManager;->setLinesMode(I)V

    .line 3593
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCustomLinesView:Lcom/powervision/base/views/CustomLinesView;

    if-eqz v1, :cond_0

    .line 3594
    invoke-virtual {v1, v0}, Lcom/powervision/base/views/CustomLinesView;->setLineMode(I)V

    :cond_0
    return-void
.end method

.method private initMap(Landroid/os/Bundle;)V
    .locals 3

    .line 3328
    sget v0, Lcom/powervision/aircraft/R$id;->air_map:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/powervision/airmap/mapview/AirMapView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mapView:Lcom/powervision/airmap/mapview/AirMapView;

    .line 3329
    sget v0, Lcom/powervision/aircraft/R$id;->mapViewMask:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mImageMapMask:Landroid/widget/ImageView;

    .line 3331
    new-instance v0, Lcom/powervision/map/manager/MapSwitchManager;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mapView:Lcom/powervision/airmap/mapview/AirMapView;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/powervision/map/manager/MapSwitchManager;-><init>(Landroid/content/Context;Lcom/powervision/airmap/mapview/AirMapView;Landroid/os/Bundle;Z)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mapSwitchManager:Lcom/powervision/map/manager/MapSwitchManager;

    .line 3333
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mapView:Lcom/powervision/airmap/mapview/AirMapView;

    invoke-virtual {p1}, Lcom/powervision/airmap/mapview/AirMapView;->isGoogleEnable()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3334
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mImageMapMask:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 3336
    :cond_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mImageMapMask:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3339
    :goto_0
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->setOnAirMapClickListener()V

    .line 3341
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mapSwitchManager:Lcom/powervision/map/manager/MapSwitchManager;

    invoke-virtual {p1, v2}, Lcom/powervision/map/manager/MapSwitchManager;->drawLineEnable(Z)V

    .line 3343
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mapSwitchManager:Lcom/powervision/map/manager/MapSwitchManager;

    new-instance v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$18;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$18;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    invoke-virtual {p1, v0}, Lcom/powervision/map/manager/MapSwitchManager;->setMyLocationChangeListener(Lcom/powervision/base/imap/MyLocationChangeListener;)V

    return-void
.end method

.method private initNotifyMsgListView()V
    .locals 0

    return-void
.end method

.method private initSDK()V
    .locals 2

    .line 3296
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-virtual {v0}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->setListener()V

    .line 3297
    invoke-static {}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->getInstance()Lcom/powervision/natives/connect/Ap03ConnectSdk;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->setOnDeviceLockChangeListener(Lcom/powervision/natives/connect/Ap03ConnectSdk$OnDeviceLockChangeListener;)V

    .line 3298
    invoke-static {}, Lcom/powervision/map/manager/AirMapManager;->getInstance()Lcom/powervision/map/manager/AirMapManager;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->airMapManager:Lcom/powervision/map/manager/AirMapManager;

    .line 3299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AircraftControlActivity... initSDK()  ...GCSConnectionManager.get().isAp03Connected()= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3301
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "....Ap03ConnectSdk.isDroneConnectStatus()= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3302
    invoke-static {}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->isDroneConnectStatus()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "connect_status"

    .line 3299
    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3303
    invoke-static {}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->isDroneConnectStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3304
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->setFlyZoneOperate(I)V

    :cond_0
    return-void
.end method

.method private initTrailMode()V
    .locals 2

    .line 4904
    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->inflatedTrailMode:Z

    if-nez v0, :cond_0

    .line 4905
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mStubLapseTrail:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 4906
    sget v1, Lcom/powervision/aircraft/R$id;->air_lapse_trail_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLapseTrailView:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    .line 4908
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mStubLapseTrail:Landroid/view/ViewStub;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 4909
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLapseTrailView:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->setVisibility(I)V

    .line 4911
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLapseTrailView:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    new-instance v1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$45;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$45;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->setCloseListener(Lcom/powervision/aircraft/ui/views/AirLapseTrailView$LapseCloseListener;)V

    .line 4918
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mFlightFunctionsIv:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/aircraft/R$mipmap;->aircraft_lapse_trail:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private isInArea(DD)Z
    .locals 4

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    cmpl-double v3, p1, v1

    if-eqz v3, :cond_2

    cmpl-double v3, p3, v1

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const-wide v1, 0x400eb23d4f15e7c9L    # 3.837031

    cmpl-double v3, p1, v1

    if-lez v3, :cond_1

    const-wide v1, 0x404ac824d4cb9ecfL    # 53.563624

    cmpg-double v3, p1, v1

    if-gez v3, :cond_1

    const-wide p1, 0x4060e30fba8826abL    # 135.09567

    cmpg-double v1, p3, p1

    if-gez v1, :cond_1

    const-wide p1, 0x405260269595fedaL    # 73.502355

    cmpl-double v1, p3, p1

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method public static synthetic lambda$aPRy5MRz-XXReRiXnk4m-EIhEg0(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->initBasicGuideView()V

    return-void
.end method

.method static synthetic lambda$currentStorageFull$35(ZLandroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 2057
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/powervision/camera/camera/CameraManager;->setCurrentStorageDevice(I)V

    goto :goto_0

    .line 2059
    :cond_0
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/camera/camera/CameraManager;->getSDAllCapacity()I

    move-result p0

    if-gtz p0, :cond_1

    .line 2060
    sget p0, Lcom/powervision/aircraft/R$string;->AP03_Msg_203:I

    invoke-static {p0}, Lcom/powervision/base/utils/ToastUtils;->showDefaultToast(I)V

    goto :goto_0

    .line 2062
    :cond_1
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/powervision/camera/camera/CameraManager;->setCurrentStorageDevice(I)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$currentStorageFull$36(ZLandroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 2067
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/camera/camera/CameraManager;->getSDStorageSize()V

    goto :goto_0

    .line 2069
    :cond_0
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/powervision/camera/camera/CameraManager;->getEmmcStorageSize()V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$fT7L6S98wFzk2biKdtTnFYDvZ3s(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->showBlurryView()V

    return-void
.end method

.method static synthetic lambda$mBackHome$40(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$setGpsEnable$44(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$setHDRMultipleShotsFail$57()V
    .locals 2

    const-string v0, "noti_camera"

    const-string v1, "  hdr  \u5931\u8d25\u4e86\u3002\u3002\u3002\u3002 "

    .line 5412
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$showChangeWaterModeDialog$50(Ljava/lang/Long;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5273
    invoke-virtual {p0}, Ljava/lang/Long;->intValue()I

    move-result p0

    rsub-int/lit8 p0, p0, 0xa

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private onConnectWifiCheck()V
    .locals 2

    .line 6274
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    .line 6275
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->isLeftLoad()Z

    move-result v0

    .line 6276
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->isRightLoad()Z

    move-result v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 6278
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method private onRemoteControlerIconUpdate()V
    .locals 5

    .line 6283
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->basicGuideView:Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;

    if-nez v0, :cond_0

    return-void

    .line 6286
    :cond_0
    iget v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->tempX:I

    iget v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->tempY:I

    iget v3, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->tempZ:I

    iget v4, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->tempR:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->dealWithControlerResult(IIII)V

    return-void
.end method

.method private onStartHighTemperatureAnimation()V
    .locals 3

    .line 5744
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mAlphaAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraTemperatureIv:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    return-void

    .line 5747
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraTemperatureIv:Landroid/widget/ImageView;

    const/4 v1, 0x6

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mAlphaAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x3e8

    .line 5748
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 5749
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mAlphaAnimation:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 5750
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mAlphaAnimation:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 5751
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mAlphaAnimation:Landroid/animation/ObjectAnimator;

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

    .line 5755
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mAlphaAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 5756
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 5758
    :cond_0
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->cancleTemperatureTask()V

    return-void
.end method

.method private onStopRecordingCancleTimer()V
    .locals 2

    .line 3742
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTimer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3743
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 3744
    iput-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTimer:Ljava/util/Timer;

    const/4 v0, 0x0

    .line 3745
    iput v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->recordingTime:I

    .line 3747
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 3748
    iput-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTimerTask:Ljava/util/TimerTask;

    .line 3750
    :cond_1
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mRecordingTimeTv:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3751
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mRecordingTimeTv:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   cameraStopRecording ... recordingTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->recordingTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AirCraftCo"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onTemperatureUpdate(Landroid/os/Message;)V
    .locals 3

    .line 6127
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v0, 0x4

    const/16 v1, 0x37

    if-lt p1, v1, :cond_1

    .line 6129
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraTemperatureIv:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-ne p1, v0, :cond_0

    .line 6130
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraTemperatureIv:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->camera_temperature_warning:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6131
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraTemperatureIv:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6132
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->onStartHighTemperatureAnimation()V

    .line 6133
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->showTemperatureDialog()V

    .line 6135
    :cond_0
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->cancleTemperatureTask()V

    goto :goto_0

    :cond_1
    const/16 v2, 0x2d

    if-lt p1, v2, :cond_2

    if-ge p1, v1, :cond_2

    .line 6137
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraTemperatureIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 6138
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraTemperatureIv:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/aircraft/R$mipmap;->camera_temperature_remind:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6139
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->onStartHighTemperatureAnimation()V

    const/16 v0, 0x32

    if-ge p1, v0, :cond_3

    .line 6141
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->startTemperatureTask()V

    goto :goto_0

    .line 6145
    :cond_2
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraTemperatureIv:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    .line 6146
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraTemperatureIv:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6147
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->onStopHighTemperatureAnimation()V

    const/4 p1, 0x1

    .line 6148
    iput-boolean p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->showTemperatureDialog:Z

    .line 6149
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->cancleTemperatureTask()V

    :cond_3
    :goto_0
    return-void
.end method

.method private oneKeyReturnClick(Landroid/view/View;)V
    .locals 3

    .line 4002
    iget p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartMode:I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 4003
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->slideReturnView:Lcom/powervision/aircraft/ui/views/SlideReturnView;

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/ui/views/SlideReturnView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 4005
    invoke-direct {p0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->resetSmartModeViews(Z)V

    const/4 p1, -0x1

    .line 4006
    iput p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->noramlFollowStatus:I

    .line 4007
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraMenuView:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-static {p1, v0}, Lcom/powervision/base/utils/AnimUtils;->hideOrShowRightView(Landroid/view/View;I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x5

    if-ne p1, v2, :cond_2

    .line 4009
    invoke-direct {p0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->resetSmartModeViews(Z)V

    .line 4010
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraMenuView:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-static {p1, v0}, Lcom/powervision/base/utils/AnimUtils;->hideOrShowRightView(Landroid/view/View;I)V

    .line 4011
    iput-boolean v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isWaterFollowBol:Z

    .line 4012
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 v0, 0xf56

    invoke-virtual {p1, v0}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 4014
    invoke-direct {p0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->resetSmartModeViews(Z)V

    .line 4015
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraMenuView:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-static {p1, v0}, Lcom/powervision/base/utils/AnimUtils;->hideOrShowRightView(Landroid/view/View;I)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    if-ne p1, v2, :cond_4

    .line 4017
    invoke-direct {p0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->resetSmartModeViews(Z)V

    .line 4018
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraMenuView:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-static {p1, v0}, Lcom/powervision/base/utils/AnimUtils;->hideOrShowRightView(Landroid/view/View;I)V

    .line 4019
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->onStopRecordingCancleTimer()V

    .line 4020
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/powervision/camera/camera/CameraManager;->setCameraCurrentStatus(I)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x4

    if-ne p1, v1, :cond_5

    .line 4023
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mWaterFollow:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4024
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->returnLastMode()V

    .line 4025
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AP03_DELAY_MODE"

    invoke-virtual {p1, v2, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4026
    iput-boolean v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isInputDelay:Z

    :cond_5
    :goto_0
    return-void
.end method

.method private openAndCloseCameraSetting()V
    .locals 5

    .line 3629
    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isShowViews:Z

    if-nez v0, :cond_0

    return-void

    .line 3632
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraSettingView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 3633
    new-instance v0, Lcom/powervision/camera/views/CameraSettingView;

    .line 3634
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v3

    sget v4, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_PHOTO:I

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-direct {v0, p0, v3, v2, v2}, Lcom/powervision/camera/views/CameraSettingView;-><init>(Landroid/content/Context;ZIZ)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraSettingView;

    .line 3636
    iget v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mDisplayCutEnd:I

    invoke-virtual {v0, v2}, Lcom/powervision/camera/views/CameraSettingView;->setRightPadding(I)V

    .line 3637
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraSettingView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3638
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraMenuView:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    const/high16 v2, 0x10a0000

    invoke-static {v0, v2}, Lcom/powervision/base/utils/AnimUtils;->startAnimation(Landroid/view/View;I)V

    const/4 v0, 0x4

    .line 3639
    invoke-direct {p0, v0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->hideOrShowAllViews(IZ)V

    goto :goto_1

    .line 3641
    :cond_2
    invoke-direct {p0, v2, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->hideOrShowAllViews(IZ)V

    .line 3642
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraSettingView;

    sget v1, Lcom/powervision/aircraft/R$anim;->anim_right_out:I

    invoke-static {v0, v1}, Lcom/powervision/base/utils/AnimUtils;->startAnimation(Landroid/view/View;I)V

    .line 3643
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraSettingView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 3644
    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraSettingView;

    :goto_1
    return-void
.end method

.method private processLapse()V
    .locals 4

    .line 1005
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLapseTrailView:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLapseFreeView:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 1007
    :cond_1
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    new-instance v1, Lcom/powervision/base/warning/HoverMessage;

    const/4 v2, 0x4

    sget v3, Lcom/powervision/aircraft/R$string;->AP03_DV_Msg_5:I

    .line 1008
    invoke-virtual {p0, v3}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 1007
    invoke-virtual {v0, v1}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    .line 1009
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->resetLapseView()V

    const-string v0, "\u9690\u85cf\u5ef6\u65f6\u6444\u5f71view"

    .line 1010
    invoke-static {v0}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    .line 1011
    iget v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->currentNum:I

    const/16 v1, 0xf

    if-ge v0, v1, :cond_2

    .line 1012
    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isInputDelay:Z

    if-nez v0, :cond_2

    .line 1014
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->myHandler:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;

    const/16 v1, 0x19

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1017
    :cond_2
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lapseStopDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1018
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lapseStopDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    :cond_3
    return-void
.end method

.method private registerPhoneStateReceiver()V
    .locals 2

    .line 543
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPhoneReceiver:Lcom/powervision/base/recevier/PhoneReceiver;

    if-nez v0, :cond_0

    .line 544
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 545
    new-instance v1, Lcom/powervision/base/recevier/PhoneReceiver;

    invoke-direct {v1}, Lcom/powervision/base/recevier/PhoneReceiver;-><init>()V

    iput-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPhoneReceiver:Lcom/powervision/base/recevier/PhoneReceiver;

    const-string v1, "android.intent.action.NEW_OUTGOING_CALL"

    .line 546
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PHONE_STATE"

    .line 547
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 548
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPhoneReceiver:Lcom/powervision/base/recevier/PhoneReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 549
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPhoneReceiver:Lcom/powervision/base/recevier/PhoneReceiver;

    invoke-virtual {v0, p0}, Lcom/powervision/base/recevier/PhoneReceiver;->setOnPhoneStateListener(Lcom/powervision/base/listener/PhoneCallListener;)V

    :cond_0
    return-void
.end method

.method private removeCameraSettingView()V
    .locals 2

    .line 5056
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraSettingView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 5057
    invoke-direct {p0, v0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->hideOrShowAllViews(IZ)V

    .line 5058
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraSettingView;

    sget v1, Lcom/powervision/aircraft/R$anim;->anim_right_out:I

    invoke-static {v0, v1}, Lcom/powervision/base/utils/AnimUtils;->startAnimation(Landroid/view/View;I)V

    .line 5059
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraSettingView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 5060
    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraSettingView;

    :cond_0
    return-void
.end method

.method private requestBasicPermission()V
    .locals 11

    .line 468
    new-instance v0, Lcom/tbruyelle/rxpermissions2/RxPermissions;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/RxPermissions;-><init>(Landroid/app/Activity;)V

    .line 469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 470
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v4, "android.permission.CAMERA"

    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v6, "android.permission.RECORD_AUDIO"

    const-string v7, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v8, "android.permission.ACCESS_FINE_LOCATION"

    const-string v9, "android.permission.BLUETOOTH"

    const-string v10, "android.permission.BLUETOOTH_ADMIN"

    .line 471
    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v3

    .line 476
    invoke-virtual {v0, v3}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->requestEach([Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v3, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$1;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private resetDelayModeViews()V
    .locals 3

    .line 4431
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartTopFuncitonView:Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->resetAll()V

    .line 4432
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartViewContainer:Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->resetAll()V

    const/4 v0, 0x0

    .line 4433
    iput v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartMode:I

    .line 4434
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mFlightParameterView:Lcom/powervision/aircraft/ui/views/FlightParameterView;

    invoke-virtual {v1}, Lcom/powervision/aircraft/ui/views/FlightParameterView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 4435
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mFlightParameterView:Lcom/powervision/aircraft/ui/views/FlightParameterView;

    invoke-virtual {v1, v0}, Lcom/powervision/aircraft/ui/views/FlightParameterView;->setVisibility(I)V

    .line 4438
    :cond_0
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraMenuView:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-virtual {v1, v0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->hideCamera(Z)V

    .line 4440
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->returnLastMode()V

    return-void
.end method

.method private resetLapseView()V
    .locals 4

    const/4 v0, 0x0

    .line 1024
    iput v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartMode:I

    .line 1025
    iput v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->delayMode:I

    .line 1026
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "AP03_DELAY_MODE"

    invoke-virtual {v1, v3, v2}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1027
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mOneKeyReturnIv:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1028
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mFlightFunctionsIv:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1029
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mOneKeyReturnIv:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/aircraft/R$mipmap;->aircraft_one_key_return:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1030
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLapseFreeView:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 1031
    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->resetView()V

    .line 1032
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLapseFreeView:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->setVisibility(I)V

    .line 1033
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mStubLapseFree:Landroid/view/ViewStub;

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1035
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLapseTrailView:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    if-eqz v0, :cond_1

    .line 1036
    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->resetView()V

    .line 1037
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLapseTrailView:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->setVisibility(I)V

    .line 1038
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mStubLapseTrail:Landroid/view/ViewStub;

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private resetSmartModeViews(Z)V
    .locals 3

    .line 4405
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartTopFuncitonView:Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->resetAll()V

    .line 4406
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartViewContainer:Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->resetAll()V

    const/4 v0, 0x0

    .line 4407
    iput v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartMode:I

    .line 4408
    iput-boolean v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->updageHeightSpeed:Z

    .line 4409
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mFlightParameterView:Lcom/powervision/aircraft/ui/views/FlightParameterView;

    invoke-virtual {v1}, Lcom/powervision/aircraft/ui/views/FlightParameterView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 4410
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mFlightParameterView:Lcom/powervision/aircraft/ui/views/FlightParameterView;

    invoke-virtual {v1, v0}, Lcom/powervision/aircraft/ui/views/FlightParameterView;->setVisibility(I)V

    .line 4413
    :cond_0
    iget-boolean v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isBigMap:Z

    if-nez v1, :cond_1

    .line 4414
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraMenuView:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-static {v1, v0}, Lcom/powervision/base/utils/AnimUtils;->hideOrShowRightView(Landroid/view/View;I)V

    .line 4416
    :cond_1
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mOneKeyReturnIv:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/aircraft/R$mipmap;->aircraft_one_key_return:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4417
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mWaterFollow:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4418
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraMenuView:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-virtual {v1, v0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->hideCamera(Z)V

    if-eqz p1, :cond_2

    .line 4420
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->returnLastMode()V

    .line 4422
    :cond_2
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 v1, 0xf30

    invoke-virtual {p1, v1}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    .line 4423
    sput-boolean v0, Lcom/powervision/aircraft/mission/SmartID;->isSmartFunction:Z

    return-void
.end method

.method private returnLastMode()V
    .locals 2

    .line 4344
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$37;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$37;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setCompassView()V
    .locals 4

    const-string v0, "sensor"

    .line 3602
    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x3

    .line 3603
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 3605
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->sensorEventListener:Landroid/hardware/SensorEventListener;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method private setGpsEnable()V
    .locals 8

    .line 3217
    invoke-static {p0}, Lcom/powervision/aircraft/utils/Utils;->isGpsOPen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3218
    sget v0, Lcom/powervision/aircraft/R$string;->AP03_Msg_1:I

    .line 3219
    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_Msg_180:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_Activation_6:I

    .line 3220
    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_Activation_9:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$jQ5r8RLsuvllq-Wfat8MJ25kGKw;

    invoke-direct {v6, p0}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$jQ5r8RLsuvllq-Wfat8MJ25kGKw;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    sget-object v7, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$pPK0-fMEXf8Z7ZOneBkP4Cr_9sQ;->INSTANCE:Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$pPK0-fMEXf8Z7ZOneBkP4Cr_9sQ;

    move-object v1, p0

    .line 3218
    invoke-static/range {v1 .. v7}, Lcom/powervision/base/utils/DialogUtils;->customDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/powervision/base/utils/DialogUtils$OnClickListener;Lcom/powervision/base/utils/DialogUtils$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private setMaxSpeed()V
    .locals 2

    .line 3010
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    iget v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->delaySpeed:F

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->setTimeLapsePhotoMaxSpeed(F)V

    return-void
.end method

.method private setOnAirMapClickListener()V
    .locals 2

    .line 3371
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mapSwitchManager:Lcom/powervision/map/manager/MapSwitchManager;

    new-instance v1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$19;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$19;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    invoke-virtual {v0, v1}, Lcom/powervision/map/manager/MapSwitchManager;->setOnAirMapClickListener(Lcom/powervision/base/imap/OnAirMapClickListener;)V

    return-void
.end method

.method private showBlurryView()V
    .locals 4

    .line 6196
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lastMode:Ljava/lang/String;

    const-string v1, "FOLLOW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6199
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6201
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 6202
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    new-instance v1, Lcom/powervision/base/utils/BlurTransformation;

    const/16 v2, 0x14

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/powervision/base/utils/BlurTransformation;-><init>(II)V

    .line 6203
    invoke-static {v1}, Lcom/bumptech/glide/request/RequestOptions;->bitmapTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mBlurryView:Landroid/widget/ImageView;

    .line 6204
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 6206
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mBlurryView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6207
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->myHandler:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;

    const/16 v1, 0x15

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private showChangeAirModeDialog()V
    .locals 2

    .line 5222
    new-instance v0, Lcom/powervision/base/views/AirDialog;

    invoke-direct {v0, p0}, Lcom/powervision/base/views/AirDialog;-><init>(Landroid/content/Context;)V

    .line 5223
    sget v1, Lcom/powervision/aircraft/R$string;->AP03_waterproof_5:I

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/AirDialog;->setContent(I)V

    .line 5224
    sget v1, Lcom/powervision/aircraft/R$string;->AP03_AI_3:I

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/AirDialog;->setButtonOkText(I)V

    .line 5225
    sget v1, Lcom/powervision/aircraft/R$string;->AP03_AI_2:I

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/AirDialog;->setButtonCancelText(I)V

    .line 5226
    new-instance v1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$53;

    invoke-direct {v1, p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$53;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Lcom/powervision/base/views/AirDialog;)V

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/AirDialog;->setClickListener(Lcom/powervision/base/views/AirDialog$DialogClickListener;)V

    .line 5239
    invoke-virtual {v0}, Lcom/powervision/base/views/AirDialog;->show()V

    return-void
.end method

.method private showChangeWaterModeDialog()V
    .locals 6

    .line 5246
    new-instance v0, Lcom/powervision/base/views/AirDialog;

    invoke-direct {v0, p0}, Lcom/powervision/base/views/AirDialog;-><init>(Landroid/content/Context;)V

    .line 5247
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget v2, Lcom/powervision/aircraft/R$string;->AP03_waterproof_2:I

    invoke-virtual {p0, v2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/AirDialog;->setContent(Ljava/lang/String;)V

    .line 5248
    sget v1, Lcom/powervision/aircraft/R$string;->AP03_AI_3:I

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/AirDialog;->setButtonOkText(I)V

    .line 5249
    sget v1, Lcom/powervision/aircraft/R$string;->AP03_AI_2:I

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/AirDialog;->setButtonCancelText(I)V

    .line 5250
    new-instance v1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$54;

    invoke-direct {v1, p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$54;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Lcom/powervision/base/views/AirDialog;)V

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/AirDialog;->setClickListener(Lcom/powervision/base/views/AirDialog$DialogClickListener;)V

    .line 5269
    invoke-virtual {v0}, Lcom/powervision/base/views/AirDialog;->show()V

    .line 5270
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    invoke-static {v2, v3, v4, v5, v1}, Lio/reactivex/Observable;->interval(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v1

    .line 5271
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    .line 5272
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    sget-object v2, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$0KBlORCzvf2mQwxmD3lRQPKF27w;->INSTANCE:Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$0KBlORCzvf2mQwxmD3lRQPKF27w;

    .line 5273
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    const-wide/16 v2, 0xb

    .line 5274
    invoke-virtual {v1, v2, v3}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$eH4x2Sv-EN5f6rrC40g8NPUgWPA;

    invoke-direct {v2, p0, v0}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$eH4x2Sv-EN5f6rrC40g8NPUgWPA;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Lcom/powervision/base/views/AirDialog;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->disposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private showDelayLoading()V
    .locals 2

    .line 5779
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->progressBar:Lcom/powervision/base/views/LoadingProgressBar;

    if-nez v0, :cond_0

    .line 5780
    new-instance v0, Lcom/powervision/base/views/LoadingProgressBar;

    invoke-direct {v0, p0}, Lcom/powervision/base/views/LoadingProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->progressBar:Lcom/powervision/base/views/LoadingProgressBar;

    .line 5781
    sget v1, Lcom/powervision/aircraft/R$string;->AP03_DV_Msg_23:I

    invoke-virtual {p0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/LoadingProgressBar;->setText(Ljava/lang/String;)V

    .line 5783
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->progressBar:Lcom/powervision/base/views/LoadingProgressBar;

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5784
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->progressBar:Lcom/powervision/base/views/LoadingProgressBar;

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->show()V

    :cond_1
    return-void
.end method

.method private showDelayView(I)V
    .locals 2

    .line 4763
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartTopFuncitonView:Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->resetAll()V

    .line 4764
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mFlightParameterView:Lcom/powervision/aircraft/ui/views/FlightParameterView;

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/views/FlightParameterView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 4765
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mFlightParameterView:Lcom/powervision/aircraft/ui/views/FlightParameterView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/FlightParameterView;->setVisibility(I)V

    .line 4767
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mOneKeyReturnIv:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/aircraft/R$mipmap;->aircraft_smart_follow_close:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4768
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraMenuView:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->hideCamera(Z)V

    .line 4769
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartViewContainer:Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->setVisibility(I)V

    .line 4770
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartViewContainer:Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;

    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->setDelayMode(I)V

    .line 4771
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartViewContainer:Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->initFragments(I)V

    return-void
.end method

.method private showForeignNoFlyZoneUnlockDialog()V
    .locals 4

    .line 1562
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 1563
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 1564
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 1566
    sget v1, Lcom/powervision/aircraft/R$string;->AP03_Msg_1:I

    invoke-virtual {p0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1567
    sget v1, Lcom/powervision/aircraft/R$string;->AP03_Msg_26_48:I

    invoke-virtual {p0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1568
    sget v1, Lcom/powervision/aircraft/R$string;->AP03_Activation_6:I

    invoke-virtual {p0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$9;

    invoke-direct {v2, p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$9;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    const/4 v3, -0x1

    invoke-virtual {v0, v3, v1, v2}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1575
    sget v1, Lcom/powervision/aircraft/R$string;->AP03_Activation_9:I

    invoke-virtual {p0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$10;

    invoke-direct {v2, p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$10;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    const/4 v3, -0x2

    invoke-virtual {v0, v3, v1, v2}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1582
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private showGeneralSettingsView(I)V
    .locals 3

    .line 3660
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mGeneralSettingsView:Lcom/powervision/aircraft/ui/views/GeneralSettingsView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3661
    new-instance v0, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1, p1}, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mGeneralSettingsView:Lcom/powervision/aircraft/ui/views/GeneralSettingsView;

    .line 3662
    iget p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mDisplayCutEnd:I

    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->setContentPaddingEnd(I)V

    .line 3663
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v2, -0x1

    invoke-direct {p1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xb

    .line 3667
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3669
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/ViewGroup;

    .line 3670
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3671
    iget-object v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mGeneralSettingsView:Lcom/powervision/aircraft/ui/views/GeneralSettingsView;

    invoke-virtual {v0, v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x7

    if-ne p1, v2, :cond_1

    .line 3673
    invoke-virtual {v0, v2}, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->intoCustomKeyFragment(I)V

    .line 3674
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mGeneralSettingsView:Lcom/powervision/aircraft/ui/views/GeneralSettingsView;

    invoke-virtual {p1, v1}, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->setVisibility(I)V

    goto :goto_0

    .line 3676
    :cond_1
    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->setVisibility(I)V

    .line 3678
    :goto_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mGeneralSettingsView:Lcom/powervision/aircraft/ui/views/GeneralSettingsView;

    invoke-static {p1, v1}, Lcom/powervision/base/utils/AnimUtils;->hideOrShowRightView(Landroid/view/View;I)V

    const/4 p1, 0x4

    const/4 v0, 0x1

    .line 3679
    invoke-direct {p0, p1, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->hideOrShowAllViews(IZ)V

    return-void
.end method

.method private showNewerDialog()V
    .locals 3

    .line 5192
    new-instance v0, Lcom/powervision/aircraft/ui/fragment/dialog/NewerModeDialog;

    invoke-direct {v0}, Lcom/powervision/aircraft/ui/fragment/dialog/NewerModeDialog;-><init>()V

    .line 5193
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/powervision/aircraft/ui/fragment/dialog/NewerModeDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showPointSurround(I)V
    .locals 4

    .line 4495
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartTopFuncitonView:Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->resetAll()V

    .line 4497
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mFlightParameterView:Lcom/powervision/aircraft/ui/views/FlightParameterView;

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/views/FlightParameterView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 4498
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mFlightParameterView:Lcom/powervision/aircraft/ui/views/FlightParameterView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/FlightParameterView;->setVisibility(I)V

    .line 4501
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraMenuView:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->hideCamera(Z)V

    .line 4504
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mOneKeyReturnIv:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/aircraft/R$mipmap;->aircraft_smart_follow_close:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4506
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartViewContainer:Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->setVisibility(I)V

    const-string v0, "PointSurroundFragment"

    const-string v3, "surroundModeByCode ...... ..."

    .line 4507
    invoke-static {v0, v3}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4508
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartViewContainer:Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;

    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->setSurroundMode(I)V

    .line 4509
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartViewContainer:Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;

    invoke-virtual {p1, v2}, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->initFragments(I)V

    .line 4510
    iput-boolean v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->updageHeightSpeed:Z

    return-void
.end method

.method private showSmartClisp(I)V
    .locals 2

    .line 4750
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartTopFuncitonView:Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->resetAll()V

    .line 4751
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mFlightParameterView:Lcom/powervision/aircraft/ui/views/FlightParameterView;

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/views/FlightParameterView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 4752
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mFlightParameterView:Lcom/powervision/aircraft/ui/views/FlightParameterView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/FlightParameterView;->setVisibility(I)V

    .line 4754
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mOneKeyReturnIv:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/aircraft/R$mipmap;->aircraft_smart_follow_close:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4755
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraMenuView:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->hideCamera(Z)V

    .line 4756
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraMenuView:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/powervision/base/utils/AnimUtils;->hideOrShowRightView(Landroid/view/View;I)V

    .line 4757
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartViewContainer:Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->setVisibility(I)V

    .line 4758
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartViewContainer:Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;

    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->setClipsMode(I)V

    .line 4759
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartViewContainer:Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->initFragments(I)V

    return-void
.end method

.method private showSmartFollow(II)V
    .locals 3

    .line 4737
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartTopFuncitonView:Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->resetAll()V

    .line 4738
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mFlightParameterView:Lcom/powervision/aircraft/ui/views/FlightParameterView;

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/views/FlightParameterView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 4739
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mFlightParameterView:Lcom/powervision/aircraft/ui/views/FlightParameterView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/FlightParameterView;->setVisibility(I)V

    .line 4741
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mOneKeyReturnIv:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/aircraft/R$mipmap;->aircraft_smart_follow_close:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4742
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraMenuView:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->hideCamera(Z)V

    .line 4744
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartViewContainer:Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->setVisibility(I)V

    .line 4745
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartViewContainer:Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;

    invoke-virtual {v0, p1, p2}, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->setFollowMode(II)V

    .line 4746
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartViewContainer:Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;

    invoke-virtual {p1, v1}, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->initFragments(I)V

    return-void
.end method

.method private showTemperatureDialog()V
    .locals 4

    .line 3014
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->showTemperatureDialog:Z

    if-nez v0, :cond_0

    return-void

    .line 3017
    :cond_0
    sget v0, Lcom/lewis/camera/R$string;->AP03_CameraSetting_57:I

    .line 3018
    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$string;->AP03_Msg_139_14:I

    .line 3019
    invoke-virtual {p0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/lewis/camera/R$string;->AP03_ConnectGuide_47:I

    .line 3020
    invoke-virtual {p0, v2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 3017
    invoke-static {p0, v0, v1, v2, v3}, Lcom/powervision/base/utils/DialogUtils;->defaultDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 3021
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    const/4 v0, 0x0

    .line 3022
    iput-boolean v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->showTemperatureDialog:Z

    return-void
.end method

.method private showTimeDown()V
    .locals 7

    .line 5164
    new-instance v6, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$51;

    const-wide/16 v2, 0x1324

    const-wide/16 v4, 0x3e8

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$51;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;JJ)V

    iput-object v6, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->timer:Landroid/os/CountDownTimer;

    .line 5188
    invoke-virtual {v6}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private showWaitingBar()V
    .locals 1

    .line 5800
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->waitingProgressBar:Lcom/powervision/base/views/LoadingProgressBar;

    if-nez v0, :cond_0

    .line 5801
    new-instance v0, Lcom/powervision/base/views/LoadingProgressBar;

    invoke-direct {v0, p0}, Lcom/powervision/base/views/LoadingProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->waitingProgressBar:Lcom/powervision/base/views/LoadingProgressBar;

    .line 5803
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->waitingProgressBar:Lcom/powervision/base/views/LoadingProgressBar;

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5804
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->waitingProgressBar:Lcom/powervision/base/views/LoadingProgressBar;

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->show()V

    :cond_1
    return-void
.end method

.method private showWaterDialog()V
    .locals 2

    .line 5201
    new-instance v0, Lcom/powervision/base/views/AirDialog;

    invoke-direct {v0, p0}, Lcom/powervision/base/views/AirDialog;-><init>(Landroid/content/Context;)V

    .line 5202
    sget v1, Lcom/powervision/aircraft/R$string;->AP03_waterproof_3:I

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/AirDialog;->setContent(I)V

    .line 5203
    sget v1, Lcom/powervision/aircraft/R$string;->AP03_DV_FuncGuide_8:I

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/AirDialog;->setButtonOkText(I)V

    .line 5204
    new-instance v1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$52;

    invoke-direct {v1, p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$52;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Lcom/powervision/base/views/AirDialog;)V

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/AirDialog;->setClickListener(Lcom/powervision/base/views/AirDialog$DialogClickListener;)V

    .line 5215
    invoke-virtual {v0}, Lcom/powervision/base/views/AirDialog;->show()V

    return-void
.end method

.method private startRecordAudio()V
    .locals 3

    const-string v0, "AirCraftCo"

    const-string v1, "startRecordAudio()"

    .line 2785
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2786
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraAudioState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 2787
    invoke-static {}, Lcom/powervision/natives/connect/AudioConnectSDK;->getInstance()Lcom/powervision/natives/connect/AudioConnectSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/AudioConnectSDK;->isAudioConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2788
    invoke-static {}, Lcom/powervision/aircraft/utils/AudioRecordManager;->getInstance()Lcom/powervision/aircraft/utils/AudioRecordManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/utils/AudioRecordManager;->startRecordFrom(I)V

    goto :goto_0

    :cond_0
    const-string v0, "\u6536\u58f0\u94fe\u8def\u5df2\u65ad\u5f00"

    .line 2790
    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    const-string v0, "nemo_record_info-air"

    const-string v1, "\u98de\u884c\u9875\u9762\u5f00\u59cb\u6536\u58f0 \u5f00\u59cb\u5f55\u50cf \u4f46\u662f\u94fe\u8def\u65ad\u5f00\u4e86"

    .line 2791
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogConnectStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private startTemperatureTask()V
    .locals 7

    .line 6159
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTemperatureTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTimerTemperatureTask:Ljava/util/TimerTask;

    if-nez v0, :cond_0

    .line 6160
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTemperatureTimer:Ljava/util/Timer;

    .line 6161
    new-instance v2, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$64;

    invoke-direct {v2, p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$64;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    iput-object v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTimerTemperatureTask:Ljava/util/TimerTask;

    .line 6174
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTemperatureTimer:Ljava/util/Timer;

    const-wide/16 v3, 0x3e8

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method

.method private startTimerTask(Z)V
    .locals 7

    if-nez p1, :cond_0

    .line 3820
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_2

    :cond_1
    return-void

    .line 3824
    :cond_2
    iget v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->recordingTime:I

    invoke-static {v0}, Lcom/powervision/base/utils/TimeUtils;->formatRecordVideoTime(I)Ljava/lang/String;

    move-result-object v0

    .line 3825
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mRecordingTimeTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3826
    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isBigMap:Z

    if-eqz v0, :cond_3

    .line 3827
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mRecordingTimeTv:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 3828
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mRecordingTimeTv:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 3831
    :cond_3
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mRecordingTimeTv:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3833
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTimerTask:Ljava/util/TimerTask;

    if-nez v0, :cond_5

    .line 3834
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTimer:Ljava/util/Timer;

    .line 3835
    new-instance v2, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$28;

    invoke-direct {v2, p0, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$28;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Z)V

    iput-object v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTimerTask:Ljava/util/TimerTask;

    .line 3862
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTimer:Ljava/util/Timer;

    const-wide/16 v3, 0x3e8

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_5
    return-void
.end method

.method private stopRecordAudio()V
    .locals 2

    const-string v0, "AirCraftCo"

    const-string v1, "stopRecordAudio()"

    .line 2800
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2801
    invoke-static {}, Lcom/powervision/aircraft/utils/AudioRecordManager;->getInstance()Lcom/powervision/aircraft/utils/AudioRecordManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/utils/AudioRecordManager;->stopRecordFrom(I)V

    return-void
.end method

.method private storeLocation(II)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    const-string v1, "last"

    .line 4997
    invoke-virtual {p0, v1, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4998
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "aircraft_lat"

    .line 4999
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "aircraft_lon"

    .line 5000
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5001
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  \u5b58\u50a8    ...\u98de\u673a\u56de\u8c03    lat ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "   lon ="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mLocation"

    invoke-static {p2, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private switchViewMode(Lcom/powervision/base/views/CircleRelativeLayout;Lcom/powervision/base/views/CircleRelativeLayout;)V
    .locals 6

    .line 4069
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->setGpsEnable()V

    .line 4070
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mMapLayout:Lcom/powervision/base/views/CircleRelativeLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v0, :cond_6

    .line 4073
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mapSwitchManager:Lcom/powervision/map/manager/MapSwitchManager;

    invoke-virtual {v0, v3}, Lcom/powervision/map/manager/MapSwitchManager;->setOnAirMapClickListener(Lcom/powervision/base/imap/OnAirMapClickListener;)V

    .line 4074
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mVideoLayout:Lcom/powervision/base/views/CircleRelativeLayout;

    iget-object v3, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Lcom/powervision/base/views/CircleRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4075
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->barrierGroup:Lcom/powervision/aircraft/ui/views/BarrierGroup;

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/views/BarrierGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 4076
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->barrierGroup:Lcom/powervision/aircraft/ui/views/BarrierGroup;

    invoke-virtual {v0, v4}, Lcom/powervision/aircraft/ui/views/BarrierGroup;->setVisibility(I)V

    .line 4078
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraParamView:Lcom/powervision/aircraft/ui/views/CameraParamView;

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/views/CameraParamView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 4079
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraParamView:Lcom/powervision/aircraft/ui/views/CameraParamView;

    invoke-virtual {v0, v4}, Lcom/powervision/aircraft/ui/views/CameraParamView;->setVisibility(I)V

    .line 4081
    :cond_1
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraMenuView:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 4082
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraMenuView:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-virtual {v0, v4}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->setVisibility(I)V

    .line 4084
    :cond_2
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mapOptionView:Lcom/powervision/aircraft/ui/views/MapOptionView;

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/views/MapOptionView;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 4085
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mapOptionView:Lcom/powervision/aircraft/ui/views/MapOptionView;

    invoke-virtual {v0, v5}, Lcom/powervision/aircraft/ui/views/MapOptionView;->setVisibility(I)V

    .line 4087
    :cond_3
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mVideoLayout:Lcom/powervision/base/views/CircleRelativeLayout;

    if-eqz v0, :cond_4

    .line 4088
    sget v3, Lcom/powervision/aircraft/R$color;->transparent:I

    invoke-virtual {v0, v3}, Lcom/powervision/base/views/CircleRelativeLayout;->setBackgroundResource(I)V

    .line 4090
    :cond_4
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mRecordingTimeTv:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 4091
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mRecordingTimeTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4093
    :cond_5
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mapSwitchManager:Lcom/powervision/map/manager/MapSwitchManager;

    invoke-virtual {v0, v5}, Lcom/powervision/map/manager/MapSwitchManager;->setAirAlwaysCenter(Z)V

    goto :goto_0

    .line 4097
    :cond_6
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->setOnAirMapClickListener()V

    .line 4098
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mVideoLayout:Lcom/powervision/base/views/CircleRelativeLayout;

    invoke-virtual {v0, v3}, Lcom/powervision/base/views/CircleRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4104
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraParamView:Lcom/powervision/aircraft/ui/views/CameraParamView;

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/views/CameraParamView;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_7

    .line 4105
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraParamView:Lcom/powervision/aircraft/ui/views/CameraParamView;

    invoke-virtual {v0, v5}, Lcom/powervision/aircraft/ui/views/CameraParamView;->setVisibility(I)V

    .line 4107
    :cond_7
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraMenuView:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    if-eqz v0, :cond_8

    iget-boolean v3, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isFling:Z

    if-nez v3, :cond_8

    .line 4108
    invoke-virtual {v0, v5}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->setVisibility(I)V

    .line 4110
    :cond_8
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mapOptionView:Lcom/powervision/aircraft/ui/views/MapOptionView;

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/views/MapOptionView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    .line 4111
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mapOptionView:Lcom/powervision/aircraft/ui/views/MapOptionView;

    invoke-virtual {v0, v4}, Lcom/powervision/aircraft/ui/views/MapOptionView;->setVisibility(I)V

    .line 4113
    :cond_9
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mVideoLayout:Lcom/powervision/base/views/CircleRelativeLayout;

    if-eqz v0, :cond_a

    .line 4114
    sget v3, Lcom/powervision/aircraft/R$color;->black:I

    invoke-virtual {v0, v3}, Lcom/powervision/base/views/CircleRelativeLayout;->setBackgroundResource(I)V

    .line 4116
    :cond_a
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mRecordingTimeTv:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_b

    .line 4117
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mRecordingTimeTv:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4119
    :cond_b
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mapSwitchManager:Lcom/powervision/map/manager/MapSwitchManager;

    invoke-virtual {v0, v2}, Lcom/powervision/map/manager/MapSwitchManager;->setAirAlwaysCenter(Z)V

    .line 4121
    :goto_0
    invoke-virtual {p1, v1}, Lcom/powervision/base/views/CircleRelativeLayout;->setVisibility(I)V

    .line 4122
    invoke-virtual {p1, v5}, Lcom/powervision/base/views/CircleRelativeLayout;->setIsCycle(Z)V

    .line 4123
    invoke-virtual {p1}, Lcom/powervision/base/views/CircleRelativeLayout;->postInvalidate()V

    .line 4125
    invoke-virtual {p2, v2}, Lcom/powervision/base/views/CircleRelativeLayout;->setIsCycle(Z)V

    .line 4126
    invoke-virtual {p2}, Lcom/powervision/base/views/CircleRelativeLayout;->postInvalidate()V

    .line 4127
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmallParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v0, :cond_c

    .line 4128
    invoke-virtual {p2, v0}, Lcom/powervision/base/views/CircleRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c
    const/4 v0, 0x0

    .line 4130
    invoke-virtual {p1, v0}, Lcom/powervision/base/views/CircleRelativeLayout;->setZ(F)V

    const/high16 v0, 0x42c80000    # 100.0f

    .line 4131
    invoke-virtual {p2, v0}, Lcom/powervision/base/views/CircleRelativeLayout;->setZ(F)V

    .line 4132
    iget-object p2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mBigParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz p2, :cond_d

    .line 4133
    invoke-virtual {p1, p2}, Lcom/powervision/base/views/CircleRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4135
    :cond_d
    invoke-virtual {p1, v5}, Lcom/powervision/base/views/CircleRelativeLayout;->setVisibility(I)V

    .line 4136
    iget p2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCircleLeft:I

    iget v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCircleRadius:I

    add-int/2addr p2, v0

    iget v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCircleTop:I

    add-int/2addr v1, v0

    int-to-float v0, v0

    .line 4137
    invoke-static {p0}, Lcom/powervision/base/utils/ScreenUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    .line 4136
    invoke-static {p1, p2, v1, v0, v2}, Lcom/powervision/base/utils/AnimUtils;->startCircleAnimation(Landroid/view/View;IIFF)V

    .line 4139
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mAttitudeLayout:Lcom/powervision/base/views/CircleRelativeLayout;

    const/high16 p2, 0x43160000    # 150.0f

    invoke-virtual {p1, p2}, Lcom/powervision/base/views/CircleRelativeLayout;->setZ(F)V

    return-void
.end method


# virtual methods
.method public OnSmartMenuItemClick(I)V
    .locals 7

    const/4 v0, 0x0

    const/high16 v1, 0x40400000    # 3.0f

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 4232
    iput-boolean v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isWaterFollowBol:Z

    .line 4233
    invoke-direct {p0, v2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->resetSmartModeViews(Z)V

    goto/16 :goto_0

    :cond_0
    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x4

    if-ne p1, v2, :cond_3

    .line 4235
    iget v6, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->smartHight:F

    cmpl-float v6, v6, v1

    if-lez v6, :cond_2

    .line 4236
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v6

    if-ne v6, v4, :cond_1

    invoke-static {}, Lcom/powervision/camera/utils/CameraUtil;->isHigher30fps()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4237
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    new-instance v0, Lcom/powervision/base/warning/HoverMessage;

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_AI_108:I

    invoke-virtual {p0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v5, v1}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    .line 4238
    invoke-direct {p0, v2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->resetSmartModeViews(Z)V

    return-void

    .line 4241
    :cond_1
    iget-object v4, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartTopFuncitonView:Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;

    invoke-virtual {v4, v3, v0}, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->initFollowFragments(II)V

    .line 4242
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mVideoLayout:Lcom/powervision/base/views/CircleRelativeLayout;

    iget-object v3, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mMapLayout:Lcom/powervision/base/views/CircleRelativeLayout;

    invoke-direct {p0, v0, v3}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->switchViewMode(Lcom/powervision/base/views/CircleRelativeLayout;Lcom/powervision/base/views/CircleRelativeLayout;)V

    .line 4243
    sput-boolean v2, Lcom/powervision/aircraft/mission/SmartID;->isSmartFunction:Z

    goto/16 :goto_0

    .line 4246
    :cond_2
    new-instance v0, Lcom/powervision/base/warning/HoverMessage;

    .line 4247
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/powervision/aircraft/R$string;->AP03_Msg_161:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v5, v3}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 4248
    iget-object v3, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    invoke-virtual {v3, v0}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    .line 4249
    invoke-direct {p0, v2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->resetSmartModeViews(Z)V

    goto/16 :goto_0

    :cond_3
    if-ne p1, v4, :cond_5

    .line 4276
    iget v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->smartHight:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 4277
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartTopFuncitonView:Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;

    invoke-virtual {v0, v2}, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->initFragments(I)V

    .line 4278
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-virtual {v0}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->setPointSurrondMode()V

    .line 4279
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mVideoLayout:Lcom/powervision/base/views/CircleRelativeLayout;

    iget-object v3, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mMapLayout:Lcom/powervision/base/views/CircleRelativeLayout;

    invoke-direct {p0, v0, v3}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->switchViewMode(Lcom/powervision/base/views/CircleRelativeLayout;Lcom/powervision/base/views/CircleRelativeLayout;)V

    .line 4280
    sput-boolean v2, Lcom/powervision/aircraft/mission/SmartID;->isSmartFunction:Z

    goto/16 :goto_0

    .line 4282
    :cond_4
    new-instance v0, Lcom/powervision/base/warning/HoverMessage;

    .line 4283
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/powervision/aircraft/R$string;->AP03_Msg_161:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v5, v3}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 4284
    iget-object v3, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    invoke-virtual {v3, v0}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    .line 4285
    invoke-direct {p0, v2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->resetSmartModeViews(Z)V

    goto/16 :goto_0

    :cond_5
    if-ne p1, v3, :cond_9

    .line 4288
    iget v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->smartHight:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    .line 4289
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    if-ne v0, v4, :cond_6

    .line 4290
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_Msg_193:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    return-void

    .line 4292
    :cond_6
    invoke-static {}, Lcom/powervision/camera/utils/CameraUtil;->checkStorageAvailiable()Z

    move-result v0

    if-nez v0, :cond_7

    .line 4293
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_CameraSetting_66:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    return-void

    .line 4296
    :cond_7
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartTopFuncitonView:Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->initFragments(I)V

    const-string v0, "onekey_clips_nemo"

    const-string v3, "\u5207\u6362\u5230\u6a21\u5f0f\u9009\u62e9\u9875\u9762"

    .line 4297
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4298
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mVideoLayout:Lcom/powervision/base/views/CircleRelativeLayout;

    iget-object v3, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mMapLayout:Lcom/powervision/base/views/CircleRelativeLayout;

    invoke-direct {p0, v0, v3}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->switchViewMode(Lcom/powervision/base/views/CircleRelativeLayout;Lcom/powervision/base/views/CircleRelativeLayout;)V

    .line 4299
    sput-boolean v2, Lcom/powervision/aircraft/mission/SmartID;->isSmartFunction:Z

    goto/16 :goto_0

    .line 4301
    :cond_8
    new-instance v0, Lcom/powervision/base/warning/HoverMessage;

    .line 4302
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/powervision/aircraft/R$string;->AP03_Msg_161:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v5, v3}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 4303
    iget-object v3, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    invoke-virtual {v3, v0}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    .line 4304
    invoke-direct {p0, v2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->resetSmartModeViews(Z)V

    goto/16 :goto_0

    :cond_9
    if-ne p1, v5, :cond_d

    .line 4307
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    if-ne v0, v4, :cond_a

    .line 4308
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_Msg_193_1:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    return-void

    .line 4310
    :cond_a
    invoke-static {}, Lcom/powervision/camera/utils/CameraUtil;->checkStorageAvailiable()Z

    move-result v0

    if-nez v0, :cond_b

    .line 4311
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_CameraSetting_66:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    return-void

    .line 4314
    :cond_b
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const-string v2, "AP03_FC_VERSION"

    invoke-virtual {v0, v2}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4315
    iget-object v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const-string v3, "AP03_MC_VERSION"

    invoke-virtual {v2, v3}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4316
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fcVersion = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mcVersion = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "wang"

    invoke-static {v4, v3}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4317
    sget v3, Lcom/powervision/aircraft/R$string;->FC:I

    invoke-virtual {p0, v3}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/powervision/gcs/manager/FirmWareUtils;->firstIsBiggerOrSame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget v0, Lcom/powervision/aircraft/R$string;->MC:I

    .line 4318
    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/powervision/gcs/manager/FirmWareUtils;->firstIsBiggerOrSame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "nemo-delay-info"

    const-string v2, "1\u8fdb\u5165\u5ef6\u65f6\u6444\u5f71"

    .line 4319
    invoke-static {v0, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4320
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartTopFuncitonView:Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->initFragments(I)V

    .line 4321
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->switchToSnapMode()V

    .line 4322
    iput p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartMode:I

    goto :goto_0

    .line 4324
    :cond_c
    sget v0, Lcom/powervision/aircraft/R$string;->AP03_Msg_62_24:I

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    goto :goto_0

    .line 4328
    :cond_d
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartTopFuncitonView:Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->resetAll()V

    .line 4329
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->returnLastMode()V

    .line 4331
    :goto_0
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->smartHight:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_e

    .line 4332
    iput p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartMode:I

    if-lez p1, :cond_e

    .line 4334
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 v0, 0xf29

    invoke-virtual {p1, v0}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    :cond_e
    return-void
.end method

.method public addMessageAndUpdate(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/base/warning/HoverMessage;",
            ">;)V"
        }
    .end annotation

    .line 4211
    new-instance v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$36;

    invoke-direct {v0, p0, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$36;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public barrierStatus(I)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6098
    :goto_0
    iput-boolean p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->barrierOpen:Z

    .line 6099
    new-instance p1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$63;

    invoke-direct {p1, p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$63;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public cameraSettingClick()V
    .locals 1
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0x2
    .end annotation

    .line 3689
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraConnect()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3690
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getAllParameters()V

    .line 3692
    :cond_0
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->openAndCloseCameraSetting()V

    return-void
.end method

.method public cameraSettingClickClose()V
    .locals 1
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xb5
    .end annotation

    .line 3698
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraConnect()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3699
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getAllParameters()V

    .line 3701
    :cond_0
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->openAndCloseCameraSetting()V

    return-void
.end method

.method public cameraStartRecording()V
    .locals 2
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xa
    .end annotation

    const/4 v0, 0x0

    .line 3707
    invoke-direct {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->startTimerTask(Z)V

    .line 3708
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraSettingView;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 3709
    invoke-direct {p0, v0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->hideOrShowAllViews(IZ)V

    .line 3710
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraSettingView;

    sget v1, Lcom/powervision/aircraft/R$anim;->anim_right_out:I

    invoke-static {v0, v1}, Lcom/powervision/base/utils/AnimUtils;->startAnimation(Landroid/view/View;I)V

    .line 3711
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraSettingView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 3712
    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraSettingView;

    .line 3713
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraParamView:Lcom/powervision/aircraft/ui/views/CameraParamView;

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/views/CameraParamView;->updateViewsData()V

    .line 3715
    :cond_0
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->showBlurryView()V

    return-void
.end method

.method public cameraStopRecording()V
    .locals 2
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xb
        threadMode = .enum Lcom/powervision/base/rxbus/ThreadMode;->MAIN:Lcom/powervision/base/rxbus/ThreadMode;
    .end annotation

    .line 3730
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->onStopRecordingCancleTimer()V

    .line 3731
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraMenuView:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->switchCameraMenuStatus()V

    .line 3732
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraConnect()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3733
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getRemainingCapacity()V

    .line 3735
    :cond_0
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->showBlurryView()V

    .line 3736
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mRecordImg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 3737
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mRecordImg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public captureAnimation()V
    .locals 3
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xb6
    .end annotation

    .line 2473
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->alpha_view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2475
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->alpha_view:Landroid/view/View;

    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "scaleY"

    .line 2476
    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2477
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xc8

    .line 2478
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$14;

    invoke-direct {v2, p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$14;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2498
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public changeSubNotify(Landroid/util/SparseArray;)V
    .locals 3
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xf34
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 4985
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_0

    .line 4987
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    new-instance v0, Lcom/powervision/base/warning/HoverMessage;

    const/4 v1, 0x5

    sget v2, Lcom/powervision/aircraft/R$string;->AP03_Msg_26_52:I

    .line 4988
    invoke-virtual {p0, v2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 4987
    invoke-virtual {p1, v0}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 4990
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    new-instance v0, Lcom/powervision/base/warning/HoverMessage;

    const/4 v1, 0x4

    sget v2, Lcom/powervision/aircraft/R$string;->AP03_Msg_26_53:I

    .line 4991
    invoke-virtual {p0, v2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 4990
    invoke-virtual {p1, v0}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public clearNewerModeOnMap()V
    .locals 1

    .line 5647
    new-instance v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$60;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$60;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public clearNoFlyZonePolygon()V
    .locals 0

    return-void
.end method

.method public closeCameraSettingView()V
    .locals 2
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xd3
    .end annotation

    .line 5034
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->openAndCloseCameraSetting()V

    const-string v0, "set_camera"

    const-string v1, "  ---------- .ui....... ocloseCameraSettingView"

    .line 5035
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public closeCameraViewResetData()V
    .locals 4
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xf2
    .end annotation

    .line 5040
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCustomLinesView:Lcom/powervision/base/views/CustomLinesView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/CustomLinesView;->setLineMode(I)V

    .line 5041
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "AIRCRAFT_GRID_LINE_TAG"

    invoke-virtual {v0, v3, v2}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5042
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->setLinesMode(I)V

    .line 5044
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->setLuminanceValue(I)V

    .line 5045
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->setContrastValue(I)V

    .line 5046
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->setSaturationValue(I)V

    .line 5047
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->setPhotoGraphType(I)V

    .line 5050
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->myHandler:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;

    const/4 v1, 0x4

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 5052
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->histogramLayout:Lcom/powervision/camera/views/HistogramLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/powervision/camera/views/HistogramLayout;->setVisibility(I)V

    return-void
.end method

.method public closeWarnOnTop(Lcom/powervision/base/warning/HoverMessage;)V
    .locals 1

    const-string v0, "close 1"

    .line 2688
    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 2689
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTopView:Lcom/powervision/aircraft/ui/views/AircraftTopView;

    if-eqz v0, :cond_0

    .line 2690
    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/ui/views/AircraftTopView;->closeWarn(Lcom/powervision/base/warning/HoverMessage;)V

    :cond_0
    return-void
.end method

.method public customKeyState(I)V
    .locals 1

    .line 1659
    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isFocus:Z

    if-nez v0, :cond_0

    return-void

    .line 1662
    :cond_0
    new-instance v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$11;

    invoke-direct {v0, p0, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$11;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;I)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public delayCaptureGuide(Landroid/util/SparseArray;)V
    .locals 2
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xc1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 4720
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartTopFuncitonView:Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;

    const/4 v1, 0x0

    .line 4721
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x7

    .line 4720
    invoke-virtual {v0, v1, p1}, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->initClipGuildFragment(II)V

    return-void
.end method

.method public delayToRecord()V
    .locals 0
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xf44
    .end annotation

    .line 4398
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->returnLastMode()V

    return-void
.end method

.method public doubleFling()V
    .locals 2

    const-string v0, "Fling -----------------  "

    .line 2651
    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2652
    iput-boolean v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isFling:Z

    const/4 v1, 0x4

    .line 2653
    invoke-direct {p0, v1, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->hideOrShowAllViews(IZ)V

    .line 2654
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mBatteryProgressView:Lcom/powervision/base/views/CustomBatteryProgressView;

    invoke-static {v0, v1}, Lcom/powervision/base/utils/AnimUtils;->hideOrShowBottomView(Landroid/view/View;I)V

    .line 2655
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mFlightParameterView:Lcom/powervision/aircraft/ui/views/FlightParameterView;

    invoke-static {v0, v1}, Lcom/powervision/base/utils/AnimUtils;->hideOrShowBottomView(Landroid/view/View;I)V

    .line 2656
    sget v0, Lcom/powervision/aircraft/R$string;->AP03_Msg_185:I

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    return-void
.end method

.method public drawNativePolygon(Lcom/powervision/base/db/model/GeoData;)V
    .locals 1

    .line 1641
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mapSwitchManager:Lcom/powervision/map/manager/MapSwitchManager;

    invoke-virtual {v0, p1}, Lcom/powervision/map/manager/MapSwitchManager;->drawNativePolygon(Lcom/powervision/base/db/model/GeoData;)V

    return-void
.end method

.method public drawOnlinePolygon(Lcom/powervision/base/db/model/GeoOnLineData;)V
    .locals 1

    .line 1647
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mapSwitchManager:Lcom/powervision/map/manager/MapSwitchManager;

    invoke-virtual {v0, p1}, Lcom/powervision/map/manager/MapSwitchManager;->drawOnlinePolygon(Lcom/powervision/base/db/model/GeoOnLineData;)V

    return-void
.end method

.method public followModeFail()V
    .locals 0

    return-void
.end method

.method public getAirDL03Data(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 5487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=====opereat===="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=====reslut==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=====value===="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nemo-air-dl01-7588info"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SET_SUCCESS"

    .line 5489
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LAB1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    .line 5490
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isChangeDL01:Z

    .line 5491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u56de\u8c03\u53c2\u6570===== countryCode ==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isChangeDL01:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u589e\u7a0b\u6a21\u5f0f"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogTestStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5493
    :cond_0
    new-instance v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$56;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$56;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getBarrierState(Lcom/powervision/base/model/RxParamerModel;)V
    .locals 3
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0x10
    .end annotation

    .line 3757
    iget-wide v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastHealth:J

    long-to-int v1, v0

    const/4 v0, 0x4

    invoke-static {v1, v0}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v0

    if-nez v0, :cond_4

    iget-wide v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastHealth:J

    long-to-int v1, v0

    const/16 v0, 0x1b

    invoke-static {v1, v0}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3759
    :cond_0
    invoke-virtual {p1}, Lcom/powervision/base/model/RxParamerModel;->isOnBarrier()Z

    move-result p1

    const/4 v0, 0x5

    const/16 v1, 0x8

    if-eqz p1, :cond_3

    .line 3761
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->currentMode:Ljava/lang/String;

    const-string v2, "TRIPLE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->currentMode:Ljava/lang/String;

    const-string v2, "FAST"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 3764
    :cond_1
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->barrierGroup:Lcom/powervision/aircraft/ui/views/BarrierGroup;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/powervision/aircraft/ui/views/BarrierGroup;->setVisibility(I)V

    .line 3765
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    new-instance v1, Lcom/powervision/base/warning/HoverMessage;

    sget v2, Lcom/powervision/aircraft/R$string;->AP03_Msg_115_10:I

    .line 3766
    invoke-virtual {p0, v2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 3765
    invoke-virtual {p1, v1}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    goto :goto_1

    .line 3762
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->barrierGroup:Lcom/powervision/aircraft/ui/views/BarrierGroup;

    invoke-virtual {p1, v1}, Lcom/powervision/aircraft/ui/views/BarrierGroup;->setVisibility(I)V

    goto :goto_1

    .line 3769
    :cond_3
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->barrierGroup:Lcom/powervision/aircraft/ui/views/BarrierGroup;

    invoke-virtual {p1, v1}, Lcom/powervision/aircraft/ui/views/BarrierGroup;->setVisibility(I)V

    .line 3770
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->soundPoolUtils:Lcom/powervision/base/utils/SoundPoolUtils;

    invoke-virtual {p1, v0}, Lcom/powervision/base/utils/SoundPoolUtils;->releaseByIndex(I)V

    .line 3771
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    new-instance v0, Lcom/powervision/base/warning/HoverMessage;

    const/4 v1, 0x2

    sget v2, Lcom/powervision/aircraft/R$string;->AP03_Msg_115_11:I

    .line 3772
    invoke-virtual {p0, v2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 3771
    invoke-virtual {p1, v0}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public getCameraAllParameters()V
    .locals 6

    .line 2505
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->myHandler:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;->sendEmptyMessage(I)Z

    const-string v0, "camera_get_all"

    const-string v2, "  actvitiy ...getCameraAllParameters()   "

    .line 2506
    invoke-static {v0, v2}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f53\u524d\u76f8\u673a\u6a21\u5f0f = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    .line 2510
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    sget v2, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_RECORDING:I

    const-wide/16 v3, 0xc8

    if-ne v0, v2, :cond_0

    .line 2511
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->myHandler:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v3, v4}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2512
    :cond_0
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    sget v2, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_PHOTO:I

    if-ne v0, v2, :cond_2

    .line 2513
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getPhotoGraphType()I

    move-result v0

    .line 2514
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5f53\u524d\u76f8\u673a\u5355\u62cd\u6a21\u5f0f = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    .line 2515
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5f53\u524d\u98de\u63a7\u6a21\u5f0f = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lastMode:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_2

    .line 2518
    :cond_1
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lastMode:Ljava/lang/String;

    const-string v1, "DELAY_SHOOT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2519
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->myHandler:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;->sendEmptyMessage(I)Z

    .line 2523
    :cond_2
    :goto_0
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    sget v1, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_RECORDING:I

    if-eq v0, v1, :cond_3

    .line 2524
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->myHandler:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1, v3, v4}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2526
    :cond_3
    new-instance v0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$XyFXsxr046LeMtVeR4x0uvldmEk;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$XyFXsxr046LeMtVeR4x0uvldmEk;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2531
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2532
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->startRecordAudio()V

    :cond_4
    return-void
.end method

.method public getDL01Date(IILjava/lang/String;)V
    .locals 2

    .line 5531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=====opereat===="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "=====result==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "=====value===="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nemo-dl01-info"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5533
    new-instance v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$57;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$57;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getGeneralSettingsView()Lcom/powervision/aircraft/ui/views/GeneralSettingsView;
    .locals 1

    .line 640
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mGeneralSettingsView:Lcom/powervision/aircraft/ui/views/GeneralSettingsView;

    return-object v0
.end method

.method protected getLayoutRes()I
    .locals 2

    .line 3028
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 3029
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->systemFullScreen()V

    .line 3030
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 3031
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    .line 3032
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 3034
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 3036
    :cond_0
    sget v0, Lcom/powervision/aircraft/R$layout;->aircraft_activity_control_layout:I

    return v0
.end method

.method public getRecordTime(Ljava/lang/String;)V
    .locals 3

    .line 2574
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "="

    .line 2577
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2578
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 2579
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "s"

    .line 2583
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 2584
    :cond_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2585
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    const/16 v1, 0x9

    .line 2586
    iput v1, v0, Landroid/os/Message;->what:I

    .line 2587
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    \u5f55\u50cf\u65f6\u95f4 getRecordTime   currentTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "n_camera"

    invoke-static {v1, p1}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2588
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->myHandler:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method

.method public getRemainingCapacity()V
    .locals 5

    .line 2541
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    .line 2542
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 2543
    iput v0, v1, Landroid/os/Message;->arg1:I

    const/16 v2, 0xa

    .line 2544
    iput v2, v1, Landroid/os/Message;->what:I

    .line 2545
    iget-object v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->myHandler:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v1, v3, v4}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2546
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getSDRemainingCapacity   type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "p_camera"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getRemainingRtlTime(I)V
    .locals 1

    .line 5426
    new-instance v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55;

    invoke-direct {v0, p0, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$55;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;I)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getRestPhotoNumber(Ljava/lang/String;)V
    .locals 2

    .line 2552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "     getRestPhotoNumber   num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "n_camera"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2554
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2555
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p1, 0x5

    .line 2556
    iput p1, v0, Landroid/os/Message;->what:I

    .line 2557
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->myHandler:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getRestRecordTime(Ljava/lang/String;)V
    .locals 2

    .line 2563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  \u5269\u4f59\u5f55\u50cf\u65f6\u957f  getRestRecordTime   recordingTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "n_camera"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2565
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2566
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 2567
    iput p1, v0, Landroid/os/Message;->what:I

    .line 2568
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->myHandler:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getTextureView()Landroid/view/TextureView;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->textureView:Landroid/view/TextureView;

    return-object v0
.end method

.method public getUnitStatus(Lcom/powervision/base/model/UnitStatus;)V
    .locals 2
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xa5
    .end annotation

    .line 3778
    invoke-virtual {p1}, Lcom/powervision/base/model/UnitStatus;->getUnit()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3779
    iput-boolean v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isUnit:Z

    .line 3780
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mFlightParameterView:Lcom/powervision/aircraft/ui/views/FlightParameterView;

    invoke-virtual {p1, v1}, Lcom/powervision/aircraft/ui/views/FlightParameterView;->setUnit(Z)V

    goto :goto_0

    .line 3781
    :cond_0
    invoke-virtual {p1}, Lcom/powervision/base/model/UnitStatus;->getUnit()I

    move-result p1

    if-ne p1, v1, :cond_1

    const/4 p1, 0x0

    .line 3782
    iput-boolean p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isUnit:Z

    .line 3783
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mFlightParameterView:Lcom/powervision/aircraft/ui/views/FlightParameterView;

    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/ui/views/FlightParameterView;->setUnit(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public hideCameraMenuView(Landroid/util/SparseArray;)V
    .locals 2
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0x12
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

    const/4 v0, 0x0

    .line 4780
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 4781
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraMenuView:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 4786
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraMenuView:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 4787
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraMenuView:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-static {v0, p1}, Lcom/powervision/base/utils/AnimUtils;->hideOrShowRightView(Landroid/view/View;I)V

    goto :goto_0

    .line 4790
    :cond_1
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraMenuView:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 4791
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraMenuView:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-static {v0, p1}, Lcom/powervision/base/utils/AnimUtils;->hideOrShowRightView(Landroid/view/View;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public hideCameraSettingViews()V
    .locals 0
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xf51
        threadMode = .enum Lcom/powervision/base/rxbus/ThreadMode;->MAIN:Lcom/powervision/base/rxbus/ThreadMode;
    .end annotation

    .line 5066
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->removeCameraSettingView()V

    return-void
.end method

.method protected initData()V
    .locals 4

    .line 3241
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/sdk/Ap03Manager;->isLandingWaterMode()Z

    move-result v0

    const-string v1, "AP03_D_Normal"

    const-string v2, ""

    if-eqz v0, :cond_0

    const-string v0, "AP03_D_Water_Landing"

    .line 3244
    invoke-static {v0, v2, v2, v2}, Lcom/powervision/base/utils/UmengUtils;->getLogBpHookMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 3243
    invoke-static {p0, v0, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 3245
    :cond_0
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/sdk/Ap03Manager;->isWaterproofMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "AP03_D_Rainproof"

    .line 3248
    invoke-static {v0, v2, v2, v2}, Lcom/powervision/base/utils/UmengUtils;->getLogBpHookMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 3247
    invoke-static {p0, v0, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 3252
    :cond_1
    invoke-static {v1, v2, v2, v2}, Lcom/powervision/base/utils/UmengUtils;->getLogBpHookMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 3251
    invoke-static {p0, v1, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 3255
    :goto_0
    invoke-static {v1}, Lcom/powervision/base/utils/UmengUtils;->workUmServiceLogBpFun(Ljava/lang/String;)V

    .line 3257
    new-instance v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->myHandler:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;

    .line 3258
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->initSDK()V

    .line 3261
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    .line 3264
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    const-string v1, "PV_RC_MODE"

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->downloadRemoteParameter(Ljava/lang/String;)I

    .line 3265
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->myHandler:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;

    const/16 v1, 0x16

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 3266
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->initGuideView()V

    .line 3268
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const-string v1, "PV_SWIPE_STATUS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3269
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLongTouchStickPointView:Lcom/powervision/base/views/LongTouchStickPointView;

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {v1, v2}, Lcom/powervision/base/views/LongTouchStickPointView;->setOne(Z)V

    .line 3270
    invoke-static {p0}, Lcom/powervision/base/utils/SoundPoolUtils;->getInstance(Landroid/content/Context;)Lcom/powervision/base/utils/SoundPoolUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->soundPoolUtils:Lcom/powervision/base/utils/SoundPoolUtils;

    .line 3272
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mapSwitchManager:Lcom/powervision/map/manager/MapSwitchManager;

    invoke-virtual {v0}, Lcom/powervision/map/manager/MapSwitchManager;->checkNewerMode()Z

    const-string v0, "audio"

    .line 3278
    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3279
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 3280
    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    .line 3282
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    const-string v1, "MPC_AVOI_ON"

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->downloadParameter(Ljava/lang/String;)I

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 3

    .line 3042
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/base/rxbus/RxBus;->register(Ljava/lang/Object;)V

    .line 3044
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->decorView:Landroid/view/View;

    .line 3045
    invoke-static {p0}, Lcom/powervision/base/utils/ScreenUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    .line 3046
    invoke-static {p0}, Lcom/powervision/base/utils/ScreenUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    .line 3047
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/powervision/camera/camera/CameraManager;->setLocalHScreenHeight(I)V

    .line 3048
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->setLocalHScreenWidth(I)V

    .line 3050
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v1, v0, :cond_0

    .line 3051
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->decorView:Landroid/view/View;

    new-instance v1, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$UPze7bgV5pIBCv--_5v_XP-OU-o;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$UPze7bgV5pIBCv--_5v_XP-OU-o;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 3109
    :cond_0
    sget v0, Lcom/powervision/aircraft/R$id;->root:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mRootLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 3110
    sget v0, Lcom/powervision/aircraft/R$id;->top_view:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/ui/views/AircraftTopView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTopView:Lcom/powervision/aircraft/ui/views/AircraftTopView;

    .line 3111
    sget v0, Lcom/powervision/aircraft/R$id;->layout_video:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/views/CircleRelativeLayout;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mVideoLayout:Lcom/powervision/base/views/CircleRelativeLayout;

    .line 3112
    sget v0, Lcom/powervision/aircraft/R$id;->layout_map:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/views/CircleRelativeLayout;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mMapLayout:Lcom/powervision/base/views/CircleRelativeLayout;

    .line 3113
    sget v0, Lcom/powervision/aircraft/R$id;->layout_attitude:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/views/CircleRelativeLayout;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mAttitudeLayout:Lcom/powervision/base/views/CircleRelativeLayout;

    .line 3117
    sget v0, Lcom/powervision/aircraft/R$id;->icon_close_map:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCloseMapIcon:Landroid/widget/ImageView;

    .line 3118
    sget v0, Lcom/powervision/aircraft/R$id;->custom_compass:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/ui/views/CompassView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCompassIcon:Lcom/powervision/aircraft/ui/views/CompassView;

    .line 3119
    sget v0, Lcom/powervision/aircraft/R$id;->attitude_view:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/ui/views/AircraftAttitudeView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mAttitudeView:Lcom/powervision/aircraft/ui/views/AircraftAttitudeView;

    .line 3120
    sget v0, Lcom/powervision/aircraft/R$id;->camera_menu:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/ui/views/CameraMenuView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraMenuView:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    .line 3121
    sget v0, Lcom/powervision/aircraft/R$id;->battery_progress:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/views/CustomBatteryProgressView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mBatteryProgressView:Lcom/powervision/base/views/CustomBatteryProgressView;

    .line 3122
    sget v0, Lcom/powervision/aircraft/R$id;->biography_surface_view:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->textureView:Landroid/view/TextureView;

    .line 3123
    sget v0, Lcom/powervision/aircraft/R$id;->slideTakeOffView:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->slideTakeOffView:Lcom/powervision/aircraft/ui/views/SlideReturnView;

    .line 3124
    sget v0, Lcom/powervision/aircraft/R$id;->slideReturnView:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/ui/views/SlideReturnView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->slideReturnView:Lcom/powervision/aircraft/ui/views/SlideReturnView;

    .line 3125
    sget v0, Lcom/powervision/aircraft/R$id;->barrier_group:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/ui/views/BarrierGroup;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->barrierGroup:Lcom/powervision/aircraft/ui/views/BarrierGroup;

    .line 3126
    sget v0, Lcom/powervision/aircraft/R$id;->surfaceViewMask:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->surfaceViewMask:Landroid/view/View;

    .line 3127
    sget v0, Lcom/powervision/aircraft/R$id;->map_option_view:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/ui/views/MapOptionView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mapOptionView:Lcom/powervision/aircraft/ui/views/MapOptionView;

    .line 3128
    sget v0, Lcom/powervision/aircraft/R$id;->follow_touch_rectangle_view:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/ui/views/TouchRectangleView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTouchRectangleView:Lcom/powervision/aircraft/ui/views/TouchRectangleView;

    .line 3129
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mView:Landroid/view/ViewGroup;

    .line 3130
    sget v0, Lcom/powervision/aircraft/R$id;->alpha_view:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->alpha_view:Landroid/view/View;

    .line 3131
    sget v0, Lcom/powervision/aircraft/R$id;->record_img:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mRecordImg:Landroid/widget/ImageView;

    .line 3132
    sget v0, Lcom/powervision/aircraft/R$id;->flexbox_layout:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexboxLayout;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->flexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    .line 3133
    sget v0, Lcom/powervision/aircraft/R$id;->live_stream_status_view:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/views/LiveStatusView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLiveStatusView:Lcom/powervision/base/views/LiveStatusView;

    .line 3134
    new-instance v0, Lcom/powervision/base/warning/manager/WarningManager;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->flexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-direct {v0, p0, v1}, Lcom/powervision/base/warning/manager/WarningManager;-><init>(Landroid/content/Context;Lcom/google/android/flexbox/FlexboxLayout;)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    .line 3135
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->initLeftFlyFunctionViews()V

    .line 3136
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->initCameraParameters()V

    .line 3138
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->initNotifyMsgListView()V

    .line 3139
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->initMap(Landroid/os/Bundle;)V

    .line 3140
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->initLayoutParams()V

    .line 3141
    sget p1, Lcom/powervision/aircraft/R$id;->gimbal_layout:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/views/AircraftGimBalView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mAircraftGimBalView:Lcom/powervision/base/views/AircraftGimBalView;

    .line 3142
    sget p1, Lcom/powervision/aircraft/R$id;->flight_parameter:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/ui/views/FlightParameterView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mFlightParameterView:Lcom/powervision/aircraft/ui/views/FlightParameterView;

    .line 3145
    sget p1, Lcom/powervision/aircraft/R$id;->smart_menu_container:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartTopFuncitonView:Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;

    .line 3146
    sget p1, Lcom/powervision/aircraft/R$id;->smart_view_container:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartViewContainer:Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;

    .line 3150
    sget p1, Lcom/powervision/aircraft/R$id;->stick_point_view:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/views/LongTouchStickPointView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLongTouchStickPointView:Lcom/powervision/base/views/LongTouchStickPointView;

    .line 3152
    sget p1, Lcom/powervision/aircraft/R$id;->parentLayout:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/camera/views/HistogramLayout;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->histogramLayout:Lcom/powervision/camera/views/HistogramLayout;

    .line 3155
    sget p1, Lcom/powervision/aircraft/R$id;->full_screen_lines_view:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/views/CustomLinesView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCustomLinesView:Lcom/powervision/base/views/CustomLinesView;

    .line 3156
    sget p1, Lcom/powervision/aircraft/R$id;->count_down_time:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCountDownTime:Landroid/widget/TextView;

    .line 3157
    sget p1, Lcom/powervision/aircraft/R$id;->text_mul_num:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTextMulNum:Landroid/widget/TextView;

    .line 3158
    invoke-static {}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->get()Lcom/powervision/natives/connect/Dl01ConnectSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->initAirConnect()V

    .line 3159
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mVideoLayout:Lcom/powervision/base/views/CircleRelativeLayout;

    if-eqz p1, :cond_1

    .line 3160
    sget v0, Lcom/powervision/aircraft/R$color;->black:I

    invoke-virtual {p1, v0}, Lcom/powervision/base/views/CircleRelativeLayout;->setBackgroundResource(I)V

    .line 3163
    :cond_1
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->textureView:Landroid/view/TextureView;

    invoke-virtual {p1, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 3165
    sget p1, Lcom/powervision/aircraft/R$id;->blurry_view:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mBlurryView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    .line 3166
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3167
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->initLapseView()V

    return-void
.end method

.method public synthetic lambda$currentStorageFull$34$AirCraftControlActivity()V
    .locals 0

    .line 2042
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->cameraStopRecording()V

    return-void
.end method

.method public synthetic lambda$doResume$0$AirCraftControlActivity()V
    .locals 2

    .line 577
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTopView:Lcom/powervision/aircraft/ui/views/AircraftTopView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/AircraftTopView;->setConnectStatus(I)V

    return-void
.end method

.method public synthetic lambda$doResume$1$AirCraftControlActivity()V
    .locals 2

    .line 579
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTopView:Lcom/powervision/aircraft/ui/views/AircraftTopView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/AircraftTopView;->setConnectStatus(I)V

    return-void
.end method

.method public synthetic lambda$getCameraAllParameters$38$AirCraftControlActivity()V
    .locals 1

    .line 2527
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraSettingView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/powervision/camera/views/CameraSettingView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2528
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraSettingView;

    invoke-virtual {v0}, Lcom/powervision/camera/views/CameraSettingView;->updateBasicFragmentAdapter()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initBasicGuideView$64$AirCraftControlActivity()V
    .locals 3

    const/4 v0, 0x0

    .line 6223
    iput-boolean v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->showAircraftGuide:Z

    .line 6224
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mBasicFlightGuideStub:Landroid/view/ViewStub;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    const/4 v0, 0x0

    .line 6225
    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->basicGuideView:Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;

    .line 6226
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    if-eqz v0, :cond_0

    .line 6227
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-virtual {v0}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->removeRemoteControlerResultListener()V

    .line 6230
    :cond_0
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "NEW_USER_GUI"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadIntParameter(Ljava/lang/String;I)I

    return-void
.end method

.method public synthetic lambda$initGuideView$42$AirCraftControlActivity()V
    .locals 3

    .line 3204
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->guideStub:Landroid/view/ViewStub;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 3205
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->setGpsEnable()V

    const/4 v0, 0x0

    .line 3206
    iput-boolean v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->showAirGuide:Z

    .line 3207
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "AIR_GUIDE"

    invoke-virtual {v1, v2, v0}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3208
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->initBasicGuideView()V

    return-void
.end method

.method public synthetic lambda$initView$41$AirCraftControlActivity(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    .line 3052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "view is :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/orhanobut/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3053
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 3055
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v0

    iput v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mDisplayCutStart:I

    .line 3056
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v0

    .line 3057
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v1

    iput v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mDisplayCutEnd:I

    .line 3058
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result p1

    .line 3059
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraMenuView:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    .line 3060
    invoke-virtual {v1}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 3061
    iget v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mDisplayCutStart:I

    iget v3, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mDisplayCutEnd:I

    invoke-virtual {v1, v2, v0, v3, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMargins(IIII)V

    .line 3063
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "left = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mDisplayCutStart:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " right = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mDisplayCutEnd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " top = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "bottom = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 3065
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraMenuView:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-virtual {p1, v1}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3066
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraSettingView;

    if-eqz p1, :cond_0

    .line 3067
    iget v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mDisplayCutEnd:I

    invoke-virtual {p1, v0}, Lcom/powervision/camera/views/CameraSettingView;->setRightPadding(I)V

    .line 3069
    :cond_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mGeneralSettingsView:Lcom/powervision/aircraft/ui/views/GeneralSettingsView;

    if-eqz p1, :cond_1

    .line 3070
    iget v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mDisplayCutEnd:I

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->setContentPaddingEnd(I)V

    .line 3072
    :cond_1
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTopView:Lcom/powervision/aircraft/ui/views/AircraftTopView;

    if-eqz p1, :cond_2

    .line 3074
    invoke-virtual {p1}, Lcom/powervision/aircraft/ui/views/AircraftTopView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 3075
    iget v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mDisplayCutStart:I

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMarginStart(I)V

    .line 3076
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTopView:Lcom/powervision/aircraft/ui/views/AircraftTopView;

    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/ui/views/AircraftTopView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3078
    :cond_2
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mMapLayout:Lcom/powervision/base/views/CircleRelativeLayout;

    const/high16 v0, 0x42480000    # 50.0f

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isBigMap:Z

    if-nez p1, :cond_3

    .line 3079
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmallParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mDisplayCutStart:I

    invoke-static {v0}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMarginStart(I)V

    .line 3080
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mMapLayout:Lcom/powervision/base/views/CircleRelativeLayout;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmallParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p1, v1}, Lcom/powervision/base/views/CircleRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3082
    :cond_3
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mVideoLayout:Lcom/powervision/base/views/CircleRelativeLayout;

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isBigMap:Z

    if-eqz p1, :cond_4

    .line 3083
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmallParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mDisplayCutStart:I

    invoke-static {v0}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMarginStart(I)V

    .line 3084
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mVideoLayout:Lcom/powervision/base/views/CircleRelativeLayout;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmallParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p1, v1}, Lcom/powervision/base/views/CircleRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3086
    :cond_4
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mAttitudeLayout:Lcom/powervision/base/views/CircleRelativeLayout;

    if-eqz p1, :cond_5

    .line 3088
    invoke-virtual {p1}, Lcom/powervision/base/views/CircleRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 3089
    iget v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mDisplayCutStart:I

    invoke-static {v0}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMarginStart(I)V

    .line 3090
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mAttitudeLayout:Lcom/powervision/base/views/CircleRelativeLayout;

    invoke-virtual {v0, p1}, Lcom/powervision/base/views/CircleRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3092
    :cond_5
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mOnekeyTakeOffIv:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    .line 3094
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 3095
    iget v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mDisplayCutStart:I

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMarginStart(I)V

    .line 3096
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mOnekeyTakeOffIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3098
    :cond_6
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCloseMapIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_7

    .line 3100
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 3101
    iget v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mDisplayCutStart:I

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v1}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMarginStart(I)V

    .line 3102
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCloseMapIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3106
    :cond_7
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$mBackHome$39$AirCraftControlActivity(Landroid/view/View;)V
    .locals 0

    .line 2602
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->onBackPressed()V

    return-void
.end method

.method public synthetic lambda$new$62$AirCraftControlActivity()V
    .locals 8

    .line 6005
    iget v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->currentNum:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 6006
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->setCurrencyMode(II)V

    .line 6007
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->createLapseFile()V

    .line 6008
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->showDelayLoading()V

    goto :goto_0

    .line 6010
    :cond_0
    sget v0, Lcom/powervision/aircraft/R$string;->AP03_DV_Msg_26:I

    .line 6011
    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_Activation_6:I

    .line 6012
    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_Activation_9:I

    .line 6013
    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$61;

    invoke-direct {v6, p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$61;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    new-instance v7, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$62;

    invoke-direct {v7, p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$62;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    const-string v2, ""

    move-object v1, p0

    .line 6010
    invoke-static/range {v1 .. v7}, Lcom/powervision/base/utils/DialogUtils;->customDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/powervision/base/utils/DialogUtils$OnClickListener;Lcom/powervision/base/utils/DialogUtils$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lapseStopDialog:Landroidx/appcompat/app/AlertDialog;

    :goto_0
    return-void
.end method

.method public synthetic lambda$null$14$AirCraftControlActivity(Landroid/view/View;)V
    .locals 1

    .line 1416
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast p1, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->setConfirmDisarm(I)V

    return-void
.end method

.method public synthetic lambda$null$15$AirCraftControlActivity(Landroid/view/View;)V
    .locals 1

    .line 1417
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast p1, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->setConfirmDisarm(I)V

    return-void
.end method

.method public synthetic lambda$onDeviceConnectStatus$45$AirCraftControlActivity()V
    .locals 2

    .line 4519
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTopView:Lcom/powervision/aircraft/ui/views/AircraftTopView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/AircraftTopView;->setConnectStatus(I)V

    return-void
.end method

.method public synthetic lambda$onDeviceDisConnecetStatus$46$AirCraftControlActivity()V
    .locals 2

    .line 4535
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTopView:Lcom/powervision/aircraft/ui/views/AircraftTopView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/AircraftTopView;->setConnectStatus(I)V

    .line 4536
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->soundPoolUtils:Lcom/powervision/base/utils/SoundPoolUtils;

    if-eqz v0, :cond_0

    .line 4537
    invoke-virtual {v0}, Lcom/powervision/base/utils/SoundPoolUtils;->release()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onDeviceLockStateChange$37$AirCraftControlActivity(Z)V
    .locals 5

    if-eqz p1, :cond_0

    .line 2265
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->airMapManager:Lcom/powervision/map/manager/AirMapManager;

    new-instance v0, Lcom/powervision/sdk/dto/MapLocationDto;

    .line 2266
    invoke-virtual {p1}, Lcom/powervision/map/manager/AirMapManager;->getAircraftLocationDto()Lcom/powervision/sdk/dto/MapLocationDto;

    move-result-object v1

    iget v1, v1, Lcom/powervision/sdk/dto/MapLocationDto;->lat:F

    iget-object v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->airMapManager:Lcom/powervision/map/manager/AirMapManager;

    .line 2267
    invoke-virtual {v2}, Lcom/powervision/map/manager/AirMapManager;->getAircraftLocationDto()Lcom/powervision/sdk/dto/MapLocationDto;

    move-result-object v2

    iget v2, v2, Lcom/powervision/sdk/dto/MapLocationDto;->lon:F

    const/high16 v3, 0x41a00000    # 20.0f

    const/4 v4, 0x1

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/powervision/sdk/dto/MapLocationDto;-><init>(IFFF)V

    .line 2265
    invoke-virtual {p1, v0}, Lcom/powervision/map/manager/AirMapManager;->setUnLockLocationDto(Lcom/powervision/sdk/dto/MapLocationDto;)V

    .line 2268
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDeviceLockStateChange: mLastHealth = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastHealth:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastHealth:J

    long-to-int v1, v0

    const/16 v0, 0x1f

    invoke-static {v1, v0}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AirCraftCo"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    iget-wide v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastHealth:J

    long-to-int p1, v1

    invoke-static {p1, v0}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2270
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    new-instance v0, Lcom/powervision/base/warning/HoverMessage;

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_Msg_26_60:I

    .line 2271
    invoke-virtual {p0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 2270
    invoke-virtual {p1, v0}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onDistanceChange$5$AirCraftControlActivity(F)V
    .locals 5

    .line 1088
    iput p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->distanceValue:F

    .line 1089
    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isUnit:Z

    if-eqz v0, :cond_0

    .line 1090
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mFlightParameterView:Lcom/powervision/aircraft/ui/views/FlightParameterView;

    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/ui/views/FlightParameterView;->setDistance(F)V

    goto :goto_0

    .line 1092
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mFlightParameterView:Lcom/powervision/aircraft/ui/views/FlightParameterView;

    float-to-double v1, p1

    const-wide v3, 0x400a3d70a3d70a3dL    # 3.28

    mul-double v1, v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/ui/views/FlightParameterView;->setDistance(F)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$onFollowModeNormal$47$AirCraftControlActivity(Landroid/util/SparseArray;)V
    .locals 1

    const/4 v0, 0x0

    .line 4629
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x15

    invoke-direct {p0, v0, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->showSmartFollow(II)V

    return-void
.end method

.method public synthetic lambda$onFollowModeParallel$48$AirCraftControlActivity(Landroid/util/SparseArray;)V
    .locals 1

    const/4 v0, 0x0

    .line 4636
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x16

    invoke-direct {p0, v0, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->showSmartFollow(II)V

    return-void
.end method

.method public synthetic lambda$onFollowModeStatic$49$AirCraftControlActivity(Landroid/util/SparseArray;)V
    .locals 1

    const/4 v0, 0x0

    .line 4643
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x17

    invoke-direct {p0, v0, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->showSmartFollow(II)V

    return-void
.end method

.method public synthetic lambda$onSetRemoteRecord$23$AirCraftControlActivity()V
    .locals 1

    .line 1795
    sget v0, Lcom/lewis/camera/R$string;->AP03_CameraSetting_66:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onSetRemoteRecord$24$AirCraftControlActivity()V
    .locals 3

    .line 1805
    sget v0, Lcom/lewis/camera/R$string;->AP03_CameraSetting_69:I

    .line 1806
    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$string;->AP03_ConnectGuide_47:I

    .line 1807
    invoke-virtual {p0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1805
    invoke-static {p0, v2, v0, v1, v2}, Lcom/powervision/base/utils/DialogUtils;->defaultDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 1808
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method public synthetic lambda$onSetRemoteRecord$25$AirCraftControlActivity()V
    .locals 3

    .line 1820
    sget v0, Lcom/lewis/camera/R$string;->AP03_waterproof_8:I

    .line 1821
    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$string;->AP03_ConnectGuide_47:I

    .line 1822
    invoke-virtual {p0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1820
    invoke-static {p0, v2, v0, v1, v2}, Lcom/powervision/base/utils/DialogUtils;->defaultDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 1823
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method public synthetic lambda$onSetRemoteTakePic$19$AirCraftControlActivity()V
    .locals 1

    .line 1727
    sget v0, Lcom/lewis/camera/R$string;->AP03_CameraSetting_66:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onSetRemoteTakePic$20$AirCraftControlActivity()V
    .locals 1

    .line 1738
    sget v0, Lcom/lewis/camera/R$string;->AP03_CameraSetting_66:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onSetRemoteTakePic$21$AirCraftControlActivity()V
    .locals 1

    .line 1751
    sget v0, Lcom/powervision/aircraft/R$string;->AP03_DV_Msg_24_2:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onSetRemoteTakePic$22$AirCraftControlActivity()V
    .locals 1

    .line 1757
    sget v0, Lcom/powervision/aircraft/R$string;->AP03_DV_Msg_24_3:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onUpdateRecordingTime$58$AirCraftControlActivity(I)V
    .locals 1

    .line 5620
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraParamView:Lcom/powervision/aircraft/ui/views/CameraParamView;

    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/ui/views/CameraParamView;->updateRecordingTime(I)V

    return-void
.end method

.method public synthetic lambda$setAEBMultipleShotsFail$55$AirCraftControlActivity()V
    .locals 2

    .line 5390
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraMenuView:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 5391
    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->executeTimer(I)V

    .line 5392
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTextMulNum:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$setAEBMultipleShotsSuccess$54$AirCraftControlActivity(II)V
    .locals 4

    .line 5361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "num = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  getAebValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 5362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5363
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/powervision/base/base/BaseApplication;

    .line 5364
    invoke-virtual {v1}, Lcom/powervision/base/base/BaseApplication;->getAudioUtilInstance()Lcom/powervision/base/utils/AudioUtil;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/powervision/base/utils/AudioUtil;->playAudio(I)V

    .line 5365
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTextMulNum:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5366
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTextMulNum:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5367
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getRemainingCapacity()V

    .line 5368
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->captureAnimation()V

    if-nez p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 5373
    :cond_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraMenuView:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-virtual {p1, v2}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->setShooting(Z)V

    goto :goto_1

    .line 5371
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraMenuView:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-virtual {p1, v3}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->setShooting(Z)V

    goto :goto_1

    :cond_2
    if-eq p1, p2, :cond_3

    .line 5377
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraMenuView:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-virtual {p1, v2}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->setShooting(Z)V

    goto :goto_1

    .line 5379
    :cond_3
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTextMulNum:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5380
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraMenuView:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-virtual {p1, v3}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->setShooting(Z)V

    :goto_1
    return-void
.end method

.method public synthetic lambda$setGimbalViewPitch$28$AirCraftControlActivity(FZ)V
    .locals 1

    .line 1920
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mAircraftGimBalView:Lcom/powervision/base/views/AircraftGimBalView;

    if-eqz v0, :cond_0

    .line 1921
    invoke-virtual {v0, p1}, Lcom/powervision/base/views/AircraftGimBalView;->setPitchValue(F)V

    :cond_0
    if-eqz p2, :cond_1

    .line 1924
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/base/base/BaseApplication;->getAudioUtilInstance()Lcom/powervision/base/utils/AudioUtil;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/powervision/base/utils/AudioUtil;->playAudio(I)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$setGimbalViewYaw$29$AirCraftControlActivity(FZ)V
    .locals 1

    .line 1932
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mAircraftGimBalView:Lcom/powervision/base/views/AircraftGimBalView;

    if-eqz v0, :cond_0

    .line 1933
    invoke-virtual {v0, p1}, Lcom/powervision/base/views/AircraftGimBalView;->setYawValue(F)V

    :cond_0
    if-eqz p2, :cond_1

    .line 1936
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/base/base/BaseApplication;->getAudioUtilInstance()Lcom/powervision/base/utils/AudioUtil;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/powervision/base/utils/AudioUtil;->playAudio(I)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$setGpsEnable$43$AirCraftControlActivity(Landroid/view/View;)V
    .locals 1

    .line 3221
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3222
    iget v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->GPS_REQUEST_CODE:I

    invoke-virtual {p0, p1, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public synthetic lambda$setHDRMultipleShotsSuccess$56$AirCraftControlActivity()V
    .locals 2

    const-string v0, "noti_camera"

    const-string v1, "  hdr  \u6210\u529f\u4e86\u3002\u3002\u3002\u3002 "

    .line 5401
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5402
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/base/BaseApplication;

    .line 5403
    invoke-virtual {v0}, Lcom/powervision/base/base/BaseApplication;->getAudioUtilInstance()Lcom/powervision/base/utils/AudioUtil;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/base/utils/AudioUtil;->playAudio(I)V

    .line 5404
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getRemainingCapacity()V

    .line 5405
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->captureAnimation()V

    return-void
.end method

.method public synthetic lambda$setMultiShotsFail$53$AirCraftControlActivity()V
    .locals 2

    .line 5350
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraMenuView:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 5351
    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->executeTimer(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$setMultipleShotsSuccess$52$AirCraftControlActivity(II)V
    .locals 4

    .line 5322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5323
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/powervision/base/base/BaseApplication;

    .line 5324
    invoke-virtual {v1}, Lcom/powervision/base/base/BaseApplication;->getAudioUtilInstance()Lcom/powervision/base/utils/AudioUtil;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/powervision/base/utils/AudioUtil;->playAudio(I)V

    .line 5325
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getRemainingCapacity()V

    .line 5326
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->captureAnimation()V

    .line 5327
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTextMulNum:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5328
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTextMulNum:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "num = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  getMultipleShotsNum = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    if-nez p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_1

    const/4 p2, 0x7

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 5334
    :cond_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraMenuView:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-virtual {p1, v2}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->setShooting(Z)V

    goto :goto_1

    .line 5332
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraMenuView:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-virtual {p1, v3}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->setShooting(Z)V

    goto :goto_1

    :cond_2
    if-eq p1, p2, :cond_3

    .line 5338
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraMenuView:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-virtual {p1, v2}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->setShooting(Z)V

    goto :goto_1

    .line 5340
    :cond_3
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraMenuView:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-virtual {p1, v3}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->setShooting(Z)V

    .line 5341
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTextMulNum:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public synthetic lambda$showChangeWaterModeDialog$51$AirCraftControlActivity(Lcom/powervision/base/views/AirDialog;Ljava/lang/Integer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "integer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 5276
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_waterproof_2:I

    invoke-virtual {p0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/powervision/base/views/AirDialog;->setContent(Ljava/lang/String;)V

    .line 5278
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-nez p2, :cond_0

    .line 5279
    iput v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->tempMode:I

    .line 5280
    iget-object p2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast p2, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-virtual {p2, v2}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->setWaterMode(I)V

    .line 5281
    invoke-virtual {p1}, Lcom/powervision/base/views/AirDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$showHistogramData$27$AirCraftControlActivity([I)V
    .locals 2

    .line 1861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=============== data.length = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v1, " null "

    goto :goto_0

    :cond_0
    array-length v1, p1

    .line 1862
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1861
    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 1863
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->ismCameraEnableHistogram()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1864
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->histogramLayout:Lcom/powervision/camera/views/HistogramLayout;

    invoke-virtual {v0}, Lcom/powervision/camera/views/HistogramLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 1865
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->histogramLayout:Lcom/powervision/camera/views/HistogramLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/camera/views/HistogramLayout;->setVisibility(I)V

    .line 1867
    :cond_1
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->histogramLayout:Lcom/powervision/camera/views/HistogramLayout;

    invoke-virtual {v0, p1}, Lcom/powervision/camera/views/HistogramLayout;->setData([I)V

    :cond_2
    return-void
.end method

.method public synthetic lambda$showHistogramView$26$AirCraftControlActivity(I)V
    .locals 1

    if-nez p1, :cond_1

    .line 1848
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->ismCameraEnableHistogram()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1849
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->histogramLayout:Lcom/powervision/camera/views/HistogramLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/powervision/camera/views/HistogramLayout;->setVisibility(I)V

    goto :goto_0

    .line 1851
    :cond_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->histogramLayout:Lcom/powervision/camera/views/HistogramLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/powervision/camera/views/HistogramLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    const-string p1, " --\u76f4\u65b9\u56fe"

    .line 1854
    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->updateCameraSettingButton(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$stopDelayCapture$61$AirCraftControlActivity()V
    .locals 3

    .line 5981
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lastMode:Ljava/lang/String;

    const-string v1, "DELAY_SHOOT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5983
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->myHandler:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;->sendEmptyMessage(I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 5986
    iput v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->currentNum:I

    .line 5987
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lastMode:Ljava/lang/String;

    const-string v2, "RTL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5988
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v1, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    const/16 v2, 0x11

    invoke-virtual {v1, v2, v0}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->setCurrencyMode(II)V

    .line 5990
    :cond_1
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->setPhotoGraphType(I)V

    .line 5991
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "PV_GIM_LSE_FLAG"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadGimbalIntParameter(Ljava/lang/String;I)I

    .line 5992
    iget v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->delayMode:I

    if-nez v0, :cond_2

    .line 5993
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->checkFreeEnable()V

    .line 5994
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLapseFreeView:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->resetView()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 5996
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->checkTrailEnable()V

    .line 5997
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLapseTrailView:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->resetView()V

    .line 5999
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraMenuView:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->resetLapseTakingIcon()V

    return-void
.end method

.method public synthetic lambda$storageFull$63$AirCraftControlActivity()V
    .locals 2

    .line 6038
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_CameraSetting_66:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    .line 6039
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->setPhotoGraphType(I)V

    .line 6040
    iget v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->delayMode:I

    if-nez v0, :cond_0

    .line 6041
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->checkFreeEnable()V

    .line 6042
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLapseFreeView:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->resetView()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 6044
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->checkTrailEnable()V

    .line 6046
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLapseTrailView:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->resetView()V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$updateAircraftAttitudeInfo$12$AirCraftControlActivity(FFF)V
    .locals 1

    .line 1242
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mAttitudeView:Lcom/powervision/aircraft/ui/views/AircraftAttitudeView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/powervision/aircraft/ui/views/AircraftAttitudeView;->updateAircraftAttitude(FFF)V

    .line 1243
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mapSwitchManager:Lcom/powervision/map/manager/MapSwitchManager;

    invoke-virtual {p1, p3}, Lcom/powervision/map/manager/MapSwitchManager;->setAirRotateAngle(F)V

    return-void
.end method

.method public synthetic lambda$updateBarrierInfo$17$AirCraftControlActivity([F)V
    .locals 10

    .line 1592
    iget-wide v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastHealth:J

    long-to-int v1, v0

    const/4 v0, 0x4

    invoke-static {v1, v0}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v1

    const/16 v2, 0x8

    if-nez v1, :cond_8

    iget-wide v3, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastHealth:J

    long-to-int v1, v3

    const/16 v3, 0x1b

    invoke-static {v1, v3}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 1596
    :cond_0
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->currentMode:Ljava/lang/String;

    if-eqz v1, :cond_7

    const-string v3, "POSCTL"

    .line 1597
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x5

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->currentMode:Ljava/lang/String;

    const-string v4, "TRIPLE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1621
    :cond_1
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->soundPoolUtils:Lcom/powervision/base/utils/SoundPoolUtils;

    invoke-virtual {p1, v3}, Lcom/powervision/base/utils/SoundPoolUtils;->releaseByIndex(I)V

    .line 1622
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->barrierGroup:Lcom/powervision/aircraft/ui/views/BarrierGroup;

    invoke-virtual {p1, v2}, Lcom/powervision/aircraft/ui/views/BarrierGroup;->setVisibility(I)V

    goto/16 :goto_1

    .line 1598
    :cond_2
    :goto_0
    array-length v1, p1

    if-lt v1, v3, :cond_7

    .line 1599
    aget v1, p1, v0

    iput v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->dis:F

    .line 1600
    aget v0, p1, v0

    float-to-double v0, v0

    const/4 v4, 0x1

    invoke-static {v0, v1, v4}, Lcom/powervision/base/utils/NumUtil;->scaleFloor(DI)D

    move-result-wide v0

    .line 1601
    iget-object v5, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->barrierGroup:Lcom/powervision/aircraft/ui/views/BarrierGroup;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/powervision/aircraft/ui/views/BarrierGroup;->setBarrierValue(Ljava/lang/String;)V

    .line 1602
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->barrierGroup:Lcom/powervision/aircraft/ui/views/BarrierGroup;

    const/4 v1, 0x0

    aget v5, p1, v1

    aget v6, p1, v4

    const/4 v7, 0x2

    aget v8, p1, v7

    const/4 v9, 0x3

    aget p1, p1, v9

    invoke-virtual {v0, v5, v6, v8, p1}, Lcom/powervision/aircraft/ui/views/BarrierGroup;->setBarrierView(FFFF)V

    .line 1604
    iget-boolean p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->barrierOpen:Z

    if-nez p1, :cond_3

    return-void

    .line 1606
    :cond_3
    iget p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->dis:F

    const/high16 v0, 0x41000000    # 8.0f

    cmpl-float v5, p1, v0

    if-lez v5, :cond_4

    .line 1607
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->soundPoolUtils:Lcom/powervision/base/utils/SoundPoolUtils;

    invoke-virtual {p1, v3}, Lcom/powervision/base/utils/SoundPoolUtils;->releaseByIndex(I)V

    .line 1608
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->barrierGroup:Lcom/powervision/aircraft/ui/views/BarrierGroup;

    invoke-virtual {p1, v2}, Lcom/powervision/aircraft/ui/views/BarrierGroup;->setVisibility(I)V

    goto :goto_1

    :cond_4
    const/high16 v2, 0x40c00000    # 6.0f

    cmpl-float v5, p1, v2

    if-lez v5, :cond_5

    cmpg-float p1, p1, v0

    if-gez p1, :cond_5

    .line 1610
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->soundPoolUtils:Lcom/powervision/base/utils/SoundPoolUtils;

    invoke-virtual {p1, v3, v4}, Lcom/powervision/base/utils/SoundPoolUtils;->playAudio(II)V

    .line 1611
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->barrierGroup:Lcom/powervision/aircraft/ui/views/BarrierGroup;

    invoke-virtual {p1, v1}, Lcom/powervision/aircraft/ui/views/BarrierGroup;->setVisibility(I)V

    goto :goto_1

    .line 1612
    :cond_5
    iget p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->dis:F

    const/high16 v0, 0x40400000    # 3.0f

    cmpl-float v4, p1, v0

    if-lez v4, :cond_6

    cmpg-float p1, p1, v2

    if-gez p1, :cond_6

    .line 1613
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->soundPoolUtils:Lcom/powervision/base/utils/SoundPoolUtils;

    invoke-virtual {p1, v3, v7}, Lcom/powervision/base/utils/SoundPoolUtils;->playAudio(II)V

    .line 1614
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->barrierGroup:Lcom/powervision/aircraft/ui/views/BarrierGroup;

    invoke-virtual {p1, v1}, Lcom/powervision/aircraft/ui/views/BarrierGroup;->setVisibility(I)V

    goto :goto_1

    .line 1615
    :cond_6
    iget p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->dis:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_7

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_7

    .line 1616
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->soundPoolUtils:Lcom/powervision/base/utils/SoundPoolUtils;

    invoke-virtual {p1, v3, v9}, Lcom/powervision/base/utils/SoundPoolUtils;->playAudio(II)V

    .line 1617
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->barrierGroup:Lcom/powervision/aircraft/ui/views/BarrierGroup;

    invoke-virtual {p1, v1}, Lcom/powervision/aircraft/ui/views/BarrierGroup;->setVisibility(I)V

    :cond_7
    :goto_1
    return-void

    .line 1593
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->barrierGroup:Lcom/powervision/aircraft/ui/views/BarrierGroup;

    invoke-virtual {p1, v2}, Lcom/powervision/aircraft/ui/views/BarrierGroup;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$updateBattery$4$AirCraftControlActivity(FIIIIIIIIII)V
    .locals 2

    .line 1065
    iput p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->currentBattery:F

    .line 1066
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTopView:Lcom/powervision/aircraft/ui/views/AircraftTopView;

    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/ui/views/AircraftTopView;->setBatteryElectric(F)V

    .line 1067
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mBatteryProgressView:Lcom/powervision/base/views/CustomBatteryProgressView;

    invoke-virtual {v0, p1}, Lcom/powervision/base/views/CustomBatteryProgressView;->setBatteryProgress(F)V

    .line 1068
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->batteryInfo:Landroid/util/SparseIntArray;

    float-to-int p1, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1069
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->batteryInfo:Landroid/util/SparseIntArray;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1070
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->batteryInfo:Landroid/util/SparseIntArray;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1071
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->batteryInfo:Landroid/util/SparseIntArray;

    const/4 p2, 0x3

    invoke-virtual {p1, p2, p4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1072
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->batteryInfo:Landroid/util/SparseIntArray;

    const/4 p2, 0x4

    invoke-virtual {p1, p2, p5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1073
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->batteryInfo:Landroid/util/SparseIntArray;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1074
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->batteryInfo:Landroid/util/SparseIntArray;

    const/4 p2, 0x6

    invoke-virtual {p1, p2, p7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1075
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->batteryInfo:Landroid/util/SparseIntArray;

    const/4 p2, 0x7

    invoke-virtual {p1, p2, p8}, Landroid/util/SparseIntArray;->put(II)V

    .line 1076
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->batteryInfo:Landroid/util/SparseIntArray;

    const/16 p2, 0x8

    invoke-virtual {p1, p2, p9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1077
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->batteryInfo:Landroid/util/SparseIntArray;

    const/16 p2, 0x9

    invoke-virtual {p1, p2, p10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1078
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->batteryInfo:Landroid/util/SparseIntArray;

    const/16 p2, 0xa

    invoke-virtual {p1, p2, p11}, Landroid/util/SparseIntArray;->put(II)V

    .line 1079
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    iget-object p2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->batteryInfo:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0, p2}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$updateFileSize$60$AirCraftControlActivity(II)V
    .locals 7

    .line 5909
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->showDelayLoading()V

    const/16 v0, 0x11

    const/4 v1, 0x2

    const-string v2, "PV_GIM_LSE_FLAG"

    const/4 v3, 0x0

    if-ne p1, p2, :cond_3

    .line 5911
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5408\u6210\u5b8c\u6bd5\u62cd\u6444\u5230\u7b2c  "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->currentNum:I

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  \u5f20\u5f00\u59cb\u5408\u6210"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    .line 5913
    iget-object p2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lastMode:Ljava/lang/String;

    const-string v4, "DELAY_SHOOT"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 5914
    iget-object p2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lastSubMode:Ljava/lang/String;

    const-string v4, "DELAY_FREE"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5915
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->checkFreeEnable()V

    .line 5916
    iget-object p2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLapseFreeView:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-virtual {p2}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->resetView()V

    goto :goto_0

    .line 5917
    :cond_0
    iget-object p2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lastSubMode:Ljava/lang/String;

    const-string v4, "DELAY_TRAJ"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5918
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->checkTrailEnable()V

    .line 5919
    iget-object p2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLapseTrailView:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-virtual {p2}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->resetView()V

    .line 5921
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->dismissLoading()V

    .line 5922
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p2

    const/4 v4, 0x5

    invoke-virtual {p2, v4}, Lcom/powervision/camera/camera/CameraManager;->setPhotoGraphType(I)V

    .line 5923
    iget-object p2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast p2, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-virtual {p2, v0, v3}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->setCurrencyMode(II)V

    .line 5924
    iget-object p2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraMenuView:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-virtual {p2}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->resetLapseTakingIcon()V

    .line 5925
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p2

    invoke-virtual {p2, v2, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadGimbalIntParameter(Ljava/lang/String;I)I

    goto :goto_1

    .line 5929
    :cond_2
    iget-object p2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->myHandler:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;

    const/16 v4, 0x19

    const-wide/16 v5, 0x32

    invoke-virtual {p2, v4, v5, v6}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 5930
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p2

    invoke-virtual {p2, v2, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadGimbalIntParameter(Ljava/lang/String;I)I

    .line 5933
    :goto_1
    iput v3, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->currentNum:I

    :cond_3
    const/4 p2, -0x1

    if-ne p1, p2, :cond_4

    .line 5937
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateFileSize: error-code = "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AirCraftCo"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "\u5ef6\u65f6\u6444\u5f71\u5408\u6210\u89c6\u9891\u51fa\u9519"

    .line 5938
    invoke-static {p1}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    .line 5939
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p1

    invoke-virtual {p1, v0, v3}, Lcom/powervision/natives/PVSDK_AP03_API;->setFlightingMode(II)I

    .line 5940
    iput v3, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->currentNum:I

    .line 5941
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraMenuView:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-virtual {p1}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->resetLapseTakingIcon()V

    .line 5942
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getCameraAllParameters()V

    .line 5943
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadGimbalIntParameter(Ljava/lang/String;I)I

    :cond_4
    return-void
.end method

.method public synthetic lambda$updateFollowDetect$11$AirCraftControlActivity(J[F[F[F[F[F[SI)V
    .locals 11

    move-object v0, p0

    .line 1217
    iget-object v1, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartViewContainer:Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;

    if-eqz v1, :cond_0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    .line 1218
    invoke-virtual/range {v1 .. v10}, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->updateTouchView(J[F[F[F[F[F[SI)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$updateFollowTrack$10$AirCraftControlActivity(FFFFF)V
    .locals 2

    .line 1202
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->followList:Ljava/util/List;

    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getLocalSurfaceWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1203
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->followList:Ljava/util/List;

    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getLocalSurfaceHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1204
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->followList:Ljava/util/List;

    add-float/2addr p1, p3

    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/powervision/camera/camera/CameraManager;->getLocalSurfaceWidth()I

    move-result p3

    int-to-float p3, p3

    mul-float p1, p1, p3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1205
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->followList:Ljava/util/List;

    add-float/2addr p2, p4

    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/powervision/camera/camera/CameraManager;->getLocalSurfaceHeight()I

    move-result p3

    int-to-float p3, p3

    mul-float p2, p2, p3

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1206
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->followList:Ljava/util/List;

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1207
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartViewContainer:Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;

    if-eqz p1, :cond_0

    .line 1208
    iget-object p2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->followList:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->setTouchViewTrack(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$updateGimbalAttitudeInfo$13$AirCraftControlActivity(FFF)V
    .locals 1

    .line 1250
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mAttitudeView:Lcom/powervision/aircraft/ui/views/AircraftAttitudeView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/powervision/aircraft/ui/views/AircraftAttitudeView;->updateGimbalAttitude(FFF)V

    .line 1251
    iget-object p2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraMenuView:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    float-to-int p1, p1

    invoke-virtual {p2, p1}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->setGimbalCircle(I)V

    return-void
.end method

.method public synthetic lambda$updateHight$6$AirCraftControlActivity(F)V
    .locals 5

    .line 1102
    iput p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->hightValue:F

    .line 1103
    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isUnit:Z

    if-eqz v0, :cond_0

    .line 1104
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mFlightParameterView:Lcom/powervision/aircraft/ui/views/FlightParameterView;

    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/ui/views/FlightParameterView;->setHigh(F)V

    goto :goto_0

    .line 1106
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mFlightParameterView:Lcom/powervision/aircraft/ui/views/FlightParameterView;

    float-to-double v1, p1

    const-wide v3, 0x400a3d70a3d70a3dL    # 3.28

    mul-double v1, v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/ui/views/FlightParameterView;->setHigh(F)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$updateHorizontalSpeed$7$AirCraftControlActivity(F)V
    .locals 5

    .line 1124
    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isUnit:Z

    if-eqz v0, :cond_0

    .line 1125
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mFlightParameterView:Lcom/powervision/aircraft/ui/views/FlightParameterView;

    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/ui/views/FlightParameterView;->setVSpeed(F)V

    goto :goto_0

    .line 1127
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mFlightParameterView:Lcom/powervision/aircraft/ui/views/FlightParameterView;

    float-to-double v1, p1

    const-wide v3, 0x400a3d70a3d70a3dL    # 3.28

    mul-double v1, v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/ui/views/FlightParameterView;->setVSpeed(F)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$updateMode$2$AirCraftControlActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 747
    iget-wide v3, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastHealth:J

    long-to-int v4, v3

    const/4 v3, 0x4

    invoke-static {v4, v3}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v4

    const/4 v5, 0x2

    const/16 v6, 0x1b

    const/4 v7, 0x1

    const-string v8, "RTL"

    if-eqz v4, :cond_1

    .line 748
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 749
    iget-object v4, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTopView:Lcom/powervision/aircraft/ui/views/AircraftTopView;

    const-string v9, "WATER"

    invoke-virtual {v4, v9}, Lcom/powervision/aircraft/ui/views/AircraftTopView;->setCurrentMode(Ljava/lang/String;)V

    goto :goto_0

    .line 751
    :cond_0
    iget-object v4, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTopView:Lcom/powervision/aircraft/ui/views/AircraftTopView;

    invoke-virtual {v4, v1}, Lcom/powervision/aircraft/ui/views/AircraftTopView;->setCurrentMode(Ljava/lang/String;)V

    goto :goto_0

    .line 758
    :cond_1
    iget-wide v9, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastHealth:J

    long-to-int v4, v9

    invoke-static {v4, v6}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 759
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 760
    iget-object v4, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTopView:Lcom/powervision/aircraft/ui/views/AircraftTopView;

    const-string v9, "RAIN"

    invoke-virtual {v4, v9}, Lcom/powervision/aircraft/ui/views/AircraftTopView;->setCurrentMode(Ljava/lang/String;)V

    goto :goto_0

    .line 762
    :cond_2
    iget-object v4, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTopView:Lcom/powervision/aircraft/ui/views/AircraftTopView;

    invoke-virtual {v4, v1}, Lcom/powervision/aircraft/ui/views/AircraftTopView;->setCurrentMode(Ljava/lang/String;)V

    goto :goto_0

    .line 770
    :cond_3
    iget-boolean v4, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isWaterFollowBol:Z

    if-eqz v4, :cond_4

    .line 771
    iget-object v4, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTopView:Lcom/powervision/aircraft/ui/views/AircraftTopView;

    const-string v9, "WATER_FOLLOW"

    invoke-virtual {v4, v9}, Lcom/powervision/aircraft/ui/views/AircraftTopView;->setCurrentMode(Ljava/lang/String;)V

    goto :goto_0

    .line 773
    :cond_4
    iget v4, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->noramlFollowStatus:I

    if-nez v4, :cond_5

    .line 774
    iget-object v4, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTopView:Lcom/powervision/aircraft/ui/views/AircraftTopView;

    const-string v9, "FOLLOW_1"

    invoke-virtual {v4, v9}, Lcom/powervision/aircraft/ui/views/AircraftTopView;->setCurrentMode(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    if-ne v4, v7, :cond_6

    .line 776
    iget-object v4, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTopView:Lcom/powervision/aircraft/ui/views/AircraftTopView;

    const-string v9, "FOLLOW_2"

    invoke-virtual {v4, v9}, Lcom/powervision/aircraft/ui/views/AircraftTopView;->setCurrentMode(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    if-ne v4, v5, :cond_7

    .line 778
    iget-object v4, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTopView:Lcom/powervision/aircraft/ui/views/AircraftTopView;

    const-string v9, "FOLLOW_3"

    invoke-virtual {v4, v9}, Lcom/powervision/aircraft/ui/views/AircraftTopView;->setCurrentMode(Ljava/lang/String;)V

    goto :goto_0

    .line 780
    :cond_7
    iget-object v4, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTopView:Lcom/powervision/aircraft/ui/views/AircraftTopView;

    invoke-virtual {v4, v1}, Lcom/powervision/aircraft/ui/views/AircraftTopView;->setCurrentMode(Ljava/lang/String;)V

    .line 787
    :goto_0
    iget-object v4, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lastMode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v9, "CIRCLE"

    const-string v10, "INTEL_SHOOT"

    const-string v11, "POSCTL"

    const-string v12, "TRIPLE"

    const-string v13, "MANUAL"

    const-string v14, "FAST"

    const/4 v15, 0x5

    const-string v7, "DELAY_SHOOT"

    if-nez v4, :cond_14

    .line 788
    iput-object v1, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lastMode:Ljava/lang/String;

    .line 789
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "\u6536\u5230\u4e3b\u6a21\u5f0f\u5207\u6362\u6307\u4ee4 --> \u5207\u6362\u4e3a \u4e3b\u6a21\u5f0f \uff1a"

    if-nez v4, :cond_e

    iget-object v4, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lastMode:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_3

    .line 800
    :cond_8
    iget-object v4, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lastMode:Ljava/lang/String;

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lastMode:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_1

    :cond_9
    move-object/from16 v16, v7

    goto/16 :goto_4

    :cond_a
    :goto_1
    move-object/from16 v16, v7

    .line 801
    iget-wide v6, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastHealth:J

    long-to-int v7, v6

    invoke-static {v7, v3}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v6

    if-nez v6, :cond_d

    iget-wide v6, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastHealth:J

    long-to-int v7, v6

    const/16 v4, 0x1b

    invoke-static {v7, v4}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v6

    if-eqz v6, :cond_b

    goto :goto_2

    .line 804
    :cond_b
    iget-boolean v6, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->barrierOpen:Z

    if-eqz v6, :cond_c

    .line 805
    iget-object v6, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    new-instance v7, Lcom/powervision/base/warning/HoverMessage;

    sget v4, Lcom/powervision/aircraft/R$string;->AP03_Msg_115_10:I

    .line 806
    invoke-virtual {v0, v4}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v15, v4}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 805
    invoke-virtual {v6, v7}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    .line 808
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lastMode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    .line 810
    invoke-direct/range {p0 .. p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->processLapse()V

    goto :goto_4

    :cond_d
    :goto_2
    return-void

    :cond_e
    :goto_3
    move-object/from16 v16, v7

    .line 790
    iget-wide v6, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastHealth:J

    long-to-int v4, v6

    invoke-static {v4, v3}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v4

    if-nez v4, :cond_13

    iget-wide v6, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastHealth:J

    long-to-int v4, v6

    const/16 v6, 0x1b

    invoke-static {v4, v6}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v7

    if-eqz v7, :cond_f

    goto/16 :goto_5

    .line 793
    :cond_f
    iget-boolean v6, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->barrierOpen:Z

    if-eqz v6, :cond_10

    .line 794
    iget-object v6, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    new-instance v7, Lcom/powervision/base/warning/HoverMessage;

    sget v4, Lcom/powervision/aircraft/R$string;->AP03_Msg_115_11:I

    .line 795
    invoke-virtual {v0, v4}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v15, 0x2

    invoke-direct {v7, v15, v4}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 794
    invoke-virtual {v6, v7}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    .line 797
    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lastMode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    .line 799
    invoke-direct/range {p0 .. p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->processLapse()V

    .line 812
    :goto_4
    iget-object v4, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lastMode:Ljava/lang/String;

    move-object/from16 v5, v16

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    iget-object v4, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lastMode:Ljava/lang/String;

    const-string v6, "FOLLOW"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 813
    iget-object v4, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mFlightFunctionsIv:Landroid/widget/ImageView;

    if-eqz v4, :cond_11

    .line 814
    sget v6, Lcom/powervision/aircraft/R$mipmap;->aircraft_smart_function:I

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 818
    :cond_11
    iget-object v4, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lastMode:Ljava/lang/String;

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    iget-object v4, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lastMode:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    iget-object v4, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lastMode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    iget-object v4, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lastMode:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    iget-object v4, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lastMode:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    iget-object v4, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lastMode:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 820
    :cond_12
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v4

    iget v4, v4, Lcom/powervision/sdk/Ap03Manager;->barrierStatus:I

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/powervision/camera/utils/CameraUtil;->isOpen(II)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 821
    iget-object v4, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    new-instance v6, Lcom/powervision/base/warning/HoverMessage;

    sget v7, Lcom/powervision/aircraft/R$string;->AP03_Msg_115_11:I

    .line 822
    invoke-virtual {v0, v7}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v15, 0x2

    invoke-direct {v6, v15, v7}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 821
    invoke-virtual {v4, v6}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    goto :goto_6

    :cond_13
    :goto_5
    return-void

    :cond_14
    move-object v5, v7

    .line 826
    :cond_15
    :goto_6
    iget-object v4, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lastSubMode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "DELAY_TRAJ"

    const-string v7, "DELAY_FREE"

    const-string v15, "UNKNOWN"

    if-nez v4, :cond_1a

    .line 827
    iput-object v2, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lastSubMode:Ljava/lang/String;

    .line 828
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6536\u5230\u5b50\u6a21\u5f0f\u5207\u6362\u6307\u4ee4 --> \u5207\u6362\u4e3a \u5b50\u6a21\u5f0f \uff1a"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lastSubMode:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", \u5f53\u524d\u4e3b\u6a21\u5f0f = "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lastMode:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    .line 829
    iget-object v3, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lastMode:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v3, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lastSubMode:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 830
    invoke-direct/range {p0 .. p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->checkFreeEnable()V

    .line 832
    iget-object v3, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLapseFreeView:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-virtual {v3}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->startShooting()V

    const-string v3, "\u6536\u5230\u5f00\u59cb\u81ea\u7531\u5ef6\u65f6\u6444\u5f71\u56de\u8c03\uff0c \u5f00\u59cb------------->"

    .line 833
    invoke-static {v3}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    .line 834
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u62cd\u6444\u95f4\u9694 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLapseFreeView:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-virtual {v4}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->getCurrentInterval()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "s, \u89c6\u9891\u8bbe\u7f6e\u603b\u65f6\u957f = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLapseFreeView:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    .line 835
    invoke-virtual {v4}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->getCurrentLength()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "s, \u901f\u5ea6 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/powervision/aircraft/utils/AirLapseDataUtil;->speedIndex:I

    move-object/from16 v17, v11

    move-object/from16 v18, v12

    int-to-double v11, v4

    const-wide v19, 0x3fb999999999999aL    # 0.1

    mul-double v11, v11, v19

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    add-double v11, v11, v19

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 834
    invoke-static {v3}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_16
    move-object/from16 v17, v11

    move-object/from16 v18, v12

    .line 836
    iget-object v3, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lastMode:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    iget-object v3, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lastSubMode:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 837
    invoke-direct/range {p0 .. p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->checkTrailEnable()V

    const-string v3, "\u6536\u5230\u5f00\u59cb\u8f68\u8ff9\u5ef6\u65f6\u6444\u5f71\u56de\u8c03\uff0c \u5f00\u59cb------------->"

    .line 841
    invoke-static {v3}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    .line 842
    iget-object v3, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLapseTrailView:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    if-eqz v3, :cond_1b

    .line 843
    invoke-virtual {v3}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->startTrailShoot()V

    goto :goto_8

    .line 845
    :cond_17
    iget-object v3, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lastMode:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    iget-object v3, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lastSubMode:Ljava/lang/String;

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 846
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCurrentMode: delayMode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->delayMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AirCraftCo"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "\u6536\u5230\u5f53\u524d\u6a21\u5f0f\u56de\u8c03\uff0c \u4e3b\u6a21\u5f0f\u5ef6\u65f6\u6444\u5f71\uff0c\u5b50\u6a21\u5f0fUNKNOWN"

    .line 847
    invoke-static {v3}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    .line 848
    iget v3, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->delayMode:I

    if-nez v3, :cond_18

    .line 849
    invoke-direct/range {p0 .. p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->checkFreeEnable()V

    .line 850
    iget-object v3, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLapseFreeView:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-virtual {v3}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->stopShooting()V

    goto :goto_7

    :cond_18
    const/4 v4, 0x1

    if-ne v3, v4, :cond_19

    .line 852
    invoke-direct/range {p0 .. p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->checkTrailEnable()V

    .line 853
    iget-object v3, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLapseTrailView:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-virtual {v3}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->stopTrailShoot()V

    :cond_19
    :goto_7
    const/4 v3, 0x4

    .line 855
    iput v3, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartMode:I

    goto :goto_8

    :cond_1a
    move-object/from16 v17, v11

    move-object/from16 v18, v12

    .line 858
    :cond_1b
    :goto_8
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0x8

    if-eqz v3, :cond_1e

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 859
    iget-object v2, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraSettingView;

    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Lcom/powervision/camera/views/CameraSettingView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1c

    .line 860
    iget-object v2, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mOneKeyReturnIv:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 861
    iget-object v2, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mFlightFunctionsIv:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_9

    .line 862
    :cond_1c
    iget-object v2, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mGeneralSettingsView:Lcom/powervision/aircraft/ui/views/GeneralSettingsView;

    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1d

    .line 863
    iget-object v2, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mOneKeyReturnIv:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 864
    iget-object v2, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mFlightFunctionsIv:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_9

    .line 866
    :cond_1d
    iget-object v2, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mOneKeyReturnIv:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 867
    iget-object v2, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mFlightFunctionsIv:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 869
    :goto_9
    iget-object v2, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mOneKeyReturnIv:Landroid/widget/ImageView;

    sget v3, Lcom/powervision/aircraft/R$mipmap;->aircraft_smart_follow_close:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v2, 0x4

    .line 880
    iput v2, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartMode:I

    goto :goto_a

    .line 881
    :cond_1e
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 882
    iget-object v2, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mOneKeyReturnIv:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 883
    iget-object v2, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mFlightFunctionsIv:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_a

    .line 884
    :cond_1f
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 885
    iget-object v2, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mOneKeyReturnIv:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 886
    iget-object v2, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mFlightFunctionsIv:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 888
    :cond_20
    :goto_a
    iput-object v1, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->currentMode:Ljava/lang/String;

    const-string v2, "LAND"

    .line 889
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 890
    iget-object v3, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTopView:Lcom/powervision/aircraft/ui/views/AircraftTopView;

    sget-boolean v6, Lcom/powervision/natives/connect/Ap03ConnectSdk;->isConnected:Z

    const/4 v7, 0x1

    invoke-virtual {v3, v7, v6}, Lcom/powervision/aircraft/ui/views/AircraftTopView;->setLanding(ZZ)V

    goto :goto_b

    .line 892
    :cond_21
    iget-object v3, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTopView:Lcom/powervision/aircraft/ui/views/AircraftTopView;

    sget-boolean v6, Lcom/powervision/natives/connect/Ap03ConnectSdk;->isConnected:Z

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v6}, Lcom/powervision/aircraft/ui/views/AircraftTopView;->setLanding(ZZ)V

    .line 894
    :goto_b
    iget-object v3, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->currentMode:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    iget-object v3, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->currentMode:Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    iget-object v3, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->currentMode:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    iget-object v3, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->currentMode:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    iget-object v3, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->currentMode:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    iget-object v3, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->currentMode:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_e

    .line 899
    :cond_22
    iget-object v3, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->currentMode:Ljava/lang/String;

    move-object/from16 v5, v18

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    iget-object v3, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->currentMode:Ljava/lang/String;

    move-object/from16 v6, v17

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    goto :goto_c

    :cond_23
    move-object/from16 v6, v17

    .line 900
    :goto_c
    iget-boolean v3, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->barrierOpen:Z

    if-eqz v3, :cond_27

    .line 901
    iget v3, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->dis:F

    const/high16 v7, 0x41000000    # 8.0f

    cmpg-float v7, v3, v7

    if-gtz v7, :cond_26

    const/4 v7, 0x0

    cmpl-float v3, v3, v7

    if-lez v3, :cond_26

    .line 902
    iget-wide v9, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastHealth:J

    long-to-int v3, v9

    const/4 v7, 0x4

    invoke-static {v3, v7}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v3

    if-nez v3, :cond_25

    iget-wide v9, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastHealth:J

    long-to-int v3, v9

    const/16 v7, 0x1b

    invoke-static {v3, v7}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v3

    if-eqz v3, :cond_24

    goto :goto_d

    .line 905
    :cond_24
    iget-object v3, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->barrierGroup:Lcom/powervision/aircraft/ui/views/BarrierGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/powervision/aircraft/ui/views/BarrierGroup;->setVisibility(I)V

    goto :goto_f

    .line 903
    :cond_25
    :goto_d
    iget-object v3, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->barrierGroup:Lcom/powervision/aircraft/ui/views/BarrierGroup;

    invoke-virtual {v3, v4}, Lcom/powervision/aircraft/ui/views/BarrierGroup;->setVisibility(I)V

    goto :goto_f

    .line 908
    :cond_26
    iget-object v3, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->barrierGroup:Lcom/powervision/aircraft/ui/views/BarrierGroup;

    invoke-virtual {v3, v4}, Lcom/powervision/aircraft/ui/views/BarrierGroup;->setVisibility(I)V

    .line 909
    iget-object v3, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->soundPoolUtils:Lcom/powervision/base/utils/SoundPoolUtils;

    const/4 v7, 0x5

    invoke-virtual {v3, v7}, Lcom/powervision/base/utils/SoundPoolUtils;->releaseByIndex(I)V

    goto :goto_f

    :cond_27
    const/4 v7, 0x5

    .line 912
    iget-object v3, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->barrierGroup:Lcom/powervision/aircraft/ui/views/BarrierGroup;

    invoke-virtual {v3, v4}, Lcom/powervision/aircraft/ui/views/BarrierGroup;->setVisibility(I)V

    .line 913
    iget-object v3, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->soundPoolUtils:Lcom/powervision/base/utils/SoundPoolUtils;

    invoke-virtual {v3, v7}, Lcom/powervision/base/utils/SoundPoolUtils;->releaseByIndex(I)V

    goto :goto_f

    :cond_28
    :goto_e
    move-object/from16 v6, v17

    move-object/from16 v5, v18

    .line 895
    iget-object v3, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->barrierGroup:Lcom/powervision/aircraft/ui/views/BarrierGroup;

    invoke-virtual {v3}, Lcom/powervision/aircraft/ui/views/BarrierGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_29

    .line 896
    iget-object v3, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->barrierGroup:Lcom/powervision/aircraft/ui/views/BarrierGroup;

    invoke-virtual {v3, v4}, Lcom/powervision/aircraft/ui/views/BarrierGroup;->setVisibility(I)V

    .line 897
    iget-object v3, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->soundPoolUtils:Lcom/powervision/base/utils/SoundPoolUtils;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/powervision/base/utils/SoundPoolUtils;->releaseByIndex(I)V

    .line 916
    :cond_29
    :goto_f
    iget-object v3, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->currentMode:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "CURRENT_MODE"

    if-eqz v3, :cond_2a

    .line 917
    iget-object v3, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_10

    .line 918
    :cond_2a
    iget-object v3, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->currentMode:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 919
    iget-object v3, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_10

    .line 920
    :cond_2b
    iget-object v3, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->currentMode:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 921
    iget-object v3, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 923
    :cond_2c
    :goto_10
    iget v3, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartMode:I

    if-lez v3, :cond_2e

    const/4 v4, 0x5

    if-gt v3, v4, :cond_2e

    .line 924
    iget-object v1, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lastMode:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    iget-object v1, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lastMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    :cond_2d
    const/4 v1, 0x0

    .line 925
    invoke-direct {v0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->resetSmartModeViews(Z)V

    .line 926
    iput-boolean v1, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isInputDelay:Z

    .line 927
    invoke-direct/range {p0 .. p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->processLapse()V

    .line 928
    iput v1, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartMode:I

    .line 929
    iput-boolean v1, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isWaterFollowBol:Z

    const/4 v1, -0x1

    .line 930
    iput v1, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->noramlFollowStatus:I

    goto :goto_12

    .line 937
    :cond_2e
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 938
    iget-object v1, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mOneKeyReturnIv:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/aircraft/R$mipmap;->aircraft_one_key_return_cancel:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v1, 0x1

    .line 939
    iput v1, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isReturn:I

    .line 941
    sget v1, Lcom/powervision/aircraft/R$string;->AP03_AutoReturn_5:I

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 942
    sget v2, Lcom/powervision/aircraft/R$string;->AP03_AutoReturn_6:I

    invoke-virtual {v0, v2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 943
    sget v3, Lcom/powervision/aircraft/R$mipmap;->aircraft_pv_return_btn:I

    const-string v4, ""

    goto :goto_11

    .line 945
    :cond_2f
    iget-object v1, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mOneKeyReturnIv:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/aircraft/R$mipmap;->aircraft_one_key_return:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v1, 0x0

    .line 946
    iput v1, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isReturn:I

    .line 947
    sget v1, Lcom/powervision/aircraft/R$string;->AP03_AutoReturn_1:I

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 948
    sget v1, Lcom/powervision/aircraft/R$string;->AP03_AutoReturn_9:I

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 949
    sget v2, Lcom/powervision/aircraft/R$string;->AP03_AutoReturn_4:I

    invoke-virtual {v0, v2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 950
    sget v3, Lcom/powervision/aircraft/R$mipmap;->aircraft_pv_return_btn:I

    :goto_11
    move-object v7, v1

    move-object v8, v2

    move v9, v3

    move-object v6, v4

    .line 952
    iget-object v5, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->slideReturnView:Lcom/powervision/aircraft/ui/views/SlideReturnView;

    sget v10, Lcom/powervision/aircraft/R$mipmap;->aircraft_back_ok_icon:I

    sget v11, Lcom/powervision/aircraft/R$mipmap;->aircraft_back_cancel_icon:I

    invoke-virtual/range {v5 .. v11}, Lcom/powervision/aircraft/ui/views/SlideReturnView;->modifyState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    :cond_30
    :goto_12
    return-void
.end method

.method public synthetic lambda$updateOnInternalStorageFull$33$AirCraftControlActivity()V
    .locals 1

    const/4 v0, 0x0

    .line 2036
    invoke-direct {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->currentStorageFull(Z)V

    return-void
.end method

.method public synthetic lambda$updateOnSDFull$32$AirCraftControlActivity()V
    .locals 1

    const/4 v0, 0x1

    .line 2031
    invoke-direct {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->currentStorageFull(Z)V

    return-void
.end method

.method public synthetic lambda$updatePhotoNum$59$AirCraftControlActivity(I)V
    .locals 2

    .line 5853
    iget v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->delayMode:I

    if-nez v0, :cond_0

    .line 5854
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->checkFreeEnable()V

    .line 5855
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLapseFreeView:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->setCurrentShootingNum(I)V

    .line 5856
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLapseFreeView:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->isTakingPhotoOver(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5858
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->showDelayLoading()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 5861
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->checkTrailEnable()V

    .line 5862
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLapseTrailView:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->setCurrentShootingNum(I)V

    .line 5863
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLapseTrailView:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->isTakingPhotoOver(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5865
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->showDelayLoading()V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$updateRainproofMode$31$AirCraftControlActivity(I)V
    .locals 5

    if-nez p1, :cond_2

    .line 2015
    iget-wide v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastHealth:J

    long-to-int p1, v0

    const/16 v0, 0x1b

    invoke-static {p1, v0}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 2016
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/powervision/camera/camera/CameraManager;->setWaterModeTag(I)V

    goto :goto_0

    .line 2018
    :cond_0
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/powervision/camera/camera/CameraManager;->setWaterModeTag(I)V

    .line 2020
    :goto_0
    iget-wide v3, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastHealth:J

    long-to-int p1, v3

    invoke-static {p1, v0}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result p1

    const-string v0, "WATER_MODE"

    if-eqz p1, :cond_1

    .line 2021
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 2023
    :cond_1
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public synthetic lambda$updateRemoteElectric$18$AirCraftControlActivity(I)V
    .locals 1

    .line 1634
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTopView:Lcom/powervision/aircraft/ui/views/AircraftTopView;

    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/ui/views/AircraftTopView;->setBatteryPower(I)V

    return-void
.end method

.method public synthetic lambda$updateSatellite$3$AirCraftControlActivity(I)V
    .locals 4

    .line 1047
    iput p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->numValue:I

    if-nez p1, :cond_0

    .line 1048
    invoke-static {}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->getInstance()Lcom/powervision/natives/connect/Ap03ConnectSdk;

    move-result-object v0

    iget-boolean v0, v0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->isArmed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->numValue:I

    iget v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lastNum:I

    if-eq v0, v1, :cond_0

    .line 1049
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    new-instance v1, Lcom/powervision/base/warning/HoverMessage;

    const/4 v2, 0x4

    sget v3, Lcom/powervision/aircraft/R$string;->AP03_Msg_115_17:I

    .line 1050
    invoke-virtual {p0, v3}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 1049
    invoke-virtual {v0, v1}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    .line 1051
    iget v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->numValue:I

    iput v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lastNum:I

    goto :goto_0

    .line 1052
    :cond_0
    invoke-static {}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->getInstance()Lcom/powervision/natives/connect/Ap03ConnectSdk;

    move-result-object v0

    iget-boolean v0, v0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->isArmed:Z

    if-nez v0, :cond_1

    const/4 v0, -0x1

    .line 1053
    iput v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lastNum:I

    .line 1055
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTopView:Lcom/powervision/aircraft/ui/views/AircraftTopView;

    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/ui/views/AircraftTopView;->setSatelliteNum(I)V

    return-void
.end method

.method public synthetic lambda$updateSurplusTime$9$AirCraftControlActivity(I)V
    .locals 1

    .line 1169
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mFlightParameterView:Lcom/powervision/aircraft/ui/views/FlightParameterView;

    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/ui/views/FlightParameterView;->setTime(I)V

    return-void
.end method

.method public synthetic lambda$updateVertical$8$AirCraftControlActivity(F)V
    .locals 5

    .line 1137
    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isUnit:Z

    if-eqz v0, :cond_0

    .line 1138
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mFlightParameterView:Lcom/powervision/aircraft/ui/views/FlightParameterView;

    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/ui/views/FlightParameterView;->setHSpeed(F)V

    goto :goto_0

    .line 1140
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mFlightParameterView:Lcom/powervision/aircraft/ui/views/FlightParameterView;

    float-to-double v1, p1

    const-wide v3, 0x400a3d70a3d70a3dL    # 3.28

    mul-double v1, v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/ui/views/FlightParameterView;->setHSpeed(F)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$updateWarnInfo$16$AirCraftControlActivity(IIZ)V
    .locals 8

    const/4 v0, 0x0

    .line 1411
    invoke-static {p1, v0}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastHealth:J

    long-to-int v2, v1

    const/4 v1, 0x4

    invoke-static {v2, v1}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->currentBattery:F

    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    const/high16 v2, 0x41c80000    # 25.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/16 v1, 0xd

    invoke-static {p1, v1}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1412
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_CameraSetting_57:I

    .line 1413
    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget p1, Lcom/powervision/aircraft/R$string;->AP03_Msg_139_9:I

    .line 1414
    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget p1, Lcom/powervision/aircraft/R$string;->AP03_AI_2:I

    .line 1415
    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget p1, Lcom/powervision/aircraft/R$string;->AP03_AI_3:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$ynUA9HWyPn0wmmKeylsIXEo8xb8;

    invoke-direct {v6, p0}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$ynUA9HWyPn0wmmKeylsIXEo8xb8;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    new-instance v7, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$YkqC1UKaXN-UDh9R_Sb0d7AxOAY;

    invoke-direct {v7, p0}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$YkqC1UKaXN-UDh9R_Sb0d7AxOAY;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    move-object v1, p0

    .line 1412
    invoke-static/range {v1 .. v7}, Lcom/powervision/base/utils/DialogUtils;->customDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/powervision/base/utils/DialogUtils$OnClickListener;Lcom/powervision/base/utils/DialogUtils$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    :cond_0
    const/16 p1, 0x12

    .line 1421
    invoke-static {p2, p1}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->getInstance()Lcom/powervision/natives/connect/Ap03ConnectSdk;

    move-result-object p1

    iget-boolean p1, p1, Lcom/powervision/natives/connect/Ap03ConnectSdk;->isArmed:Z

    if-eqz p1, :cond_1

    .line 1422
    invoke-static {}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->getInstance()Lcom/powervision/natives/connect/Ap03ConnectSdk;

    move-result-object p1

    iget-boolean p1, p1, Lcom/powervision/natives/connect/Ap03ConnectSdk;->isArmed:Z

    iput-boolean p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mArmStatus:Z

    .line 1423
    iget-boolean p2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastArmStatus:Z

    if-eq p1, p2, :cond_2

    .line 1424
    iput-boolean p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastArmStatus:Z

    .line 1425
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast p1, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-virtual {p1}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->getHomeReturnPoint()V

    .line 1426
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast p1, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-virtual {p1}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->getTakeOffPoint()V

    goto :goto_0

    .line 1429
    :cond_1
    iput-boolean v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastArmStatus:Z

    .line 1432
    :cond_2
    :goto_0
    invoke-static {}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->getInstance()Lcom/powervision/natives/connect/Ap03ConnectSdk;

    move-result-object p1

    iget-boolean p1, p1, Lcom/powervision/natives/connect/Ap03ConnectSdk;->isArmed:Z

    if-nez p1, :cond_3

    .line 1433
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mapSwitchManager:Lcom/powervision/map/manager/MapSwitchManager;

    invoke-virtual {p1}, Lcom/powervision/map/manager/MapSwitchManager;->removeNewerMode()V

    .line 1434
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mapSwitchManager:Lcom/powervision/map/manager/MapSwitchManager;

    invoke-virtual {p1}, Lcom/powervision/map/manager/MapSwitchManager;->removeHomePoint()V

    .line 1437
    :cond_3
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTopView:Lcom/powervision/aircraft/ui/views/AircraftTopView;

    if-eqz p1, :cond_4

    .line 1438
    invoke-virtual {p1, p3}, Lcom/powervision/aircraft/ui/views/AircraftTopView;->setUnCheckPass(Z)V

    :cond_4
    return-void
.end method

.method public synthetic lambda$updateWaterMode$30$AirCraftControlActivity(I)V
    .locals 5

    if-nez p1, :cond_2

    .line 1992
    iget-wide v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastHealth:J

    long-to-int p1, v0

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 1993
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/powervision/camera/camera/CameraManager;->setWaterModeTag(I)V

    goto :goto_0

    .line 1995
    :cond_0
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/powervision/camera/camera/CameraManager;->setWaterModeTag(I)V

    .line 2002
    :goto_0
    iget-wide v3, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastHealth:J

    long-to-int p1, v3

    invoke-static {p1, v0}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result p1

    const-string v0, "WATER_MODE"

    if-eqz p1, :cond_1

    .line 2003
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 2005
    :cond_1
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public lapseNext(Landroid/util/SparseArray;)V
    .locals 2
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xf41
        threadMode = .enum Lcom/powervision/base/rxbus/ThreadMode;->MAIN:Lcom/powervision/base/rxbus/ThreadMode;
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

    .line 4885
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->delayMode:I

    .line 4886
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "=====rx\u4f20\u9012\u6a21\u5f0f======"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->delayMode:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "delay_shoot_test"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4887
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    iget v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->delayMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "AP03_DELAY_MODE"

    invoke-virtual {p1, v1, v0}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4888
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "lapseNext: mode = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->delayMode:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AirCraftCo"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4890
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartTopFuncitonView:Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;

    invoke-virtual {p1}, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->resetAll()V

    .line 4891
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartViewContainer:Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;

    invoke-virtual {p1}, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->resetAll()V

    .line 4892
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/powervision/camera/camera/CameraManager;->setPhotoGraphType(I)V

    .line 4893
    iget p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->delayMode:I

    if-nez p1, :cond_0

    .line 4894
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->initFreeMode()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 4896
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->initTrailMode()V

    :cond_1
    :goto_0
    return-void
.end method

.method public liveCloseConnectionResult()V
    .locals 2

    .line 6085
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_DV_GeneralSetting_45_2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    .line 6086
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLiveStatusView:Lcom/powervision/base/views/LiveStatusView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/powervision/base/views/LiveStatusView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 6087
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLiveStatusView:Lcom/powervision/base/views/LiveStatusView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/LiveStatusView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public liveOpenConnectionFailed()V
    .locals 2

    .line 6063
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_DV_GeneralSetting_44:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    .line 6064
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLiveStatusView:Lcom/powervision/base/views/LiveStatusView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/powervision/base/views/LiveStatusView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 6065
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLiveStatusView:Lcom/powervision/base/views/LiveStatusView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/LiveStatusView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public liveOpenConnectionSuccess()V
    .locals 2

    .line 6056
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_DV_GeneralSetting_40_4:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    .line 6057
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLiveStatusView:Lcom/powervision/base/views/LiveStatusView;

    invoke-virtual {v0}, Lcom/powervision/base/views/LiveStatusView;->startTimerTask()V

    .line 6058
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLiveStatusView:Lcom/powervision/base/views/LiveStatusView;

    invoke-virtual {v0}, Lcom/powervision/base/views/LiveStatusView;->stopFlickerAnimation()V

    return-void
.end method

.method public liveWriteError(I)V
    .locals 1

    .line 6074
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_DV_GeneralSetting_44_1:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    .line 6075
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLiveStatusView:Lcom/powervision/base/views/LiveStatusView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/powervision/base/views/LiveStatusView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 6076
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLiveStatusView:Lcom/powervision/base/views/LiveStatusView;

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

    const-string v0, "lzqFirm"

    const-string v1, "2.2 lockDevice"

    .line 555
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public longTestClick()V
    .locals 0

    return-void
.end method

.method public mBackHome()V
    .locals 8

    .line 2598
    invoke-static {}, Lcom/powervision/livestreaming/LiveStreaming;->getInstance()Lcom/powervision/livestreaming/LiveStreaming;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/livestreaming/LiveStreaming;->isLiveRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 2599
    sget v0, Lcom/powervision/aircraft/R$string;->AP03_DV_GeneralSetting_46:I

    .line 2600
    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_Activation_6:I

    .line 2601
    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_Activation_9:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$Pf-9QeYc2_RCgmEk8J5QZieEAYU;

    invoke-direct {v6, p0}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$Pf-9QeYc2_RCgmEk8J5QZieEAYU;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    sget-object v7, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$YbPvF5qrDUNhCuL_DK4SaA_BV2Q;->INSTANCE:Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$YbPvF5qrDUNhCuL_DK4SaA_BV2Q;

    move-object v1, p0

    .line 2599
    invoke-static/range {v1 .. v7}, Lcom/powervision/base/utils/DialogUtils;->customDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/powervision/base/utils/DialogUtils$OnClickListener;Lcom/powervision/base/utils/DialogUtils$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    goto :goto_0

    .line 2607
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public mGeneralSettings()V
    .locals 1

    const/4 v0, 0x0

    .line 2593
    invoke-direct {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->showGeneralSettingsView(I)V

    return-void
.end method

.method public noflyCheck(I)V
    .locals 0

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 3231
    invoke-super {p0, p1, p2, p3}, Lcom/powervision/base/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 3232
    iget p2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->GPS_REQUEST_CODE:I

    if-ne p1, p2, :cond_0

    .line 3233
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->setGpsEnable()V

    :cond_0
    return-void
.end method

.method public onAircraftLocationChange(IIZ)V
    .locals 2

    .line 2185
    iget p3, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mAirLat:I

    if-ne p3, p1, :cond_0

    iget p3, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mAirLon:I

    if-eq p2, p3, :cond_1

    .line 2186
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->storeLocation(II)V

    .line 2188
    :cond_1
    iput p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mAirLat:I

    .line 2189
    iput p2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mAirLon:I

    .line 2190
    iget-object p3, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->positionInfo:Lcom/powervision/aircraft/lapse/data/PositionInfo;

    if-nez p3, :cond_2

    .line 2191
    new-instance p3, Lcom/powervision/aircraft/lapse/data/PositionInfo;

    invoke-direct {p3}, Lcom/powervision/aircraft/lapse/data/PositionInfo;-><init>()V

    iput-object p3, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->positionInfo:Lcom/powervision/aircraft/lapse/data/PositionInfo;

    .line 2193
    :cond_2
    iget-object p3, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->positionInfo:Lcom/powervision/aircraft/lapse/data/PositionInfo;

    invoke-virtual {p3, p1}, Lcom/powervision/aircraft/lapse/data/PositionInfo;->setLat(I)V

    .line 2194
    iget-object p3, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->positionInfo:Lcom/powervision/aircraft/lapse/data/PositionInfo;

    invoke-virtual {p3, p2}, Lcom/powervision/aircraft/lapse/data/PositionInfo;->setLon(I)V

    .line 2195
    invoke-static {}, Lcom/powervision/base/databus/LiveDataBusX;->getInstance()Lcom/powervision/base/databus/LiveDataBusX;

    move-result-object p3

    const-class v0, Lcom/powervision/aircraft/lapse/data/PositionInfo;

    const-string v1, "lat_lon_model"

    invoke-virtual {p3, v1, v0}, Lcom/powervision/base/databus/LiveDataBusX;->with(Ljava/lang/String;Ljava/lang/Class;)Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;

    move-result-object p3

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->positionInfo:Lcom/powervision/aircraft/lapse/data/PositionInfo;

    invoke-virtual {p3, v0}, Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 2196
    iget-object p3, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartViewContainer:Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;

    if-eqz p3, :cond_3

    .line 2197
    invoke-virtual {p3, p1, p2}, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->updateSurroundLatLon(II)V

    :cond_3
    int-to-double v0, p1

    .line 2199
    invoke-static {v0, v1}, Lcom/powervision/map/utils/PositionUtil;->getPositionByOriginalData(D)D

    int-to-double p1, p2

    .line 2200
    invoke-static {p1, p2}, Lcom/powervision/map/utils/PositionUtil;->getPositionByOriginalData(D)D

    .line 2201
    new-instance p1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$13;

    invoke-direct {p1, p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$13;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 2631
    sget-boolean v0, Lcom/powervision/base/constant/Constant;->ACTIVATION_FLAG:Z

    if-eqz v0, :cond_0

    return-void

    .line 2634
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->finish()V

    .line 2635
    invoke-static {}, Lcom/powervision/base/router/RouterUtil$Home;->getHomeActivity()Landroid/app/Activity;

    return-void
.end method

.method public onCameraChange(F)V
    .locals 2

    .line 2672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lastBearing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 2673
    iput p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->bearing:F

    return-void
.end method

.method public onCameraConnect()V
    .locals 2

    .line 4446
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->myHandler:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onCameraConnectFaile()V
    .locals 0

    return-void
.end method

.method public onCameraConnectHeartBeatTimeOut()V
    .locals 2

    const-string v0, "AirCraftCo"

    const-string v1, " aircraft ...onCameraConnectHeartBeatTimeOut()    "

    .line 4470
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4471
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->myHandler:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onCameraConnectTimeOut()V
    .locals 0

    return-void
.end method

.method public onCameraDisconnect()V
    .locals 2

    .line 4464
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->myHandler:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onCameraSensorHighTemperature(I)V
    .locals 2

    .line 5763
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraTemperatureIv:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 5766
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x11

    .line 5767
    iput v1, v0, Landroid/os/Message;->what:I

    .line 5768
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 5769
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->myHandler:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onChangeAudioStatus(Landroid/util/SparseIntArray;)V
    .locals 0
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xd2
    .end annotation

    const-string p1, " --\u97f3\u9891"

    .line 5657
    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->updateCameraSettingButton(Ljava/lang/String;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12

    .line 3877
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 3878
    sget v1, Lcom/powervision/aircraft/R$id;->icon_close_map:I

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne v0, v1, :cond_4

    .line 3879
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCloseMapIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "map"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "attitude"

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCloseMapIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v4, "video"

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 3887
    :cond_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCloseMapIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 3888
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mAttitudeView:Lcom/powervision/aircraft/ui/views/AircraftAttitudeView;

    invoke-virtual {p1, v2}, Lcom/powervision/aircraft/ui/views/AircraftAttitudeView;->setVisibility(I)V

    .line 3889
    iget-boolean p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isBigMap:Z

    if-eqz p1, :cond_1

    .line 3890
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCloseMapIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 3892
    :cond_1
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCloseMapIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3894
    :goto_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCloseMapIcon:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_switch_attitude:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 3880
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mAttitudeView:Lcom/powervision/aircraft/ui/views/AircraftAttitudeView;

    invoke-virtual {p1, v3}, Lcom/powervision/aircraft/ui/views/AircraftAttitudeView;->setVisibility(I)V

    .line 3881
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCloseMapIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3882
    iget-boolean p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isBigMap:Z

    if-eqz p1, :cond_3

    .line 3883
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCloseMapIcon:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_switch_video:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 3885
    :cond_3
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCloseMapIcon:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_switch_map:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 3896
    :cond_4
    sget v1, Lcom/powervision/aircraft/R$id;->camera_parameter:I

    if-ne v0, v1, :cond_5

    goto/16 :goto_4

    .line 3903
    :cond_5
    sget v1, Lcom/powervision/aircraft/R$id;->flight_functions:I

    const/4 v4, 0x5

    const/16 v5, 0x1b

    const-string v6, "AP03_NEW_USER_MODE"

    const/4 v7, 0x4

    const/4 v8, 0x1

    if-ne v0, v1, :cond_b

    .line 3904
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lastMode:Ljava/lang/String;

    const-string v0, "DELAY_SHOOT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 3905
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->returnLastMode()V

    .line 3906
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mWaterFollow:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3907
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "AP03_DELAY_MODE"

    invoke-virtual {p1, v1, v0}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3908
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartTopFuncitonView:Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;

    invoke-virtual {p1, v3}, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->setVisibility(I)V

    .line 3909
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartTopFuncitonView:Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;

    invoke-virtual {p1}, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->changeToDelayFragment()V

    .line 3910
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1, v3, v3}, Lcom/powervision/camera/camera/CameraManager;->setCaptureMode(II)V

    .line 3911
    iput-boolean v8, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isInputDelay:Z

    return-void

    .line 3914
    :cond_6
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    invoke-virtual {p1, v6, v3}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v8, :cond_7

    .line 3915
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    new-instance v0, Lcom/powervision/base/warning/HoverMessage;

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_Msg_139_7:I

    .line 3916
    invoke-virtual {p0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v7, v1}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 3915
    invoke-virtual {p1, v0}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    return-void

    .line 3919
    :cond_7
    iget-wide v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastHealth:J

    long-to-int p1, v0

    invoke-static {p1, v7}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result p1

    if-nez p1, :cond_a

    iget-wide v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastHealth:J

    long-to-int p1, v0

    invoke-static {p1, v5}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_2

    .line 3923
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onClick: smartMode = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartMode:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "helin"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3924
    iget p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartMode:I

    if-lez p1, :cond_9

    if-gt p1, v4, :cond_9

    const/4 v6, 0x0

    .line 3925
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_Msg_139_1:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget p1, Lcom/powervision/aircraft/R$string;->AP03_AI_2:I

    .line 3926
    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget p1, Lcom/powervision/aircraft/R$string;->AP03_AI_3:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-instance v11, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$29;

    invoke-direct {v11, p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$29;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    move-object v5, p0

    .line 3925
    invoke-static/range {v5 .. v11}, Lcom/powervision/base/utils/DialogUtils;->customDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/powervision/base/utils/DialogUtils$OnClickListener;Lcom/powervision/base/utils/DialogUtils$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    goto/16 :goto_4

    .line 3939
    :cond_9
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mWaterFollow:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3940
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartTopFuncitonView:Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;

    invoke-virtual {p1, v3}, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->setVisibility(I)V

    .line 3941
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartTopFuncitonView:Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;

    invoke-virtual {p1, v3}, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->initFragments(I)V

    .line 3942
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartTopFuncitonView:Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;

    const/high16 v0, 0x43480000    # 200.0f

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->setZ(F)V

    goto/16 :goto_4

    .line 3920
    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    new-instance v0, Lcom/powervision/base/warning/HoverMessage;

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_waterproof_6:I

    .line 3921
    invoke-virtual {p0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v7, v1}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 3920
    invoke-virtual {p1, v0}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    goto/16 :goto_4

    .line 3945
    :cond_b
    sget v1, Lcom/powervision/aircraft/R$id;->one_key_return:I

    if-ne v0, v1, :cond_c

    .line 3946
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->oneKeyReturnClick(Landroid/view/View;)V

    goto/16 :goto_4

    .line 3947
    :cond_c
    sget p1, Lcom/powervision/aircraft/R$id;->one_key_takeoff:I

    if-ne v0, p1, :cond_d

    .line 3948
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->slideTakeOffView:Lcom/powervision/aircraft/ui/views/SlideReturnView;

    invoke-virtual {p1, v3}, Lcom/powervision/aircraft/ui/views/SlideReturnView;->setVisibility(I)V

    goto/16 :goto_4

    .line 3949
    :cond_d
    sget p1, Lcom/powervision/aircraft/R$id;->image_water_follow:I

    if-ne v0, p1, :cond_13

    .line 3950
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    invoke-virtual {p1, v6, v3}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v8, :cond_e

    .line 3951
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    new-instance v0, Lcom/powervision/base/warning/HoverMessage;

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_Msg_139_18:I

    .line 3952
    invoke-virtual {p0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v7, v1}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 3951
    invoke-virtual {p1, v0}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    return-void

    .line 3955
    :cond_e
    iget p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->smartHight:F

    const/high16 v0, 0x40400000    # 3.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_f

    .line 3956
    new-instance p1, Lcom/powervision/base/warning/HoverMessage;

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_Msg_161:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v7, v0}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 3957
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    invoke-virtual {v0, p1}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    return-void

    .line 3960
    :cond_f
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const-string v0, "AP03_FC_VERSION"

    invoke-virtual {p1, v0}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3961
    sget v0, Lcom/powervision/aircraft/R$string;->FC_WATER_FOLLOW:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/powervision/gcs/manager/FirmWareUtils;->firstIsBiggerOrSame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 3962
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_Msg_62_24:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    return-void

    .line 3965
    :cond_10
    iget-wide v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastHealth:J

    long-to-int p1, v0

    invoke-static {p1, v7}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result p1

    if-nez p1, :cond_12

    iget-wide v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastHealth:J

    long-to-int p1, v0

    invoke-static {p1, v5}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_3

    .line 3970
    :cond_11
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->checkInWaterFollowMode()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 3971
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartTopFuncitonView:Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;

    invoke-virtual {p1, v3}, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->setVisibility(I)V

    .line 3972
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartTopFuncitonView:Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v8}, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->initFollowFragments(II)V

    .line 3973
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1, v8}, Landroid/util/SparseArray;-><init>(I)V

    .line 3974
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3975
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    const/16 v1, 0xf53

    invoke-virtual {v0, v1, p1}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    .line 3976
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mVideoLayout:Lcom/powervision/base/views/CircleRelativeLayout;

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mMapLayout:Lcom/powervision/base/views/CircleRelativeLayout;

    invoke-direct {p0, p1, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->switchViewMode(Lcom/powervision/base/views/CircleRelativeLayout;Lcom/powervision/base/views/CircleRelativeLayout;)V

    .line 3977
    sput-boolean v8, Lcom/powervision/aircraft/mission/SmartID;->isSmartFunction:Z

    .line 3978
    iput v4, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartMode:I

    goto :goto_4

    .line 3966
    :cond_12
    :goto_3
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    new-instance v0, Lcom/powervision/base/warning/HoverMessage;

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_waterproof_9:I

    .line 3967
    invoke-virtual {p0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v7, v1}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 3966
    invoke-virtual {p1, v0}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    :cond_13
    :goto_4
    return-void
.end method

.method public onCloseClick(Lcom/powervision/aircraft/ui/views/GeneralSettingsView;)V
    .locals 1

    .line 3869
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mGeneralSettingsView:Lcom/powervision/aircraft/ui/views/GeneralSettingsView;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/powervision/base/utils/AnimUtils;->hideOrShowRightView(Landroid/view/View;I)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 3870
    invoke-direct {p0, p1, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->hideOrShowAllViews(IZ)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "AirCraftCo"

    const-string v1, "onCreate------------->"

    .line 351
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-super {p0, p1}, Lcom/powervision/base/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    const-string v0, "AirCraftCo"

    const-string v1, "onDestroy------------->"

    .line 402
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->exitAndResetMode()V

    const/4 v0, 0x0

    .line 404
    iput-boolean v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->barrierOpen:Z

    .line 405
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->soundPoolUtils:Lcom/powervision/base/utils/SoundPoolUtils;

    invoke-virtual {v1}, Lcom/powervision/base/utils/SoundPoolUtils;->release()V

    .line 407
    invoke-static {}, Lcom/appunite/player/PVCamPlayerHelperExt;->getHelper()Lcom/appunite/player/PVCamPlayerHelperExt;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/appunite/player/PVCamPlayerHelperExt;->setOnSurfaceSizeChangeListener(Lcom/appunite/player/PVCamPlayerHelperExt$OnSurfaceSizeChangeListener;)V

    .line 408
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraListener(Lcom/powervision/camera/camera/CameraListener;)V

    .line 409
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraGetCameraAllParametersListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetCameraAllParametersListener;)V

    .line 410
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraNotifyGetRestRecordTimeListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetRestRecordTimeListener;)V

    .line 411
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraNotifyGetRestPhotoNumberListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetRestPhotoNumberListener;)V

    .line 412
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraNotifyGetRecordTimeListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetRecordTimeListener;)V

    .line 414
    invoke-static {}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->getInstance()Lcom/powervision/natives/connect/Ap03ConnectSdk;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->setOnDeviceLockChangeListener(Lcom/powervision/natives/connect/Ap03ConnectSdk$OnDeviceLockChangeListener;)V

    .line 415
    invoke-static {}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->getAp03ConnectionInstance()Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->removeConnectionChangeListener(Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$Ap03DeviceConnectionChangeListener;)V

    .line 417
    invoke-static {}, Lcom/powervision/aircraft/utils/AudioRecordManager;->getInstance()Lcom/powervision/aircraft/utils/AudioRecordManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/powervision/aircraft/utils/AudioRecordManager;->setVolumeListener(Lcom/powervision/aircraft/utils/AudioRecordManager$VolumeListener;)V

    .line 418
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/powervision/sdk/Ap03Manager;->removeAp03NotifyOnQueryActivationStatusListener(Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnQueryActivationStatusListener;)V

    .line 420
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    if-eqz v1, :cond_0

    .line 421
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v1, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-virtual {v1}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->removeListeners()V

    .line 423
    :cond_0
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/powervision/base/rxbus/RxBus;->unRegister(Ljava/lang/Object;)V

    .line 424
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mapSwitchManager:Lcom/powervision/map/manager/MapSwitchManager;

    invoke-virtual {v1}, Lcom/powervision/map/manager/MapSwitchManager;->onDestroy()V

    .line 425
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->detector:Lcom/powervision/aircraft/utils/OrientationDetector;

    invoke-virtual {v1}, Lcom/powervision/aircraft/utils/OrientationDetector;->disable()V

    .line 426
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPhoneReceiver:Lcom/powervision/base/recevier/PhoneReceiver;

    if-eqz v1, :cond_1

    .line 427
    invoke-virtual {v1, v2}, Lcom/powervision/base/recevier/PhoneReceiver;->setOnPhoneStateListener(Lcom/powervision/base/listener/PhoneCallListener;)V

    .line 428
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPhoneReceiver:Lcom/powervision/base/recevier/PhoneReceiver;

    invoke-virtual {p0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 429
    iput-object v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPhoneReceiver:Lcom/powervision/base/recevier/PhoneReceiver;

    .line 431
    :cond_1
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->disposable:Lio/reactivex/disposables/Disposable;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 432
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->disposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 434
    :cond_2
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lowPower:Lio/reactivex/disposables/Disposable;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 435
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lowPower:Lio/reactivex/disposables/Disposable;

    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 437
    :cond_3
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->dismissLoading()V

    .line 438
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->myHandler:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;

    if-eqz v1, :cond_4

    .line 439
    invoke-virtual {v1, v2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_4
    const-string v1, "audio"

    .line 445
    invoke-virtual {p0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 446
    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 447
    invoke-virtual {v1}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 449
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->sensorEventListener:Landroid/hardware/SensorEventListener;

    if-eqz v1, :cond_5

    .line 450
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 452
    :cond_5
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraParamView:Lcom/powervision/aircraft/ui/views/CameraParamView;

    if-eqz v0, :cond_6

    .line 453
    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/views/CameraParamView;->onDestoryParamter()V

    .line 455
    :cond_6
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onDeviceConnectStatus()V
    .locals 4

    .line 4517
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTopView:Lcom/powervision/aircraft/ui/views/AircraftTopView;

    if-eqz v0, :cond_0

    .line 4519
    new-instance v0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$iStIYaWjjronzEZSPhG3pQ1Qs1Q;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$iStIYaWjjronzEZSPhG3pQ1Qs1Q;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    const-string v0, "nemo_record_info-air"

    const-string v1, "\u98de\u884c\u9875\u9762\u5f00\u94fe\u8def\u91cd\u65b0\u8fde\u63a5\u4e0a\u4e86 \u51c6\u5907\u5f00\u542f\u6536\u58f0 \u80fd\u4e0d\u80fd\u6536\u58f0 \u7531\u76f8\u673a\u72b6\u6001\u51b3\u5b9a"

    .line 4522
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogConnectStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4523
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->startRecordAudio()V

    const-string v0, "get_arm_status"

    const-string v1, "...on aircraft connect... start get arm status "

    .line 4525
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4526
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->myHandler:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;

    const/16 v1, 0x17

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onDeviceConnectionChange(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 5670
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->onDeviceConnectStatus()V

    goto :goto_0

    .line 5672
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->onDeviceDisConnecetStatus()V

    :goto_0
    return-void
.end method

.method public onDeviceDisConnecetStatus()V
    .locals 2

    .line 4533
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTopView:Lcom/powervision/aircraft/ui/views/AircraftTopView;

    if-eqz v0, :cond_0

    .line 4534
    new-instance v0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$SR0AToQ-PAhKo7PmGHdqagnwsK0;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$SR0AToQ-PAhKo7PmGHdqagnwsK0;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    const-string v0, "nemo_record_info-air"

    const-string v1, "\u98de\u884c\u94fe\u8def\u65ad\u5f00\u4e86 \u505c\u6b62\u6536\u58f0"

    .line 4541
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogConnectStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4542
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->stopRecordAudio()V

    .line 4543
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->dismissLoading()V

    return-void
.end method

.method public onDeviceLockStateChange(Z)V
    .locals 3

    .line 2263
    new-instance v0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$lqp7WqHUAIdyrFp17_tokIROsPc;

    invoke-direct {v0, p0, p1}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$lqp7WqHUAIdyrFp17_tokIROsPc;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2276
    invoke-static {}, Lcom/powervision/base/databus/LiveDataBusX;->getInstance()Lcom/powervision/base/databus/LiveDataBusX;

    move-result-object v0

    const-class v1, Ljava/lang/Boolean;

    const-string v2, "FLY_ISARM_NOTIFY"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/databus/LiveDataBusX;->with(Ljava/lang/String;Ljava/lang/Class;)Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;->postValue(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    .line 2279
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->clearNewerModeOnMap()V

    :cond_0
    return-void
.end method

.method public onDistanceChange(F)V
    .locals 1

    .line 1086
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mFlightParameterView:Lcom/powervision/aircraft/ui/views/FlightParameterView;

    if-eqz v0, :cond_0

    .line 1087
    new-instance v0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$7K8u7uluG21TuAtOubgSch4q3pI;

    invoke-direct {v0, p0, p1}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$7K8u7uluG21TuAtOubgSch4q3pI;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;F)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onFollowGudieClose()V
    .locals 1
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0x18
    .end annotation

    .line 4674
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartTopFuncitonView:Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->resetAll()V

    const/4 v0, 0x0

    .line 4675
    iput v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartMode:I

    return-void
.end method

.method public onFollowGuideCancle()V
    .locals 2
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0x13
    .end annotation

    .line 4563
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartTopFuncitonView:Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->initFragments(I)V

    return-void
.end method

.method public onFollowGuideNext(Landroid/util/SparseArray;)V
    .locals 3
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xf53
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 4568
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 4569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "localmode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "helin"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4570
    new-instance v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$40;

    invoke-direct {v0, p0, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$40;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;I)V

    .line 4587
    invoke-static {}, Lcom/powervision/camera/utils/RxCountDown;->getInstance()Lcom/powervision/camera/utils/RxCountDown;

    move-result-object v1

    new-instance v2, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$41;

    invoke-direct {v2, p0, v0, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$41;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Landroidx/lifecycle/Observer;I)V

    invoke-virtual {v1, v2}, Lcom/powervision/camera/utils/RxCountDown;->addWatcher(Lcom/powervision/camera/utils/RxCountDown$Watcher;)V

    return-void
.end method

.method public onFollowModeBack()V
    .locals 2
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0x20
    .end annotation

    .line 4694
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartTopFuncitonView:Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->initFragments(I)V

    return-void
.end method

.method public onFollowModeClose()V
    .locals 1
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0x21
    .end annotation

    .line 4687
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartTopFuncitonView:Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->resetAll()V

    const/4 v0, 0x0

    .line 4688
    iput v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartMode:I

    .line 4689
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->returnLastMode()V

    return-void
.end method

.method public onFollowModeNormal(Landroid/util/SparseArray;)V
    .locals 1
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 4628
    new-instance v0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$Cm00uQy0F_kZZZ2j7Y8OqivOWWo;

    invoke-direct {v0, p0, p1}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$Cm00uQy0F_kZZZ2j7Y8OqivOWWo;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Landroid/util/SparseArray;)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFollowModeParallel(Landroid/util/SparseArray;)V
    .locals 1
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0x16
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 4635
    new-instance v0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$-B0r2Dg9eCbBLeFxs3lmVkZxAHQ;

    invoke-direct {v0, p0, p1}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$-B0r2Dg9eCbBLeFxs3lmVkZxAHQ;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Landroid/util/SparseArray;)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFollowModeStatic(Landroid/util/SparseArray;)V
    .locals 1
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 4642
    new-instance v0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$ZcacrFVye1hmp-JlhxJry0f0Dxs;

    invoke-direct {v0, p0, p1}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$ZcacrFVye1hmp-JlhxJry0f0Dxs;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Landroid/util/SparseArray;)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onGetFlightGuideStatus(I)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6261
    :goto_0
    iput-boolean v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->showAircraftGuide:Z

    .line 6262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " UI ...onGetFlightGuideStatus  () ....status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "fly_guide"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6263
    new-instance p1, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$aPRy5MRz-XXReRiXnk4m-EIhEg0;

    invoke-direct {p1, p0}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$aPRy5MRz-XXReRiXnk4m-EIhEg0;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onGetRemoteControlerResult(IIII)V
    .locals 3

    .line 6241
    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->showAircraftGuide:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mBasicFlightGuideStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->basicGuideView:Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;

    if-eqz v0, :cond_2

    .line 6242
    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->isUpdateRemoteControlerResult()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6243
    iget v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->resultIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->resultIndex:I

    const/16 v1, 0x2710

    const/16 v2, 0xa

    if-ne v0, v1, :cond_0

    .line 6245
    iput v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->resultIndex:I

    .line 6247
    :cond_0
    iget v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->resultIndex:I

    rem-int/2addr v0, v2

    if-eqz v0, :cond_1

    return-void

    .line 6250
    :cond_1
    iput p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->tempX:I

    .line 6251
    iput p2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->tempY:I

    .line 6252
    iput p3, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->tempZ:I

    .line 6253
    iput p4, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->tempR:I

    .line 6254
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " UI  onGetRemoteControlerResult...x.y.z.r ..resultIndex="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->resultIndex:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "fly_guide"

    invoke-static {p2, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6255
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->myHandler:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;

    const/16 p2, 0x18

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;->sendEmptyMessage(I)Z

    :cond_2
    return-void
.end method

.method public onGetRemoteMode(I)V
    .locals 2

    .line 6268
    iput p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->remoteMode:I

    .line 6269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " UI ...onGetRemoteMode  () ....mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "fly_guide"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onIDLE()V
    .locals 3

    .line 2763
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    .line 2764
    invoke-static {p0}, Lcom/powervision/aircraft/utils/BluetoothUtil;->getInstance(Landroid/content/Context;)Lcom/powervision/aircraft/utils/BluetoothUtil;

    move-result-object v0

    new-instance v1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$15;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$15;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/utils/BluetoothUtil;->openSco(Lcom/powervision/aircraft/utils/BluetoothUtil$IBluetoothConnectListener;)V

    goto :goto_0

    .line 2775
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "nemo_record_info-air"

    const-string v1, "\u98de\u884c\u754c\u9762 \u6302\u65ad\u7535\u8bdd \u5f00\u59cb\u7ee7\u7eed\u6536\u58f0 \u8d70\u5916\u653e"

    .line 2776
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogConnectStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2777
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->startRecordAudio()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onOffHook()V
    .locals 2

    const-string v0, "nemo_record_info-air"

    const-string v1, "\u98de\u884c\u754c\u9762 \u63a5\u8d77\u7535\u8bdd\u64cd\u4f5c \u505c\u6b62\u6536\u58f0"

    .line 2754
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogConnectStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2755
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->stopRecordAudio()V

    return-void
.end method

.method public onOneClipsGuild(Landroid/util/SparseArray;)V
    .locals 3
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xb1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 4713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7b2c\u4e09\u90e8 \u5207\u523018 \u4e3b\u6a21\u5f0f\u53d8\u4e3a\u4e00\u952e\u77ed\u7247"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "onekey_clips_nemo"

    invoke-static {v2, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4714
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartTopFuncitonView:Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->initClipGuildFragment(II)V

    .line 4715
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast p1, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-virtual {p1}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->setClipsMode()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "AirCraftCo"

    const-string v1, "onPause------------->"

    .line 385
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onPause()V

    const/4 v0, 0x0

    .line 387
    iput-boolean v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isFocus:Z

    .line 388
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mapSwitchManager:Lcom/powervision/map/manager/MapSwitchManager;

    invoke-virtual {v0}, Lcom/powervision/map/manager/MapSwitchManager;->onPause()V

    .line 389
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->battaryPresenter:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {v0}, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->unInit()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    const-string v0, "AirCraftCo"

    const-string v1, "onResume------------->"

    .line 367
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onResume()V

    .line 369
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mapSwitchManager:Lcom/powervision/map/manager/MapSwitchManager;

    invoke-virtual {v0}, Lcom/powervision/map/manager/MapSwitchManager;->onResume()V

    const/4 v0, 0x1

    .line 370
    iput-boolean v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isFocus:Z

    .line 372
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPermissionDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v0, :cond_0

    .line 373
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->requestBasicPermission()V

    .line 377
    :cond_0
    sget-boolean v0, Lcom/powervision/base/utils/CacheUtil;->IS_MEDIA_DELETE_SUCCESS:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 378
    sput-boolean v0, Lcom/powervision/base/utils/CacheUtil;->IS_MEDIA_DELETE_SUCCESS:Z

    .line 379
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getAllParameters()V

    :cond_1
    return-void
.end method

.method public onRinging()V
    .locals 2

    const-string v0, "nemo_record_info-air"

    const-string v1, "\u98de\u884c\u754c\u9762 \u7535\u8bdd\u94c3\u58f0\u54cd\u4e86 \u505c\u6b62\u6536\u58f0"

    .line 2745
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogConnectStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2746
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->stopRecordAudio()V

    return-void
.end method

.method public onRoboticArmStateChangeView(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 1877
    invoke-static {}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->getInstance()Lcom/powervision/natives/connect/Ap03ConnectSdk;

    move-result-object p1

    iget-boolean p1, p1, Lcom/powervision/natives/connect/Ap03ConnectSdk;->isArmed:Z

    if-nez p1, :cond_0

    .line 1878
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 v0, 0xf27

    invoke-virtual {p1, v0}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    .line 1879
    invoke-static {}, Lcom/powervision/base/router/RouterUtil$Home;->getHomeActivity()Landroid/app/Activity;

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 460
    invoke-super {p0, p1}, Lcom/powervision/base/base/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 461
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mapSwitchManager:Lcom/powervision/map/manager/MapSwitchManager;

    invoke-virtual {v0, p1}, Lcom/powervision/map/manager/MapSwitchManager;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSetRemoteRecord()V
    .locals 4

    .line 1771
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->currentMode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->currentMode:Ljava/lang/String;

    const-string v2, "INTEL_SHOOT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1772
    new-instance v0, Lcom/powervision/base/warning/HoverMessage;

    .line 1773
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/powervision/aircraft/R$string;->AP03_Msg_192:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 1774
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    invoke-virtual {v1, v0}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    return-void

    .line 1777
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->currentMode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->currentMode:Ljava/lang/String;

    const-string v2, "DELAY_SHOOT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1778
    new-instance v0, Lcom/powervision/base/warning/HoverMessage;

    .line 1779
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/powervision/aircraft/R$string;->AP03_Msg_192_2:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 1780
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    invoke-virtual {v1, v0}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    return-void

    .line 1783
    :cond_1
    iget v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartMode:I

    if-ne v0, v1, :cond_2

    .line 1784
    new-instance v0, Lcom/powervision/base/warning/HoverMessage;

    .line 1785
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/powervision/aircraft/R$string;->AP03_Msg_192_2:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 1786
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    invoke-virtual {v1, v0}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    return-void

    .line 1789
    :cond_2
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    if-nez v0, :cond_3

    .line 1791
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/powervision/camera/camera/CameraManager;->setLocalRemoteTag(I)V

    .line 1792
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->switchToRecordMode()V

    goto/16 :goto_0

    :cond_3
    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 1794
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/powervision/camera/camera/CameraManager;->getCameraConnect()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/powervision/camera/utils/CameraUtil;->checkStorageAvailiable()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1795
    new-instance v0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$4jhUgSJ1qBt3l4qWQqXrdsSBXgY;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$4jhUgSJ1qBt3l4qWQqXrdsSBXgY;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 1799
    :cond_4
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/powervision/camera/camera/CameraManager;->isSlowSpeedCard()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1800
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/powervision/camera/camera/CameraManager;->getDeviceCurrentStorageTypeSD()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1801
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    .line 1804
    :cond_5
    new-instance v0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$alIov0k6x_7ihr-WCZ6d4JczLMs;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$alIov0k6x_7ihr-WCZ6d4JczLMs;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 1813
    :cond_6
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/powervision/camera/camera/CameraManager;->getWaterModeTag()I

    move-result v2

    if-ne v2, v1, :cond_9

    .line 1814
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentResolution()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_7

    const/16 v3, 0x9

    if-eq v2, v3, :cond_7

    if-ne v2, v1, :cond_9

    .line 1816
    :cond_7
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 1819
    :cond_8
    new-instance v0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$uAKfEBP4CT63uEyOPdIKEvqKqwc;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$uAKfEBP4CT63uEyOPdIKEvqKqwc;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 1829
    :cond_9
    invoke-static {}, Lcom/powervision/base/utils/NoFastClickUtil;->isFastClick()Z

    move-result v1

    if-eqz v1, :cond_a

    return-void

    .line 1832
    :cond_a
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->startRecordVideo()V

    .line 1833
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v1

    const/16 v2, 0xf52

    invoke-virtual {v1, v2}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    goto :goto_0

    .line 1835
    :cond_b
    invoke-static {}, Lcom/powervision/base/utils/NoFastClickUtil;->isFastClick()Z

    move-result v1

    if-eqz v1, :cond_c

    return-void

    .line 1838
    :cond_c
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->stopRecordVideo()V

    .line 1840
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---------setRemoteRecord  .....cameraCurrentStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AirCraftCo"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSetRemoteTakePic()V
    .locals 5

    .line 1709
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->currentMode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->currentMode:Ljava/lang/String;

    const-string v2, "INTEL_SHOOT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1710
    new-instance v0, Lcom/powervision/base/warning/HoverMessage;

    .line 1711
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/powervision/aircraft/R$string;->AP03_Msg_192_1:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 1712
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    invoke-virtual {v1, v0}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    return-void

    .line 1715
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->currentMode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->currentMode:Ljava/lang/String;

    const-string v2, "DELAY_SHOOT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1716
    new-instance v0, Lcom/powervision/base/warning/HoverMessage;

    .line 1717
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/powervision/aircraft/R$string;->AP03_Msg_192_3:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 1718
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    invoke-virtual {v1, v0}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    return-void

    .line 1721
    :cond_1
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 1723
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/powervision/camera/camera/CameraManager;->setLocalRemoteTag(I)V

    .line 1724
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->switchToSnapMode()V

    goto/16 :goto_0

    :cond_2
    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    .line 1726
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getCameraConnect()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/powervision/camera/utils/CameraUtil;->checkStorageAvailiable()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1727
    new-instance v0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$vEgSUhibo5fudyb_bmd5yAiHf9k;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$vEgSUhibo5fudyb_bmd5yAiHf9k;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 1731
    :cond_3
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentResolution()I

    move-result v1

    if-eqz v1, :cond_4

    .line 1732
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentResolution()I

    move-result v1

    if-ne v1, v2, :cond_d

    .line 1733
    :cond_4
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->doStartPhoto()V

    .line 1734
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/powervision/camera/camera/CameraManager;->setPhotoGraphType(I)V

    goto/16 :goto_0

    .line 1737
    :cond_5
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/powervision/camera/camera/CameraManager;->getCameraConnect()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/powervision/camera/utils/CameraUtil;->checkStorageAvailiable()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1738
    new-instance v0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$Akq3JBDuIIyjN2aYAFxy8RF5hwI;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$Akq3JBDuIIyjN2aYAFxy8RF5hwI;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 1741
    :cond_6
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/powervision/camera/camera/CameraManager;->getPhotoGraphType()I

    move-result v4

    if-ne v4, v1, :cond_8

    .line 1742
    invoke-static {}, Lcom/powervision/camera/utils/RxCountDown;->getInstance()Lcom/powervision/camera/utils/RxCountDown;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/utils/RxCountDown;->isCounting()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1743
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->stopDelayTimePhoto()V

    goto/16 :goto_0

    .line 1745
    :cond_7
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getTimingTime()I

    move-result v1

    .line 1746
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/powervision/camera/camera/CameraManager;->doStartPhoto(I)V

    goto/16 :goto_0

    .line 1748
    :cond_8
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getExposureMode()I

    move-result v1

    if-ne v1, v2, :cond_a

    .line 1749
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getPhotoGraphType()I

    move-result v1

    if-eq v1, v2, :cond_9

    .line 1750
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getPhotoGraphType()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_a

    .line 1751
    :cond_9
    new-instance v0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$pu-xrfwap89exOxWSCZdDVYjuEM;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$pu-xrfwap89exOxWSCZdDVYjuEM;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 1753
    :cond_a
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result v1

    if-nez v1, :cond_b

    .line 1754
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getExposureMode()I

    move-result v1

    if-ne v1, v2, :cond_b

    .line 1755
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getPhotoGraphType()I

    move-result v1

    if-ne v1, v3, :cond_b

    .line 1756
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getExptimeValue()I

    move-result v1

    const/4 v2, 0x7

    if-gt v1, v2, :cond_b

    .line 1757
    new-instance v1, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$trC8r_yUELP0ooOgxhqQ-uRHAcw;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$trC8r_yUELP0ooOgxhqQ-uRHAcw;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    invoke-virtual {p0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1759
    :cond_b
    invoke-static {}, Lcom/powervision/camera/utils/RxCountDown;->getInstance()Lcom/powervision/camera/utils/RxCountDown;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/utils/RxCountDown;->isCounting()Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraMenuView:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->isShooting()Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_0

    .line 1762
    :cond_c
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->doStartPhoto()V

    .line 1766
    :cond_d
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---------setRemoteTakePic ....cameraCurrentStatus=."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AirCraftCo"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    const-string v0, "AirCraftCo"

    const-string v1, "onStart------------->"

    .line 358
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onStart()V

    .line 360
    new-instance v0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    invoke-direct {v0}, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->battaryPresenter:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    const-string v0, "lzqBattery"

    const-string v1, "AircraftActivity init"

    .line 361
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->battaryPresenter:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    invoke-virtual {v0, p0}, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->init(Landroid/app/Activity;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    const-string v0, "AirCraftCo"

    const-string v1, "onStop------------->"

    .line 396
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onStop()V

    return-void
.end method

.method public onSurfaceSizeChange(ZIIII)V
    .locals 1

    .line 5679
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 5680
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 5681
    iput p3, p1, Landroid/os/Message;->arg2:I

    const/16 v0, 0x10

    .line 5682
    iput v0, p1, Landroid/os/Message;->what:I

    .line 5683
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->myHandler:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;

    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5685
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "=============onSurfaceSizeChange width = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "  height = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "  videoWidth = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "   videoHeight = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AirCraftCo"

    invoke-static {p2, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5686
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/powervision/camera/camera/CameraManager;->setVideoSurfaceWidth(I)V

    .line 5687
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/powervision/camera/camera/CameraManager;->setVideoSurfaceHeight(I)V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 6

    .line 2812
    invoke-static {}, Lcom/powervision/livestreaming/LiveStreaming;->getInstance()Lcom/powervision/livestreaming/LiveStreaming;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/powervision/livestreaming/LiveStreaming;->setLiveStreamEnabled(Z)V

    .line 2813
    invoke-static {}, Lcom/powervision/livestreaming/LiveStreaming;->getInstance()Lcom/powervision/livestreaming/LiveStreaming;

    move-result-object p2

    invoke-virtual {p2}, Lcom/powervision/livestreaming/LiveStreaming;->prepare()Z

    .line 2814
    invoke-static {}, Lcom/powervision/livestreaming/LiveStreaming;->getInstance()Lcom/powervision/livestreaming/LiveStreaming;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/powervision/livestreaming/LiveStreaming;->startPlay(Landroid/graphics/SurfaceTexture;)Z

    .line 2816
    invoke-static {}, Lcom/powervision/livestreaming/LiveStreaming;->getInstance()Lcom/powervision/livestreaming/LiveStreaming;

    move-result-object p2

    invoke-virtual {p2}, Lcom/powervision/livestreaming/LiveStreaming;->getPlayerSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, "AirCraftCo"

    const-string p3, "live streaming get player surfaceTexture is null!!!"

    .line 2819
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, p1

    goto :goto_0

    :cond_0
    move-object v2, p2

    .line 2822
    :goto_0
    invoke-static {}, Lcom/appunite/player/PVCamPlayerHelperExt;->getHelper()Lcom/appunite/player/PVCamPlayerHelperExt;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/appunite/player/PVCamPlayerHelperExt;->setOnSurfaceSizeChangeListener(Lcom/appunite/player/PVCamPlayerHelperExt$OnSurfaceSizeChangeListener;)V

    .line 2823
    invoke-static {}, Lcom/appunite/player/PVCamPlayerHelperExt;->getHelper()Lcom/appunite/player/PVCamPlayerHelperExt;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->textureView:Landroid/view/TextureView;

    const/4 v3, 0x2

    .line 2824
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getLocalHScreenHeight()I

    move-result v4

    .line 2825
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getLocalHScreenWidth()I

    move-result v5

    .line 2823
    invoke-virtual/range {v0 .. v5}, Lcom/appunite/player/PVCamPlayerHelperExt;->initCamPlayer(Landroid/view/TextureView;Landroid/graphics/SurfaceTexture;III)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .line 2839
    invoke-static {}, Lcom/appunite/player/PVCamPlayerHelperExt;->getHelper()Lcom/appunite/player/PVCamPlayerHelperExt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appunite/player/PVCamPlayerHelperExt;->prepareToDes()V

    .line 2841
    invoke-static {}, Lcom/powervision/livestreaming/LiveStreaming;->getInstance()Lcom/powervision/livestreaming/LiveStreaming;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/livestreaming/LiveStreaming;->getLiveStreamEnabled()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2842
    invoke-static {}, Lcom/powervision/aircraft/utils/AudioRecordManager;->getInstance()Lcom/powervision/aircraft/utils/AudioRecordManager;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/powervision/aircraft/utils/AudioRecordManager;->stopRecordFrom(I)V

    .line 2843
    invoke-static {}, Lcom/powervision/livestreaming/LiveStreaming;->getInstance()Lcom/powervision/livestreaming/LiveStreaming;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/livestreaming/LiveStreaming;->stopLiveStreaming()Z

    .line 2844
    invoke-static {}, Lcom/powervision/livestreaming/LiveStreaming;->getInstance()Lcom/powervision/livestreaming/LiveStreaming;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/powervision/livestreaming/LiveStreaming;->stopPlay(Z)Z

    .line 2845
    invoke-static {}, Lcom/powervision/livestreaming/LiveStreaming;->getInstance()Lcom/powervision/livestreaming/LiveStreaming;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/livestreaming/LiveStreaming;->destory()Z

    .line 2846
    invoke-static {}, Lcom/powervision/livestreaming/LiveStreaming;->getInstance()Lcom/powervision/livestreaming/LiveStreaming;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/powervision/livestreaming/LiveStreaming;->setLiveStreamEnabled(Z)V

    :cond_0
    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 2830
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSurfaceTextureSizeChanged: width = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  height = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AirCraftCo"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2831
    invoke-static {}, Lcom/powervision/livestreaming/LiveStreaming;->getInstance()Lcom/powervision/livestreaming/LiveStreaming;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/livestreaming/LiveStreaming;->getLiveStreamEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2832
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

.method public onSurroundGudieClose()V
    .locals 1
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0x19
    .end annotation

    .line 4680
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartTopFuncitonView:Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->resetAll()V

    const/4 v0, 0x0

    .line 4681
    iput v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartMode:I

    .line 4682
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->returnLastMode()V

    return-void
.end method

.method public onSurroundGuideCancle()V
    .locals 2
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xf
    .end annotation

    .line 4553
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartTopFuncitonView:Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->initFragments(I)V

    return-void
.end method

.method public onSurroundGuideNext()V
    .locals 2
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0x11
    .end annotation

    .line 4558
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartTopFuncitonView:Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->initFragments(I)V

    return-void
.end method

.method public onSurroundModeBack()V
    .locals 2
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0x22
    .end annotation

    .line 4707
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartTopFuncitonView:Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->initFragments(I)V

    return-void
.end method

.method public onSurroundModeClose()V
    .locals 1
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0x23
    .end annotation

    .line 4700
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartTopFuncitonView:Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->resetAll()V

    const/4 v0, 0x0

    .line 4701
    iput v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartMode:I

    .line 4702
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->returnLastMode()V

    return-void
.end method

.method public onSurroundModeGps()V
    .locals 1
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xd
    .end annotation

    .line 4476
    new-instance v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$38;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$38;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSurroundModeTouch()V
    .locals 1
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xe
    .end annotation

    .line 4486
    new-instance v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$39;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$39;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTestClick(Landroid/view/View;)V
    .locals 3

    .line 2330
    invoke-static {}, Lcom/tencent/bugly/crashreport/CrashReport;->testJavaCrash()V

    .line 2331
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const-string v0, "AP03_FC_VERSION"

    invoke-virtual {p1, v0}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTestClick: = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AirCraftCo"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2333
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    new-instance v0, Lcom/powervision/base/warning/HoverMessage;

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_Msg_26_60:I

    .line 2334
    invoke-virtual {p0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 2333
    invoke-virtual {p1, v0}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    return-void
.end method

.method public onTouchView(IIII)V
    .locals 1

    int-to-float p1, p1

    .line 2076
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getLocalSurfaceWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    int-to-float p2, p2

    .line 2077
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getLocalSurfaceHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    int-to-float p3, p3

    .line 2078
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getLocalSurfaceWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p3, v0

    int-to-float p4, p4

    .line 2079
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getLocalSurfaceHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p4, v0

    .line 2080
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->setVisionTrack(FFFF)V

    return-void
.end method

.method public onUpdateRecordingTime(I)V
    .locals 1

    .line 5619
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraParamView:Lcom/powervision/aircraft/ui/views/CameraParamView;

    if-eqz v0, :cond_0

    .line 5620
    new-instance v0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$rJ_ZjSx1Vmr5VmEJjZuwXtzMV-k;

    invoke-direct {v0, p0, p1}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$rJ_ZjSx1Vmr5VmEJjZuwXtzMV-k;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;I)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onVolumeChange(D)V
    .locals 2

    .line 2734
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->myHandler:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xe

    .line 2735
    iput v1, v0, Landroid/os/Message;->what:I

    .line 2736
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2737
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->myHandler:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 6190
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->systemFullScreen()V

    .line 6192
    :cond_0
    invoke-super {p0, p1}, Lcom/powervision/base/base/BaseActivity;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public onbackClick(Landroid/view/View;)V
    .locals 2

    .line 2704
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->soundPoolUtils:Lcom/powervision/base/utils/SoundPoolUtils;

    const/4 v0, 0x6

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/powervision/base/utils/SoundPoolUtils;->playAudio(II)V

    return-void
.end method

.method public oneClipsFunction(Landroid/util/SparseIntArray;)V
    .locals 3
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xb2
    .end annotation

    .line 4727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7b2c\u4e94\u6b65 \u8fdb\u5165\u4e00\u952e\u77ed\u7247\u9875\u9762"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "onekey_clips_nemo"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4728
    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->showSmartClisp(I)V

    return-void
.end method

.method public oneFling()V
    .locals 2

    const/4 v0, 0x1

    .line 2642
    iput-boolean v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isFling:Z

    const/4 v1, 0x4

    .line 2643
    invoke-direct {p0, v1, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->hideOrShowAllViews(IZ)V

    .line 2644
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mBatteryProgressView:Lcom/powervision/base/views/CustomBatteryProgressView;

    invoke-static {v0, v1}, Lcom/powervision/base/utils/AnimUtils;->hideOrShowBottomView(Landroid/view/View;I)V

    .line 2645
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mFlightParameterView:Lcom/powervision/aircraft/ui/views/FlightParameterView;

    invoke-static {v0, v1}, Lcom/powervision/base/utils/AnimUtils;->hideOrShowBottomView(Landroid/view/View;I)V

    .line 2646
    sget v0, Lcom/powervision/aircraft/R$string;->AP03_Msg_185:I

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    return-void
.end method

.method public onwarnClick(Landroid/view/View;)V
    .locals 2

    .line 2708
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->soundPoolUtils:Lcom/powervision/base/utils/SoundPoolUtils;

    const/4 v0, 0x6

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/powervision/base/utils/SoundPoolUtils;->playAudio(II)V

    return-void
.end method

.method public openLiveDialog(Landroid/util/SparseIntArray;)V
    .locals 2
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xf43
        threadMode = .enum Lcom/powervision/base/rxbus/ThreadMode;->MAIN:Lcom/powervision/base/rxbus/ThreadMode;
    .end annotation

    .line 5107
    new-instance v0, Lcom/powervision/base/dialog/LiveStreamDialog;

    invoke-direct {v0}, Lcom/powervision/base/dialog/LiveStreamDialog;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->liveStreamDialog:Lcom/powervision/base/dialog/LiveStreamDialog;

    const/4 v0, 0x0

    .line 5108
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 5109
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->liveStreamDialog:Lcom/powervision/base/dialog/LiveStreamDialog;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "push_streaming"

    invoke-virtual {p1, v0, v1}, Lcom/powervision/base/dialog/LiveStreamDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 5110
    :cond_0
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 5111
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->liveStreamDialog:Lcom/powervision/base/dialog/LiveStreamDialog;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "start_push_stream"

    invoke-virtual {p1, v0, v1}, Lcom/powervision/base/dialog/LiveStreamDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 5113
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->liveStreamDialog:Lcom/powervision/base/dialog/LiveStreamDialog;

    new-instance v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$49;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$49;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    invoke-virtual {p1, v0}, Lcom/powervision/base/dialog/LiveStreamDialog;->setStreamCallback(Lcom/powervision/base/dialog/LiveStreamDialog$LiveStreamCallback;)V

    .line 5145
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->liveStreamDialog:Lcom/powervision/base/dialog/LiveStreamDialog;

    new-instance v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$50;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$50;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    invoke-virtual {p1, v0}, Lcom/powervision/base/dialog/LiveStreamDialog;->setAudioCallback(Lcom/powervision/base/dialog/LiveStreamDialog$AudioStatusCallback;)V

    return-void
.end method

.method public photoModeChange(Landroid/util/SparseIntArray;)V
    .locals 2
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xa6
        threadMode = .enum Lcom/powervision/base/rxbus/ThreadMode;->MAIN:Lcom/powervision/base/rxbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_0

    .line 5015
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraMenuView:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->setPhotoModeIcon(I)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    const-string v0, "Fling -----------------  reset"

    .line 2661
    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2662
    iput-boolean v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->isFling:Z

    const/4 v1, 0x1

    .line 2663
    invoke-direct {p0, v0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->hideOrShowAllViews(IZ)V

    .line 2664
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mBatteryProgressView:Lcom/powervision/base/views/CustomBatteryProgressView;

    invoke-static {v1, v0}, Lcom/powervision/base/utils/AnimUtils;->hideOrShowBottomView(Landroid/view/View;I)V

    .line 2665
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mFlightParameterView:Lcom/powervision/aircraft/ui/views/FlightParameterView;

    invoke-static {v1, v0}, Lcom/powervision/base/utils/AnimUtils;->hideOrShowBottomView(Landroid/view/View;I)V

    return-void
.end method

.method public resetNormalClipsMode()V
    .locals 1
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xf33
    .end annotation

    .line 4845
    new-instance v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$44;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$44;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resetNormalFollowMode()V
    .locals 1
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xf31
    .end annotation

    .line 4815
    new-instance v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$42;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$42;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resetNormalLapseMode()V
    .locals 2
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xf40
        threadMode = .enum Lcom/powervision/base/rxbus/ThreadMode;->MAIN:Lcom/powervision/base/rxbus/ThreadMode;
    .end annotation

    const/4 v0, 0x1

    .line 4868
    invoke-direct {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->resetSmartModeViews(Z)V

    .line 4869
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->switchToRecordMode()V

    .line 4870
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraMenuView:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/powervision/base/utils/AnimUtils;->hideOrShowRightView(Landroid/view/View;I)V

    .line 4871
    iput v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mSmartMode:I

    return-void
.end method

.method public resetNormalSurroundMode()V
    .locals 1
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xf32
    .end annotation

    .line 4831
    new-instance v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$43;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$43;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAEBMultipleShotsFail()V
    .locals 2

    const-string v0, "noti_camera"

    const-string v1, "    aeb \u5931\u8d25\u4e86\u3002\u3002\u3002\u3002 "

    .line 5388
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5389
    new-instance v0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$iG5W_q5FiCgF_u_W5IzBanMxxcc;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$iG5W_q5FiCgF_u_W5IzBanMxxcc;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5395
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraMenuView:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->setShooting(Z)V

    return-void
.end method

.method public setAEBMultipleShotsSuccess(Ljava/lang/String;I)V
    .locals 1

    .line 5359
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getAebValue()I

    move-result p1

    .line 5360
    new-instance v0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$GeT0XCADEAuonyW5DEw_-dTp_hE;

    invoke-direct {v0, p0, p2, p1}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$GeT0XCADEAuonyW5DEw_-dTp_hE;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;II)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAricraftLocation()V
    .locals 5

    .line 2103
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$layout;->aircraft_popup_location:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2104
    sget v1, Lcom/powervision/aircraft/R$id;->aircraft_bord_location:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2105
    sget v2, Lcom/powervision/aircraft/R$id;->aircraft_user_location:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 2106
    sget v3, Lcom/powervision/aircraft/R$id;->aircraft_return_location:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 2107
    iget-object v4, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->onAirClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2108
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->onUserClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2109
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->onReturnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v1, 0x41000000    # 8.0f

    .line 2110
    invoke-static {v1}, Lcom/powervision/aircraft/utils/Utils;->dipToPx(F)I

    move-result v1

    .line 2112
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLocationPopupWindow:Landroid/widget/PopupWindow;

    .line 2113
    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 2114
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLocationPopupWindow:Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 2115
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLocationPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 2116
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLocationPopupWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 2117
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLocationPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 2118
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLocationPopupWindow:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2119
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLocationPopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mapOptionView:Lcom/powervision/aircraft/ui/views/MapOptionView;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method public setAricraftPath(Z)V
    .locals 1

    .line 2098
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mapSwitchManager:Lcom/powervision/map/manager/MapSwitchManager;

    invoke-virtual {v0, p1}, Lcom/powervision/map/manager/MapSwitchManager;->drawLineEnable(Z)V

    return-void
.end method

.method public setFingerFling(Landroid/util/SparseArray;)V
    .locals 3
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xd7
    .end annotation

    const/4 v0, 0x0

    .line 3789
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3790
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLongTouchStickPointView:Lcom/powervision/base/views/LongTouchStickPointView;

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Lcom/powervision/base/views/LongTouchStickPointView;->setOne(Z)V

    return-void
.end method

.method public setFollowClipsMode(Landroid/util/SparseArray;)V
    .locals 3
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xf6
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 4651
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_0

    .line 4653
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTopView:Lcom/powervision/aircraft/ui/views/AircraftTopView;

    const-string v1, "FOLLOW_1"

    invoke-virtual {p1, v1}, Lcom/powervision/aircraft/ui/views/AircraftTopView;->setCurrentMode(Ljava/lang/String;)V

    .line 4654
    iput v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->noramlFollowStatus:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v0, :cond_1

    .line 4656
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTopView:Lcom/powervision/aircraft/ui/views/AircraftTopView;

    const-string v2, "FOLLOW_2"

    invoke-virtual {p1, v2}, Lcom/powervision/aircraft/ui/views/AircraftTopView;->setCurrentMode(Ljava/lang/String;)V

    .line 4657
    iput v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->noramlFollowStatus:I

    .line 4658
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object p1

    iget p1, p1, Lcom/powervision/sdk/Ap03Manager;->barrierStatus:I

    invoke-static {p1, v1}, Lcom/powervision/camera/utils/CameraUtil;->isOpen(II)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4659
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    new-instance v0, Lcom/powervision/base/warning/HoverMessage;

    sget v2, Lcom/powervision/aircraft/R$string;->AP03_Msg_115_11:I

    .line 4660
    invoke-virtual {p0, v2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 4659
    invoke-virtual {p1, v0}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    .line 4663
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTopView:Lcom/powervision/aircraft/ui/views/AircraftTopView;

    const-string v0, "FOLLOW_3"

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/ui/views/AircraftTopView;->setCurrentMode(Ljava/lang/String;)V

    .line 4664
    iput v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->noramlFollowStatus:I

    .line 4665
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object p1

    iget p1, p1, Lcom/powervision/sdk/Ap03Manager;->barrierStatus:I

    invoke-static {p1, v1}, Lcom/powervision/camera/utils/CameraUtil;->isOpen(II)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4666
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    new-instance v0, Lcom/powervision/base/warning/HoverMessage;

    sget v2, Lcom/powervision/aircraft/R$string;->AP03_Msg_115_11:I

    .line 4667
    invoke-virtual {p0, v2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 4666
    invoke-virtual {p1, v0}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setGimbalViewPitch(FZ)V
    .locals 1

    .line 1919
    new-instance v0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$dbI2Sa8k8pEzkQCOAMtJ2jnv28M;

    invoke-direct {v0, p0, p1, p2}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$dbI2Sa8k8pEzkQCOAMtJ2jnv28M;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;FZ)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setGimbalViewYaw(FZ)V
    .locals 1

    .line 1931
    new-instance v0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$TOwzm48HaOWnYRAkcF62lPjbYiY;

    invoke-direct {v0, p0, p1, p2}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$TOwzm48HaOWnYRAkcF62lPjbYiY;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;FZ)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setHDRMultipleShotsFail()V
    .locals 1

    .line 5411
    sget-object v0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$lzLMiNpuOCklvMkvryiHLmvwN-Y;->INSTANCE:Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$lzLMiNpuOCklvMkvryiHLmvwN-Y;

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setHDRMultipleShotsSuccess()V
    .locals 1

    .line 5400
    new-instance v0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$35fYnMVhj_3hCepFH6GPvQWS9H4;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$35fYnMVhj_3hCepFH6GPvQWS9H4;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setListener()V
    .locals 3

    .line 3404
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->setListener()V

    .line 3405
    new-instance v0, Lcom/powervision/aircraft/utils/OrientationDetector;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/utils/OrientationDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->detector:Lcom/powervision/aircraft/utils/OrientationDetector;

    .line 3406
    invoke-virtual {v0}, Lcom/powervision/aircraft/utils/OrientationDetector;->enable()V

    .line 3407
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->detector:Lcom/powervision/aircraft/utils/OrientationDetector;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->rotationListener:Lcom/powervision/aircraft/utils/OrientationDetector$RotationListener;

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/utils/OrientationDetector;->setRotationListener(Lcom/powervision/aircraft/utils/OrientationDetector$RotationListener;)V

    .line 3408
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTopView:Lcom/powervision/aircraft/ui/views/AircraftTopView;

    invoke-virtual {v0, p0}, Lcom/powervision/aircraft/ui/views/AircraftTopView;->setGeneralMenu(Lcom/powervision/aircraft/ui/views/AircraftTopView$TopMenuAgent;)V

    .line 3409
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCloseMapIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3410
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mAttitudeView:Lcom/powervision/aircraft/ui/views/AircraftAttitudeView;

    invoke-virtual {v0, p0}, Lcom/powervision/aircraft/ui/views/AircraftAttitudeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3411
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraParamView:Lcom/powervision/aircraft/ui/views/CameraParamView;

    invoke-virtual {v0, p0}, Lcom/powervision/aircraft/ui/views/CameraParamView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3412
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mFlightFunctionsIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3413
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mOneKeyReturnIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3414
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mOnekeyTakeOffIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3415
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mWaterFollow:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3416
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    invoke-virtual {v0, p0}, Lcom/powervision/base/warning/manager/WarningManager;->setWarningCallback(Lcom/powervision/base/warning/manager/WarningManager$OnWarningCallback;)V

    .line 3417
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    invoke-virtual {v0, p0}, Lcom/powervision/base/warning/manager/WarningManager;->setShowDialogCallback(Lcom/powervision/base/warning/manager/WarningManager$OnShowDialogCallback;)V

    .line 3419
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraListener(Lcom/powervision/camera/camera/CameraListener;)V

    .line 3420
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraGetCameraAllParametersListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetCameraAllParametersListener;)V

    .line 3422
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraNotifyGetRestRecordTimeListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetRestRecordTimeListener;)V

    .line 3424
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraNotifyGetRestPhotoNumberListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetRestPhotoNumberListener;)V

    .line 3426
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraNotifyGetRecordTimeListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyGetRecordTimeListener;)V

    .line 3427
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraConnect()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3428
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->initCameraSDK()V

    .line 3430
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mapSwitchManager:Lcom/powervision/map/manager/MapSwitchManager;

    invoke-virtual {v0, p0}, Lcom/powervision/map/manager/MapSwitchManager;->setDistanceListener(Lcom/powervision/base/imap/DistanceListener;)V

    .line 3431
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mapSwitchManager:Lcom/powervision/map/manager/MapSwitchManager;

    invoke-virtual {v0, p0}, Lcom/powervision/map/manager/MapSwitchManager;->setAircraftLocationListener(Lcom/powervision/map/callback/AircraftLocationChangeListener;)V

    .line 3432
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mapSwitchManager:Lcom/powervision/map/manager/MapSwitchManager;

    invoke-virtual {v0, p0}, Lcom/powervision/map/manager/MapSwitchManager;->setOnChangeListener(Lcom/powervision/map/manager/MapSwitchManager$OnCameraChangeListener;)V

    .line 3433
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mapOptionView:Lcom/powervision/aircraft/ui/views/MapOptionView;

    invoke-virtual {v0, p0}, Lcom/powervision/aircraft/ui/views/MapOptionView;->setMapOptionListener(Lcom/powervision/aircraft/ui/views/MapOptionView$MapOptionAgent;)V

    .line 3434
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mFlightParameterView:Lcom/powervision/aircraft/ui/views/FlightParameterView;

    invoke-virtual {v0, p0}, Lcom/powervision/aircraft/ui/views/FlightParameterView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3435
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLongTouchStickPointView:Lcom/powervision/base/views/LongTouchStickPointView;

    invoke-virtual {v0, p0}, Lcom/powervision/base/views/LongTouchStickPointView;->setDoubleFlingListener(Lcom/powervision/base/views/LongTouchStickPointView$DoubleFlingListener;)V

    .line 3436
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraMenuView:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->onStopLapseClickListener:Lcom/powervision/aircraft/ui/views/CameraMenuView$OnStopLapseClickListener;

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->setOnStopLapseClickListener(Lcom/powervision/aircraft/ui/views/CameraMenuView$OnStopLapseClickListener;)V

    .line 3438
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->slideReturnView:Lcom/powervision/aircraft/ui/views/SlideReturnView;

    new-instance v1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$20;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$20;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/SlideReturnView;->setSlideListener(Lcom/powervision/aircraft/ui/views/SlideReturnView$SlideListener;)V

    .line 3462
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->slideTakeOffView:Lcom/powervision/aircraft/ui/views/SlideReturnView;

    new-instance v1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$21;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$21;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/SlideReturnView;->setSlideListener(Lcom/powervision/aircraft/ui/views/SlideReturnView$SlideListener;)V

    .line 3524
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLongTouchStickPointView:Lcom/powervision/base/views/LongTouchStickPointView;

    new-instance v1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$22;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$22;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/LongTouchStickPointView;->setOnSeekViewChangeListener(Lcom/powervision/base/views/LongTouchStickPointView$OnStickPointChangeListener;)V

    .line 3545
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mAircraftGimBalView:Lcom/powervision/base/views/AircraftGimBalView;

    invoke-virtual {v0, p0}, Lcom/powervision/base/views/AircraftGimBalView;->setGimbalSetListener(Lcom/powervision/base/views/AircraftGimBalView$GimbalSetAgent;)V

    .line 3546
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->initLines()V

    .line 3547
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->addAp03NotifyOnQueryActivationStatusListener(Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnQueryActivationStatusListener;)V

    .line 3548
    invoke-static {}, Lcom/powervision/aircraft/utils/AudioRecordManager;->getInstance()Lcom/powervision/aircraft/utils/AudioRecordManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/aircraft/utils/AudioRecordManager;->setVolumeListener(Lcom/powervision/aircraft/utils/AudioRecordManager$VolumeListener;)V

    .line 3549
    invoke-static {}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->getAp03ConnectionInstance()Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->addConnectionChangeListener(Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$Ap03DeviceConnectionChangeListener;)V

    .line 3550
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLiveStatusView:Lcom/powervision/base/views/LiveStatusView;

    new-instance v1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$23;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$23;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/LiveStatusView;->setCallback(Lcom/powervision/base/views/LiveStatusView$LiveViewCallback;)V

    .line 3557
    invoke-static {}, Lcom/powervision/base/databus/LiveDataBusX;->getInstance()Lcom/powervision/base/databus/LiveDataBusX;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    const-string v2, "ota_force_update"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/databus/LiveDataBusX;->with(Ljava/lang/String;Ljava/lang/Class;)Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$24;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$24;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 3566
    invoke-static {}, Lcom/powervision/base/databus/LiveDataBusX;->getInstance()Lcom/powervision/base/databus/LiveDataBusX;

    move-result-object v0

    const-class v1, Lcom/powervision/base/warning/HoverMessage;

    const-string v2, "avoid_follow_warning"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/databus/LiveDataBusX;->with(Ljava/lang/String;Ljava/lang/Class;)Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$25;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$25;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public setMapLock(Z)V
    .locals 1

    .line 2125
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mapSwitchManager:Lcom/powervision/map/manager/MapSwitchManager;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/powervision/map/manager/MapSwitchManager;->setMapLock(Z)V

    return-void
.end method

.method public setMapType()V
    .locals 6

    .line 2130
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$layout;->aircraft_popup_layer_switch:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2132
    sget v1, Lcom/powervision/aircraft/R$id;->gaode_layer_standard:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->ivStandardLayer:Landroid/widget/ImageView;

    .line 2133
    sget v1, Lcom/powervision/aircraft/R$id;->gaode_layer_satellite:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->ivSateLliteLayer:Landroid/widget/ImageView;

    .line 2135
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mapSwitchManager:Lcom/powervision/map/manager/MapSwitchManager;

    invoke-virtual {v1}, Lcom/powervision/map/manager/MapSwitchManager;->isMapTypeNormal()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2136
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->ivSateLliteLayer:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/powervision/aircraft/R$mipmap;->aircraft_satellite_map_unselect:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2137
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->ivStandardLayer:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/powervision/aircraft/R$mipmap;->aircraft_normal_map_select:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2138
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 2139
    invoke-static {}, Lcom/powervision/base/utils/UmengUtils;->getHookMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "ap03_normal_map"

    .line 2138
    invoke-static {v1, v3, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 2141
    :cond_0
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->ivSateLliteLayer:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/powervision/aircraft/R$mipmap;->aircraft_satellite_map_selected:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2142
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->ivStandardLayer:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/powervision/aircraft/R$mipmap;->aircraft_normal_map_unselect:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2143
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 2144
    invoke-static {}, Lcom/powervision/base/utils/UmengUtils;->getHookMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "ap03_satellite_map"

    .line 2143
    invoke-static {v1, v3, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 2147
    :goto_0
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->ivSateLliteLayer:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->onSateLliteClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2148
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->ivStandardLayer:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->onStandardClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v1, 0x43340000    # 180.0f

    .line 2149
    invoke-static {v1}, Lcom/powervision/aircraft/utils/Utils;->dipToPx(F)I

    move-result v1

    const/high16 v2, 0x42be0000    # 95.0f

    .line 2150
    invoke-static {v2}, Lcom/powervision/aircraft/utils/Utils;->dipToPx(F)I

    move-result v2

    const/high16 v3, 0x41000000    # 8.0f

    .line 2151
    invoke-static {v3}, Lcom/powervision/aircraft/utils/Utils;->dipToPx(F)I

    move-result v3

    const/high16 v4, 0x40a00000    # 5.0f

    .line 2152
    invoke-static {v4}, Lcom/powervision/aircraft/utils/Utils;->dipToPx(F)I

    move-result v4

    .line 2153
    new-instance v5, Landroid/widget/PopupWindow;

    invoke-direct {v5, v0, v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v5, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLayerPopuWindow:Landroid/widget/PopupWindow;

    const/4 v0, 0x1

    .line 2154
    invoke-virtual {v5, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 2155
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLayerPopuWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 2156
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLayerPopuWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 2157
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLayerPopuWindow:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2158
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLayerPopuWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mapOptionView:Lcom/powervision/aircraft/ui/views/MapOptionView;

    neg-int v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method public setMultiShotsFail()V
    .locals 2

    .line 5349
    new-instance v0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$jtZdh6uksAzcMrhOVpAmFezOJa0;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$jtZdh6uksAzcMrhOVpAmFezOJa0;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5354
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraMenuView:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->setShooting(Z)V

    return-void
.end method

.method public setMultipleShotsSuccess(I)V
    .locals 2

    .line 5316
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getMultipleShotsNum()I

    move-result v0

    .line 5317
    new-instance v1, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$I-aYNsofbqYqnti46meTt_dues0;

    invoke-direct {v1, p0, p1, v0}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$I-aYNsofbqYqnti46meTt_dues0;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;II)V

    invoke-virtual {p0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setNewerMode(Landroid/util/SparseIntArray;)V
    .locals 2
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xf4
        threadMode = .enum Lcom/powervision/base/rxbus/ThreadMode;->MAIN:Lcom/powervision/base/rxbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 5087
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    .line 5088
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET_NEW_MODE_SUCCESS = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 5090
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast p1, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-virtual {p1}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->getTakeOffPoint()V

    .line 5091
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->showNewerDialog()V

    goto :goto_0

    .line 5094
    :cond_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mapSwitchManager:Lcom/powervision/map/manager/MapSwitchManager;

    invoke-virtual {p1}, Lcom/powervision/map/manager/MapSwitchManager;->removeNewerMode()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setQueryActivationResultDisable()V
    .locals 1

    .line 2718
    invoke-static {}, Lcom/powervision/base/router/RouterUtil$Home;->getActivationActivity()Landroid/app/Activity;

    const/4 v0, 0x1

    .line 2719
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

.method public setRecordIconHide()V
    .locals 2
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xc5
    .end annotation

    .line 3800
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mRecordImg:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 3801
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setRecordIconShow()V
    .locals 2
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xc4
    .end annotation

    .line 3795
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mRecordImg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setRollValue(I)V
    .locals 1

    .line 2086
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->setRollValue(I)V

    return-void
.end method

.method public setYawValue(I)V
    .locals 1

    .line 2091
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->setYawValue(I)V

    return-void
.end method

.method public showDelay(Landroid/util/SparseIntArray;)V
    .locals 1
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xc2
    .end annotation

    const/4 v0, 0x0

    .line 4733
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->showDelayView(I)V

    return-void
.end method

.method public showGimbalFineTuning()V
    .locals 2
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xc
    .end annotation

    .line 3721
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mGeneralSettingsView:Lcom/powervision/aircraft/ui/views/GeneralSettingsView;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/powervision/base/utils/AnimUtils;->hideOrShowRightView(Landroid/view/View;I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3722
    invoke-direct {p0, v0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->hideOrShowAllViews(IZ)V

    .line 3723
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mAircraftGimBalView:Lcom/powervision/base/views/AircraftGimBalView;

    invoke-virtual {v1, v0}, Lcom/powervision/base/views/AircraftGimBalView;->setVisibility(I)V

    .line 3724
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-virtual {v0}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->getGimbalValue()V

    return-void
.end method

.method public showHideLines(Landroid/util/SparseIntArray;)V
    .locals 3
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xa7
    .end annotation

    if-eqz p1, :cond_0

    .line 5024
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 5025
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p1

    .line 5026
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCustomLinesView:Lcom/powervision/base/views/CustomLinesView;

    invoke-virtual {v0, p1}, Lcom/powervision/base/views/CustomLinesView;->setLineMode(I)V

    .line 5027
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AIRCRAFT_GRID_LINE_TAG"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5028
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/camera/camera/CameraManager;->setLinesMode(I)V

    :cond_0
    return-void
.end method

.method public showHistogramData([II)V
    .locals 0

    .line 1860
    new-instance p2, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$6tHRXRRX7JPO-mUMJGKBqPtZ9mI;

    invoke-direct {p2, p0, p1}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$6tHRXRRX7JPO-mUMJGKBqPtZ9mI;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;[I)V

    invoke-virtual {p0, p2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showHistogramView(I)V
    .locals 1

    .line 1846
    new-instance v0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$B1FauCGM9YqtDfU-h-FGhneFArc;

    invoke-direct {v0, p0, p1}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$B1FauCGM9YqtDfU-h-FGhneFArc;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;I)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showLowPowerDialog()V
    .locals 1

    .line 2699
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-virtual {v0}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->getRemainingRtlTime()V

    const-string v0, "\u83b7\u53d6\u4f4e\u7535\u8fd4\u822a\u5269\u4f59\u65f6\u95f4"

    .line 2700
    invoke-static {v0}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    return-void
.end method

.method public showNewerModeOnMap(II)V
    .locals 1

    .line 5636
    new-instance v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$59;

    invoke-direct {v0, p0, p1, p2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$59;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;II)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showOrHideBottom(Landroid/util/SparseArray;)V
    .locals 3
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xd9
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 4799
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 4801
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mFlightParameterView:Lcom/powervision/aircraft/ui/views/FlightParameterView;

    invoke-virtual {v1, v0}, Lcom/powervision/aircraft/ui/views/FlightParameterView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    if-ne v1, v2, :cond_1

    .line 4803
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mFlightParameterView:Lcom/powervision/aircraft/ui/views/FlightParameterView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/FlightParameterView;->setVisibility(I)V

    .line 4805
    :cond_1
    :goto_0
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_2

    .line 4807
    invoke-direct {p0, v2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->startTimerTask(Z)V

    goto :goto_1

    :cond_2
    if-ne p1, v2, :cond_3

    .line 4809
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->onStopRecordingCancleTimer()V

    :cond_3
    :goto_1
    return-void
.end method

.method public showWarnOnTop(Lcom/powervision/base/warning/HoverMessage;)V
    .locals 1

    .line 2678
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTopView:Lcom/powervision/aircraft/ui/views/AircraftTopView;

    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/ui/views/AircraftTopView;->setTitle(Lcom/powervision/base/warning/HoverMessage;)V

    return-void
.end method

.method public startSelfCheckActivity()V
    .locals 2

    .line 2624
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/powervision/aircraft/ui/activity/AircraftSelfCheckActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2626
    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startWaterFollowDirectly(Landroid/util/SparseIntArray;)V
    .locals 5
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xf54
    .end annotation

    const/4 v0, 0x0

    .line 4620
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    const/4 v2, 0x1

    .line 4621
    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    .line 4622
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startWaterFollowDirectly: come = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "helin"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4623
    iget-object v3, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v3, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    const/16 v4, 0xb

    if-ne p1, v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v3, v0, v1}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->setStartWater(ZI)V

    return-void
.end method

.method public stopDelayCapture()V
    .locals 1

    .line 5980
    new-instance v0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$8UBXLouEIg6ux5LWBucwl8kpe6E;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$8UBXLouEIg6ux5LWBucwl8kpe6E;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public storageFull()V
    .locals 1

    .line 6037
    new-instance v0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$eCieWLSbVRw4_r3Ajdpuh1_iGcs;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$eCieWLSbVRw4_r3Ajdpuh1_iGcs;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public switchReturnPointInfo(Landroid/util/SparseArray;)V
    .locals 2
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xf23
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 3807
    iget-wide v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastPresent:J

    long-to-int p1, v0

    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->getInstance()Lcom/powervision/natives/connect/Ap03ConnectSdk;

    move-result-object p1

    iget-boolean p1, p1, Lcom/powervision/natives/connect/Ap03ConnectSdk;->isArmed:Z

    if-eqz p1, :cond_0

    .line 3808
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast p1, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-virtual {p1}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->getHomeReturnPoint()V

    :cond_0
    return-void
.end method

.method public timerResultAnimation()V
    .locals 2
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xf46
    .end annotation

    .line 6299
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/base/BaseApplication;

    .line 6300
    invoke-virtual {v0}, Lcom/powervision/base/base/BaseApplication;->getAudioUtilInstance()Lcom/powervision/base/utils/AudioUtil;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/base/utils/AudioUtil;->playAudio(I)V

    .line 6301
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->captureAnimation()V

    .line 6302
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getRemainingCapacity()V

    return-void
.end method

.method public upLandProtectResult(I)V
    .locals 2

    .line 1975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u964d\u843d\u4fdd\u62a4\u7ed3\u679c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AirCraftCo"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public upLandProtectStatus(I)V
    .locals 1

    .line 1944
    new-instance v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$12;

    invoke-direct {v0, p0, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$12;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;I)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateAircraftAttitudeInfo(FFF)V
    .locals 1

    .line 1241
    new-instance v0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$4rfebvgu8i4-aCEeM-6-dE6-EHo;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$4rfebvgu8i4-aCEeM-6-dE6-EHo;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;FFF)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateBarrierInfo([F)V
    .locals 3

    .line 1589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateBarrierInfo: -----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastHealth:J

    long-to-int v2, v1

    const/4 v1, 0x4

    invoke-static {v2, v1}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastHealth:J

    long-to-int v2, v1

    const/16 v1, 0x1b

    invoke-static {v2, v1}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", barrierOpen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->barrierOpen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "helin"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    new-instance v0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$0TaC4YgAu6G3oe--ktH6AwIcV5w;

    invoke-direct {v0, p0, p1}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$0TaC4YgAu6G3oe--ktH6AwIcV5w;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;[F)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateBattery(FIIIIIIIIII)V
    .locals 14

    .line 1064
    new-instance v13, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$nykFn3rhAkcFPXDK9DKeO41Qrlk;

    move-object v0, v13

    move-object v1, p0

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$nykFn3rhAkcFPXDK9DKeO41Qrlk;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;FIIIIIIIIII)V

    move-object v0, p0

    invoke-virtual {p0, v13}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateBatteryInfo(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 1178
    new-instance v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$7;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$7;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateCameraParamsSwitchMode()V
    .locals 4
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xd6
    .end annotation

    .line 5076
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->myHandler:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;->sendEmptyMessage(I)Z

    .line 5077
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->myHandler:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;

    const/4 v1, 0x4

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 5080
    new-instance v0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$fT7L6S98wFzk2biKdtTnFYDvZ3s;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$fT7L6S98wFzk2biKdtTnFYDvZ3s;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateCameraParamsView()V
    .locals 0
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xd5
    .end annotation

    .line 5071
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getRemainingCapacity()V

    return-void
.end method

.method public updateCameraSettingButton(Ljava/lang/String;)V
    .locals 0

    .line 5661
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraSettingView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/powervision/camera/views/CameraSettingView;->isShown()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5662
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraSettingView:Lcom/powervision/camera/views/CameraSettingView;

    invoke-virtual {p1}, Lcom/powervision/camera/views/CameraSettingView;->updateGeneralAdapter()V

    :cond_0
    return-void
.end method

.method public updateConnect(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateDeviceState(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateFileSize(II)V
    .locals 3

    .line 5901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateFileSize: num = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AirCraftCo"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5902
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLapseFreeView:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    const-string v1, "/"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 5903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u81ea\u7531\u5ef6\u65f6 updateFileSize = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    .line 5905
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLapseTrailView:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 5906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8f68\u8ff9\u5ef6\u65f6 updateFileSize = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    .line 5908
    :cond_1
    new-instance v0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$2Hy740i8iVBi-xfoIxMv1lac7hc;

    invoke-direct {v0, p0, p1, p2}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$2Hy740i8iVBi-xfoIxMv1lac7hc;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;II)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateFollowDetect(J[F[F[F[F[F[SI)V
    .locals 12

    .line 1216
    new-instance v11, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$OERSnd8E1IX-2-Rqt45eQ1bilm8;

    move-object v0, v11

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$OERSnd8E1IX-2-Rqt45eQ1bilm8;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;J[F[F[F[F[F[SI)V

    move-object v0, p0

    invoke-virtual {p0, v11}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateFollowTrack(FFFFFII)V
    .locals 7

    .line 1201
    new-instance p6, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$h9FH7byCjd_0cuk28-PcHNbvLr8;

    move-object v0, p6

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$h9FH7byCjd_0cuk28-PcHNbvLr8;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;FFFFF)V

    invoke-virtual {p0, p6}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateGimbalAttitudeInfo(FFF)V
    .locals 1

    .line 1249
    new-instance v0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$OsXtbGsFUFHdVuv3TshtVoObQsk;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$OsXtbGsFUFHdVuv3TshtVoObQsk;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;FFF)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateHight(F)V
    .locals 1

    .line 1100
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mFlightParameterView:Lcom/powervision/aircraft/ui/views/FlightParameterView;

    if-eqz v0, :cond_0

    .line 1101
    new-instance v0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$Ka4x-4sk59wnslSwwYlgykaVP9c;

    invoke-direct {v0, p0, p1}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$Ka4x-4sk59wnslSwwYlgykaVP9c;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;F)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1110
    :cond_0
    new-instance v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$4;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;F)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1116
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/base/utils/FlightLogUtil;->setAircraftHeight(F)V

    .line 1117
    iput p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->smartHight:F

    return-void
.end method

.method public updateHorizontalSpeed(F)V
    .locals 1

    .line 1122
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mFlightParameterView:Lcom/powervision/aircraft/ui/views/FlightParameterView;

    if-eqz v0, :cond_0

    .line 1123
    new-instance v0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$smnwSnTNPvR9GUt9BIJDMH7f7nQ;

    invoke-direct {v0, p0, p1}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$smnwSnTNPvR9GUt9BIJDMH7f7nQ;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;F)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public updateLand(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateLandProtectStatus()V
    .locals 0

    return-void
.end method

.method public updateMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "======"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=====subMode==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "current_mode"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    invoke-static {}, Lcom/powervision/base/databus/LiveDataBusX;->getInstance()Lcom/powervision/base/databus/LiveDataBusX;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    const-string v2, "air_main_mode"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/databus/LiveDataBusX;->with(Ljava/lang/String;Ljava/lang/Class;)Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 745
    new-instance v0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$uZLliAoadSHgxeVEz6y4KU7bDfE;

    invoke-direct {v0, p0, p1, p2}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$uZLliAoadSHgxeVEz6y4KU7bDfE;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 957
    new-instance p2, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$3;

    invoke-direct {p2, p0, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$3;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateOnInternalStorageFull()V
    .locals 1

    .line 2036
    new-instance v0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$iwqp4_ogEVSv-iyKaf8f7GE9tME;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$iwqp4_ogEVSv-iyKaf8f7GE9tME;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateOnSDFull()V
    .locals 1

    .line 2031
    new-instance v0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$jPwW1wCNxx9oJA6-qFApU8dtfsM;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$jPwW1wCNxx9oJA6-qFApU8dtfsM;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updatePauseFollowInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updatePhotoNum(I)V
    .locals 5

    .line 5839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePhotoNum: num = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AirCraftCo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5840
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLapseFreeView:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    const-string v1, ", \u5f53\u524ddelayMode = "

    const-string v2, "/"

    const-string v3, "updatePhotoNum = "

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 5841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLapseFreeView:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-virtual {v4}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->getPhotoNum()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->delayMode:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    .line 5843
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLapseTrailView:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 5844
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLapseTrailView:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-virtual {v2}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->getPhotoNum()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->delayMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    .line 5846
    :cond_1
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lastMode:Ljava/lang/String;

    const-string v1, "DELAY_SHOOT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5847
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5408\u6210\u6307\u4ee4\u53d1\u9001-----> lastMode = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lastMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    .line 5848
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->createLapseFile()V

    return-void

    .line 5851
    :cond_2
    iput p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->currentNum:I

    .line 5852
    new-instance v0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$7GpxqlDzPI9uLkSOiKNlp2SAfbI;

    invoke-direct {v0, p0, p1}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$7GpxqlDzPI9uLkSOiKNlp2SAfbI;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;I)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateRainproofMode(I)V
    .locals 1

    .line 2013
    new-instance v0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$kN6HHNUZvz1oh1pSkC42V0JQ0FU;

    invoke-direct {v0, p0, p1}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$kN6HHNUZvz1oh1pSkC42V0JQ0FU;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;I)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateRemoteElectric(I)V
    .locals 1

    .line 1632
    new-instance v0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$DAVLjKCR-BSBDaiH9-jKdgOJYXM;

    invoke-direct {v0, p0, p1}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$DAVLjKCR-BSBDaiH9-jKdgOJYXM;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;I)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateReturnPoint(III)V
    .locals 1

    .line 5568
    new-instance v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$58;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$58;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;III)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateRtl(Ljava/lang/String;)V
    .locals 2

    .line 1896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2222222222"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "nemo-return-info"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateSatellite(I)V
    .locals 1

    .line 1046
    new-instance v0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$PToJfliQd32-tYAUQzUAOZMk2vk;

    invoke-direct {v0, p0, p1}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$PToJfliQd32-tYAUQzUAOZMk2vk;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;I)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateSpeedAndDistanceInfo(FF)V
    .locals 0

    return-void
.end method

.method public updateStartFollowInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

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

    .line 5295
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 5296
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 5297
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5298
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_DV_GeneralSetting_11:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->showDefaultToast(Ljava/lang/String;)V

    .line 5299
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mCameraParamView:Lcom/powervision/aircraft/ui/views/CameraParamView;

    if-eqz p1, :cond_0

    .line 5300
    invoke-virtual {p1}, Lcom/powervision/aircraft/ui/views/CameraParamView;->updateViewsData()V

    .line 5302
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getRemainingCapacity()V

    goto :goto_0

    .line 5304
    :cond_1
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_DV_GeneralSetting_12:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->showDefaultToast(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateSurplusTime(I)V
    .locals 1

    .line 1167
    new-instance v0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$t7-tGUayHwDi79d0NOHiCn5EdnA;

    invoke-direct {v0, p0, p1}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$t7-tGUayHwDi79d0NOHiCn5EdnA;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;I)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateTakeOff(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateTimeLapsePhotoMaxSpeedResult(I)V
    .locals 3

    .line 5817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "3\u8bbe\u7f6e\u901f\u5ea6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nemo-delay-info"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 5820
    iput p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->resetSpeedCount:I

    goto :goto_0

    .line 5822
    :cond_0
    iget p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->resetSpeedCount:I

    const/4 v0, 0x3

    if-ge p1, v0, :cond_1

    .line 5823
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->myHandler:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;

    const/16 v0, 0x1a

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 5824
    iget p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->resetSpeedCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->resetSpeedCount:I

    :cond_1
    :goto_0
    return-void
.end method

.method public updateVertical(F)V
    .locals 1

    .line 1136
    new-instance v0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$eJGc0k-R6H7ZEDU-ht11KstKp88;

    invoke-direct {v0, p0, p1}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$eJGc0k-R6H7ZEDU-ht11KstKp88;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;F)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1143
    new-instance v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$5;

    invoke-direct {v0, p0, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$5;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;F)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateVps(F)V
    .locals 1

    .line 1153
    new-instance v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$6;

    invoke-direct {v0, p0, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$6;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;F)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateWarnInfo(III)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 1273
    invoke-static/range {p1 .. p3}, Lcom/powervision/base/utils/WarnUtil;->isSelfCheckPass(III)Z

    move-result v4

    .line 1274
    iget-wide v5, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastPresent:J

    int-to-long v7, v1

    const-string v9, ", new = "

    const-wide/16 v10, 0x1

    const/16 v12, 0x20

    const/4 v14, 0x1

    cmp-long v15, v5, v7

    if-eqz v15, :cond_3

    if-ltz v1, :cond_3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v12, :cond_2

    shr-int v6, v1, v5

    and-int/2addr v6, v14

    int-to-long v12, v6

    .line 1277
    iget-wide v14, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastPresent:J

    shr-long/2addr v14, v5

    and-long/2addr v14, v10

    cmp-long v17, v12, v14

    if-eqz v17, :cond_1

    .line 1278
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "index = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    const/4 v12, 0x1

    if-ne v6, v12, :cond_0

    .line 1280
    invoke-static {v5}, Lcom/powervision/base/utils/WarnUtil;->getPresentWarns(I)Lcom/powervision/base/warning/HoverMessage;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1282
    iget-object v12, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    invoke-virtual {v12, v6}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    goto :goto_1

    :cond_0
    if-nez v6, :cond_1

    .line 1285
    invoke-static {v5}, Lcom/powervision/base/utils/WarnUtil;->getPresentWarns(I)Lcom/powervision/base/warning/HoverMessage;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1287
    iget-object v12, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    invoke-virtual {v12, v6}, Lcom/powervision/base/warning/manager/WarningManager;->removeView(Lcom/powervision/base/warning/HoverMessage;)V

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    const/16 v12, 0x20

    const/4 v14, 0x1

    goto :goto_0

    .line 1292
    :cond_2
    iput-wide v7, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastPresent:J

    .line 1295
    :cond_3
    iget-wide v5, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastEnabled:J

    int-to-long v7, v2

    cmp-long v12, v5, v7

    if-eqz v12, :cond_7

    if-ltz v2, :cond_7

    const/4 v5, 0x0

    :goto_2
    const/16 v6, 0x20

    if-ge v5, v6, :cond_6

    shr-int v12, v2, v5

    const/4 v13, 0x1

    and-int/2addr v12, v13

    int-to-long v13, v12

    move-wide/from16 v16, v7

    .line 1298
    iget-wide v6, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastEnabled:J

    shr-long/2addr v6, v5

    and-long/2addr v6, v10

    cmp-long v8, v13, v6

    if-eqz v8, :cond_5

    .line 1299
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "index enabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    const/4 v6, 0x1

    if-ne v12, v6, :cond_4

    .line 1301
    invoke-static {v5}, Lcom/powervision/base/utils/WarnUtil;->getEnableWarns(I)Lcom/powervision/base/warning/HoverMessage;

    move-result-object v6

    if-eqz v6, :cond_5

    const-string v7, "\u663e\u793a\u4f4e\u7535\u8b66\u544a"

    .line 1303
    invoke-static {v7}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    .line 1304
    iget-object v7, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    invoke-virtual {v7, v6}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    goto :goto_3

    :cond_4
    if-nez v12, :cond_5

    .line 1307
    invoke-static {v5}, Lcom/powervision/base/utils/WarnUtil;->getEnableWarns(I)Lcom/powervision/base/warning/HoverMessage;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 1309
    iget-object v7, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    invoke-virtual {v7, v6}, Lcom/powervision/base/warning/manager/WarningManager;->removeView(Lcom/powervision/base/warning/HoverMessage;)V

    :cond_5
    :goto_3
    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v7, v16

    goto :goto_2

    :cond_6
    move-wide v5, v7

    .line 1314
    iput-wide v5, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastEnabled:J

    .line 1316
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "health = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 1317
    iget-wide v5, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastHealth:J

    int-to-long v7, v3

    cmp-long v2, v5, v7

    if-eqz v2, :cond_16

    .line 1318
    iput-wide v7, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastHealth:J

    const/4 v2, 0x0

    .line 1319
    invoke-static {v3, v2}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, 0x2

    .line 1320
    invoke-static {v3, v5}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1322
    new-instance v5, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$8;

    invoke-direct {v5, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$8;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    invoke-virtual {v0, v5}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_4

    .line 1332
    :cond_8
    invoke-static {v3, v2}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1333
    invoke-direct {v0, v3}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->checkUnlock(I)Z

    .line 1334
    invoke-direct/range {p0 .. p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->checkNavigationStatus()V

    :cond_9
    :goto_4
    const/4 v2, 0x3

    .line 1339
    invoke-static {v3, v2}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v2

    const/4 v5, 0x4

    .line 1340
    invoke-static {v3, v5}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v6

    const/16 v7, 0x8

    .line 1341
    invoke-static {v3, v7}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v8

    .line 1342
    iget-boolean v9, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->preMaybe:Z

    const/16 v10, 0xb

    if-ne v2, v9, :cond_a

    iget-boolean v9, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->preUsing:Z

    if-ne v6, v9, :cond_a

    iget-boolean v9, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->preValid:Z

    if-ne v8, v9, :cond_a

    goto :goto_5

    .line 1344
    :cond_a
    iput-boolean v2, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->preMaybe:Z

    .line 1345
    iput-boolean v6, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->preUsing:Z

    .line 1346
    iput-boolean v8, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->preValid:Z

    if-eqz v8, :cond_c

    if-eqz v2, :cond_b

    if-nez v6, :cond_c

    .line 1350
    iget-object v2, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->myHandler:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;

    invoke-virtual {v2, v10}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;->sendEmptyMessage(I)Z

    goto :goto_5

    :cond_b
    if-eqz v6, :cond_c

    .line 1354
    iget-object v2, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->myHandler:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;

    const/16 v6, 0xc

    invoke-virtual {v2, v6}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;->sendEmptyMessage(I)Z

    :cond_c
    :goto_5
    const/16 v2, 0xa

    .line 1364
    invoke-static {v3, v2}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v2

    const/4 v6, 0x7

    if-eqz v2, :cond_e

    .line 1366
    invoke-static {}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->getInstance()Lcom/powervision/natives/connect/Ap03ConnectSdk;

    move-result-object v2

    iget-boolean v2, v2, Lcom/powervision/natives/connect/Ap03ConnectSdk;->isArmed:Z

    if-eqz v2, :cond_d

    .line 1367
    iget-object v2, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    new-instance v7, Lcom/powervision/base/warning/HoverMessage;

    sget v8, Lcom/powervision/aircraft/R$string;->AP03_Msg_62_21:I

    .line 1368
    invoke-virtual {v0, v8}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 1367
    invoke-virtual {v2, v7}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    goto :goto_6

    :cond_d
    if-eqz v4, :cond_e

    .line 1372
    iget-object v2, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    new-instance v8, Lcom/powervision/base/warning/HoverMessage;

    sget v9, Lcom/powervision/aircraft/R$string;->AP03_Msg_62_20:I

    .line 1373
    invoke-virtual {v0, v9}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v7, v9}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 1372
    invoke-virtual {v2, v8}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    .line 1379
    :cond_e
    :goto_6
    invoke-static {v3, v6}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1380
    iget-object v2, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    new-instance v7, Lcom/powervision/base/warning/HoverMessage;

    sget v8, Lcom/powervision/aircraft/R$string;->AP03_Msg_88:I

    .line 1381
    invoke-virtual {v0, v8}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 1380
    invoke-virtual {v2, v7}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    :cond_f
    const/16 v2, 0xd

    .line 1383
    invoke-static {v3, v2}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1384
    iget-object v2, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    new-instance v6, Lcom/powervision/base/warning/HoverMessage;

    sget v7, Lcom/powervision/aircraft/R$string;->AP03_Msg_26_34:I

    .line 1385
    invoke-virtual {v0, v7}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v10, v7}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 1384
    invoke-virtual {v2, v6}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    :cond_10
    const/16 v2, 0x11

    .line 1387
    invoke-static {v3, v2}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1388
    iget-object v2, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    new-instance v6, Lcom/powervision/base/warning/HoverMessage;

    sget v7, Lcom/powervision/aircraft/R$string;->AP03_Msg_139_10:I

    .line 1389
    invoke-virtual {v0, v7}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 1388
    invoke-virtual {v2, v6}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    :cond_11
    const/16 v2, 0x12

    .line 1391
    invoke-static {v3, v2}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1392
    iget-object v2, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    new-instance v6, Lcom/powervision/base/warning/HoverMessage;

    sget v7, Lcom/powervision/aircraft/R$string;->AP03_Msg_139_11:I

    .line 1393
    invoke-virtual {v0, v7}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 1392
    invoke-virtual {v2, v6}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    :cond_12
    const/16 v2, 0x1d

    .line 1395
    invoke-static {v3, v2}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1396
    iget-object v2, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->warningManager:Lcom/powervision/base/warning/manager/WarningManager;

    new-instance v6, Lcom/powervision/base/warning/HoverMessage;

    sget v7, Lcom/powervision/aircraft/R$string;->AP03_Msg_26_59:I

    .line 1397
    invoke-virtual {v0, v7}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v10, v7}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 1396
    invoke-virtual {v2, v6}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    .line 1399
    :cond_13
    iget-wide v6, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastHealth:J

    long-to-int v2, v6

    invoke-static {v2, v5}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v2

    const-string v5, "WATER_MODE"

    if-nez v2, :cond_15

    iget-wide v6, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastHealth:J

    long-to-int v2, v6

    const/16 v6, 0x1b

    invoke-static {v2, v6}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_7

    .line 1403
    :cond_14
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/powervision/camera/camera/CameraManager;->setWaterModeTag(I)V

    .line 1404
    iget-object v2, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_8

    .line 1400
    :cond_15
    :goto_7
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v2

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/powervision/camera/camera/CameraManager;->setWaterModeTag(I)V

    .line 1401
    iget-object v2, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1406
    :goto_8
    iget-object v2, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mTopView:Lcom/powervision/aircraft/ui/views/AircraftTopView;

    iget-wide v5, v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->mLastHealth:J

    long-to-int v6, v5

    invoke-virtual {v2, v6}, Lcom/powervision/aircraft/ui/views/AircraftTopView;->setWarnStatus(I)V

    .line 1410
    :cond_16
    new-instance v2, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$FoIevs8-7TijWbOX1KgD-Chm0_0;

    invoke-direct {v2, v0, v3, v1, v4}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$FoIevs8-7TijWbOX1KgD-Chm0_0;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;IIZ)V

    invoke-virtual {v0, v2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateWaterMode(I)V
    .locals 2

    .line 1989
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateWaterMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 1990
    new-instance v0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$hVPtlY-brHBHXikg--Gb8tWR5mU;

    invoke-direct {v0, p0, p1}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$hVPtlY-brHBHXikg--Gb8tWR5mU;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;I)V

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
